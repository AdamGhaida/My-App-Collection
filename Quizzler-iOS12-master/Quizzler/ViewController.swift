//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var score = 0
    let allQuestions = Bank()
    var pickedAnswers : Bool = false
    var questionNum : Int = 0
    
    //Place your instance variables here
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = allQuestions.list[0]
        questionLabel.text = firstQuestion.questionText
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1{
            pickedAnswers = true
            print("True Pressed")
        }
        else if sender.tag == 2{
            pickedAnswers = false
        }
        checkAnswer()
        
        questionNum = questionNum + 1
        nextQuestion()
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNum + 1) / 13"
        
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNum + 1)
        
    }
    

    func nextQuestion() {
        if questionNum <= 12{
            questionLabel.text = allQuestions.list[questionNum].questionText
            
            updateUI()
        }
        else{
            let alert = UIAlertController(title: "Quiz End!", message: "Congrats, you made it to the end", preferredStyle: .alert)
            let restart = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in self.startOver()
            }
            alert.addAction(restart)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNum].questionAnswer
        
        if correctAnswer == pickedAnswers{
            ProgressHUD.showSuccess("Correct!")
            score += 1
        }
        else{
            ProgressHUD.showError("Wrong!")
        }
        
    }
    
    
    func startOver() {
       questionNum = 0
        score = 0
       nextQuestion()
    }
    

    
}
