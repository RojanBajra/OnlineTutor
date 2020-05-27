//
//  TestViewController.swift
//  OnlineTutor
//
//  Created by Rojan Bajracharya on 5/27/20.
//  Copyright © 2020 Rojan Bajracharya. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var btnOption1: UIButton!
    @IBOutlet weak var btnOption2: UIButton!
    @IBOutlet weak var btnOption3: UIButton!
    @IBOutlet weak var btnCamera: UIButton!
    
    var questionNumbers:[Int] = []
    var currentQuestion = 0
    var correctAnswers = 0
    let questionManager = QuestionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateRandomQuestionNubmers()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("correct answers \(correctAnswers) total question \(currentQuestion)")
    }
    
    func setupUI() {
        lblQuestion.text = questionManager.getQuestion(dataPart: questionNumbers[currentQuestion])
        setupOptions()
        
        btnOption1.backgroundColor = ColorForApp.shareInstance.colorPrimary()
        btnOption2.backgroundColor = ColorForApp.shareInstance.colorPrimary()
        btnOption3.backgroundColor = ColorForApp.shareInstance.colorPrimary()
        
        btnOption1.setTitleColor(UIColor.black, for: .normal)
        btnOption2.setTitleColor(UIColor.black, for: .normal)
        btnOption3.setTitleColor(UIColor.black, for: .normal)
        
        btnOption1.layer.cornerRadius = 20
        btnOption2.layer.cornerRadius = 20
        btnOption3.layer.cornerRadius = 20
        
        btnCamera.setTitleColor(ColorForApp.shareInstance.colorPrimary(), for: .normal)
        btnCamera.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20.0)
    }
    
    func setupOptions() {
        btnOption1.setTitle(questionManager.getOptions(dataPart: questionNumbers[currentQuestion], buttonNumber: 0), for: .normal)
        btnOption2.setTitle(questionManager.getOptions(dataPart: questionNumbers[currentQuestion], buttonNumber: 1), for: .normal)
        btnOption3.setTitle(questionManager.getOptions(dataPart: questionNumbers[currentQuestion], buttonNumber: 2), for: .normal)
    }
    
    func generateRandomQuestionNubmers() {
        var randomInt = Int.random(in: 0..<10)
        
        while questionNumbers.count < 5 {
            print(randomInt)
            if !questionNumbers.contains(randomInt) {
                questionNumbers.append(randomInt)
            }
            randomInt = Int.random(in: 0..<10)
        }
        for a: Int in questionNumbers {
            print("values are " + String(a))
        }
    }
    
    @IBAction func btnAnswer(_ sender: UIButton) {
        
        if questionManager.checkAnswer(userAnswer: sender.titleLabel!.text!, dataPart: questionNumbers[currentQuestion]) {
            correctAnswers = correctAnswers + 1
        }
        
        currentQuestion = currentQuestion + 1
        
        if currentQuestion >= 5 {
            currentQuestion = 0
            correctAnswers = 0
            questionNumbers = []
            print("total correct answer is " + String(correctAnswers))
            showAlertMessage()
            
        }else{
            lblQuestion.text = questionManager.getQuestion(dataPart: questionNumbers[currentQuestion])
            setupOptions()
        }
        
        
    }
    
    func showAlertMessage() {
        let alert = UIAlertController(title: "Test Result", message: "Total Questions \(questionNumbers.count)\nTotal Correct Answers: \(correctAnswers)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: {action in
            self.navigationController?.popViewController(animated: true)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func btnCamera(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "MathsTableVC") as! MathsTableViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
