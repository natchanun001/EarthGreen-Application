//
//  VC_BOTTLE.swift
//  finalProject_app
//
//  Created by natchanun jiansuwan on 23/11/2564 BE.
//

import UIKit
import Lottie
class VC_BOTTLE: UIViewController {
    var label_bt:String = "   ขวดพลาสติก (PET) ขวดน้ำพลาสติกถือเป็นขยะที่สามารถรีไซเคิลได้ โดยสามรถดูได้จากใต้ขวดซึ่งจะมีสัญลักษณ์ PETหรือ PETE: polyethylene Terephthalate  ซึ่งสามารถรีไซเคลิได้ 100% และสามรถขายได้ราคาดี เพราะคุณสมบัติพลาสติก PET มีน้ำหนักโมเลกุลสูงจึงมีความเหนียวสูง มีความใสแวววาวเป็นพิเศษ มีความปลอดภัยสูง แข็งแรงทนทาน ไม่เปราะแตกง่าย แต่หากทำการกำจัด หรือทิ้งขยะอย่างไม่ถูกต้อง จะต้องใช้เวลาย่อยสลายถึง 450 ปี"
    
    let animationView = AnimationView()
    @IBAction func Button( _ sender: Any){
        let TBV_BT = storyboard?.instantiateViewController(withIdentifier: "TBV_BT") as! TBV_BT
        self.navigationController?.pushViewController(TBV_BT, animated: true)
        
    }
    @IBOutlet weak var buttonLocation: UIButton!
    private func setupAnimation(){
        animationView.animation = Animation.named("Bottle_json")
        animationView.frame = CGRect.init(x: 110, y: 220, width: 200, height: 200)
        
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        animationView.backgroundBehavior = .pauseAndRestore
        view.addSubview(animationView)
//        view.sendSubviewToBack(animationView)
        view.bringSubviewToFront(animationView)
        
    }
   
    @IBOutlet weak var information_BT: UILabel!
    
    
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
