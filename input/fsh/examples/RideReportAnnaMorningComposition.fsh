Instance: RideReportAnnaMorningComposition
InstanceOf: RideReportComposition
Title: "Anna's Morning Ride Report Composition"
Description: "Composition for Anna Müller's morning interval training ride report"
Usage: #example

* status = #final
* type = RideReportCompositionType#ride-report
* subject = Reference(CyclistAnnaMuller)
* author[0] = Reference(PractitionerCyclingCoach)
* date = "2024-01-15T10:45:00+01:00"
* title = "Anna's Morning Interval Training Ride Report"
* section[cyclist].title = "Cyclist"
* section[cyclist].code = RideReportCompositionSectionType#cyclist
* section[cyclist].entry[0] = Reference(CyclistAnnaMuller)
* section[bike].title = "Bike"
* section[bike].code = RideReportCompositionSectionType#bike
* section[bike].entry[0] = Reference(RaceBikeCanyonUltimate)
* section[ride].title = "Ride"
* section[ride].code = RideReportCompositionSectionType#ride
* section[ride].entry[0] = Reference(TrainingRideAnnaMorning)
* section[metrics].title = "Metrics"
* section[metrics].code = RideReportCompositionSectionType#metrics
* section[metrics].entry[0] = Reference(RideMetricAnnaPower)
* section[metrics].entry[1] = Reference(RideMetricAnnaHeartRate)
* section[metrics].entry[2] = Reference(RideMetricAnnaCadence)
* section[metrics].entry[3] = Reference(RideMetricAnnaSpeed)