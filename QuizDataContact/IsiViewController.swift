//
//  IsiViewController.swift
//  QuizDataContact
//
//  Created by Sam Pramudana on 10/26/17.
//  Copyright © 2017 Sam Pramudana. All rights reserved.
//

import UIKit

class IsiViewController: UIViewController {

    @IBOutlet weak var labelAddress: UILabel!
    @IBOutlet weak var labelPhoneNumber: UILabel!
    @IBOutlet weak var labelFullName: UILabel!
    
    var passName:String?
    var passAddress:String?
    var passContact:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelFullName.text = "Your Name is " + passName!
        labelAddress.text = "Your Address is " + passAddress!
        labelPhoneNumber.text = "Your Phone Number is " + passContact!

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
