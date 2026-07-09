Instance: RideReportAnnaMorning
InstanceOf: RideReport
Title: "Anna's Morning Ride Report"
Description: "Complete ride report bundle for Anna Müller's morning interval training"
Usage: #example

* timestamp = "2024-01-15T10:45:00+01:00"
* entry[cyclist].resource = Reference(CyclistAnnaMuller)
* entry[bike].resource = Reference(RaceBikeCanyonUltimate)
* entry[ride].resource = Reference(TrainingRideAnnaMorning)
* entry[metrics][0].resource = Reference(RideMetricAnnaPower)
* entry[metrics][1].resource = Reference(RideMetricAnnaHeartRate)
* entry[metrics][2].resource = Reference(RideMetricAnnaCadence)
* entry[metrics][3].resource = Reference(RideMetricAnnaSpeed)