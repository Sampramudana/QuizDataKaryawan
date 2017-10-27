//
//  DataContactTableViewController.swift
//  QuizDataContact
//
//  Created by Sam Pramudana on 10/26/17.
//  Copyright © 2017 Sam Pramudana. All rights reserved.
//

import UIKit

class DataContactTableViewController: UITableViewController {
    
    var datakontak : [Contact] = []
    
    var nameSelected:String?
    var contactSelected:String?
    var addressSelected:String?
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return datakontak.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellData", for: indexPath) as! DataTableViewCell

        // Configure the cell...
        
        let dataTask = datakontak[indexPath.row]
        if let myDataTask = dataTask.dk_fullname {
            cell.labelName.text = myDataTask
        }
        if let myDataTask1 = dataTask.dk_phonenumber {
            cell.labelContact.text = myDataTask1
        }
        if let myDataTask2 = dataTask.dk_address {
            cell.labelAddress.text = myDataTask2
        }
        
        return cell
    }
    override func viewWillAppear(_ animated: Bool) {
        
        getData()
        tableView.reloadData()
    }
    func getData() {
        
        do{
            datakontak = try context.fetch(Contact.fetchRequest())
        }
        catch{
            print("Fetching Failed")
        }
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            let task = datakontak[indexPath.row]
            context.delete(task)
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            do{
                datakontak = try context.fetch(Contact.fetchRequest())
            }
            catch{
                print("Fetching Failed")
            }
        }
        tableView.reloadData()
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("Row \(indexPath.row)selected")
        
        let dataTask = datakontak[indexPath.row]
        nameSelected = dataTask.dk_fullname
        contactSelected = dataTask.dk_phonenumber
        addressSelected = dataTask.dk_address
        performSegue(withIdentifier: "passData", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "passData"{
            let kirimData = segue.destination as! IsiViewController
            kirimData.passName = nameSelected
            kirimData.passAddress = addressSelected
            kirimData.passContact = contactSelected
            
        }
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
