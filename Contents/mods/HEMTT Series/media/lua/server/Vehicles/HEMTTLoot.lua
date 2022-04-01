-- pull the vehicle distributions into a local table
local distributionTable = VehicleDistributions[1]


VehicleDistributions.HEMTTCargo = {
    rolls = 6,
    items ={
        "Base.HottieZ", 0.05,
        "Base.Crayons", 0.01,
        "Base.LugWrench", 3,
        "Base.Jack", 5,
        "Base.WaterBottleFull", 3,
        "Base.PetrolCan", 5,
        "Base.EmptyPetrolCan", 10,
    }
}

VehicleDistributions.HEMTTCargo = {
	
    SideContainer = VehicleDistributions.HEMTTCargo;
    TruckBed =  VehicleDistributions.HEMTTCargo;
}    

distributionTable["HEMTTCargo"] = { Normal = VehicleDistributions.HEMTTCargo; }