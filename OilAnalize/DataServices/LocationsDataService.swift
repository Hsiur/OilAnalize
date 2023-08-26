//
//  LocationsDataService.swift
//  MapApp
//
//  Created by Ruslan Ishmukhametov on 25.04.2022.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "935",
            cityName: "Илишевское",
            coordinates: CLLocationCoordinate2D(latitude: 55.62279, longitude: 54.17965),
            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
            imageNames: [
                "ilish",
                "rome-colosseum-2",
                "rome-colosseum-3",
            ],
            link: "https://en.wikipedia.org/wiki/Colosseum"),
        Location(
            name: "11056г",
            cityName: "Арланское",
            coordinates: CLLocationCoordinate2D(latitude: 56.14495, longitude: 54.20991),
            description: "The Pantheon is a former Roman temple and since the year 609 a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
            imageNames: [
                "arlan",
                "rome-pantheon-2",
                "rome-pantheon-3",
            ],
            link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
        Location(
            name: "3021",
            cityName: "Туймазинское",
            coordinates: CLLocationCoordinate2D(latitude: 54.59859, longitude: 53.81859),
            description: "The Trevi Fountain is a fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres high and 49.15 metres wide, it is the largest Baroque fountain in the city and one of the most famous fountains in the world.",
            imageNames: [
                "tuimazy",
                "rome-trevifountain-2",
                "rome-trevifountain-3",
            ],
            link: "https://en.wikipedia.org/wiki/Trevi_Fountain"),
        Location(
            name: "5643",
            cityName: "Знаменское",
            coordinates: CLLocationCoordinate2D(latitude: 54.11307, longitude: 54.36541),
            description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed from 1887 to 1889 as the centerpiece of the 1889 World's Fair and was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognizable structures in the world.",
            imageNames: [
                "paris-eiffeltower-1",
                "paris-eiffeltower-2",
            ],
            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
        Location(
            name: "320",
            cityName: "Югомашевское",
            coordinates: CLLocationCoordinate2D(latitude: 56.15840, longitude: 55.37088),
            description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
            imageNames: [
                "ugomash",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            link: "https://en.wikipedia.org/wiki/Louvre"),
    ]
    
}
