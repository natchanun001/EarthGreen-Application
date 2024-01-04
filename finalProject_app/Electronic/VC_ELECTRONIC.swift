//
//  VC_ELECTRONIC.swift
//  finalProject_app
//
//  Created by natchanun jiansuwan on 27/11/2564 BE.
//

import UIKit
import Lottie
class VC_ELECTRONIC: UIViewController {
    let animationView = AnimationView()
    var label_bt:String = "   การรีไซเคิลเศษอลูมิเนียม เป็นกระบวนการที่เศษอลูมิเนียมสามารถนำกลับมาใช้ในผลิตภัณฑ์ได้หลังจากการผลิตครั้งแรก กระบวนการนี้เกี่ยวข้องกับการหลอมโลหะใหม่ซึ่งมีราคาถูกกว่าและใช้พลังงานน้อยกว่าการสร้างอลูมิเนียมใหม่ผ่านอิเล็กโทรไลซิสของอะลูมิเนียมออกไซด์ (Al2O3) ซึ่งจะต้องขุดจากแร่อะลูมิเนียมก่อนแล้วจึงทำการกลั่นโดยใช้กระบวนการไบเออร์ การรีไซเคิลเศษอลูมิเนียม"
    private func setupAnimation(){
        animationView.animation = Animation.named("Electronic_json")
        animationView.frame = CGRect.init(x: 130, y: 210, width: 200, height: 200)
        
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        animationView.backgroundBehavior = .pauseAndRestore
        view.addSubview(animationView)
//        view.sendSubviewToBack(animationView)
//        view.bringSubviewToFront(buttonLocation)
        
    }
    @IBOutlet weak var information_BT: UILabel!
    @IBAction func Button( _ sender: Any){
        let TBV_EL = storyboard?.instantiateViewController(withIdentifier: "TBV_EL") as! TBV_EL
        self.navigationController?.pushViewController(TBV_EL, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAnimation()
        information_BT.text = label_bt.description
       
        // Do any additional setup after loading the view.
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

