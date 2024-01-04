//
//  Developer_credit.swift
//  finalProject_app
//
//  Created by natchanun jiansuwan on 4/12/2564 BE.
//

import UIKit
import Lottie

class Developer_credit: UIViewController {
    
    let animationView1 = AnimationView()
    let animationView = AnimationView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupAnimation()
        // Do any additional setup after loading the view.
    }

    private func setupAnimation(){
        animationView.animation = Animation.named("developer")
        animationView.frame = CGRect.init(x: 40, y: 500, width: 350, height: 350)
        
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        animationView.backgroundBehavior = .pauseAndRestore
        view.addSubview(animationView)
       
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
