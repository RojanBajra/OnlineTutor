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
            isImage: true
        ),
        Question(
            questionTitle: "Which shape is shown in the figure?",
            correctAnswer: "Cube",
            options: ["Cuboid", "Cube", "Torus"],
            image3d: "cube",
            isImage: true
        ),
        Question(
            questionTitle: "Which animal is shown in the figure?",
            correctAnswer: "Elephant",
            options: ["Pig", "Horse", "Elephant"],
            image3d: "elephant",
            isImage: true
        ),
        Question(
            questionTitle: "Which alphabet is shown in the figure?",
            correctAnswer: "A",
            options: ["F", "A", "D"],
            image3d: "A",
            isImage: false
        ),
        Question(
            questionTitle: "Which alphabet is shown in the figure?",
            correctAnswer: "h",
            options: ["h", "e", "d"],
            image3d: "h",
            isImage: false
        ),
        Question(
            questionTitle: "What is the formula of volume for the given figure?",
            correctAnswer: "(πr ^ 2) * (2πR)",
            options: ["πr^2 * (h/3)", "(πr ^ 2) * (2πR)", "π * r^2 * h"],
            image3d: "torus",
            isImage: true
        ),
        Question(
            questionTitle: "What is the formula of base for the given figure?",
            correctAnswer: "a^2",
            options: ["2a", "a^3", "a^2"],
            image3d: "cube",
            isImage: true
        ),
        Question(
            questionTitle: "What is the mass of the given figure?",
            correctAnswer: "1.898 × 10^27 kg",
            options: ["1.898 × 10^27 kg", "5.683 × 10^26 kg", "5.633 × 10^27 kg"],
            image3d: "jupiter",
            isImage: true
        ),
        Question(
            questionTitle: "What is the radius of the given figure?",
            correctAnswer: "6,371 km",
            options: ["3,389.5 km", "58,232 km", "6,371 km"],
            image3d: "earth",
            isImage: true
        ),
        Question(
            questionTitle: "What is the phylum of the given animal?",
            correctAnswer: "Arthropod",
            options: ["Arthropod", "Chordata", "Reptiles"],
            image3d: "spider",
            isImage: true
        ),
    ]
    
    func getQuestion(dataPart: Int) -> String {
        return listOfQuestion[dataPart].questionTitle
    }
    
}
