Profile: RideReportComposition
Parent: Composition
Id: ride-report-composition
Title: "Ride Report Composition"
Description: "A Composition that serves as the first entry in a Ride Report document bundle."

* ^status = #draft
* status = #final
* type = RideReportCompositionType#ride-report
* subject only Reference(Cyclist)
* author 1..*
* author only Reference(Practitioner)
* title MS
* date MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "title"
* section ^slicing.rules = #open
* section 1..*
* section contains
    cyclist 1..1 and
    bike 0..1 and
    ride 1..1 and
    metrics 1..*

CodeSystem: RideReportCompositionType
Id: ride-report-composition-type
Title: "Ride Report Composition Type"
Description: "Type of composition for ride reports"
* #ride-report "Ride Report" "A cycling training ride report document"

CodeSystem: RideReportCompositionSectionType
Id: ride-report-composition-section-type
Title: "Ride Report Composition Section Type"
Description: "Section types for ride report compositions"
* #cyclist "Cyclist" "The cyclist who performed the ride"
* #bike "Bike" "The bike used for the ride"
* #ride "Ride" "The training ride details"
* #metrics "Metrics" "Recorded metrics during the ride"