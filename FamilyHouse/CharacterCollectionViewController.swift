//
//  CharacterCollectionViewController.swift
//  FamilyHouse
//
//  Created by Alexey Medvedev on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class CharacterCollectionViewController: UICollectionViewController {

    var characters: [Character]! = []
    var filmLocation: FilmLocation!
    var selectedCharacters: [Character]! = []
    
    @IBAction func selectedCharacterReportToSet(_ sender: AnyObject) {
        for character in selectedCharacters {
            if character.tvSeries.description == filmLocation.tvSeries.description {
                print("Hey! You're allowed on set")
            }else {
                print("Hey! You're not allowed on set :) ")
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "filmCell")
        collectionView?.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return characters.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "characterCell", for: indexPath) as! CharacterCollectionViewCell
        cell.characterImageView.image = characters[indexPath.item].image
        cell.characterNameLabel.text = characters[indexPath.item].name
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedCharacters.append(characters[indexPath.item])
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderWidth = 2.0
        cell?.layer.borderColor = UIColor.gray.cgColor
    }
    
    
    
    
    
    
    
    
    
    

}
