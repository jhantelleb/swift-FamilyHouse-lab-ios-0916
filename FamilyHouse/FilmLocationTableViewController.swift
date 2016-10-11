//
//  FilmLocationTableViewController.swift
//  FamilyHouse
//
//  Created by Alexey Medvedev on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class FilmLocationTableViewController: UITableViewController {

    var filmLocations: [FilmLocation]! = []
    var characters: [Character]! = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateFilmLocation()
        generateCharacters()
        tableView.reloadData()
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
        return filmLocations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "filmCell", for: indexPath) as! FilmLocationTableViewCell
        let filmLocation = filmLocations[indexPath.row]
        cell.filmLocation = filmLocation
        
        
        return cell
    }
    
    func generateFilmLocation() {
        
        let firstLocation = FilmLocation(name: "Botswana", address: "Embassy Drive, Government Enclave, Gaborone, Botswana", tvSeries: .fullHouse)
        let secondLocation = FilmLocation(name: "Brazil", address: "SES - Av. das Nações, Quadra 801, Lote 03 70403-900 - Brasília, DF", tvSeries: .familyMatters)
        let thirdLocation = FilmLocation(name: "Georgia", address: "11 George Balanchini St, Tbilisi", tvSeries: .fullHouse)
        let fourthlocation = FilmLocation(name: "Nigeria", address: "1075 Diplomatic Dr, Abuja", tvSeries: .familyMatters)
        
        filmLocations = [firstLocation, secondLocation, thirdLocation, fourthlocation]
    }
    
    func generateCharacters() {
        let firstCharacter = Character(name: "Waldo", realLifeName: "Jacob", tvSeries: .familyMatters, currentLocation: filmLocations[0] , image: UIImage(named: "waldo")!)
        let secondCharacter = Character(name: "Carl", realLifeName: "Paul", tvSeries: .fullHouse, currentLocation: filmLocations[0] , image: UIImage(named: "carl")!)
        let thirdCharacter = Character(name: "Danny", realLifeName: "Steve", tvSeries: .familyMatters, currentLocation: filmLocations[2] , image: UIImage(named: "danny")!)
        let fourthCharacter = Character(name: "DJ", realLifeName: "DJ", tvSeries: .fullHouse, currentLocation: filmLocations[1] , image: UIImage(named: "dj")!)
        let fifthCharacter = Character(name: "Eddie", realLifeName: "Karl", tvSeries: .familyMatters, currentLocation: filmLocations[1] , image: UIImage(named: "eddie")!)
        let sixthCharacter = Character(name: "Jesse", realLifeName: "Matthew", tvSeries: .familyMatters, currentLocation: filmLocations[1], image: UIImage(named: "jesse")!)
        let seventhCharacter = Character(name: "Joey", realLifeName: "Jim", tvSeries: .fullHouse, currentLocation: filmLocations[2] , image: UIImage(named: "joey")!)
        let eightCharacter = Character(name: "Kimmy", realLifeName: "Stephany", tvSeries: .familyMatters, currentLocation: filmLocations[0], image: UIImage(named: "kimmy")!)
        let ninthCharacter = Character(name: "Laura", realLifeName: "Lorrie", tvSeries: .familyMatters, currentLocation: filmLocations[3], image: UIImage(named: "laura")!)
        let tenthCharacter = Character(name: "Michelle", realLifeName: "Mitch", tvSeries: .fullHouse, currentLocation: filmLocations[3] , image: UIImage(named: "michelle")!)
        let eleventhCharacter = Character(name: "Rebecca", realLifeName: "Becky Johnson", tvSeries: .familyMatters, currentLocation: filmLocations[3] , image: UIImage(named: "rebecca")!)
        let twelfthCharacter = Character(name: "Stephanie", realLifeName: "Steven", tvSeries: .familyMatters, currentLocation: filmLocations[3] , image: UIImage(named: "stephanie")!)
        let thirteenthCharacter = Character(name: "Steve", realLifeName: "Bob", tvSeries: .familyMatters, currentLocation: filmLocations[3], image: UIImage(named: "steve")!)
        
        characters = [firstCharacter, secondCharacter, thirdCharacter, fourthCharacter, fifthCharacter, sixthCharacter, seventhCharacter, eightCharacter,  ninthCharacter, tenthCharacter, eleventhCharacter, twelfthCharacter, thirteenthCharacter]
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showCharacter" {
        let destination = segue.destination as! CharacterCollectionViewController
        let indexPathRow = tableView.indexPathForSelectedRow?.row
        destination.filmLocation = filmLocations[indexPathRow!]
        destination.characters = characters
        }
    }
    
    
    
    
    
    
    
    
    
    
}
