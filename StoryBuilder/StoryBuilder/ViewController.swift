//
//  ViewController.swift
//  StoryBuilder
//
//  Created by Frank Pizza on 1/23/17.
//  Copyright © 2017 Frank Pizza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    var alert = SweetAlert()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Welcome()
        UserDefaults.standard.set(false, forKey: "first")
        UserDefaults.standard.synchronize()
    }

    
   // displays welcome message
    func Welcome(){
        
        if UserDefaults.standard.bool(forKey: "first") == true{
        _ = SweetAlert().showAlert("Welcome To 10 Stories", subTitle: "A simple text game. To start playing select an unlocked story", style: .warning)
        }
    }
    
    
    // resets unlocked stories back to locked
    func Reset(){
        
        UserDefaults.standard.set(true, forKey: "story1")
        UserDefaults.standard.set(false, forKey: "story2")
        UserDefaults.standard.set(false, forKey: "story3")
        UserDefaults.standard.set(false, forKey: "story4")
        UserDefaults.standard.set(false, forKey: "story5")
        UserDefaults.standard.set(false, forKey: "story6")
        UserDefaults.standard.set(false, forKey: "story7")
        UserDefaults.standard.set(false, forKey: "story8")
        UserDefaults.standard.set(false, forKey: "story9")
        UserDefaults.standard.set(false, forKey: "story10")
        UserDefaults.standard.set(true, forKey: "tut")
        UserDefaults.standard.synchronize()
        
    }

    
    
    
    
    @IBAction func Btn1(_ sender: UIButton) {
       
        self.performSegue(withIdentifier: "ToOne", sender: nil)
        
    }
    
    
    
    
    @IBAction func Btn2(_ sender: UIButton) {
    
    if UserDefaults.standard.bool(forKey: "story2") == true {
    
        self.performSegue(withIdentifier: "ToTwo", sender: nil)
    
    } else {
        
        _ = alert.showAlert("Locked")
        
        }
}
    
    
    
    
    @IBAction func Btn3(_ sender: UIButton) {
        
        if UserDefaults.standard.bool(forKey: "story3") == true {
            
            self.performSegue(withIdentifier: "ToThree", sender: nil)
            
        } else {
            
            _ = alert.showAlert("Locked")
        }
    }
    
    
    @IBAction func Btn4(_ sender: UIButton) {
        if UserDefaults.standard.bool(forKey: "story4") == true {
            
            self.performSegue(withIdentifier: "ToFour", sender: nil)
            
        } else {
            
           _ = alert.showAlert("Locked")
        }
    }
    
  
    
    @IBAction func Btn5(_ sender: UIButton) {
        
        if UserDefaults.standard.bool(forKey: "story5") == true {
            
            self.performSegue(withIdentifier: "ToFive", sender: nil)
            
        } else {
            
            _ = alert.showAlert("Locked")
        }
    }
    
  
    
    
    @IBAction func Btn6(_ sender: UIButton) {
        if UserDefaults.standard.bool(forKey: "story6") == true {
            
            self.performSegue(withIdentifier: "ToSix", sender: nil)
            
        } else {
            
            _ = alert.showAlert("Locked")
        }
    }
    
    
    
    @IBAction func Btn7(_ sender: UIButton) {
        
        if UserDefaults.standard.bool(forKey: "story7") == true {
            
            self.performSegue(withIdentifier: "ToSeven", sender: nil)
            
        } else {
            
            _ = alert.showAlert("Locked")
        }

    }
    
   
   
    
    @IBAction func Btn8(_ sender: UIButton) {
        
        if UserDefaults.standard.bool(forKey: "story8") == true {
            
            self.performSegue(withIdentifier: "ToEight", sender: nil)
            
        } else {
            
            _ = alert.showAlert("Locked")
        }
        
    }
    
    @IBAction func Btn9(_ sender: UIButton) {
        if UserDefaults.standard.bool(forKey: "story9") == true {
            
        
        self.performSegue(withIdentifier: "ToNine", sender: nil)
            
        } else {
            
            _ = alert.showAlert("Locked")
        }
    
    }
    
    @IBAction func Btn10(_ sender: UIButton) {
        
        if UserDefaults.standard.bool(forKey: "story10") == true {
            
            self.performSegue(withIdentifier: "ToTen", sender: nil)
            
        } else {
            
            _ = alert.showAlert("Locked")
        }
        
    }

    
    @IBAction func optionBtn(_ sender: UIButton) {
        
        _ = SweetAlert().showAlert("Other Options", subTitle:"", style:AlertStyle.warning, buttonTitle: "Credits", buttonColor: UIColor.green, otherButtonTitle:  "Reset", otherButtonColor: UIColor.green) { (isOtherButton) -> Void in
            if isOtherButton == true {
              self.performSegue(withIdentifier: "ToCredits", sender: nil)
                
            }
            else {
             self.Reset()
                
            }
        }

    }

    
    
    
    
 // this is class ending
}



