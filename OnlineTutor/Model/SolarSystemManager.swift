//
//  SolarSystemManager.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/25/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import Foundation

struct SolarSystemManager {
    
//    SolarSystem(
//        planetName: "Saturn",
//        radius: "58,232 km",
//        mass: "5.683 × 10^26 kg",
//        gravity: "10.44 m/s^2",
//        distanceFromSun: "1.4959 billion km",
//        description: "Saturn is a gas giant made up mostly of hydrogen and helium. Saturn's volume is greater than 760 Earths, and it is the second most massive planet in the solar system, about 95 times Earth's mass. The Ringed Planet is the least dense of all the planets, and is the only one less dense than water.",
//        radiusAR: 9.14
//    ),
    
    let listOfPlanets = [
        SolarSystem(
            planetName: "Mercury",
            radius: "2,439.7 km",
            mass: "3.285 × 10^23 kg",
            gravity: "3.7 m/s^2",
            distanceFromSun: "54.58 million km",
            description: "Mercury is the smallest and innermost planet in the Solar System. Its orbit around the Sun takes 87.97 days, the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods. Mercury orbits the Sun within Earth's orbit as an inferior planet, and its apparent distance from the Sun as viewed from Earth never exceeds 28°. This proximity to the Sun means the planet can only be seen near the western horizon after sunset or eastern horizon before sunrise, usually in twilight.",
            radiusAR: 0.38
        ),
        SolarSystem(
            planetName: "Venus",
            radius: "6,051.8 km",
            mass: "4.867 × 10^24 kg",
            gravity: "8.87 m/s^2",
            distanceFromSun: "108.42 million km",
            description: "Venus is the second planet from the Sun, and is Earth's closest neighbor in the solar system. Venus is the brightest object in the sky after the Sun and the Moon, and sometimes looks like a bright star in the morning or evening sky. The planet is a little smaller than Earth, and is similar to Earth inside.",
            radiusAR: 0.95
        ),
        SolarSystem(
            planetName: "Earth",
            radius: "6,371 km",
            mass: "5.972 × 10^24 kg",
            gravity: "9.807 m/s^2",
            distanceFromSun: "151.53 million km",
            description: "Earth, our home, is the third planet from the sun. It's the only planet known to have an atmosphere containing free oxygen, oceans of water on its surface and, of course, life. Earth is the fifth largest of the planets in the solar system.",
            radiusAR: 1
        ),
        SolarSystem(
            planetName: "Mars",
            radius: "3,389.5 km",
            mass: "6.39 × 10^23 kg",
            gravity: "3.711 m/s^2",
            distanceFromSun: "212.92 million km",
            description: "Mars is the fourth planet from the Sun and is the second smallest planet in the solar system. Named after the Roman god of war, Mars is also often described as the “Red Planet” due to its reddish appearance. Mars is a terrestrial planet with a thin atmosphere composed primarily of carbon dioxide.",
            radiusAR: 0.53
        ),
        SolarSystem(
            planetName: "Jupiter",
            radius: "69,911 km",
            mass: "1.898 × 10^27 kg",
            gravity: "24.79 m/s^2",
            distanceFromSun: "774.49 million km",
            description: "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass one-thousandth that of the Sun, but two-and-a-half times that of all the other planets in the Solar System combined.",
            radiusAR: 10.97
        ),
        SolarSystem(
            planetName: "Uranus",
            radius: "25,362 km",
            mass: "8.681 × 10^25 kg",
            gravity: "8.87 m/s^2",
            distanceFromSun: "2.9621 billion km",
            description: "Uranus is blue-green in color, as a result of the methane in its mostly hydrogen-helium atmosphere. The planet is often dubbed an ice giant, since at least 80% of its mass is a fluid mix of water, methane and ammonia ice.",
            radiusAR: 3.98
        ),
        SolarSystem(
            planetName: "Neptune",
            radius: "24,622 km",
            mass: "1.024 × 10^26 kg",
            gravity: "11.15 m/s^2",
            distanceFromSun: "4.4767 billion km",
            description: "Neptune is very similar to Uranus. It's made of a thick soup of water, ammonia, and methane over an Earth-sized solid center. Its atmosphere is made of hydrogen, helium, and methane. The methane gives Neptune the same blue color as Uranus.",
            radiusAR: 3.86
        ),
        SolarSystem(
            planetName: "Pluto",
            radius: "1,188.3 km",
            mass: "1.30900 × 1022 kg",
            gravity: "0.62 m/s^2",
            distanceFromSun: "5.906 billion km",
            description: "Surface temp. Pluto (minor planet designation: 134340 Pluto) is an icy dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune. It was the first and the largest Kuiper belt object to be discovered. Pluto was discovered by Clyde Tombaugh in 1930 and declared to be the ninth planet from the Sun.",
            radiusAR: 0.19
        ),
        SolarSystem(
            planetName: "Sun",
            radius: "696,340 km",
            mass: "1.989 × 10^30 kg",
            gravity: "274 m/s^2",
            distanceFromSun: "0km",
            description: "The Sun is the star at the center of the Solar System. It is a nearly perfect sphere of hot plasma, with internal convective motion that generates a magnetic field via a dynamo process. It is by far the most important source of energy for life on Earth.",
            radiusAR: 109.3
        ),
        SolarSystem(
            planetName: "Moon",
            radius: "1737.4 km",
            mass: "7.34767309 × 1022 kg",
            gravity: "1.62 m/s^2",
            distanceFromSun: "150 million kilometers",
            description: "The moon is a cold, dry orb whose surface is studded with craters and strewn with rocks and dust (called regolith). The moon has no atmosphere. Recent lunar missions indicate that there might be some frozen ice at the poles. The same side of the moon always faces the Earth.",
            radiusAR: 0.27
        )
    ]
    
    func getPlanetCount() -> Int {
        return listOfPlanets.count
    }
    
    func getPlanetName(dataPart: Int) -> String {
        return listOfPlanets[dataPart].planetName
    }
    
    func getPlanetImageName(dataPart: Int) -> String {
        return listOfPlanets[dataPart].planetName.lowercased()
    }
    
    func getPlanetDescription(dataPart: Int) -> String {
        return listOfPlanets[dataPart].description
    }
    
    func getPlanetData(dataPart: Int, positionData: Int) -> String {
        if dataPart == 1 {
            return listOfPlanets[positionData].description
        }else if dataPart == 2 {
            return listOfPlanets[positionData].radius
        }else if dataPart == 3 {
            return listOfPlanets[positionData].mass
        }else if dataPart == 4 {
            return listOfPlanets[positionData].gravity
        }else {
            return listOfPlanets[positionData].distanceFromSun
        }
    }
    
    func getRadiusAR(dataPart: Int) -> Float {
        return listOfPlanets[dataPart].radiusAR
    }
    
    func getConcatinatedPlanetInformation(dataPart: Int) -> String {
        let info = "Planet Name: " + listOfPlanets[dataPart].planetName + "\nRadius: " + listOfPlanets[dataPart].radius + "\nMass: " + listOfPlanets[dataPart].mass + "\nGravity" + listOfPlanets[dataPart].gravity + "\nDistance from sun: " + listOfPlanets[dataPart].distanceFromSun
        print("information on planet " + info)
        return info
    }
    
}
