#ifndef DETECTORCONSTRUCTION_HH
#define DETECTORCONSTRUCTION_HH

#include "G4VUserDetectorConstruction.hh"
#include "G4VPhysicalVolume.hh"
#include "G4LogicalVolume.hh"
#include "G4Box.hh"
#include "G4Tubs.hh"
#include "G4RotationMatrix.hh"
#include "G4PVPlacement.hh"
#include "G4NistManager.hh"
#include "G4SystemOfUnits.hh"
#include "G4SubtractionSolid.hh"

#include "SensitiveDetector.hh"

class DetectorConstruction : public G4VUserDetectorConstruction
{

	public:
		DetectorConstruction();
		~DetectorConstruction();

		virtual G4VPhysicalVolume *Construct();
		virtual void ConstructSDandField();

	private:

		G4int fnLAB = 12;
		G4int fnParaffin = 30;

		G4double fTransverseSize = 0.25*m;
		G4double fWallThickness = 1.0*cm;
		G4double fWallSpace = 0.5*cm;

		G4double fStartPos = 0.0*m;

		G4int fNLayers = 2;
		G4double fAbsorberThickness = 5.0*mm;
		G4double fScintillatorThickness = 10.0*mm;
		G4double fLayerDistance = fAbsorberThickness + fScintillatorThickness;

		G4int fNFibres = 30;
		G4double fFibreRadius = 1.0*mm;
		G4double fFibreDistance = 2*fTransverseSize/(fNFibres+1);
		G4double fFibreStartPos = fFibreDistance*(fNFibres/2);

		G4LogicalVolume *logicOpticFibre;
		G4LogicalVolume *logicSiPM_left;
		G4LogicalVolume *logicSiPM_right;

};

#endif