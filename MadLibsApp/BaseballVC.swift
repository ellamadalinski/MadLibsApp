//
//  BaseballVC.swift
//  MadLibsApp
//
//  Created by ELLA MADALINSKI on 10/12/21.
//

import UIKit

class BaseballVC: UIViewController {

    var toPrint : String!
    @IBOutlet weak var textViewOutlet: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textViewOutlet.text = toPrint
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
