//
//  VC_PLASTIC.swift
//  finalProject_app
//
//  Created by natchanun jiansuwan on 23/11/2564 BE.
//

import UIKit
import Lottie
class VC_PLASTIC: UIViewController {
    let animationView = AnimationView()
    var label_bt:String = "   ขยะประเภทพลาสติก ประกอบไปด้วยหลากหลายประเภท ทั้งที่มีความแข็งแรง ยืดหยุ่น ทนทาน แต่เมื่อถูกกำจัดอย่างไม่ถูกต้องก็จะทำให้เกิดปัญหาต่อสิ่งแวดล้อม ไม่ว่าจะเป็นมลพิษ ไมโครพลาสติกในแหล่งน้ำโดยการกำจัดก็ทำได้หลายวิธีไม่ว่าจะเป็นการDIY หรือส่งต่อให้องกรณ์ต่างๆนำไปรีไซเคิล"
    @IBOutlet weak var information_BT: UILabel!
    @IBAction func Button( _ sender: Any){
        let TBV_PT = storyboard?.instantiateViewController(withIdentifier: "TBV_PT") as! TBV_PT
        self.navigationController?.pushViewController(TBV_PT, animated: true)
        
    }
    @IBOutlet weak var buttonLocation: UIButton!
    private func setupAnimation(){
        animationView.animation = Animation.named("Plastic_json")
        animationView.frame = CGRect.init(x: 135, y: 220, width: 150, height: 180)
        
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        animationView.backgroundBehavior = .pauseAndRestore
        view.addSubview(animationView)
//        view.sendSubviewToBack(animationView)
        view.bringSubviewToFront(buttonLocation)
        
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
