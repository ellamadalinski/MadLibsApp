//
//  ViewController.swift
//  MadLibsApp
//
//  Created by ELLA MADALINSKI on 10/8/21.
//

import UIKit

class ViewController: UIViewController {

    var madLibsString : String = ""
    
    
    
    @IBOutlet weak var segControlOutlet: UISegmentedControl!
    @IBOutlet weak var nounTextField: UITextField!
    @IBOutlet weak var verbTextField: UITextField!
    @IBOutlet weak var adjectiveTextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func clickButtonAction(_ sender: UIButton) {
        
        if nounTextField.text != "" && verbTextField.text != "" && adjectiveTextField.text != ""{
            var noun = nounTextField.text!
            var verb = verbTextField.text!
            var adjective = adjectiveTextField.text!
            
            var creation = MadLib(n : noun, v : verb, a : adjective)
            
            switch segControlOutlet.selectedSegmentIndex {
            case 0:
                madLibsString = creation.createBasketballMadLibs()
                performSegue(withIdentifier: "toBasketballVC", sender: nil)
                //print("0")
            case 1:
                madLibsString = creation.createSoccerMadLibs()
                performSegue(withIdentifier: "toSoccerVC", sender: nil)
                //print("1")
            case 2:
                madLibsString = creation.createBaseballMadLibs()
                performSegue(withIdentifier: "toBaseballVC", sender: nil)
                //print("2")
            case 3:
                madLibsString = creation.createFootballMadLibs()
                performSegue(withIdentifier: "toFootballVC", sender: nil)
                //print("3")
            case 4:
                let num = Int.random(in: 1...4)
                switch num {
                case 1:
                    madLibsString = creation.createBasketballMadLibs()
                    performSegue(withIdentifier: "toBasketballVC", sender: nil)
                    
                case 2:
                    madLibsString = creation.createSoccerMadLibs()
                    performSegue(withIdentifier: "toSoccerVC", sender: nil)
                    
                case 3:
                    madLibsString = creation.createBaseballMadLibs()
                    performSegue(withIdentifier: "toBaseballVC", sender: nil)
                    
                case 4:
                    madLibsString = creation.createFootballMadLibs()
                    performSegue(withIdentifier: "toFootballVC", sender: nil)
                    
                default:
                    print("no")
                }
                //print("4")
                
            default:
                let num = Int.random(in: 1...4)
                switch num {
                case 1:
                    madLibsString = creation.createBasketballMadLibs()
                    performSegue(withIdentifier: "toBasketballVC", sender: nil)
                    
                case 2:
                    madLibsString = creation.createSoccerMadLibs()
                    performSegue(withIdentifier: "toSoccerVC", sender: nil)
                    
                case 3:
                    madLibsString = creation.createBaseballMadLibs()
                    performSegue(withIdentifier: "toBaseballVC", sender: nil)
                    
                case 4:
                    madLibsString = creation.createFootballMadLibs()
                    performSegue(withIdentifier: "toFootballVC", sender: nil)
                    
                default:
                    print("no")
                }
                //print("4")
            }
        }
        else{
            let alert = UIAlertController(title: "Error", message: "1+ Text Feilds Not Filled Out", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
        
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.description == "toBasketballVC"{
            let nvc0 = segue.destination as! BasketballVC
            nvc0.toPrint = madLibsString
        }
        else if segue.description == "toSoccerVC"{
            let nvc1 = segue.destination as! SoccerVC
            nvc1.toPrint = madLibsString
        }
        else if segue.description == "toBaseballVC"{
            let nvc2 = segue.destination as! BaseballVC
            nvc2.toPrint = madLibsString
        }
        else if segue.description == "toFootballVC"{
            let nvc3 = segue.destination as! FootballVC
            nvc3.toPrint = madLibsString
        }
        
        
    }
    
}

