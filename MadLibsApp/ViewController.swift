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
                performSegue(withIdentifier: "toBasketballVC", sender: nil)
                //print("0")
                madLibsString = creation.createBasketballMadLibs(noun, verb, adjective)
            case 1:
                performSegue(withIdentifier: "toSoccerVC", sender: nil)
                //print("1")
                madLibsString = creation.createSoccerMadLibs(noun, verb, adjective)
            case 2:
                performSegue(withIdentifier: "toBaseballVC", sender: nil)
                //print("2")
                madLibsString = creation.createBaseballMadLibs(noun, verb, adjective)
            case 3:
                performSegue(withIdentifier: "toFootballVC", sender: nil)
                //print("3")
                madLibsString = creation.createFootballMadLibs(noun, verb, adjective)
            case 4:
                let num = Int.random(in: 1...4)
                switch num {
                case 1:
                    performSegue(withIdentifier: "toBasketballVC", sender: nil)
                    madLibsString = creation.createBasketballMadLibs(noun, verb, adjective)
                case 2:
                    performSegue(withIdentifier: "toSoccerVC", sender: nil)
                    madLibsString = creation.createSoccerMadLibs(noun, verb, adjective)
                case 3:
                    performSegue(withIdentifier: "toBaseballVC", sender: nil)
                    madLibsString = creation.createBaseballMadLibs(noun, verb, adjective)
                case 4:
                    performSegue(withIdentifier: "toFootballVC", sender: nil)
                    madLibsString = creation.createFootballMadLibs(noun, verb, adjective)
                default:
                    print("no")
                }
                //print("4")
                
            default:
                let num = Int.random(in: 1...4)
                switch num {
                case 1:
                    performSegue(withIdentifier: "toBasketballVC", sender: nil)
                    madLibsString = creation.createBasketballMadLibs(noun, verb, adjective)
                case 2:
                    performSegue(withIdentifier: "toSoccerVC", sender: nil)
                    madLibsString = creation.createSoccerMadLibs(noun, verb, adjective)
                case 3:
                    performSegue(withIdentifier: "toBaseballVC", sender: nil)
                    madLibsString = creation.createBaseballMadLibs(noun, verb, adjective)
                case 4:
                    performSegue(withIdentifier: "toFootballVC", sender: nil)
                    madLibsString = creation.createFootballMadLibs(noun, verb, adjective)
                default:
                    print("no")
                }
                //print("4")
            }
        }
        else{
            //alert
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

