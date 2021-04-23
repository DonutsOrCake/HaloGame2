//
//  FilterViewController.swift
//  HaloGame
//
//  Created by Bryson Jones on 4/22/21.
//

import UIKit

protocol FilterSelectionDelegate: AnyObject {
    func factionWasSelected(faction: String)
}

class FilterViewController: UIViewController {
    
    //MARK: Properties
    weak var delegate: FilterSelectionDelegate?
    
    //MARK: Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func covenantButtonTapped(_ sender: Any) {
        delegate?.factionWasSelected(faction: "covenant")
        self.dismiss(animated: true)
    }
    
    @IBAction func unscButtonTapped(_ sender: Any) {
        delegate?.factionWasSelected(faction: "unsc")
        self.dismiss(animated: true)
    }
    
}//End of class
