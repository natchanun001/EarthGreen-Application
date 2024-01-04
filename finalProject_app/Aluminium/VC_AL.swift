//
//  VC_AL.swift
//  finalProject_app
//
//  Created by natchanun jiansuwan on 27/11/2564 BE.
//

import UIKit
import WebKit
class VC_AL: UIViewController {
        var webb:String = ""
        var lb_Info:String = ""
        var lb_name:String = ""
        var fbweb:String = ""
        var ggweb:String = ""
        @IBOutlet weak var partyimage: UIImageView!
        @IBOutlet weak var lbInfo: UILabel!
       
        
        @IBOutlet weak var lbname: UILabel!
        override func viewDidLoad() {
            super.viewDidLoad()
            lbname.text = lb_name.description
            lbInfo.text = lb_Info.description
            partyimage.image = UIImage.init(named: webb)
            self.partyimage.layer.cornerRadius = self.partyimage.frame.width/4.0
            self.partyimage.clipsToBounds = true
    //        let encodedUrl = webb.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
    //        let myURL = URL(string: encodedUrl)
    //        let myRequest = URLRequest(url: myURL!)
    //
    //        web.load(myRequest)

            // Do any additional setup after loading the view.
        }
        

        
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "facebook" {
                let vc = segue.destination as! AL_FB
                vc.fb_accept = fbweb
            }
            if segue.identifier == "googleGps"{
                let vc = segue.destination as! AL_GPS
                vc.gps_accept = ggweb
            }
            
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        

}

