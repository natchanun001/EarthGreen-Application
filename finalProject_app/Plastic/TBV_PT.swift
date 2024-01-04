//
//  TBV_PT.swift
//  finalProject_app
//
//  Created by natchanun jiansuwan on 23/11/2564 BE.
//

import UIKit

class TBV_PT: UITableViewController {
    var imgg:[String] = []
    var labell:[String] = []
    var labell2:[String] = []
    var partyimg:[String] = []
    var lbinfo:[String] = []
    var lbname:[String] = []
    var facebook:[String] = []
    var googlemap:[String] = []
    var plist:[String:[String]] = [:]
    func loadPlist(){
        let url = Bundle.main.url(forResource: "PL_Plist", withExtension: "plist")!
        let testData = try! Data(contentsOf: url)
        let myPlist = try! PropertyListSerialization.propertyList(from: testData, options: [] , format: nil)
        plist=myPlist as! Dictionary
        
        for (key,values) in plist {
            if key == "Image" {
                for i in values {
                    imgg.append(i)
                }
            }
            else if key == "label" {
                for i in values {
                    labell.append(i)
                }
            }
            else if key == "label2" {
                for i in values {
                    labell2.append(i)
                }
            }
            else if key == "party_image" {
                for i in values{
                    partyimg.append(i)
                }
            }
            else if key == "lb_info" {
                for i in values{
                    lbinfo.append(i)
                }
            }
            else if key == "lb_name" {
                for i in values{
                    lbname.append(i)
                }
            }
            else if key == "facebook" {
                for i in values{
                    facebook.append(i)
                }
            }
            else if key == "gps" {
                for i in values{
                    googlemap.append(i)
                }
            }
            
        }
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        loadPlist()
        self.tableView.rowHeight = 120

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return labell.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "webdata", for: indexPath) as! TBVC_PT
        cell.img.image = UIImage.init(named: imgg[indexPath.row])
        cell.lb.text = labell[indexPath.row]
        cell.lb2.text = labell2[indexPath.row]
        return cell
        // Configure the cell...

    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let rowData=self.tableView.indexPathForSelectedRow?.row
        
        if segue.identifier == "webgps" {
            let vc = segue.destination as! VC_PT
            vc.webb = partyimg[rowData!]
            vc.lb_name = lbname[rowData!]
            vc.lb_Info = lbinfo[rowData!]
            vc.fbweb = facebook[rowData!]
            vc.ggweb = googlemap[rowData!]
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
}



