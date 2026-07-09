Instance: RideReportThomasWeberComposition
InstanceOf: RideReportComposition
Title: "Thomas's Training Ride Report Composition"
Description: "Composition for Thomas Weber's professional training ride report"
Usage: #example

* status = #final
* type = RideReportCompositionType#ride-report
* subject = Reference(CyclistThomasWeber)
* author[0] = Reference(PractitionerCyclingCoach)
* date = "2024-01-15T11:15:00+01:00"
* title = "Thomas's Professional Training Ride Report"
* section[cyclist].title = "Cyclist"
* section[cyclist].code = RideReportCompositionSectionType#cyclist
* section[cyclist].entry[0] = Reference(CyclistThomasWeber)
* section[bike].title = "Bike"
* section[bike].code = RideReportCompositionSectionType#bike
* section[bike].entry[0] = Reference(RaceBikeSpecializedSWorks)
* section[ride].title = "Ride"
* section[ride].code = RideReportCompositionSectionType#ride
* section[ride].entry[0] = Reference(TrainingRideThomasWeber)
* section[metrics].title = "Metrics"
* section[metrics].code = RideReportCompositionSectionType#metrics
* section[metrics].entry[0] = Reference(RideMetricThomasPower)
* section[metrics].entry[1] = Reference(RideMetricThomasHeartRate)
* section[metrics].entry[2] = Reference(RideMetricThomasCadence)
* section[metrics].entry[3] = Reference(RideMetricThomasSpeed)