//
//  Quiz_8.swift
//  finalProject_app
//
//  Created by natchanun jiansuwan on 5/12/2564 BE.
//

import UIKit
import Lottie
import Firebase
class Quiz_8: UIViewController {
    
    var nameUser_8:String = " "
    var dataQuiz: [String:Any]!
    
    @IBOutlet weak var question: UILabel!
    var score_quiz8:Int = Int()
    let ref = Database.database().reference()
//    func checkScore() {
//        print(score,"หน้า2")
//    }
    
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
    func fetchData() {
        ref.child("Quiz/quiz8").getData(completion: {error, snapshot in
            guard error == nil else {
                print(error!.localizedDescription)
                return;
            }
            
            self.dataQuiz = snapshot.value as? [String:Any]
            self.question.text = self.dataQuiz["question"] as? String ?? "unknown"
            
        })
    }
    
    private func pushToNewQuiz(answerNumber: Int) {
        let quiz9 = storyboard?.instantiateViewController(withIdentifier: "Quiz_9") as! Quiz_9
        if let answer = dataQuiz["ans\(answerNumber)"] as? String {
            if answer == "this" {
                score_quiz8 += 1
            }
        }
        print(score_quiz8)
        quiz9.nameUser_9 = self.nameUser_8
        quiz9.score_quiz9 = self.score_quiz8
        self.navigationController?.pushViewController(quiz9, animated: true)
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
    
    let animationView = AnimationView()
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = nil;
        self.navigationItem.hidesBackButton = true
        self.setupAnimation()
        self.fetchData()
        print(score_quiz8,"คะแนนหน้าที่ 8")
       
   
        // Do any additional setup after loading the view.
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selectd object to the new view controller.

//        if segue.identifier == "passdata"{
//            let vc = segue.destination as! ViewController
//            vc.web = webAddresses
//            vc.webb = webBuy
    }
    

}

