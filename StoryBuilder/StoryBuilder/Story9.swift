//
//  Story9.swift
//  StoryBuilder
//
//  Created by Frank Pizza on 3/30/17.
//  Copyright © 2017 Frank Pizza. All rights reserved.
//

import UIKit

class Story9: UIViewController {

    
    
    // story line outlets
    @IBOutlet weak var line1: UILabel!
    @IBOutlet weak var line2: UILabel!
    @IBOutlet weak var line3: UILabel!
    @IBOutlet weak var line4: UILabel!
    @IBOutlet weak var line5: UILabel!
    @IBOutlet weak var line6: UILabel!

    
    // button overlay outlets
    @IBOutlet weak var question1Btn: UIButton!
    @IBOutlet weak var question2Btn: UIButton!
    @IBOutlet weak var question3Btn: UIButton!
    @IBOutlet weak var question4Btn: UIButton!
    @IBOutlet weak var question5Btn: UIButton!
    
    @IBOutlet weak var PopView: UIView!
    @IBOutlet weak var PopLabel: UILabel!
    
    // barbutton
    @IBOutlet weak var NextBtn: UIBarButtonItem!
    
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
    
    
    
    // stores the question string
    var questionTxt1 = "Dear Father Ward,  I have been going to church all of my life and I believe _____ God and the Church’s teachings."
    
    var questionTxt2 = "I just got ____ from a long talk with a good friend."
    
    var questionTxt3 = "She’s a person I’m really fond _____, and I trust her opinion a lot."
    
    var questionTxt4 = "At first I told her to forget ___ it"
    
    var questionTxt5 = " I’m not exactly known ___ being open minded to that stuff. "
    
    
    // alternet text
    @IBOutlet weak var alt: UILabel!
    
    
 
    
    // question button texts
    var option11 = "in" // correct
    var option12 = "with"
    var option13 = "to"
    
    var option21 = "X"
    var option22 = "X"
    var option23 = "X"
    
    var option31 = "of" // correct
    var option32 = "with"
    var option33 = "about"
    
    var option41 = "about" // correct
    var option42 = "with"
    var option43 = "at"
    
    var option51 = "at"
    var option52 = "for" // correct
    var option53 = "in"
    

    
    // stores the correct answers of questions
    var Ans1: String! = "in"
    var Ans2: String! = "X"
    var Ans3: String! = "of"
    var Ans4: String! = "about"
    var Ans5: String! = "for"
    
    
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
    
    
    
    func Position (btn: UIButton){
        
        if X.constant == 0 && btn == question1Btn{
            
            Y.constant = BtnTwoY.constant
            
        } else if X.constant == 0 && btn == question2Btn {
            
            Y.constant = BtnTwoY.constant
            
        } else if X.constant == 0 && btn == question3Btn {
            
            Y.constant = BtnThreeY.constant
            
        } else if X.constant == 0 && btn == question4Btn {
            
            Y.constant = BtnFourY.constant
            
        } else if X.constant == 0 && btn == question5Btn {
            
            Y.constant = BtnFiveY.constant
            
        }
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
        
        if LineCounter == 1 {
            
            if btn.titleLabel?.text == Ans1 {
                
             _ =   SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
            }else {
                
             _ =   SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        } else if LineCounter == 2 {
            
            if btn.titleLabel?.text == Ans2 {
                
             _ =   SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
             _ =   SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
        }
            
        }  else if LineCounter == 3 {
            
            if btn.titleLabel?.text == Ans3 {
                
            _ =    SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
             _ =   SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        }  else if LineCounter == 4 {
            
            if btn.titleLabel?.text == Ans4 {
                
              _ =  SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
             _ =   SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        } else if LineCounter == 5 {
            
            if btn.titleLabel?.text == Ans5 {
                
            _ =    SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
             _ =   SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
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
            
            PopLabel.text = questionTxt1
            SubmitOne.setTitle(option51, for: .normal)
            SubmitTwo.setTitle(option52, for: .normal)
            SubmitThree.setTitle(option53, for: .normal)
            
        }
        
    }
    
    
    
    
    // handles label manipulation
    func Label(){
        
        // shows line two
        if lineCounter == 1 && question1 == true{
            
            line2.isHidden = false
            lineCounter = lineCounter + 1
            question2Btn.isEnabled = true
           
            
        }else if lineCounter == 2 && question2 == true{
            
            line3.isHidden = false
            lineCounter = lineCounter + 1
            question3Btn.isEnabled = true
            
            
        }else if lineCounter == 3 && question3 == true{
            
            line4.isHidden = false
            lineCounter = lineCounter + 1
            question4Btn.isEnabled = true
            
            
        } else if lineCounter == 4 && question4 == true{
            
            line5.isHidden = false
            lineCounter = lineCounter + 1
            question5Btn.isEnabled = true
            
        } else if lineCounter == 5 && question5 == true {
            
            line6.isHidden = false
            lineCounter = lineCounter + 1
            
        } else if lineCounter == 6 {
            line1.isHidden = true
            line2.isHidden = true
            line3.isHidden = true
            line4.isHidden = true
            line5.isHidden = true
            line6.isHidden = true
            
            lineCounter = lineCounter + 1
            alt.alpha = 1
            
            UserDefaults.standard.set(true, forKey: "story10")
            UserDefaults.standard.synchronize()
            
        } else if lineCounter == 7 {
            
            _ = SweetAlert().showAlert("Congradulations", subTitle: "You have finished Story 9", style: .success)
            
        }



    }
    
    
 
    
    
    
    // question button actions
    
    @IBAction func Number1(_ sender: UIButton) {
        question1 = true
        buttonClicked(btn : question1Btn)
        Popover()
        Position(btn: question1Btn)
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
        
        // hids all lines execpt the first line
        line2.isHidden = true
        line3.isHidden = true
        line4.isHidden = true
        line5.isHidden = true
        line6.isHidden = true
        
        // prevents unwant button presses
        question2Btn.isEnabled = false
        question3Btn.isEnabled = false
        question4Btn.isEnabled = false
        question5Btn.isEnabled = false
        
       
       PopView.alpha = 0
        
    }
    


}
