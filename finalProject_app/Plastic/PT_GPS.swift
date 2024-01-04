//
//  PT_GPS.swift
//  finalProject_app
//
//  Created by natchanun jiansuwan on 23/11/2564 BE.
//

import UIKit
import WebKit
class PT_GPS: UIViewController {
    @IBOutlet weak var webGPS: WKWebView!
    var gps_accept = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let encodedUrl = gps_accept.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        let myURL = URL(string: encodedUrl)
        let myRequest = URLRequest(url: myURL!)
        
        webGPS.load(myRequest)
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
