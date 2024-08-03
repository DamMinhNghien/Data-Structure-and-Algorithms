enum Month {
    case january, february, march, april, may, june, july, august, september, october, november, december  
}

protocol Plantable {
    var plantMonth: Month { get }
    var plantingInstructions: String { get }

    func cupsOfFertilizer(for rowLength: Int, and rowCount: Int) -> Double
}

protocol Waterable {
    var inchesOfWater: Int { get }
    var wateringFrequency: String { get }
    var wateringInstructions: String { get }
}

protocol Harvestable {
    var harvestMonth: Month { get }
    var harvestingInstructions: String { get }
}

protocol Gardenable: Plantable, Waterable, Harvestable {
    func printGardeningTips()
}

extension Gardenable {
    func printGardeningTips() {
        print("Follow these Gardening 101 tips for a bountiful harvest. 1) Make sure you always water your plant the exact amount that it needs. \("harvestingInstructions"). 2) Make sure you know what zone that you're planting in to ensure that the plants you're planting are in their optimal environment.")
    }
}

struct Kale: Gardenable {
    // Plantable Conformance
    var plantMonth: Month = .january
    var plantingInstructions: String {
        "Plant 3 to 5 weeks before the last frost. Kale can be planted in in-ground gardens, raised beds, or containers."
    }

    // Waterable Conformance
    var inchesOfWater = 2
    var wateringFrequency = "weekly"
    func cupsOfFertilizer(for rowLength: Int, and rowCount: Int) -> Double {
        return Double(rowLength) / 25.0 * 1.5
    }
    var wateringInstructions: String {
        "Water in \(inchesOfWater) inches of water \(wateringFrequency)"
    }

    // Harvestable conformance
    var harvestMonth: Month = .february
    var harvestingInstructions: String {
        "Harvest kale in \(harvestMonth)"
    }
}

func printTips<T: Gardenable>(for plants: [T]) {
    for plant in plants {
        plant.printGardeningTips()
    }
}

let veggies = [Kale()]
printTips(for: veggies)