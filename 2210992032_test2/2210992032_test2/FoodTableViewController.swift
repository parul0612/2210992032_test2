//
//  FoodTableViewController.swift
//  2210992032_test2
//
//  Created by student-2 on 23/11/24.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals: [Meal] {
        return [
            Meal(name: "Breakfast", food: [
                food(name: "eggs", description: "15 calories"),
                food(name: "pancakes", description: "25 calories"),
                food(name: "pranthe", description: "30 calories"),
                food(name: "pancakes", description: "25 calories")
            ]),
            Meal(name: "Lunch", food: [
                food(name: "grilled chicken salad", description: "110 calories"),
                food(name: "pasta primavera", description: "1.5 calories"),
                food(name: "shwarma", description: "15 calories"),
                food(name: "grilled chicken salad", description: "110 calories")

            ]),
            Meal(name: "Dinner", food: [
                food(name: "steak", description: "10 calories"),
                food(name: "vegetable stir-fry", description: "15 calories"),
                food(name: "Baccon", description: "20 calories"),
                food(name: "vegetable stir-fry", description: "15 calories")
            ])
        ]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count;
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let meal = meals[section]
        return meal.food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)

        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        var content =  cell.defaultContentConfiguration()
        content.text = food.name
        content.secondaryText = food.description
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
