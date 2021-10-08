//
//  SecondViewController.swift
//  MadLibsApp
//
//  Created by ELLA MADALINSKI on 10/8/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var uncleLabelOutlet: UILabel!
    var incoming : String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print (incoming)
        uncleLabelOutlet.text = "My uncle wants to go to the \(incoming!)"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
