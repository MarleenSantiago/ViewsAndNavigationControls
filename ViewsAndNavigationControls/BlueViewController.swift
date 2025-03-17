//
//  BlueViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Mar on 02/02/25.
//

import UIKit

class BlueViewController: UIViewController {
    
    
    @IBOutlet weak var mySearchBar: UISearchBar!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel.isHidden = true
        
        mySearchBar.delegate = self
    }

}

extension BlueViewController: UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        mySearchBar.resignFirstResponder()
        myLabel.text = mySearchBar.text
        myLabel.isHidden = false
    }
    
}
