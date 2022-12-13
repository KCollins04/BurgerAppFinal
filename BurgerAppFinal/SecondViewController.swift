//
//  SecondViewController.swift
//  BurgerAppFinal
//
//  Created by Timothy Collins on 12/12/22.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var cartTotal: UITextView!
    
    @IBOutlet weak var money: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        money.text = "$\(AppData.total)"
        cartTotal.text = AppData.cart
 
    }
    
    
  
    @IBAction func restartButton(_ sender: UIButton) {
        cartTotal.text = " "
        money.text = "$0.00"
        AppData.cart = ""
        AppData.total = 0.0 
        
        let alert = UIAlertController(title: "ReStart", message: "You just empty your cart and total", preferredStyle: .alert )
        // Creat Action
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        //adding actions
        alert.addAction(okAction)
         
        //present
        present(alert, animated: true, completion: nil)
        
        
    }
    
}
