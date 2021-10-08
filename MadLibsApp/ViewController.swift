//
//  ViewController.swift
//  MadLibsApp
//
//  Created by ELLA MADALINSKI on 10/8/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var uncleTextFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! SecondViewController
        nvc.incoming = uncleTextFieldOutlet.text!
        
    }
    
}

