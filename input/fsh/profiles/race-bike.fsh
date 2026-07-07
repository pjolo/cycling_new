Profile: RaceBike
Parent: Device
Id: race-bike
Title: "Race Bike"
Description: "A road racing bicycle, modeled as a Device with sliced properties for frame material, groupset and wheelset."

* ^status = #draft
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #open
* property ^slicing.description = "Slice by property.type to distinguish frame, groupset, wheelset"

* property contains
    frameMaterial 0..1 MS and
    groupset 0..1 MS and
    wheelset 0..1 MS

* property[frameMaterial].type = RaceBikePropertyType#frame-material
* property[frameMaterial] ^binding.strength = #required
* property[frameMaterial] ^binding.valueSet = FrameMaterialVS

* property[groupset].type = RaceBikePropertyType#groupset
* property[groupset] ^binding.strength = #required
* property[groupset] ^binding.valueSet = GroupsetVS

* property[wheelset].type = RaceBikePropertyType#wheelset
* property[wheelset] ^binding.strength = #required
* property[wheelset] ^binding.valueSet = WheelsetVS

* deviceName 1..* MS