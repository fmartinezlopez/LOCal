#ifndef DETECTORCONSTRUCTIONALT_HH
#define DETECTORCONSTRUCTIONALT_HH

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

class DetectorConstructionAlt : public G4VUserDetectorConstruction
{

	public:
		DetectorConstructionAlt();
		~DetectorConstructionAlt();

		virtual G4VPhysicalVolume *Construct();

	private:

	G4Box *solidWorld, *solidRadiator, *solidDetector;
    G4LogicalVolume *logicWorld, *logicRadiator, *logicDetector;
    G4VPhysicalVolume *physWorld, *physDetector, *physRadiator;

    G4Material *SiO2, *H2O, *Aerogel, *worldMat;
    G4Element *C;

    void DefineMaterials();
    virtual void ConstructSDandField();

    G4int nRows = 100, nCols = 100;

    G4double xWorld = 1.0*m, yWorld = 1.0*m, zWorld = 1.0*m;

};

#endif