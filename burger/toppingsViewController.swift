//
//  toppingsViewController.swift
//  burger
//
//  Created by ETHAN LAUDICK on 10/25/22.
//

import UIKit

class toppingsViewController: UIViewController {
    
    @IBOutlet weak var toppingsLabel: UILabel!
    
    var currBurger: Burger!
    
    
    @IBOutlet weak var segmentedControllerOutlet: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)

    }
    
    @IBAction func cheeseButton(_ sender: Any) {
        if currBurger.extraCheese{
            toppingsLabel.text = "Cant add anymore Cheese"
        } else if currBurger.cheese {
            currBurger.extraCheese = true
            toppingsLabel.text = "Added Extra Cheese"
        } else {
            currBurger.cheese = true
            toppingsLabel.text = "Added Cheese"
        }
    }
    
    @IBAction func lettuceButton(_ sender: Any) {
        if currBurger.extraLettuce{
            toppingsLabel.text = "Cant add anymore Lettuce"
        } else if currBurger.lettuce {
            currBurger.extraLettuce = true
            toppingsLabel.text = "Added Extra Lettuce"
        } else {
            currBurger.lettuce = true
            toppingsLabel.text = "Added Lettuce"
        }
    }
    
    @IBAction func tomatoButton(_ sender: Any) {
        if currBurger.extraTomato{
            toppingsLabel.text = "Cant add anymore Tomato"
        } else if currBurger.tomato {
            currBurger.extraTomato = true
            toppingsLabel.text = "Added Extra Tomato"
        } else {
            currBurger.tomato = true
            toppingsLabel.text = "Added Tomato"
        }
    }
    
    @IBAction func pickelButton(_ sender: Any) {
        if currBurger.extraPickels{
            toppingsLabel.text = "Cant add anymore Pickles"
        } else if currBurger.pickels {
            currBurger.extraPickels = true
            toppingsLabel.text = "Added Extra Pickles"
        } else {
            currBurger.pickels = true
            toppingsLabel.text = "Added Pickles"
        }
    }
    
    @IBAction func orderButton(_ sender: Any) {
        performSegue(withIdentifier: "cartSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "cartSegue"{
            //let nvc = segue.destination as! cartViewController
            cartViewController.cart.append(currBurger)
        }
    }
    
    
    
    
    /*
    @IBAction func submitButton(_ sender: Any) {
        var select = segmentedControllerOutlet.selectedSegmentIndex
        
        switch select {
        case 0:
            if currBurger.cheese {
                currBurger.extraCheese = true
            } else {
                currBurger.cheese = true
            }
        case 1:
            if currBurger.lettuce {
                currBurger.extraLettuce = true
            } else {
                currBurger.lettuce = true
            }
        case 2:
            if currBurger.tomato {
                currBurger.extraTomato = true
            } else {
                currBurger.tomato = true
            }
        case 3:
            if currBurger.pickels {
                currBurger.extraPickels = true
            } else {
                currBurger.pickels = true
            }
        default:
            <#code#>
            }
        }
     */
}
