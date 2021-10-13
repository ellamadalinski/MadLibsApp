//
//  MadLib.swift
//  MadLibsApp
//
//  Created by ELLA MADALINSKI on 10/13/21.
//

import Foundation

public class MadLib{
    
    var noun : String
    var verb : String
    var adjective : String
    
    init(n : String, v : String, a : String){
        noun = n
        verb = v
        adjective = a
    }
    
    func createBasketballMadLibs (_ n : String, _ v : String, _ a : String)-> String{
        return "0"
        
    }
    
    func createSoccerMadLibs (_ n : String, _ v : String, _ a : String)-> String{
        return "1"
        
    }
    
    func createBaseballMadLibs (_ n : String, _ v : String, _ a : String)-> String{
        return "2"
        
    }
    
    func createFootballMadLibs (_ n : String, _ v : String, _ a : String)-> String{
        return "3"
        
    }
    
    
}
