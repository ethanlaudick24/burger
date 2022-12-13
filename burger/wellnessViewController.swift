//
//  wellnessViewController.swift
//  burger
//
//  Created by ETHAN LAUDICK on 10/25/22.
//

import UIKit

class wellnessViewController: UIViewController {

    var currBurger: Burger!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
    @IBAction func rareButton(_ sender: Any) {
        currBurger.rarityCase = .rare
        performSegue(withIdentifier: "toppingsSegue", sender: nil)
    }
    
    @IBAction func mediumRareButton(_ sender: Any) {
        currBurger.rarityCase = .mediumRare
        performSegue(withIdentifier: "toppingsSegue", sender: nil)
    }
    
    @IBAction func mediumButton(_ sender: Any) {
        currBurger.rarityCase = .medium
        performSegue(withIdentifier: "toppingsSegue", sender: nil)
    }
    
    @IBAction func mediumWellButton(_ sender: Any) {
        currBurger.rarityCase = .mediumWell
        performSegue(withIdentifier: "toppingsSegue", sender: nil)
    }
    
    @IBAction func wellDoneButton(_ sender: Any) {
        currBurger.rarityCase = .wellDone
        performSegue(withIdentifier: "toppingsSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toppingsSegue"{
            let nvc = segue.destination as! toppingsViewController
            nvc.currBurger = self.currBurger
        }
    }

}
