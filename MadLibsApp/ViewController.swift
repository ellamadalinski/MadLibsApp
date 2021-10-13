//
//  ViewController.swift
//  MadLibsApp
//
//  Created by ELLA MADALINSKI on 10/8/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var segControlOutlet: UISegmentedControl!
    @IBOutlet weak var nounTextField: UITextField!
    @IBOutlet weak var verbTextField: UITextField!
    @IBOutlet weak var adjectiveTextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func clickButtonAction(_ sender: UIButton) {
        
        if nounTextField.text == "" || verbTextField.text == "" || adjectiveTextField.text == ""{
            
        }
        
        
        var noun = nounTextField.text!
        var verb = verbTextField.text!
        var adjective = adjectiveTextField.text!
        
        switch segControlOutlet.selectedSegmentIndex {
        case 0:
            performSegue(withIdentifier: "toBasketballVC", sender: nil)
            //print("0")
            var creation = MadLib(n : noun, v : verb, a : adjective, t : 0)
        case 1:
            performSegue(withIdentifier: "toSoccerVC", sender: nil)
            //print("1")
            var creation = MadLib(n : noun, v : verb, a : adjective, t : 1)
        case 2:
            performSegue(withIdentifier: "toBaseballVC", sender: nil)
            //print("2")
            var creation = MadLib(n : noun, v : verb, a : adjective, t : 2)
        case 3:
            performSegue(withIdentifier: "toFootballVC", sender: nil)
            //print("3")
            var creation = MadLib(n : noun, v : verb, a : adjective, t : 3)
        case 4:
            let num = Int.random(in: 1...4)
            switch num {
            case 1:
                performSegue(withIdentifier: "toBasketballVC", sender: nil)
            case 2:
                performSegue(withIdentifier: "toSoccerVC", sender: nil)
            case 3:
                performSegue(withIdentifier: "toBaseballVC", sender: nil)
            case 4:
                performSegue(withIdentifier: "toFootballVC", sender: nil)
            default:
                print("no")
            }
            //print("4")
            var creation = MadLib(n : noun, v : verb, a : adjective, t : (num-1))
        default:
            let num = Int.random(in: 1...4)
            switch num {
            case 1:
                performSegue(withIdentifier: "toBasketballVC", sender: nil)
            case 2:
                performSegue(withIdentifier: "toSoccerVC", sender: nil)
            case 3:
                performSegue(withIdentifier: "toBaseballVC", sender: nil)
            case 4:
                performSegue(withIdentifier: "toFootballVC", sender: nil)
            default:
                print("no")
            }
            //print("4")
            var creation = MadLib(n : noun, v : verb, a : adjective, t : (num-1))
        }
        
        
        
    }
    
}

