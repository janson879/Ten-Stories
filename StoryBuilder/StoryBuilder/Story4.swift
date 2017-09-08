//
//  Story4.swift
//  StoryBuilder
//
//  Created by Frank Pizza on 1/23/17.
//  Copyright © 2017 Frank Pizza. All rights reserved.
//

import UIKit

class Story4: UIViewController {
    
    
    
    // story line outlets
    @IBOutlet weak var line1: UILabel!
    @IBOutlet weak var line2: UILabel!
    @IBOutlet weak var line3: UILabel!
    @IBOutlet weak var line4: UILabel!
    @IBOutlet weak var line5: UILabel!
    @IBOutlet weak var line6: UILabel!
    @IBOutlet weak var line7: UILabel!
    @IBOutlet weak var line8: UILabel!
 
    
    // button overlay outlets
    @IBOutlet weak var question1Btn: UIButton!
    @IBOutlet weak var question2Btn: UIButton!
    @IBOutlet weak var question3Btn: UIButton!
    @IBOutlet weak var question4Btn: UIButton!
    @IBOutlet weak var question5Btn: UIButton!
    
    
    @IBOutlet weak var PopView: UIView!
    @IBOutlet weak var PopLabel: UILabel!
    
    @IBOutlet weak var Next: UIButton!
    

    
    
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
    
    
    // background
    
    @IBOutlet var ViewBG: UIView!
    
    // Scoll View
    @IBOutlet weak var ScrollView: UIScrollView!
    
    
    
    // redeclarations
    var alert = SweetAlert()
    
    
    // holds boolean  if a question is answered or not
    var question1 = false
    var question2 = false
    var question3 = false
    var question4 = false
    var question5 = false
   
    
    // stores the question string
    var questionTxt1 = "Please bring her by for a follow up visit.   Text me when you can come.  If I’m not ___   an emergency, maybe we can have lunch."
    
    var questionTxt2 = "Kristen:  Ray, My daughter is doing great, so no need for a visit.  I’m still  ___ lunch.  Are you free today?"
    
    var questionTxt3 = " Kristin:   Thank you so much for lunch today.   I was not   ___ the food….or the company.  Do you get this friendly with all of your patients or am I just lucky?"
    
    
    var questionTxt4 = "Email  To Kristin,  I had a very good time at lunch…too good.   You should know that I am ___ a wonderful woman, and I have four beautiful daughters."
    
    var questionTxt5 = "I had no right to ask you to lunch, but you fascinated me so much.   Now that you know I have a wife, would you still ____ another lunch date with me?  Sincerely,  Ray"
    
  
    
    // question button texts
    var option11 = "in"
    var option12 = "on"
    var option13 = "by"
    
    var option21 = "interested in"
    var option22 = "interested with"
    var option23 = "interested at"
    
    var option31 = "disappointed with"
    var option32 = "disappointed at"
    var option33 = "disappointed on"
    
    var option41 = "married to"
    var option42 = "married"
    var option43 = "married with"
    
    var option51 = "agree to"
    var option52 = "agree with"
    var option53 = "agree at"
    

    
    // stores the correct answers of questions
    var Ans1: String! = "in"
    var Ans2: String! = "interested in"
    var Ans3: String! = "disappointed with"
    var Ans4: String! = "married to"
    var Ans5: String! = "agree to"

   
    
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
        Next.isEnabled = false
        
        UIView.animate(withDuration: 0.3, animations: {
            
            self.view.layoutIfNeeded()
        })
    }
    
    
   
        

    
    
    
    // function that hides question popover
    
    func ClosePopover(){
      
      PopView.alpha = 0
        ViewBG.backgroundColor = UIColor.white
        Next.isEnabled = true
        
        UIView.animate(withDuration: 0.3, animations: {
            
            self.view.layoutIfNeeded()
        })
    }
    
    
    
    
func Submit (btn: UIButton, LineCounter: Int) {
        
        if LineCounter == 2 {
            
            if btn.titleLabel?.text == Ans1 {
                
             _ =   SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
            }else {
                
             _ =   SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        } else if LineCounter == 3{
            
            if btn.titleLabel?.text == Ans2 {
                
              _ =  SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
              _ =  SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        } else if LineCounter == 5{
            
            if btn.titleLabel?.text == Ans3 {
                
             _ =   SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
              _ =  SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        } else if LineCounter == 6{
            
            if btn.titleLabel?.text == Ans4 {
                
              _ =  SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
              _ =  SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        }  else if LineCounter == 7{
            
            if btn.titleLabel?.text == Ans5 {
                
             _ =   SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
            _ =    SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
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
            
        } else if X.constant == 0 && btn == question4Btn {
            
            Y.constant = BtnFourY.constant
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
            
              PopLabel.text = questionTxt1
              SubmitOne.setTitle(option31, for: .normal)
              SubmitTwo.setTitle(option32, for: .normal)
              SubmitThree.setTitle(option33, for: .normal)
            
        } else if btn == question4Btn {
            
            PopLabel.text = questionTxt2
            SubmitOne.setTitle(option41, for: .normal)
            SubmitTwo.setTitle(option42, for: .normal)
             SubmitThree.setTitle(option43, for: .normal)
            
        } else if btn == question5Btn {
            
            PopLabel.text = questionTxt1
            SubmitOne.setTitle(option51, for: .normal)
            SubmitTwo.setTitle(option52, for: .normal)
             SubmitThree.setTitle(option53, for: .normal)
        }
        
    }
    
    
    
    
    // handles label manipulation
    func Label(){
        
        // shows line two
        if lineCounter == 1{
            
            line2.isHidden = false
            lineCounter = lineCounter + 1
            question1Btn.isEnabled = true
            
        }else if lineCounter == 2 && question1 == true{
            
            line3.isHidden = false
            lineCounter = lineCounter + 1
            question2Btn.isEnabled = true
       
        }else if lineCounter == 3 && question2 == true{
            
            line4.isHidden = false
            lineCounter = lineCounter + 1
            
            
        }else if lineCounter == 4{
            
            line5.isHidden = false
            lineCounter = lineCounter + 1
            question3Btn.isEnabled = true
            
            
        }else if lineCounter == 5 && question3 == true{
            
            line6.isHidden = false
            lineCounter = lineCounter + 1
            question4Btn.isEnabled = true
            
            
        }else if lineCounter == 6 && question4 == true{
            
            line7.isHidden = false
            lineCounter = lineCounter + 1
            question5Btn.isEnabled = true
            
        }else if lineCounter == 7 && question5 == true{
            
            line8.isHidden = false
            lineCounter = lineCounter + 1
            
            UserDefaults.standard.set(true, forKey: "story5")
            UserDefaults.standard.synchronize()
        
        } else if lineCounter == 8 {
            
            _ = SweetAlert().showAlert("Congradulations", subTitle: "You have finished Story 4", style: .success)
            
        }

    }
    
    
    
    
    
    // question button actions
    
    @IBAction func Number1(_ sender: UIButton) {
    question1 = true
    buttonClicked(btn : question1Btn)
    Popover()
    Position(btn: question2Btn)
    question1Btn.isEnabled = false
    
    }
    
    
    @IBAction func Number2(_ sender: UIButton) {
    question2 = true
    buttonClicked(btn: question2Btn)
    Popover()
    Position(btn: question2Btn)
    question2Btn.isEnabled = false
    
    }
    
    @IBAction func Number3(_ sender: UIButton) {
    question3 = true
    buttonClicked(btn: question3Btn)
    Popover()
    Position(btn: question3Btn)
    question3Btn.isEnabled = false
    
    }
    
    
    @IBAction func Number4(_ sender: UIButton) {
    question4 = true
    buttonClicked(btn: question4Btn)
    Popover()
    Position(btn: question4Btn)
    question4Btn.isEnabled = false
   
    }
    
    @IBAction func Number5(_ sender: UIButton) {
    question5 = true
    buttonClicked(btn: question5Btn)
    Popover()
    Position(btn: question4Btn)
    question5Btn.isEnabled = false
    
    }
    
    
  
    
    
    
    // a set up function that prepares the labels and overlays
    func Setup(){
        
        //hids all lines execpt the first line
        line2.isHidden = true
        line3.isHidden = true
        line4.isHidden = true
        line5.isHidden = true
        line6.isHidden = true
        line7.isHidden = true
        line8.isHidden = true
     
        
        // prevents unwant button presses
    question1Btn.isEnabled = false
    question2Btn.isEnabled = false
    question3Btn.isEnabled = false
    question4Btn.isEnabled = false
    question5Btn.isEnabled = false
               
   
       PopView.alpha = 0 
        
       
   
    }
    
    
    
    
}

