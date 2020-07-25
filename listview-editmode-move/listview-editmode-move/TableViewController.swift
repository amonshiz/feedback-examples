//
//  TableViewController.swift
//  listview-editmode-move
//
//  Created by Andrew Monshizadeh on 7/24/20.
//

import UIKit

class TableViewController: UITableViewController {
  var values = Array(0..<10)

  override func viewDidLoad() {
    super.viewDidLoad()

    self.navigationItem.rightBarButtonItem = self.editButtonItem
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
    return values.count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")

    // Configure the cell...
    cell.textLabel?.text = "\(values[indexPath.row])"

    return cell
  }

  override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
    return UITableViewCell.EditingStyle.none
  }
  
  // Override to support conditional rearranging of the table view.
  override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
    // Return false if you do not want the item to be re-orderable.
    return true
  }

  override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
    values.insert(values[sourceIndexPath.row], at: destinationIndexPath.row)
    values.remove(at: sourceIndexPath.row)
  }
}
