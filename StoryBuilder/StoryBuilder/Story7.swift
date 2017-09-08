//
//  Story7.swift
//  StoryBuilder
//
//  Created by Frank Pizza on 3/28/17.
//  Copyright © 2017 Frank Pizza. All rights reserved.
//

import UIKit

class Story7: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    Setup()
        // Do any additional setup after loading the view.
    }

  

    
    
    
    // story line outlets
    @IBOutlet weak var line2: UILabel!
    @IBOutlet weak var line3: UILabel!
    @IBOutlet weak var line4: UILabel!
    @IBOutlet weak var line5: UILabel!
    @IBOutlet weak var line6: UILabel!
    @IBOutlet weak var line7: UILabel!
    @IBOutlet weak var line8: UILabel!
    @IBOutlet weak var line9: UILabel!
    @IBOutlet weak var line10: UILabel!
    @IBOutlet weak var line11: UILabel!
    @IBOutlet weak var line12: UILabel!
  
    
    // button overlay outlets
    @IBOutlet weak var question1Btn: UIButton!
    @IBOutlet weak var question2Btn: UIButton!
    @IBOutlet weak var question3Btn: UIButton!
    @IBOutlet weak var question4Btn: UIButton!
    @IBOutlet weak var question5Btn: UIButton!
    @IBOutlet weak var question6Btn: UIButton!
   
    
    // question view parts
    @IBOutlet weak var PopView: UIView!
    @IBOutlet weak var PopLabel: UILabel!
    
    // barbutton
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
    
    //ScrollView outlet
  
 
    
    
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
    var questionTxt1 = "Kristen: I’ve been doing a lot that lately. Yes. Whatever it is, No one will learn ___ from me."
    
    var questionTxt2 = "Kristen: Huh. I don’t understand.  Go ___ slowly."
    
    var questionTxt3 = "Beth: I can’t tell you. I’m too ashamed ___ what I’ve done."
    
    var questionTxt4 = " I may not agree___ what you did, but I’m always here for you."
    
    var questionTxt5 = "Beth:  The manager is always careful ___ the cash, so he hides it in a bowl under the safe."
    
    var questionTxt6 = "I’m really sorry __ the whole situation, but I’m not ready to admit that I walked out with the money."
    
    
    // question button texts
    var option11 = "about it" //
    var option12 = "with it"
    var option13 = "at it"
    
    var option21 = "it" //
    var option22 = "in"
    var option23 = "with"
    
    var option31 = "of" //
    var option32 = "in"
    var option33 = "on"
    
    var option41 = "with"
    var option42 = "at"
    var option43 = "in"
    
    var option51 = "with" //
    var option52 = "of"
    var option53 = "at"
    
    var option61 = "about"//
    var option62 = "with"
    var option63 = "at"
    
    

    
    // stores the correct answers of questions
    var Ans1: String! = "about it"
    var Ans2: String! = "it"
    var Ans3: String! = "of"
    var Ans4: String! = "with"
    var Ans5: String! = "with"
    var Ans6: String! = "about"
    
    
    
    var lineCounter = 1
    
    

    
    
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
        
        if LineCounter == 2{
            
            if btn.titleLabel?.text == Ans1 {
                
             _ = SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
            }else {
                
            _ = SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        } else if LineCounter == 6{
            
            if btn.titleLabel?.text == Ans2 {
                
             _ = SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
             _ = SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        } else if LineCounter == 7 {
            
            if btn.titleLabel?.text == Ans3 {
                
            _ = SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
             _ = SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        } else if LineCounter == 8 {
            
            if btn.titleLabel?.text == Ans4 {
                
             _ = SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
            _ = SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        } else if LineCounter == 9 {
            
            if btn.titleLabel?.text == Ans5 {
                
             _ = SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
             _ = SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        } else if LineCounter == 11 {
            
            if btn.titleLabel?.text == Ans6 {
                
             _ = SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
            _ = SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
        }
    }
}

    
    
    func Position (btn: UIButton){
        
        if X.constant == 0 && btn == question1Btn{
            
            Y.constant = BtnTwoY.constant
            
        } else if X.constant == 0 && btn == question2Btn {
            
            Y.constant = BtnThreeY.constant
            
        } else if X.constant == 0 && btn == question3Btn {
            
            Y.constant = BtnThreeY.constant
            
        } else if X.constant == 0 && btn == question4Btn {
            
            Y.constant = BtnFourY.constant
            
        } else if X.constant == 0 && btn == question5Btn {
            
            Y.constant = BtnFiveY.constant
            
        }else if X.constant == 0 && btn == question5Btn {
            
            Y.constant = BtnFiveY.constant
            
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
            question1Btn.isEnabled = true
            
        }else if lineCounter == 2 && question1 == true{
            
            line3.isHidden = false
            lineCounter = lineCounter + 1
            
        }else if lineCounter == 3{
            
            line4.isHidden = false
            lineCounter = lineCounter + 1
            
        }else if lineCounter == 4{
            
            line5.isHidden = false
            lineCounter = lineCounter + 1
        }else if lineCounter == 5{
            
            line6.isHidden = false
            lineCounter = lineCounter + 1
            question2Btn.isEnabled = true
            
        }else if lineCounter == 6 && question2 == true{
            
            line7.isHidden = false
            lineCounter = lineCounter + 1
            question3Btn.isEnabled = true
            
        }else if lineCounter == 7 && question3 == true{
            
            line8.isHidden = false
            lineCounter = lineCounter + 1
            question4Btn.isEnabled = true
            
        }else if lineCounter == 8 && question4 == true{
            
            line9.isHidden = false
            lineCounter = lineCounter + 1
            question5Btn.isEnabled = true
            
        } else if lineCounter == 9 && question5 == true{
            
            line10.isHidden = false
            lineCounter = lineCounter + 1
            
        }else if lineCounter == 10{
            
            line11.isHidden = false
            lineCounter = lineCounter + 1
            question6Btn.isEnabled = true
            
        } else if lineCounter == 11 && question6 == true{
            
            line12.isHidden = false
            lineCounter = lineCounter + 1
            
            UserDefaults.standard.set(true, forKey: "story8")
            UserDefaults.standard.synchronize()
        } else if lineCounter == 12{
            
            _ = SweetAlert().showAlert("Congradulations", subTitle: "You have finished Story 7", style: .success)
            
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
        Position(btn: question5Btn)
        question5Btn.isEnabled = false
    }
    
    @IBAction func Number6(_ sender: UIButton) {
        question6 = true
        buttonClicked(btn: question6Btn)
        Popover()
        Position(btn: question6Btn)
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
        line11.isHidden = true
        line12.isHidden = true
        
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








