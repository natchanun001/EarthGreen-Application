//
//  VC-QS.swift
//  finalProject_app
//
//  Created by natchanun jiansuwan on 3/12/2564 BE.
//

import UIKit
import Lottie

class VC_Main: UIViewController {
    
    let animationView1 = AnimationView()
    let animationView = AnimationView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem=nil;
        self.navigationItem.hidesBackButton=true
        self.setupAnimation()
       
    }

    private func setupAnimation(){
        animationView.animation = Animation.named("earth")
        animationView.frame = CGRect(x: 170, y: 35, width: 80, height: 80)
        animationView.backgroundColor = .yellow
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        animationView.backgroundBehavior = .pauseAndRestore
        view.addSubview(animationView)
    }
    @IBAction func Bottle( _ sender: Any){
    let vc_main = storyboard?.instantiateViewController(withIdentifier: "VC_BOTTLE") as! VC_BOTTLE
        self.navigationController?.pushViewController(vc_main, animated:true )
        
    }
    @IBAction func Plastic( _ sender: Any){
    let vc_main = storyboard?.instantiateViewController(withIdentifier: "VC_PLASTIC") as! VC_PLASTIC
        self.navigationController?.pushViewController(vc_main, animated:true )
        
    }
    @IBAction func Aluminium( _ sender: Any){
        let vc_main = storyboard?.instantiateViewController(withIdentifier: "VC_ALUMINIUM") as! VC_Aluminium
            self.navigationController?.pushViewController(vc_main, animated:true )
            
        }
    @IBAction func Electronic( _ sender: Any){
    let vc_main = storyboard?.instantiateViewController(withIdentifier: "VC_ELECTRONIC") as! VC_ELECTRONIC
        self.navigationController?.pushViewController(vc_main, animated:true )
        
    }
    @IBAction func QUIZ( _ sender: Any){
        let quiz_point = storyboard?.instantiateViewController(withIdentifier: "Start_quiz") as! Start_quiz
        self.navigationController?.pushViewController(quiz_point, animated: true)
        
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
