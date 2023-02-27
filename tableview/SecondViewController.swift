//
//  SecondViewController.swift
//  tableview
//
//  Created by Nicole Mills on 2/26/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lbl.text = "Language selected"
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
