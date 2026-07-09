Instance: RideReportThomasWeber
InstanceOf: RideReport
Title: "Thomas's Training Ride Report"
Description: "Complete ride report bundle for Thomas Weber's professional training ride"
Usage: #example

* timestamp = "2024-01-15T11:15:00+01:00"
* entry[cyclist].resource = Reference(CyclistThomasWeber)
* entry[bike].resource = Reference(RaceBikeSpecializedSWorks)
* entry[ride].resource = Reference(TrainingRideThomasWeber)
* entry[metrics][0].resource = Reference(RideMetricThomasPower)
* entry[metrics][1].resource = Reference(RideMetricThomasHeartRate)
* entry[metrics][2].resource = Reference(RideMetricThomasCadence)
* entry[metrics][3].resource = Reference(RideMetricThomasSpeed)