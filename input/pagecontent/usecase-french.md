# Cas d'usage (Français)

## Vue d'ensemble

Ce guide d'implémentation (IG) modélise le domaine du cyclisme sur route avec les ressources FHIR R4. Il sert de **projet d'apprentissage et ludique** pour pratiquer le profiling FHIR, le slicing, les extensions et les terminologies - sans la rigueur d'un vrai IG clinique (comme CH Core, DSE, etc.).

## Acteurs

| Acteur | Ressource FHIR | Description |
|--------|----------------|-------------|
| **Cycliste** | `Patient` (Profil: `Cyclist`) | Personne qui fait du vélo de route, avec extension FTP |
| **Vélo de course** | `Device` (Profil: `RaceBike`) | Le vélo modélisé comme dispositif médical |
| **Sortie d'entraînement** | `Procedure` (Profil: `TrainingRide`) | Une sortie unique ou une course |
| **Métrique d'entraînement** | `Observation` (Profil: `RideMetric`) | Mesures individuelles: watts, pouls, cadence, vitesse |
| **Rapport de sortie** | `Bundle` (Profil: `RideReport`) | Bundle document avec toutes les infos d'une sortie |

## Scénario d'exemple: L'entraînement matinal d'Anna

**Anna Müller** (28 ans, cycliste amateur, FTP 245W) fait une séance d'intervalles matinale dans les préalpes:

1. **Profil Cycliste** (`CyclistAnnaMuller`):
   - Nom: Anna Müller
   - Date de naissance: 15.06.1995
   - FTP: 245 W (Extension)
   - [Exemple](CyclistAnnaMuller.html)

2. **Vélo de course** (`RaceBikeCanyonUltimate`):
   - Modèle: Canyon Ultimate CF SLX 8.0
   - Cadre: Carbone (`RaceBikeFrameMaterial#carbon`)
   - Groupe: Shimano Ultegra Di2 (`RaceBikeGroupset#shimano-ultegra`)
   - Roues: Tubeless (`RaceBikeWheelset#tubeless`)
   - [Exemple](RaceBikeCanyonUltimate.html)

3. **Sortie d'entraînement** (`TrainingRideAnnaMorning`):
   - Statut: completed
   - Date: 15.01.2024, 08:30
   - Liée à Anna et son vélo
   - [Exemple](TrainingRideAnnaMorning.html)

4. **Métriques** (chacune une `RideMetric`):
   - **Puissance**: 215 W en moyenne (`RideMetricType#power`)
     - [Exemple](RideMetricAnnaPower.html)
   - **Fréquence cardiaque**: 142 bpm en moyenne (`RideMetricType#heart-rate`)
     - [Exemple](RideMetricAnnaHeartRate.html)
   - **Cadence**: 88 rpm (`RideMetricType#cadence`)
     - [Exemple](RideMetricAnnaCadence.html)
   - **Vitesse**: 32.5 km/h (`RideMetricType#speed`)
     - [Exemple](RideMetricAnnaSpeed.html)

5. **Rapport de sortie** (`RideReportAnnaMorning`):
   - Bundle de type `document`
   - Contient: Cyclist, RaceBike, TrainingRide, 4× RideMetric
   - Horodatage: 15.01.2024, 10:45
   - [Exemple](RideReportAnnaMorning.html)

## Terminologies (CodeSystems fictifs)

Tous les CodeSystems sont **fictifs** et uniquement pour ce IG ludique:

| CodeSystem | Codes | But |
|------------|-------|-----|
| `RaceBikeFrameMaterial` | carbon, aluminium, steel, titanium | Matériau du cadre |
| `RaceBikeGroupset` | shimano, sram, campagnolo (+ modèles) | Groupe de transmission |
| `RaceBikeWheelset` | clincher, tubular, tubeless, disc-brake, rim-brake | Type de roues |
| `RideMetricType` | power, heart-rate, cadence, speed, distance, elevation | Type de métrique |

## Points forts du Profiling

### Cyclist (Profil Patient)

- Hérite de `Patient` (pas `Person` - pour permettre un contexte clinique)
- Extension `functional-threshold-power` (0..1, MS)
- Binding: Quantity avec UCUM Watt (W)

### RaceBike (Profil Device)

- Slicing sur `Device.property` selon `type` (Discriminator: value)
- Trois slices: `frameMaterial`, `groupset`, `wheelset` (tous 0..1 MS)
- Binding sur CodeSystem dédié chacun (required)
- `deviceName` 1..* MS pour nom du modèle et fabricant

### RideMetric (Profil Observation)

- `status` = final (fixe)
- `code` depuis `RideMetricTypeVS` (required)
- `subject` seulement `Patient` (Cyclist)
- `value[x]` seulement `Quantity` (1..1 MS)

### TrainingRide (Profil Procedure)

- `status` = completed
- `code` depuis `RideMetricTypeVS` (required, ex: power pour entraînement watt-based)
- `subject` = Cyclist
- `performer` = Cyclist
- `partOf` pour courses par étapes

### RideReport (Profil Bundle)

- `type` = document
- Slicing sur `Bundle.entry.resource`
- Quatre slices: `cyclist` (1..1), `bike` (0..1), `ride` (1..1), `metrics` (1..*)
- `timestamp` 1..1 MS

## Prochaines étapes pour les apprenants

1. **Créer plus d'instances**: Thomas Weber (Pro, 420W FTP) avec Specialized S-Works Tarmac
   - [RaceBikeSpecializedSWorks](RaceBikeSpecializedSWorks.html)
   - [RideReportThomasWeber](RideReportThomasWeber.html)
2. **Affiner les composants**: Roues comme Devices séparés (référence `hasPart`)
3. **Modéliser les intervalles**: `RideMetric.component` pour splits d'intervalles
4. **Courses par étapes**: Chaîne `TrainingRide.partOf` pour tours multi-jours
5. **Vérifications de plausibilité**: Invariants (ex: FTP > 0, speed > 0)
6. **Diagramme PlantUML**: Vue d'ensemble de toutes ressources et relations

---

*Amusez-vous bien à apprendre FHIR avec le vélo de route!* 🚴‍♀️🚴‍♂️