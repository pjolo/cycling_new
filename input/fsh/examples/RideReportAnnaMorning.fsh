Instance: RideReportAnnaMorning
InstanceOf: RideReport
Title: "Anna's Morning Ride Report"
Description: "Complete ride report bundle for Anna Müller's morning interval training"
Usage: #example

* timestamp = "2024-01-15T10:45:00+01:00"
* entry[0].resource = RideReportAnnaMorningComposition
* entry[cyclist].resource = CyclistAnnaMuller
* entry[bike].resource = RaceBikeCanyonUltimate
* entry[ride].resource = TrainingRideAnnaMorning
* entry[metrics][0].resource = RideMetricAnnaPower
* entry[metrics][1].resource = RideMetricAnnaHeartRate
* entry[metrics][2].resource = RideMetricAnnaCadence
* entry[metrics][3].resource = RideMetricAnnaSpeed