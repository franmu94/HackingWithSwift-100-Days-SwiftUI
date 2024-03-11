//
//  ScoresTableViewController.swift
//  UIKiyJueves
//
//  Created by Fran Malo on 10/3/24.
//

import UIKit

final class ScoresTableViewController: UITableViewController {
    
    let logic = ScoreLogic.shared

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    
    
    // Si las secciones son 1, borramos numberOfSections porque la clase padre ya devuelveese 1 como total de secciones de la tabla
    
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        logic.scores.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "zelda", for: indexPath)
        var content = UIListContentConfiguration.subtitleCell()
        let score = logic.getScore(indexPath: indexPath)
        
        content.text = score.title
        content.secondaryText = score.composer
        content.image = UIImage(named: score.cover)
        
        cell.contentConfiguration = content
        
        return cell
    }


    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        true
    }
    
    
    
    
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            logic.removeScore(indexPath: indexPath)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        logic.moveScore(indexPath: fromIndexPath, to: to)
    }



    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        
        true
    }


  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let selected = tableView.indexPathForSelectedRow,
              let destination = segue.destination as? ScoreDetailTableViewController else { return }
        destination.selectedScore = logic.getScore(indexPath: selected)
    }

}
