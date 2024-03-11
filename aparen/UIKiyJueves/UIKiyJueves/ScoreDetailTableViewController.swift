//
//  ScoreDetailTableViewController.swift
//  UIKiyJueves
//
//  Created by Fran Malo on 11/3/24.
//

import UIKit

class ScoreDetailTableViewController: UITableViewController {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var composer: UILabel!
    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var length: UILabel!
    
    var selectedScore: Score?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTitle.text = selectedScore?.title
        composer.text = selectedScore?.composer
        length.text = "\(selectedScore?.length ?? 0)"
        year.text = "\(selectedScore?.length ?? 1900)"

    }
    
    
    @IBAction func save(_ sender: UIBarButtonItem) {
    }
}
