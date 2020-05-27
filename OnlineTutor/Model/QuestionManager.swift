//
//  QuestionManager.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/27/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import Foundation

struct QuestionManager {
    
    let listOfQuestion = [
        Question(
            questionTitle: "Which planet is shown in the figure?",
            correctAnswer: "Earth",
            options: ["Earth", "Mars", "Jupiter"],
            image3d: "earth",
            isImage: true,
            questionType: "SolarSystem"
        ),
        Question(
            questionTitle: "Which shape is shown in the figure?",
            correctAnswer: "Cube",
            options: ["Cuboid", "Cube", "Torus"],
            image3d: "cube",
            isImage: true,
            questionType: "Maths"
        ),
        Question(
            questionTitle: "Which animal is shown in the figure?",
            correctAnswer: "Elephant",
            options: ["Pig", "Horse", "Elephant"],
            image3d: "elephant",
            isImage: true,
            questionType: "Animal"
        ),
        Question(
            questionTitle: "Which alphabet is shown in the figure?",
            correctAnswer: "A",
            options: ["F", "A", "D"],
            image3d: "A",
            isImage: false,
            questionType: "Alphabet"
        ),
        Question(
            questionTitle: "Which alphabet is shown in the figure?",
            correctAnswer: "h",
            options: ["h", "e", "d"],
            image3d: "h",
            isImage: false,
            questionType: "Alphabet"
        ),
        Question(
            questionTitle: "What is the formula of volume for the given figure?",
            correctAnswer: "(πr ^ 2) * (2πR)",
            options: ["πr^2 * (h/3)", "(πr ^ 2) * (2πR)", "π * r^2 * h"],
            image3d: "torus",
            isImage: true,
            questionType: "Maths"
        ),
        Question(
            questionTitle: "What is the formula of base for the given figure?",
            correctAnswer: "a^2",
            options: ["2a", "a^3", "a^2"],
            image3d: "cube",
            isImage: true,
            questionType: "Maths"
        ),
        Question(
            questionTitle: "What is the mass of the given figure?",
            correctAnswer: "1.898 × 10^27 kg",
            options: ["1.898 × 10^27 kg", "5.683 × 10^26 kg", "5.633 × 10^27 kg"],
            image3d: "jupiter",
            isImage: true,
            questionType: "SolarSystem"
        ),
        Question(
            questionTitle: "What is the radius of the given figure?",
            correctAnswer: "6,371 km",
            options: ["3,389.5 km", "58,232 km", "6,371 km"],
            image3d: "earth",
            isImage: true,
            questionType: "SolarSystem"
        ),
        Question(
            questionTitle: "What is the phylum of the given animal?",
            correctAnswer: "Arthropod",
            options: ["Arthropod", "Chordata", "Reptiles"],
            image3d: "spider",
            isImage: true,
            questionType: "Animal"
        ),
    ]
    
    func getQuestion(dataPart: Int) -> String {
        return listOfQuestion[dataPart].questionTitle
    }
    
    func getOptions(dataPart: Int, buttonNumber: Int) -> String {
        return listOfQuestion[dataPart].options[buttonNumber]
    }
    
    func checkAnswer(userAnswer: String, dataPart: Int) -> Bool {
        if userAnswer.lowercased() == listOfQuestion[dataPart].correctAnswer.lowercased() {
            return true
        }else{
            return false
        }
    }
    
    func getImageName(dataPart: Int) -> String {
        return listOfQuestion[dataPart].image3d
    }
    
    func getIfImageOrNot(dataPart: Int) -> Bool {
        return listOfQuestion[dataPart].isImage
    }
    
    func getQuestionType(dataPart: Int) -> String {
        return listOfQuestion[dataPart].questionType
    }
    
}
