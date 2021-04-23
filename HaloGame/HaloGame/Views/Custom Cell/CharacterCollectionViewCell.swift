//
//  CharacterCollectionViewCell.swift
//  HaloGame
//
//  Created by Bryson Jones on 4/22/21.
//

import UIKit

class CharacterCollectionViewCell: UICollectionViewCell {
    //MARK: Outlets
    @IBOutlet weak var characterImageView: UIImageView!
    
    //MARK: Properties
    var character: Character? {
        didSet {
            updateViews()
        }
    }
    
    //MARK: Helper Methods
    func updateViews() {
        guard let character = character else {return}
        characterImageView.contentMode = .scaleAspectFit
        characterImageView.image = character.photo
    }
    
    
}//End of class
