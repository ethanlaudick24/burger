//
//  ViewController.swift
//  burger
//
//  Created by ETHAN LAUDICK on 10/24/22.
//

import UIKit

class ViewController: UIViewController {

    var theBurger: Burger!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)

    }

    @IBAction func plainBurgerButton(_ sender: Any) {
        theBurger = Burger(cheese: false, lettuce: false, tomato: false, pickels: false)
        performSegue(withIdentifier: "wellnessSegue", sender: nil)
    }
    
    @IBAction func cheeseBurgerButton(_ sender: Any) {
        theBurger = Burger(cheese: true, lettuce: false, tomato: false, pickels: false)
        performSegue(withIdentifier: "wellnessSegue", sender: nil)
    }
    
    @IBAction func everythingBurgerButton(_ sender: Any) {
        theBurger = Burger(cheese: true, lettuce: true, tomato: true, pickels: true)
        performSegue(withIdentifier: "wellnessSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "wellnessSegue"{
            let nvc = segue.destination as! wellnessViewController
            nvc.currBurger = theBurger
        }
    }
    
    
    
    
    
}

