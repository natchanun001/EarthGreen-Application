//
//  Quiz_Point.swift
//  finalProject_app
//
//  Created by natchanun jiansuwan on 5/12/2564 BE.
//

import UIKit
import Lottie
//#96FEB5
class Quiz_Point: UIViewController {
    var userName_point:String = ""
   
    @IBAction func backToHome(_ sender: Any) {
        let quiz_point = storyboard?.instantiateViewController(withIdentifier: "Start_quiz") as! Start_quiz
        self.navigationController?.pushViewController(quiz_point, animated: true)
    }
    func colorText(){
        if quiz_point >= 5 {
            point.textColor = UIColor.init(red: 82/255, green: 255/255, blue: 186/255, alpha: 1)
        } else if quiz_point < 5 {
            point.textColor = UIColor.init(red: 255/255, green: 105/255, blue: 103/255, alpha: 1)
        
        }
    }
    @IBOutlet weak var point: UILabel!
    @IBOutlet weak var name: UILabel!
    var quiz_point:Int = Int()
    override func viewDidLoad() {
        self.colorText()
        self.setupAnimation()
        self.navigationItem.leftBarButtonItem = nil;
        self.navigationItem.hidesBackButton = true
        super.viewDidLoad()
        name.text = userName_point.description
        point.text = quiz_point.description
        print(quiz_point,"คะแนนรวม")
        // Do any additional setup after loading the view.
    }
    private func setupAnimation()  {
        animationView.animation = Animation.named("Quiz_Point_json")
        animationView.frame = CGRect.init(x: -90, y: 160, width: 600, height: 600)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        animationView.backgroundBehavior = .pauseAndRestore
        view.addSubview(animationView)
        view.sendSubviewToBack(animationView)
    }
    let animationView = AnimationView()

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
