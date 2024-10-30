#include <iostream>

#include "G4RunManager.hh"
#include "G4UImanager.hh"
#include "G4VisManager.hh"
#include "G4VisExecutive.hh"
#include "G4UIExecutive.hh"

#include "DetectorConstruction.hh"
#include "DetectorConstructionAlt.hh"
//#include "PhysicsList.hh"
#include "ActionInitialization.hh"

#include "G4PhysListFactory.hh"
#include "FTFP_BERT.hh"
#include "G4EmStandardPhysics_option4.hh"
#include "G4OpticalPhysics.hh"

int main(int argc, char** argv) {

	G4UIExecutive* ui = nullptr;
  	if ( argc == 1 ) { ui = new G4UIExecutive(argc, argv); }

	G4RunManager *runManager = new G4RunManager();

	// Initialise detector contruction
	runManager->SetUserInitialization(new DetectorConstruction());

	// Initialise physics

	//runManager->SetUserInitialization(new PhysicsList());

	G4PhysListFactory factory;
  	G4VModularPhysicsList* physicsList = factory.GetReferencePhysList("FTFP_BERT");

	//physicsList->ReplacePhysics(new G4EmStandardPhysics_option4);
	physicsList->RegisterPhysics(new G4OpticalPhysics());

	runManager->SetUserInitialization(physicsList);

	// Initialise action
	runManager->SetUserInitialization(new ActionInitialization());

	runManager->Initialize();

	//G4UIExecutive *ui = new G4UIExecutive(argc, argv);

	G4VisManager *visManager = new G4VisExecutive();
	visManager->Initialize();

	G4UImanager *UImanager = G4UImanager::GetUIpointer();

	if ( ! ui ) {
		// batch mode
		G4String command = "/control/execute ";
		G4String fileName = argv[1];
		UImanager->ApplyCommand(command+fileName);
	}
	else {
		// interactive mode
		UImanager->ApplyCommand("/vis/open OGL");
		UImanager->ApplyCommand("/vis/viewer/set/viewpointVector 1 1 1");
		UImanager->ApplyCommand("/vis/drawVolume");
		UImanager->ApplyCommand("/vis/viewer/set/autoRefresh true");
		UImanager->ApplyCommand("/vis/scene/add/trajectories smooth");
		ui->SessionStart();
		delete ui;
	}

	//UImanager->ApplyCommand("/vis/open OGL");
	//UImanager->ApplyCommand("/vis/viewer/set/viewpointVector 1 1 1");
	//UImanager->ApplyCommand("/vis/drawVolume");
	//UImanager->ApplyCommand("/vis/viewer/set/autoRefresh true");
	//UImanager->ApplyCommand("/vis/scene/add/trajectories smooth");

	//ui->SessionStart();

	delete visManager;
 	delete runManager;

	return 0;
}