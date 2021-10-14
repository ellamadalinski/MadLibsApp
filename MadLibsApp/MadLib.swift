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
        return "Johnny was dribbling to the hoop, \(adjective) and tired. Then, he was stopped by a/an \(noun). In order to make the basket, he decided to jump over the \(noun), resulting in Johnny \(verb) and the \(noun) falling over."
        
    }
    
    func createSoccerMadLibs ()-> String{
        return "As Sheala tried \(verb) to her teammate, a/an \(noun) got in her way. The \(verb) was \(adjective), so her whole team was mad at her. To make it up to them, she ran as fast as she could to stop the \(noun), but did not succeed."
        
    }
    
    func createBaseballMadLibs ()-> String{
        return "This was Billy's first time playing shortstop; he was usually a/an \(noun). However it didn't go well. The ball came off of the opponant's bat \(adjective), not giving him enough time to react. As Billy was \(verb) to the ball, it hit him straight in the face, giving him a broken and bloody nose."
        
    }
    
    func createFootballMadLibs ()-> String{
        return "Jimmy, a sophomore, was playing against the best \(noun) in their conference, who was a senior and committed D1. During the game, Jimmy tried \(verb) to beat the \(adjective) \(noun). In return, the \(noun) pushed Jimmy with all of his force, knocking Jimmy over."
        
    }
    
    
}
