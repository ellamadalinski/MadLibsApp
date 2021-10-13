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
    
    func createBasketballMadLibs ()-> String{
        return "Johnny \(verb) and dribbled to the hoop, but was stopped by a/an \(noun). In order to make the basket, he decided to jumup over the \(noun), resulting in Johnny \(adjective) and the \(noun) falling over."
        
    }
    
    func createSoccerMadLibs ()-> String{
        return "1"
        
    }
    
    func createBaseballMadLibs ()-> String{
        return "2"
        
    }
    
    func createFootballMadLibs ()-> String{
        return "3"
        
    }
    
    
}
