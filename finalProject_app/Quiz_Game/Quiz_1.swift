//
//  Quiz_1.swift
//  finalProject_app
//
//  Created by natchanun jiansuwan on 4/12/2564 BE.
//

import UIKit
import Lottie
import Firebase
class Quiz_1: UIViewController {
    var score_1 = 0
    var nameUser_1:String = ""
   
    // Button Answer
    @IBOutlet var ansButton: UIButton!
    
    @IBOutlet weak var question: UILabel!

    var dataQuiz: [String:Any]!

    @IBAction func Electronic(_ sender: Any) {
        pushToNewQuiz(answerNumber: 4)
    }
    
    @IBAction func Plastic(_ sender: Any) {
        pushToNewQuiz(answerNumber: 3)
    }
    
    @IBAction func Aluminium(_ sender: Any) {
        pushToNewQuiz(answerNumber: 2)
    }
    
    @IBAction func bottle(_ sender: Any) {
        pushToNewQuiz(answerNumber: 1)
    }
    
    private func pushToNewQuiz(answerNumber: Int) {
        let quiz2 = storyboard?.instantiateViewController(withIdentifier: "Quiz_2") as! Quiz_2
        if let answer = dataQuiz["ans\(answerNumber)"] as? String {
            if answer == "this" {
                score_1 += 1
            }
        }
        quiz2.nameUser_2 = nameUser_1
        quiz2.score_quiz2 += score_1
        self.navigationController?.pushViewController(quiz2, animated: true)
    }
    
   
    let animationView = AnimationView()
    let ref = Database.database().reference()

    override func viewDidLoad() {
        self.navigationItem.leftBarButtonItem = nil;
        self.navigationItem.hidesBackButton = true
        super.viewDidLoad()
        
        self.setupAnimation()
        self.fetchData()
        print("start")
        // Do any additional setup after loading the view.
    }
    
    func fetchData() {
        ref.child("Quiz/quiz1").getData(completion: {error, snapshot in
            guard error == nil else {
                print(error!.localizedDescription)
                return;
            }
            
            self.dataQuiz = snapshot.value as? [String:Any]
            self.question.text = self.dataQuiz["question"] as? String ?? "unknown"
            
        })
    }
    
    private func setupAnimation()  {
        animationView.animation = Animation.named("tree chistmas")
        animationView.frame = CGRect.init(x: 100, y: 600, width: 200, height: 200)
        
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        animationView.backgroundBehavior = .pauseAndRestore
        view.addSubview(animationView)
        view.sendSubviewToBack(animationView)
    }
   
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
//        if segue.identifier == "passdata"{
//            print("prepare", self.score_1)
//            let vc = segue.destination as! Quiz_2
//            vc.score = score_1
//
//        }
    }
    

}
