//
//  Start_quiz.swift
//  finalProject_app
//
//  Created by natchanun jiansuwan on 4/12/2564 BE.
//

import UIKit
import Lottie

class Start_quiz: UIViewController {
    var nameUser:String = ""
    @IBOutlet weak var name: UITextField!
    @IBAction func BackHome( _ sender: Any){
    let vc_main = storyboard?.instantiateViewController(withIdentifier: "VC-Main") as! VC_Main
        self.navigationController?.pushViewController(vc_main, animated:true )
        
    }
    let animationView = AnimationView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem=nil;
        self.navigationItem.hidesBackButton=true
        self.setupAnimation()
        // Do any additional setup after loading the view.
    }

    private func setupAnimation(){
        animationView.animation = Animation.named("bear")
        animationView.frame = view.bounds
        
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        animationView.backgroundBehavior = .pauseAndRestore
        view.addSubview(animationView)
        view.sendSubviewToBack(animationView)
    }

    @IBAction func buttonNext(_ sender: Any) {
        let quiz1 = storyboard?.instantiateViewController(withIdentifier: "Quiz_1") as! Quiz_1
        if let text = self.name.text, text.isEmpty {
              name.text = "นิรนาม"
           }
        self.nameUser = self.name.text!
        quiz1.nameUser_1 = self.nameUser
        print(self.nameUser)
       
        self.navigationController?.pushViewController(quiz1, animated: true)
        
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
