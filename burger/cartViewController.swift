//
//  cartViewController.swift
//  burger
//
//  Created by ETHAN LAUDICK on 10/25/22.
//

import UIKit

class cartViewController: UIViewController {

    static var cart: [Burger] = []
    
    @IBOutlet weak var textViewForBurg: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: false)

        
        for Burger in cartViewController.cart{
            textViewForBurg.text = textViewForBurg.text + Burger.toString() + "\n"
        }
        
    }

    @IBAction func returnToMenuButton(_ sender: Any) {
        performSegue(withIdentifier: "returnToMenuSegue", sender: nil)
    }
    

}
