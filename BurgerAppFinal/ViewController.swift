//
//  ViewController.swift
//  BurgerAppFinal
//
//  Created by Timothy Collins on 12/12/22.
//

import UIKit

class AppData{
    static var cart = ""
    static var total = 0.0
}

class ViewController: UIViewController {
    
    var burGer = Burger.burgerOrder.original
    var cook = Burger.cook.rare
    var top = Burger.topping.muster
  
    var cost = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func burgerMenu(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            burGer = Burger.burgerOrder.original
            cost = 10.50
        }
        if sender.selectedSegmentIndex == 1{
            burGer = Burger.burgerOrder.veggi
            cost = 11.00
        }
        if sender.selectedSegmentIndex == 2{
            burGer = Burger.burgerOrder.cheese
            cost = 9.00
        }
        
        
        
        
    }
    
    
    @IBAction func burgerCooked(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            cook = Burger.cook.rare
        }
        if sender.selectedSegmentIndex == 1{
            cook = Burger.cook.medium
        }
        if sender.selectedSegmentIndex == 2{
            cook = Burger.cook.wellDone
        }
        
        
    }
    
    
    @IBAction func burgerSauce(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            top = Burger.topping.muster
        }
        if sender.selectedSegmentIndex == 1{
            top = Burger.topping.ketchup
        }
        if sender.selectedSegmentIndex == 2{
            top = Burger.topping.mayo
        }
    }
    
    
    
    @IBAction func addOrder(_ sender: UIButton) {
        AppData.total += cost
        AppData.cart += "Type: \(burGer)  Temp: \(cook)  Topping: \(top) Cost: $\(cost) \n"
    
    }
    
    
}
