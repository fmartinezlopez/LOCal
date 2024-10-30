#include "DetectorConstruction.hh"

DetectorConstruction::DetectorConstruction()
{}

DetectorConstruction::~DetectorConstruction()
{}

G4VPhysicalVolume *DetectorConstruction::Construct()
{

	/* ------------------------ World material definition ----------------------- */

	G4NistManager *nist = G4NistManager::Instance();
	G4Material *worldMat = nist->FindOrBuildMaterial("G4_AIR");

	// Create array spanning all visible spectrum to set constant index of refraction
	G4double rindexEnergy[2] = {1.239841939*eV/0.9, 1.239841939*eV/0.2};
	G4double rindexWorld[2] = {1.0, 1.0};

	G4MaterialPropertiesTable *mptWorld = new G4MaterialPropertiesTable();
	mptWorld->AddProperty("RINDEX", rindexEnergy, rindexWorld, 2);

	worldMat->SetMaterialPropertiesTable(mptWorld);

	/* --------------------- Containment material definition -------------------- */

	G4Material *containmentMat = nist->FindOrBuildMaterial("G4_Al");

	/* ---------------------- Absorber material definition ---------------------- */

	G4Material *absorberMat = nist->FindOrBuildMaterial("G4_Pb");

	/* --------------------------- LiquidO definition --------------------------- */

	// LAB
	G4Material *LAB = new G4Material("LAB", 0.863*g/cm3, 2);
	LAB->AddElement(nist->FindOrBuildElement("C"), 6+fnLAB);
	LAB->AddElement(nist->FindOrBuildElement("H"), 5+(2*fnLAB+1));

	// PPO
	G4Material *PPO = new G4Material("PPO", 1.094*g/cm3, 4);
	PPO->AddElement(nist->FindOrBuildElement("C"), 15);
	PPO->AddElement(nist->FindOrBuildElement("H"), 11);
	PPO->AddElement(nist->FindOrBuildElement("N"), 1);
	PPO->AddElement(nist->FindOrBuildElement("O"), 1);

	// Paraffin wax
	G4Material *Paraffin = new G4Material("Paraffin", 0.900*g/cm3, 2);
	Paraffin->AddElement(nist->FindOrBuildElement("C"), fnParaffin);
	Paraffin->AddElement(nist->FindOrBuildElement("H"), 2*fnParaffin+2);

	// LiquidO recipe
	G4Material *LiquidO = new G4Material("LiquidO", 0.845*g/cm3, 3);
	LiquidO->AddMaterial(LAB, 79.7*perCent);
	LiquidO->AddMaterial(PPO, 0.3*perCent);
	LiquidO->AddMaterial(Paraffin, 20.0*perCent);

	// LiquidO optical properties
	G4MaterialPropertiesTable *mptLiquidO = new G4MaterialPropertiesTable();

	G4double rindexLiquidO[2] = {1.48, 1.48};
	G4double scintillationEnergy[3] = {1.239841939*eV/0.500, 1.239841939*eV/0.370, 1.239841939*eV/0.340};
	G4double scintillationYield[3] = {0.0, 1.0, 0.0};
	G4double absortionLength[3] = {20.0*m, 1.429*m, 0.427*m};
	G4double scatteringLength[3] = {0.1*cm, 0.1*cm, 0.1*cm};
	//G4double scatteringLength[3] = {5.0*m, 5.0*m, 5.0*m};

	mptLiquidO->AddProperty("RINDEX", rindexEnergy, rindexLiquidO, 2);
	mptLiquidO->AddConstProperty("SCINTILLATIONYIELD", 8000./MeV); // about 90% LY of other LAB-based scintillators
	mptLiquidO->AddConstProperty("RESOLUTIONSCALE", 1.0);
	mptLiquidO->AddConstProperty("SCINTILLATIONTIMECONSTANT1", 0.5*ns);
	mptLiquidO->AddConstProperty("SCINTILLATIONTIMECONSTANT2", 1.0*ns);
	mptLiquidO->AddProperty("SCINTILLATIONCOMPONENT1", scintillationEnergy, scintillationYield, 3);
	mptLiquidO->AddProperty("SCINTILLATIONCOMPONENT2", scintillationEnergy, scintillationYield, 3);
	mptLiquidO->AddConstProperty("SCINTILLATIONYIELD1", 1.0);
	mptLiquidO->AddConstProperty("SCINTILLATIONYIELD2", 0.0);
	mptLiquidO->AddProperty("ABSLENGTH", scintillationEnergy, absortionLength, 3);
	mptLiquidO->AddProperty("RAYLEIGH", scintillationEnergy, scatteringLength, 3);

	LiquidO->SetMaterialPropertiesTable(mptLiquidO);

	/* ------------------- Optical fibres material definition ------------------- */

	G4Material *fibreMat = nist->FindOrBuildMaterial("G4_SILICON_DIOXIDE");

	G4double energyFibre[4]    = {2.00*eV,2.87*eV,2.90*eV,3.47*eV};
	G4double rindexFibre[4]    = {1.60, 1.60, 1.60, 1.60};
	G4double abslengthFibre[4] = {9.00*m, 9.00*m, 0.1*mm, 0.1*mm};
	G4double emissionFibre[4]  = {1.0, 1.0, 0.0, 0.0};

	G4MaterialPropertiesTable *mptFibre = new G4MaterialPropertiesTable();
	mptFibre->AddProperty("RINDEX",       energyFibre, rindexFibre, 4);
	mptFibre->AddProperty("WLSABSLENGTH", energyFibre, abslengthFibre, 4);
	mptFibre->AddProperty("WLSCOMPONENT", energyFibre, emissionFibre, 4);
	mptFibre->AddConstProperty("WLSTIMECONSTANT", 0.5*ns);

	fibreMat->SetMaterialPropertiesTable(mptFibre);

	/* ------------------------ SiPM material definition ------------------------ */

	G4Material *sipmMat = nist->FindOrBuildMaterial("G4_Si");

	/* -------------------------------------------------------------------------- */
	/*                           World volume definition                          */
	/* -------------------------------------------------------------------------- */

	G4Box *solidWorld = new G4Box("solidWorld", 0.5*m, 0.5*m, 0.5*m);

	G4LogicalVolume *logicWorld = new G4LogicalVolume(solidWorld, worldMat, "logicWorld");

	G4VPhysicalVolume *physWorld = new G4PVPlacement(0, G4ThreeVector(0.0, 0.0, 0.0), logicWorld, "physWorld", 0, false, 0, true);

	/* -------------------------------------------------------------------------- */
	/*                         Detector volumes definition                        */
	/* -------------------------------------------------------------------------- */

	G4Box *solidExterior = new G4Box("solidExterior", fTransverseSize+fWallThickness, fTransverseSize+fWallThickness, (fNLayers*fLayerDistance+fAbsorberThickness)/2+fWallThickness);
	G4Box *solidInterior = new G4Box("solidInterior", fTransverseSize+fWallSpace, fTransverseSize+fWallSpace, (fNLayers*fLayerDistance+fAbsorberThickness)/2+fWallSpace);
	auto *solidWall = new G4SubtractionSolid("solidWall", solidExterior, solidInterior);

	G4Box *solidAbsorber = new G4Box("solidAbsorber", fTransverseSize, fTransverseSize, fAbsorberThickness/2);
	G4Box *solidScintillator = new G4Box("solidScintillator", fTransverseSize, fTransverseSize, fScintillatorThickness/2);
	G4Tubs *solidOpticFibre = new G4Tubs("solidOpticFibre", 0.0, fFibreRadius, fTransverseSize, 0.0, 2*M_PI*rad);
	G4Box *solidSiPM = new G4Box("solidSiPM", 0.5*mm, 2*fFibreRadius, 2*fFibreRadius);

	G4LogicalVolume *logicDetector = new G4LogicalVolume(solidWall, containmentMat, "logicDetector");
	G4LogicalVolume *logicAbsorber = new G4LogicalVolume(solidAbsorber, absorberMat, "logicAbsorber");

	G4VPhysicalVolume *physDetector = new G4PVPlacement(0, G4ThreeVector(0.0, 0.0, fStartPos+(fNLayers*fLayerDistance+fAbsorberThickness)/2), logicDetector, "physDetector", logicWorld, false, 0, true);

	// Create a Rotation Matrix for the optical fibres
	G4RotationMatrix* Rotation_even = new G4RotationMatrix();
	Rotation_even->rotateX(0*deg);
	Rotation_even->rotateY(M_PI/2.0*rad);
	Rotation_even->rotateZ(0*deg);

	G4RotationMatrix* Rotation_odd = new G4RotationMatrix();
	Rotation_odd->rotateX(M_PI/2.0*rad);
	Rotation_odd->rotateY(0*deg);
	Rotation_odd->rotateZ(0*deg);

	G4RotationMatrix* Rotation_SiPM = new G4RotationMatrix();
	Rotation_SiPM->rotateY(0*deg);
	Rotation_SiPM->rotateX(0*deg);
	Rotation_SiPM->rotateZ(M_PI/2.0*rad);

	logicSiPM_left  = new G4LogicalVolume(solidSiPM, worldMat, "logicSiPM_left");
	logicSiPM_right = new G4LogicalVolume(solidSiPM, worldMat, "logicSiPM_right");

	for (G4int iLayer=0; iLayer<fNLayers; ++iLayer) {

		G4VPhysicalVolume *physAbsorber = new G4PVPlacement(0, G4ThreeVector(0.0, 0.0, fStartPos+iLayer*fLayerDistance), logicAbsorber, "physAbsorber", logicWorld, false, iLayer, true);

		G4LogicalVolume *logicScintillator = new G4LogicalVolume(solidScintillator, LiquidO, "logicScintillator");

		G4VPhysicalVolume *physScintillator = new G4PVPlacement(0, G4ThreeVector(0.0, 0.0, fStartPos+fLayerDistance/2+iLayer*fLayerDistance), logicScintillator, "physScintillator", logicWorld, false, iLayer, true);

		for (G4int jFibre=0; jFibre<fNFibres; ++jFibre) {

			logicOpticFibre = new G4LogicalVolume(solidOpticFibre, fibreMat, "logicOpticFibre");

			if (iLayer%2 == 0) {

				G4VPhysicalVolume *physOpticFibre = new G4PVPlacement(Rotation_even, G4ThreeVector(0.0, fFibreStartPos-fFibreDistance*jFibre, 0.0), logicOpticFibre, "physOpticFibre", logicScintillator, false, 100*iLayer+jFibre, true);

				G4VPhysicalVolume *physSiPM_left = new G4PVPlacement(0, G4ThreeVector(fTransverseSize+0.5*mm, fFibreStartPos-fFibreDistance*jFibre, fStartPos+fLayerDistance/2+iLayer*fLayerDistance), logicSiPM_left, "physSiPM_left", logicWorld, false, 1000*(2*iLayer+1)+jFibre, true);

				G4VPhysicalVolume *physSiPM_right = new G4PVPlacement(0, G4ThreeVector(-fTransverseSize-0.5*mm, fFibreStartPos-fFibreDistance*jFibre, fStartPos+fLayerDistance/2+iLayer*fLayerDistance), logicSiPM_right, "physSiPM_right", logicWorld, false, 2000*(iLayer+1)+jFibre, true);

			} else {

				G4VPhysicalVolume *physOpticFibre = new G4PVPlacement(Rotation_odd, G4ThreeVector(fFibreStartPos-fFibreDistance*jFibre, 0.0, 0.0), logicOpticFibre, "physOpticFibre", logicScintillator, false, 100*iLayer+jFibre, true);

				G4VPhysicalVolume *physSiPM_left = new G4PVPlacement(Rotation_SiPM, G4ThreeVector(fFibreStartPos-fFibreDistance*jFibre, fTransverseSize+0.5*mm, fStartPos+fLayerDistance/2+iLayer*fLayerDistance), logicSiPM_left, "physSiPM_left", logicWorld, false, 1000*(2*iLayer+1)+jFibre, true);

				G4VPhysicalVolume *physSiPM_right = new G4PVPlacement(Rotation_SiPM, G4ThreeVector(fFibreStartPos-fFibreDistance*jFibre, -fTransverseSize-0.5*mm, fStartPos+fLayerDistance/2+iLayer*fLayerDistance), logicSiPM_right, "physSiPM_right", logicWorld, false, 2000*(iLayer+1)+jFibre, true);

			}

		}

	}

	// Additional layer of absorber to stop photons
	G4VPhysicalVolume *physAbsorber = new G4PVPlacement(0, G4ThreeVector(0.0, 0.0, fStartPos+fNLayers*fLayerDistance), logicAbsorber, "physAbsorber", logicWorld, false, fNLayers, true);

	return physWorld;

}

void DetectorConstruction::ConstructSDandField()
{
	SensitiveDetector *sensDet = new SensitiveDetector("SensitiveDetector");

	//logicOpticFibre->SetSensitiveDetector(sensDet);
	logicSiPM_left->SetSensitiveDetector(sensDet);
	logicSiPM_right->SetSensitiveDetector(sensDet);
}