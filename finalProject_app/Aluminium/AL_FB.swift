//
//  AL_FB.swift
//  finalProject_app
//
//  Created by natchanun jiansuwan on 27/11/2564 BE.
//

import UIKit
import WebKit
class AL_FB: UIViewController {
    @IBOutlet weak var webFB: WKWebView!
    var fb_accept =  ""
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        let encodedUrl = fb_accept.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        let myURL = URL(string: encodedUrl)
        let myRequest = URLRequest(url: myURL!)
        
        webFB.load(myRequest)
        
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
