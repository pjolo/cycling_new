Profile: RideReport
Parent: Bundle
Id: ride-report
Title: "Ride Report"
Description: "A document bundle summarizing a training ride, including the cyclist, bike, ride details, and recorded metrics."

* ^status = #draft
* type = #document
* entry ^slicing.discriminator.type = #value
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry 1..*
* entry contains
    cyclist 1..1 MS and
    bike 0..1 MS and
    ride 1..1 MS and
    metrics 1..* MS

* timestamp 1..1 MS