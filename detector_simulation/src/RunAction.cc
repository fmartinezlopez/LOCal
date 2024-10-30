#include "RunAction.hh"

RunAction::RunAction()
{}

RunAction::~RunAction()
{}

void RunAction::BeginOfRunAction(const G4Run*)
{
    G4AnalysisManager *analysisManager = G4AnalysisManager::Instance();

    analysisManager->OpenFile("local_detsim.root");

    analysisManager->CreateNtuple("Hits", "Hits");
    analysisManager->CreateNtupleIColumn("fEvent");
    analysisManager->CreateNtupleIColumn("fChannel");
    analysisManager->CreateNtupleDColumn("fEnergy");
    analysisManager->CreateNtupleDColumn("fTime");
    analysisManager->FinishNtuple(0);
}

void RunAction::EndOfRunAction(const G4Run*)
{
    G4AnalysisManager *analysisManager = G4AnalysisManager::Instance();

    analysisManager->Write();
    analysisManager->CloseFile();
}