Instance: RideReportThomasWeber
InstanceOf: RideReport
Title: "Thomas's Training Ride Report"
Description: "Complete ride report bundle for Thomas Weber's professional training ride"
Usage: #example

* timestamp = "2024-01-15T11:15:00+01:00"
* entry[cyclist].resource = CyclistThomasWeber
* entry[bike].resource = RaceBikeSpecializedSWorks
* entry[ride].resource = TrainingRideThomasWeber
* entry[metrics][0].resource = RideMetricThomasPower
* entry[metrics][1].resource = RideMetricThomasHeartRate
* entry[metrics][2].resource = RideMetricThomasCadence
* entry[metrics][3].resource = RideMetricThomasSpeed