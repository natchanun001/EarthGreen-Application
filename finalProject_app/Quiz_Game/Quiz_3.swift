//
//  Quiz_3.swift
//  finalProject_app
//
//  Created by natchanun jiansuwan on 6/12/2564 BE.
//

import UIKit
import Firebase
import Lottie
class Quiz_3: UIViewController {
    var score_3:Int = 0
    var nameUser_3:String = ""
    var dataQuiz: [String:Any]!
    
    @IBOutlet weak var question: UILabel!
    var score_quiz3:Int = Int()
    let ref = Database.database().reference()

    
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
        ref.child("Quiz/quiz3").getData(completion: {error, snapshot in
            guard error == nil else {
                print(error!.localizedDescription)
                return;
            }
            
            self.dataQuiz = snapshot.value as? [String:Any]
            self.question.text = self.dataQuiz["question"] as? String ?? "unknown"
            
        })
    }
    
    private func pushToNewQuiz(answerNumber: Int) {
        let quiz4 = storyboard?.instantiateViewController(withIdentifier: "Quiz_4") as! Quiz_4
        if let answer = dataQuiz["ans\(answerNumber)"] as? String {
            if answer == "this" {
                score_quiz3 += 1
            }
        }
        quiz4.nameUser_4 = self.nameUser_3
        quiz4.score_quiz4 += self.score_quiz3
        self.navigationController?.pushViewController(quiz4, animated: true)
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
        print(score_quiz3,"คะแนนหน้าที่ 3")
       
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



