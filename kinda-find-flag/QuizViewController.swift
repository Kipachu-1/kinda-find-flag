//
//  QuizViewController.swift
//  kinda-find-flag
//
//  Created by Arsen Kipachu on 10/17/24.
//

import UIKit

class QuizViewController: UIViewController {
    var questions: [FlagQuestion] = []
    var currentQuestionIndex: Int = 0
    
    
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var option4btn: UIButton!
    @IBOutlet weak var option3btn: UIButton!
    @IBOutlet weak var option2btn: UIButton!
    @IBOutlet weak var option1btn: UIButton!
    
    var currentQuestion: FlagQuestion? {
           return currentQuestionIndex < questions.count ? questions[currentQuestionIndex] : nil
       }
    var shuffledOptions: [String] = []
    // Store default button colors
    var defaultButtonColors: [UIButton: UIColor] = [:]
    
    override func viewDidLoad() {
            super.viewDidLoad()
            storeDefaultButtonColors()
            setButtonBorders()
            // Check if there are any questions
            if !questions.isEmpty {
                loadQuestion()
            } else {
                print("No questions available.")
            }
    }
    
    func setButtonBorders() {
        let buttons = [option1btn, option2btn, option3btn, option4btn]
        for button in buttons {
            button?.layer.borderColor = UIColor.black.cgColor // Set the border color to black
            button?.layer.borderWidth = 2.0 // Set the border width
            button?.layer.cornerRadius = 10.0 // Optional: Add corner radius for rounded corners
        }
    }
    
    func storeDefaultButtonColors() {
        defaultButtonColors[option1btn] = option1btn.tintColor
        defaultButtonColors[option2btn] = option2btn.tintColor
        defaultButtonColors[option3btn] = option3btn.tintColor
        defaultButtonColors[option4btn] = option4btn.tintColor
    }
    
    func resetButtonColors() {
           let buttons = [option1btn, option2btn, option3btn, option4btn]
           for button in buttons {
               button?.tintColor = defaultButtonColors[button!] ?? .systemBlue // Set back to default color (or your default color)
               button?.isEnabled = true // Ensure buttons are enabled
           }
       }
    
    func showNoQuestionsAlert() {
        let alert = UIAlertController(title: "No Questions", message: "There are no questions available for this quiz.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            // Optionally, dismiss the current view controller
            self.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    func loadQuestion() {
        
            guard let question = currentQuestion else {
                showQuizCompletionAlert()
                return
            }
        
            if let imageUrl = URL(string: question.flagImageName) {
                  loadImage(from: imageUrl)
            }
            
            // Load the flag image
            flagImageView.image = UIImage(named: question.flagImageName)
            
            // Shuffle the options
            shuffledOptions = question.options.shuffled()
            
            // Assign shuffled options to buttons
            option1btn.setTitle(shuffledOptions[0], for: .normal)
            option2btn.setTitle(shuffledOptions[1], for: .normal)
            option3btn.setTitle(shuffledOptions[2], for: .normal)
            option4btn.setTitle(shuffledOptions[3], for: .normal)
            resetButtonColors()
        }
    
    func loadImage(from url: URL) {
        // Fetch image data asynchronously
        URLSession.shared.dataTask(with: url) { data, response, error in
            // Handle errors or missing data
            if let error = error {
                print("Error loading image: \(error)")
                return
            }
            
            guard let data = data, let image = UIImage(data: data) else {
                print("Unable to load image from data.")
                return
            }
            
            // Update the UI on the main thread
            DispatchQueue.main.async {
                self.flagImageView.image = image
            }
        }.resume()
    }
    
    @IBAction func optionSelected(_ sender: UIButton) {
           guard let question = currentQuestion else { return }
           
           // Check if the selected option is correct
           if let selectedOption = sender.title(for: .normal) {
               let isCorrect = question.isCorrectAnswer(selectedOption)
               if isCorrect {
                // Change bg to indicate if it is correct
                   sender.tintColor = UIColor.green
                    // Move to the next question
                   DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        self.goToNextQuestion()
                    }
               } else {
                   sender.tintColor = UIColor.red
               }
           }
       }
    
    func goToNextQuestion() {
           currentQuestionIndex += 1
           
           if currentQuestionIndex < questions.count {
               loadQuestion() // Load the next question
           } else {
               print("Reached the end of the quiz.")
               showQuizCompletionAlert()
           }
       }
    
    func showQuizCompletionAlert() {
            let alert = UIAlertController(title: "Quiz Completed", message: "You have finished the quiz!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
                self.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
    }
    
}
