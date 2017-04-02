//
//  GroceryListViewController.swift
//  GroceryListApp
//
//  Created by Keith Alexander Tan on 4/2/17.
//  Copyright © 2017 Keith A Tan. All rights reserved.
//

import UIKit

class GroceryListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var groceryInputField: UITextField!
    
    @IBOutlet weak var groceryTable: UITableView!
    

    
    var myGroceryList = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        groceryTable.backgroundColor = UIColor(patternImage: UIImage(named: "listBackground")!)

        
        let defaults = UserDefaults.standard
        if (defaults.object(forKey: "grocery") != nil)
        {
            myGroceryList = defaults.array(forKey: "grocery") as! [String]
        }
    }
    
    
    // makes the cells clear makes the font bolder and changes the font color to white for easy readability
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor.clear
        cell.backgroundView?.backgroundColor = UIColor.clear
        cell.textLabel?.textColor = UIColor.white
        cell.textLabel?.font = UIFont(name:"HelveticaNeue-Bold", size: 16.0)
    }
 
    
    
    // removes groceries off the list if you tap on them
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myGroceryList.remove(at: indexPath.row)
        
        let defaults = UserDefaults.standard

        defaults.set(myGroceryList, forKey: "grocery")
        
        groceryTable.reloadData()
    }

    
    // adds the input fields text to my array and clears the box
    // reloads the table to display my new updated array into the table cells
    @IBAction func addToList(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        
        //checks if list exists
        if(defaults.object(forKey: "grocery") != nil)
        {
            myGroceryList = defaults.array(forKey: "grocery") as! [String]
        }
        
        
        
        myGroceryList.append(groceryInputField.text!)
        groceryInputField.text = ""
        
        defaults.set(myGroceryList, forKey: "grocery")
        
        groceryTable.reloadData()
        
    
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // returns the number of rows in the table/array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myGroceryList.count
        
    }
    
    
    // sets the text on the next cell availible to the text in the next spot of the array, which is what is put into the text box
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let groceryCell = tableView.dequeueReusableCell(withIdentifier: "grocery", for: indexPath)
        
        groceryCell.textLabel?.text = myGroceryList[indexPath.row]
        
        return groceryCell
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
