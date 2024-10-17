//
//  ViewController.swift
//  kinda-find-flag
//
//  Created by Arsen Kipachu on 10/13/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onAllContinents(_ sender: Any) {
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        let quiz_controller = storyboard.instantiateViewController(withIdentifier: "quiz_view") as! QuizViewController
        let allQuestions = flagQuestionsByContinent.reduce([FlagQuestion]()) { result, continentQuestions in
            return result + continentQuestions.value
        }
        quiz_controller.questions = allQuestions
        self.present(quiz_controller, animated: true)
                
    }
    @IBAction func onAsia(_ sender: Any) {
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        let quiz_controller = storyboard.instantiateViewController(withIdentifier: "quiz_view") as! QuizViewController
      
        quiz_controller.questions = flagQuestionsByContinent["Asia"] ?? []
        self.present(quiz_controller, animated: true)
                
    }
    @IBAction func onNorthAmerica(_ sender: Any) {
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        let quiz_controller = storyboard.instantiateViewController(withIdentifier: "quiz_view") as! QuizViewController
      
        quiz_controller.questions = flagQuestionsByContinent["North America"] ?? []
        self.present(quiz_controller, animated: true)
                
    }
    
    @IBAction func onAfrica(_ sender: Any) {
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        let quiz_controller = storyboard.instantiateViewController(withIdentifier: "quiz_view") as! QuizViewController
      
        quiz_controller.questions = flagQuestionsByContinent["Africa"] ?? []
        self.present(quiz_controller, animated: true)
                
    }
    
    @IBAction func onSouthAmerica(_ sender: Any) {
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        let quiz_controller = storyboard.instantiateViewController(withIdentifier: "quiz_view") as! QuizViewController
      
        quiz_controller.questions = flagQuestionsByContinent["South America"] ?? []
        self.present(quiz_controller, animated: true)
                
    }
    @IBAction func onEurope(_ sender: Any) {
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        let quiz_controller = storyboard.instantiateViewController(withIdentifier: "quiz_view") as! QuizViewController
      
        quiz_controller.questions = flagQuestionsByContinent["Europe"] ?? []
        self.present(quiz_controller, animated: true)
                
    }
    
    @IBAction func onAntarctica(_ sender: Any) {
        let alert = UIAlertController(title: "Click Bait", message: "For fun, as Antarctica has no official flag!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in}))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func onOceania(_ sender: Any) {
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        let quiz_controller = storyboard.instantiateViewController(withIdentifier: "quiz_view") as! QuizViewController
      
        quiz_controller.questions = flagQuestionsByContinent["Oceania"] ?? []
        self.present(quiz_controller, animated: true)
                
    }
    
    
    
}

