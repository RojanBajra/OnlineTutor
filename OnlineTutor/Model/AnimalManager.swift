//
//  AnimalManager.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/25/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import Foundation

struct AnimalManager {
    
    var listOfAnimals = [
        Animal(
            commonName: "Ant",
            classificationClass: "insect",
            phylum: "Arthropod",
            scientificName: "Formicidae",
            lifeSpan: "4 to 12 months",
            description: "An ant is an insect that lives and works in a large colony of ants. Most ants don't have wings, and some of them have stingers. Ants are related to both bees and wasps, and like them are social insects. Ant colonies can include anywhere from a few dozen to millions of ants, divided into jobs or castes."
        ),
        Animal(
            commonName: "Deer",
            classificationClass: "Mammalia",
            phylum: "Chordata",
            scientificName: "Cervidae",
            lifeSpan: "10 – 13 years",
            description: "Members of the deer family (Cervidae) are cloven-hoofed ungulates that typically have compact torsos with long, slender legs and small tails — and most males have antlers. The family is quite large, and includes caribou, elk, moose, muntjacs and wapiti."
        ),
        Animal(
            commonName: "Dog",
            classificationClass: "Mammalia",
            phylum: "Chordata",
            scientificName: "Canis lupus familiaris",
            lifeSpan: "10 – 13 years",
            description: "Dogs are domesticated mammals, not natural wild animals. They were originally bred from wolves. They have been bred by humans for a long time, and were the first animals ever to be domesticated. They are a popular pet because they are usually playful, friendly, loyal and listen to humans."
        ),
        Animal(
            commonName: "Elephant",
            classificationClass: "Mammalia",
            phylum: "Chordata",
            scientificName: "Loxodonta",
            lifeSpan: "60 – 70 years",
            description: "Elephant, (family Elephantidae), largest living land animal, characterized by its long trunk (elongated upper lip and nose), columnar legs, and huge head with temporal glands and wide, flat ears. Elephants are grayish to brown in colour, and their body hair is sparse and coarse."
        ),
        Animal(
            commonName: "Horse",
            classificationClass: "Mammalia",
            phylum: "Chordata",
            scientificName: "Equus caballus",
            lifeSpan: "25 – 30 years",
            description: "Horses are ungulates mammals with hooves. They also have long tails, short hair, muscular torsos, long thick necks and elongated heads. Due to domestication, they are found all over the world. Horses have lived on Earth for more than 50 million years, according the American Museum of Natural History."
        ),
        Animal(
            commonName: "Moose",
            classificationClass: "Mammalia",
            phylum: "Chordata",
            scientificName: "Alces alces",
            lifeSpan: "15 – 25 years",
            description: "Moose are large ungulates (hoofed mammals) identified by their long, rounded snouts; huge, flattened antlers; humped back; thin legs; and massive bodies. These animals live in the northern United States, Canada and Europe. In North America, they are called moose; in Europe, they are called Eurasian elk."
        ),
        Animal(
            commonName: "Pig",
            classificationClass: "Mammalia",
            phylum: "Chordata",
            scientificName: "Sus",
            lifeSpan: "8 years",
            description: "Pigs are mammals with stocky bodies, flat snouts that can move independently of their heads, small eyes and large ears. They are highly intelligent, social animals, and are found all over the world. Pigs are in the Suidae family, which includes eight genera and 16 species."
        ),
        Animal(
            commonName: "Rabbit",
            classificationClass: "Mammalia",
            phylum: "Chordata",
            scientificName: "Oryctolagus cuniculus",
            lifeSpan: "1 – 2 years",
            description: "Rabbits are small, furry, mammals with long ears, short fluffy tails, and strong, large hind legs. They have 2 pairs of sharp incisors (front teeth), one pair on top and one pair on the bottom. They also have 2 peg teeth behind the top incisors."
        ),
        Animal(
            commonName: "Rhino",
            classificationClass: "Mammalia",
            phylum: "Chordata",
            scientificName: "Rhinocerotidae",
            lifeSpan: "35 – 50 years",
            description: "Rhinos are thought to be the second largest land animal, with the elephant being the largest. They have a robust, cylindrical body with a large head, relatively short legs, and short tail. The characteristic feature of these animals is a large horn in the middle of their faces; some species have a second, smaller horn."
        ),
        Animal(
            commonName: "Shark",
            classificationClass: "Chondrichthyes",
            phylum: "Chordata",
            scientificName: "Selachimorpha",
            lifeSpan: "20 – 30 years",
            description: "Sharks are a group of elasmobranch fish characterized by a cartilaginous skeleton, five to seven gill slits on the sides of the head, and pectoral fins that are not fused to the head. Modern sharks are classified within the clade Selachimorpha (or Selachii) and are the sister group to the rays."
        ),
        Animal(
            commonName: "Spider",
            classificationClass: "Arachnid",
            phylum: "Arthropod",
            scientificName: "Araneae",
            lifeSpan: "1 – 3 years",
            description: "Spiders (order Araneae) are air-breathing arthropods that have eight legs, chelicerae with fangs able to inject venom, and spinnerets that extrude silk. They are the largest order of arachnids and rank seventh in total species diversity among all orders of organisms."
        ),
        Animal(
            commonName: "Stegosaurus",
            classificationClass: "Reptiles",
            phylum: "Chordata",
            scientificName: "Stegosaurus",
            lifeSpan: "extinct",
            description: "Stegosaurus was a large, plant-eating dinosaur that lived during the late Jurassic Period, about 150.8 million to 155.7 million years ago, primarily in western North America. It was about the size of a bus and carried around two rows of bony plates along its back that made it appear even bigger."
        ),
    ]
    
    func getTotalAnimal() -> Int {
        return listOfAnimals.count
    }
    
    func getAnimalName(animalNumber: Int) -> String {
        return listOfAnimals[animalNumber].commonName
    }
    
    func getAnimalData(indexPart: Int, dataPart: Int) -> String {
        if indexPart == 1 {
            return listOfAnimals[dataPart].commonName
        }else if indexPart == 2 {
            return listOfAnimals[dataPart].classificationClass
        }else if indexPart == 3 {
            return listOfAnimals[dataPart].phylum
        }else if indexPart == 4 {
            return listOfAnimals[dataPart].scientificName
        }else if indexPart == 5 {
            return listOfAnimals[dataPart].lifeSpan
        }else if indexPart == 6 {
            return listOfAnimals[dataPart].description
        }
        return ""
    }
    
    func getConcatinatedInformation(dataPart: Int) -> String {
        var data = listOfAnimals[dataPart].commonName + "\nClass: " + listOfAnimals[dataPart].classificationClass + "\nPhylum: " + listOfAnimals[dataPart].phylum + "\nScientific Name: " + listOfAnimals[dataPart].scientificName + "\nLifespan: " + listOfAnimals[dataPart].lifeSpan
        
        return data
        
    }
    
    func getImageName(dataPart: Int) -> String {
        return listOfAnimals[dataPart].commonName.lowercased()
    }
}
