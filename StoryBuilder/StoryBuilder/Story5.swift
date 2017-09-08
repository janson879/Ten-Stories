//
//  Story5.swift
//  StoryBuilder
//
//  Created by Frank Pizza on 1/23/17.
//  Copyright © 2017 Frank Pizza. All rights reserved.
//

import UIKit

class Story5: UIViewController {

    
    
    // story line outlets
    @IBOutlet weak var line1: UILabel!
    @IBOutlet weak var line2: UILabel!
    @IBOutlet weak var line3: UILabel!
    @IBOutlet weak var line4: UILabel!
    @IBOutlet weak var line5: UILabel!
    @IBOutlet weak var line6: UILabel!
    @IBOutlet weak var line7: UILabel!
    @IBOutlet weak var line8: UILabel!
    @IBOutlet weak var line9: UILabel!
    @IBOutlet weak var line10: UILabel!
   
    
    // button overlay outlets
    @IBOutlet weak var question1Btn: UIButton!
    @IBOutlet weak var question2Btn: UIButton!
    @IBOutlet weak var question3Btn: UIButton!
    @IBOutlet weak var question4Btn: UIButton!
    @IBOutlet weak var question5Btn: UIButton!
    @IBOutlet weak var question6Btn: UIButton!
    
    
    @IBOutlet weak var PopView: UIView!
    @IBOutlet weak var PopLabel: UILabel!
    
    
    @IBOutlet weak var NextBtn: UIButton!
    
    //View X and Y constraints
    @IBOutlet weak var X: NSLayoutConstraint!
    @IBOutlet weak var Y: NSLayoutConstraint!
    
    // Question Buttons
    @IBOutlet weak var SubmitOne: UIButton!
    @IBOutlet weak var SubmitTwo: UIButton!
    @IBOutlet weak var SubmitThree: UIButton!
    
    //questionBtn Y constriats
    @IBOutlet weak var BtnOneY: NSLayoutConstraint!
    @IBOutlet weak var BtnTwoY: NSLayoutConstraint!
    @IBOutlet weak var BtnThreeY: NSLayoutConstraint!
    @IBOutlet weak var BtnFourY: NSLayoutConstraint!
    @IBOutlet weak var BtnFiveY: NSLayoutConstraint!
    @IBOutlet weak var BtnSixY: NSLayoutConstraint!
  
    
    
    // bsckground
    @IBOutlet var ViewBG: UIView!
    
    
   
  
    
    
    // redeclarations
    var alert = SweetAlert()
    
    
    // holds boolean  if a question is answered or not
    var question1 = false
    var question2 = false
    var question3 = false
    var question4 = false
    var question5 = false
    var question6 = false
    var question7 = false
    
    
    // stores the question string
    var questionTxt1 = "Marc: What happened?  You got ____ going straight?  Not enough excitement?"
    
    var questionTxt2 = "John: Something like that.  I’m _____ your friend’s offer—to drive that truck on that special job.  Can we talk about it?"
    
    var questionTxt3 = "John: They need food on the table.  I’m more _____ losing our apartment than losing my freedom."
    
    var questionTxt4 = "OK.  I’m a little ____ you.  You have a family to think about."
    
    var questionTxt5 = "I’m _____ this opportunity.   I won’t be home tonight.  Wish me luck."
    
    var questionTxt6 = "You are showing them what a good man you are…and you are even getting _____ the boss!   I love you."
    
    
    // question button texts
    var option11 = "bored with" // correct
    var option12 = "bored in"
    var option13 = "bored at"
    
    var option21 = "Interested in" //
    var option22 = "Interested on"
    var option23 = "Interested to"
    
    var option31 = "frightened on"
    var option32 = "frightened in"
    var option33 = "frightened of" //
    
    var option41 = "jealous of" //
    var option42 = "jealous to"
    var option43 = "jealous on"
    
    var option51 = "excited about" //
    var option52 = "excited on"
    var option53 = "excited with"
    
    var option61 = "friendly with" //
    var option62 = "friendly in"
    var option63 = "friendly at"

    
    
    // stores the correct answers of questions
    var Ans1: String! = "bored with"
    var Ans2: String! = "Interested in"
    var Ans3: String! = "frightened of"
    var Ans4: String! = "jealous of"
    var Ans5: String! = "excited about"
    var Ans6: String! = "friendly with"
    
    
    
    var lineCounter = 1
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         Setup()
        
    }
    
    
    
    // bar button to show next line
    @IBAction func NextLine(_ sender: UIButton) {
        
        Label()
        
    }
    
    
    // function that displays question popover
    func Popover(){
        
       PopView.alpha = 1
        ViewBG.backgroundColor = UIColor.lightGray
        NextBtn.isEnabled = false
        
        UIView.animate(withDuration: 0.3, animations: {
            
            self.view.layoutIfNeeded()
        })
    }
    
    
    
    // function that hides question popover
    
    func ClosePopover(){
        
       PopView.alpha = 0
        ViewBG.backgroundColor = UIColor.white
        NextBtn.isEnabled = true
        
        UIView.animate(withDuration: 0.3, animations: {
            
            self.view.layoutIfNeeded()
        })
    }
    
    
    
    func Submit (btn: UIButton, LineCounter: Int) {
        
        if LineCounter == 3 {
            
            if btn.titleLabel?.text == Ans1 {
                
              _ =  SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
            }else {
                
              _ =  SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        } else if LineCounter == 4{
            
            if btn.titleLabel?.text == Ans2 {
                
             _ =   SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
              _ =  SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        } else if LineCounter == 6{
            
            if btn.titleLabel?.text == Ans3 {
                
             _ =   SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
              _ =  SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        } else if LineCounter == 7{
            
            if btn.titleLabel?.text == Ans4 {
                
             _ =   SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
             _ =   SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            } 
            
        } else if LineCounter == 8{
            
            if btn.titleLabel?.text == Ans5 {
                
             _ =   SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
              _ =  SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        } else if LineCounter == 9{
            
            if btn.titleLabel?.text == Ans6 {
                
             _ =   SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
             _ =   SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        }



        
        
        
    }
    
    
    
    
    // function called when a line button is pressed
    func buttonClicked(btn : UIButton){
        
        
        if btn == question1Btn {
            
            PopLabel.text = questionTxt1
            SubmitOne.setTitle(option11, for: .normal)
            SubmitTwo.setTitle(option12, for: .normal)
            SubmitThree.setTitle(option13, for: .normal)
            
        } else if btn == question2Btn {
            
            PopLabel.text = questionTxt2
            SubmitOne.setTitle(option21, for: .normal)
            SubmitTwo.setTitle(option22, for: .normal)
            SubmitThree.setTitle(option23, for: .normal)
            
        }else if btn == question3Btn {
            
            PopLabel.text = questionTxt3
            SubmitOne.setTitle(option31, for: .normal)
            SubmitTwo.setTitle(option32, for: .normal)
            SubmitThree.setTitle(option33, for: .normal)
            
        } else if btn == question4Btn {
            
            PopLabel.text = questionTxt4
            SubmitOne.setTitle(option41, for: .normal)
            SubmitTwo.setTitle(option42, for: .normal)
            SubmitThree.setTitle(option43, for: .normal)
            
        } else if btn == question5Btn {
            
            PopLabel.text = questionTxt5
            SubmitOne.setTitle(option51, for: .normal)
            SubmitTwo.setTitle(option52, for: .normal)
            SubmitThree.setTitle(option53, for: .normal)
            
        } else if btn == question6Btn {
            
            PopLabel.text = questionTxt6
            SubmitOne.setTitle(option61, for: .normal)
            SubmitTwo.setTitle(option62, for: .normal)
            SubmitThree.setTitle(option63, for: .normal)
            
        }
    }
    
    
    
    
    // handles label manipulation
    func Label(){
        
        // shows line two
        if lineCounter == 1{
            
            line2.isHidden = false
            lineCounter = lineCounter + 1
            
        }else if lineCounter == 2{
            
            line3.isHidden = false
            lineCounter = lineCounter + 1
            question1Btn.isEnabled = true
            
        }else if lineCounter == 3 && question1 == true{
            
            line4.isHidden = false
            lineCounter = lineCounter + 1
            question2Btn.isEnabled = true
            
            
        }else if lineCounter == 4 && question2 == true{
            
            line5.isHidden = false
            lineCounter = lineCounter + 1
          
            
        }else if lineCounter == 5{
            
            line6.isHidden = false
            lineCounter = lineCounter + 1
            question3Btn.isEnabled = true
            
        }else if lineCounter == 6 && question3 == true{
            
            line7.isHidden = false
            lineCounter = lineCounter + 1
            question4Btn.isEnabled = true
           
            
        }else if lineCounter == 7 && question4 == true{
            
            line8.isHidden = false
            lineCounter = lineCounter + 1
            question5Btn.isEnabled = true
           
       
        }else if lineCounter == 8 && question5 == true{
            
            line9.isHidden = false
            lineCounter = lineCounter + 1
            question6Btn.isEnabled = true
            
            
        } else if lineCounter == 9 && question6 == true{
            
            line10.isHidden = false
            lineCounter = lineCounter + 1
            UserDefaults.standard.set(true, forKey: "story6")
            UserDefaults.standard.synchronize()
            
        } else if lineCounter == 10 {
            
            _ = SweetAlert().showAlert("Congradulations", subTitle: "You have finished Story 5", style: .success)
            
        }

    }
    
    
    func Position (btn: UIButton){
        
        if X.constant == 0 && btn == question1Btn{
            
            Y.constant = BtnOneY.constant
            
        } else if X.constant == 0 && btn == question2Btn {
            
            Y.constant = BtnTwoY.constant
            
        } else if X.constant == 0 && btn == question3Btn {
            
            Y.constant = BtnThreeY.constant
            
        } else if X.constant == 0 && btn == question4Btn {
            
            Y.constant = BtnFourY.constant
            
        } else if X.constant == 0 && btn == question5Btn {
            
            Y.constant = BtnFiveY.constant
            
        }else if X.constant == 0 && btn == question6Btn {
            
            Y.constant = BtnFiveY.constant
            
        }
    }
    
    
    @IBAction func Option1(_ sender: UIButton) {
     
    Submit(btn: SubmitOne, LineCounter: lineCounter)
    
    }
    
   
    @IBAction func Option2(_ sender: UIButton) {
   
    Submit(btn: SubmitTwo, LineCounter: lineCounter)
    
    }
    
    
    @IBAction func Option3(_ sender: UIButton) {
  
    Submit(btn: SubmitThree, LineCounter: lineCounter)
    
    }
    
    
    
    
    
    
    
    
    
    // question button actions
    
    @IBAction func Number1(_ sender: UIButton) {
        question1 = true
        Popover()
        Position(btn: question1Btn)
        buttonClicked(btn: question1Btn)
        question1Btn.isEnabled = false
}
    
    
    @IBAction func Number2(_ sender: UIButton) {
        
        question2 = true
        Popover()
        Position(btn: question1Btn)
        buttonClicked(btn: question2Btn)
        question2Btn.isEnabled = false
}
    
    @IBAction func Number3(_ sender: UIButton) {
        
        question3 = true
        Popover()
        Position(btn: question2Btn)
        buttonClicked(btn: question3Btn)
        question3Btn.isEnabled = false
}
    
    
    @IBAction func Number4(_ sender: UIButton) {
        
        question4 = true
        Popover()
        Position(btn: question4Btn)
        buttonClicked(btn: question4Btn)
        question4Btn.isEnabled = false
        
}
    
    @IBAction func Number5(_ sender: UIButton) {
        question5 = true
        Popover()
        Position(btn: question5Btn)
        buttonClicked(btn: question5Btn)
        question5Btn.isEnabled = false
}
    
    @IBAction func Number6(_ sender: UIButton) {
        question6 = true
        Popover()
        Position(btn: question5Btn)
        buttonClicked(btn: question6Btn)
        question6Btn.isEnabled = false
}
    
   
    
    
    // a set up function that prepares the labels and overlays
    func Setup(){
        
        // hids all lines execpt the first line
        line2.isHidden = true
        line3.isHidden = true
        line4.isHidden = true
        line5.isHidden = true
        line6.isHidden = true
        line7.isHidden = true
        line8.isHidden = true
        line9.isHidden = true
        line10.isHidden = true
        
        
        // prevents unwant button presses
        question1Btn.isEnabled = false
        question2Btn.isEnabled = false
       question3Btn.isEnabled = false
        question4Btn.isEnabled = false
        question5Btn.isEnabled = false
        question6Btn.isEnabled = false
       
        
       PopView.alpha = 0
        
      
        
        
    
        
    }
    
    
    
    
}









