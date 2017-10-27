//
//  DetailViewController.swift
//  QuizDataContact
//
//  Created by Sam Pramudana on 10/26/17.
//  Copyright © 2017 Sam Pramudana. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var etAddress: UITextField!
    @IBOutlet weak var etPhoneNumber: UITextField!
    @IBOutlet weak var etFullName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnSaveTask(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
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
