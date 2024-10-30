#include "PrimaryGeneratorAction.hh"

PrimaryGeneratorAction::PrimaryGeneratorAction()
{

	fParticleGun = new G4ParticleGun(1);

}

PrimaryGeneratorAction::~PrimaryGeneratorAction()
{

	delete fParticleGun;

}

void PrimaryGeneratorAction::GeneratePrimaries(G4Event *anEvent)
{

	G4ParticleTable *particleTable = G4ParticleTable::GetParticleTable();
	G4String particleName = "pi+";
	G4ParticleDefinition *particle = particleTable->FindParticle(particleName);

	G4ThreeVector pos(0.0, 0.0, -0.40*m);

	fParticleGun->SetParticlePosition(pos);

	G4double dtheta = 10.0*deg;
	G4double dphi   = 25.0*deg;
	G4double theta  = G4UniformRand()*dtheta;
	G4double phi    = G4UniformRand()*dphi;
	G4ThreeVector mom(sin(theta)*sin(phi),
	                  sin(theta)*cos(phi),
					  cos(theta));

	fParticleGun->SetParticleMomentumDirection(mom);

	fParticleGun->SetParticleMomentum(0.5*GeV);

	fParticleGun->SetParticleDefinition(particle);

	fParticleGun->GeneratePrimaryVertex(anEvent);

}