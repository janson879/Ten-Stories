//
//  Story10.swift
//  StoryBuilder
//
//  Created by Frank Pizza on 1/23/17.
//  Copyright © 2017 Frank Pizza. All rights reserved.
//

import UIKit

class Story10: UIViewController {

    
    
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
    @IBOutlet weak var line13: UILabel!
    @IBOutlet weak var line14: UILabel!
    @IBOutlet weak var line15: UILabel!
    @IBOutlet weak var line16: UILabel!
    @IBOutlet weak var line17: UILabel!
    
    // button overlay outlets
    @IBOutlet weak var question1Btn: UIButton!
    @IBOutlet weak var question2Btn: UIButton!
    @IBOutlet weak var question3Btn: UIButton!
    @IBOutlet weak var question4Btn: UIButton!
    @IBOutlet weak var question5Btn: UIButton!
    @IBOutlet weak var question6Btn: UIButton!
    @IBOutlet weak var question7Btn: UIButton!
    
    @IBOutlet weak var PopView: UIView!
    @IBOutlet weak var PopLabel: UILabel!
    
    
    //background
    @IBOutlet var ViewBG: UIView!
    
    
    // barbutton
    @IBOutlet weak var NextBtn: UIBarButtonItem!
    
    // ScrollView
    
    
    
    
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
    @IBOutlet weak var BtnSevenY: NSLayoutConstraint!
   

    
    // redeclarations
    var alert = SweetAlert()
    
 //
    
    
    
    // holds boolean  if a question is answered or not
    var question1 = false
    var question2 = false
    var question3 = false
    var question4 = false
    var question5 = false
    var question6 = false
    var question7 = false
    
    
    // stores the question string
    var questionTxt1 = "Beth:  I’ve been here 3 years—everyone here should be accustomed ___ the “aroma”. "
    
    var questionTxt2 = "Kristen: lol.  I need a good meal and a good laugh.  I’m getting scared ___ my doctor friend.  His messages are frightening."
    
    var questionTxt3 = "Kristen: I might call the police myself…if he doesn’t agree ___ stop contacting me and just forget about the whole thing. Would you advise Beth"
    
    var questionTxt4 = "Beth: I’m really surprised ___ you.  Did you really think he would leave his wife and kids?  Sorry.  I shouldn’t blame you….too much.  You should call the police on him."
    
    var questionTxt5 = "Beth: No, I asked my neighbor to hold it.  I can count ___ her not to say anything.  Her husband was a criminal, and she kept his secrets. lol."
    
    var questionTxt6 = "Kristen:  lol.  You can depend ___ her, but what about him?  You need to spend that money fast."
    
    var questionTxt7 = "Beth:  I’m not going to spend it.  I actually talked to my priest and he convinced me to return it and admit that I took it.  I’m committed ___ doing the right thing now."
    
    // question button texts
    var option11 = "to"
    var option12 = "on"
    var option13 = "in"
    
    var option21 = "of my"
    var option22 = "at my"
    var option23 = "in my"
    
    var option31 = "to"
    var option32 = "at"
    var option33 = "in"
    
    var option41 = "with"
    var option42 = "at"
    var option43 = "on"
    
    var option51 = "on"
    var option52 = "and"
    var option53 = "in"
    
    var option61 = "on"
    var option62 = "in"
    var option63 = "at"
    
    var option71 = "to"
    var option72 = "in"
    var option73 = "at"
    
    

    
    // stores the correct answers of questions
    var Ans1: String! = "to"
    var Ans2: String! = "of my"
    var Ans3: String! = "to"
    var Ans4: String! = "at"
    var Ans5: String! = "on"
    var Ans6: String! = "on"
    var Ans7: String! = "to"
    
    
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
        NextBtn.isEnabled = false
        ViewBG.backgroundColor = UIColor.lightGray
        
        UIView.animate(withDuration: 0.3, animations: {
            
            self.view.layoutIfNeeded()
        })
    }

    
    
    // function that hides question popover
    
    func ClosePopover(){
        
        PopView.alpha = 0
        NextBtn.isEnabled = true
        ViewBG.backgroundColor = UIColor.white
        
        UIView.animate(withDuration: 0.3, animations: {
            
            self.view.layoutIfNeeded()
        })
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
            
        } else if X.constant == 0 && btn == question6Btn {
            
            Y.constant = BtnSixY.constant
            
        }else if X.constant == 0 && btn == question7Btn {
            
            Y.constant = BtnSevenY.constant
            
        }
    }
    
    

    
    
    
    func Submit (btn: UIButton, LineCounter: Int) {
        
        if LineCounter == 4 {
            
            if btn.titleLabel?.text == Ans1 {
                
             _ =   SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
            }else {
                
             _ =   SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        } else if LineCounter == 5 {
            
            if btn.titleLabel?.text == Ans2 {
                
              _ =  SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
             _ =   SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
        }
        }  else if LineCounter == 9 {
            
            if btn.titleLabel?.text == Ans3 {
                
             _ =   SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
            _ =    SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
        } else if LineCounter == 10 {
            
            if btn.titleLabel?.text == Ans4 {
                
             _ =   SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
             _ =   SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
        } else if LineCounter == 14 {
            
            if btn.titleLabel?.text == Ans5 {
                
              _ =  SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
             _ =   SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
        } else if LineCounter == 15 {
            
            if btn.titleLabel?.text == Ans6 {
                
             _ =   SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
              _ =  SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
        } else if LineCounter == 16 {
            
            if btn.titleLabel?.text == Ans7 {
                
              _ =  SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
              _ =  SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
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
            
        } else if btn == question7Btn {
            
            PopLabel.text = questionTxt7
            SubmitOne.setTitle(option71, for: .normal)
            SubmitTwo.setTitle(option72, for: .normal)
            SubmitThree.setTitle(option73, for: .normal)
            
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
    
    
    
    
    
    // handles label manipulation
    func Label(){
        
        // shows line two
        if lineCounter == 1{
            
            line2.isHidden = false
            lineCounter = lineCounter + 1
            
        }else if lineCounter == 2{
            
            line3.isHidden = false
            lineCounter = lineCounter + 1
            
        }else if lineCounter == 3{
            
            line4.isHidden = false
            lineCounter = lineCounter + 1
            question1Btn.isEnabled = true
            
        }else if lineCounter == 4 && question1 == true {
            
            line5.isHidden = false
            lineCounter = lineCounter + 1
            question2Btn.isEnabled = true
       
        }else if lineCounter == 5  && question2 == true{
            
            line6.isHidden = false
            lineCounter = lineCounter + 1
        }else if lineCounter == 6{
            
            line7.isHidden = false
            lineCounter = lineCounter + 1
            
        }else if lineCounter == 7{
            
            line8.isHidden = false
            lineCounter = lineCounter + 1
        }else if lineCounter == 8{
            
            line9.isHidden = false
            lineCounter = lineCounter + 1
            question3Btn.isEnabled = true
            
        } else if lineCounter == 9 && question3 == true{
            
            line10.isHidden = false
            lineCounter = lineCounter + 1
            question4Btn.isEnabled = true
            
        }else if lineCounter == 10 && question4 == true{
            
            line11.isHidden = false
            lineCounter = lineCounter + 1
            
        } else if lineCounter == 11{
            
            line12.isHidden = false
            lineCounter = lineCounter + 1
            
        } else if lineCounter == 12{
            
            line13.isHidden = false
            lineCounter = lineCounter + 1
            
        }else if lineCounter == 13{
            
            line14.isHidden = false
            lineCounter = lineCounter + 1
            question5Btn.isEnabled = true
            
        }else if lineCounter == 14 && question5 == true{
            
            line15.isHidden = false
            lineCounter = lineCounter + 1
            question6Btn.isEnabled = true
            
        } else if lineCounter == 15 && question6 == true{
            
            line16.isHidden = false
            lineCounter = lineCounter + 1
            question7Btn.isEnabled = true
            
        } else if lineCounter == 16 && question7 == true{
            
            line17.isHidden = false
            lineCounter = lineCounter + 1
            
            
        } else if lineCounter == 17 {
            
            _ = SweetAlert().showAlert("Congradulations", subTitle: "You have finished Story 10", style: .success)
            
        }

    }
    
    
    
    
    // question button actions
    
    @IBAction func Number1(_ sender: UIButton) {
        question1 = true
        buttonClicked(btn : question1Btn)
       Popover()
       Position(btn: question1Btn)
    }
    
    
    @IBAction func Number2(_ sender: UIButton) {
        
        question2 = true
        buttonClicked(btn: question2Btn)
       Popover()
        Position(btn: question2Btn)
    }
    
    @IBAction func Number3(_ sender: UIButton) {
        
        question3 = true
        buttonClicked(btn: question3Btn)
        Popover()
        Position(btn: question3Btn)
    }
    
    
    @IBAction func Number4(_ sender: UIButton) {
        question4 = true
        buttonClicked(btn: question4Btn)
        Popover()
        Position(btn: question4Btn)
        
    }
    
    @IBAction func Number5(_ sender: UIButton) {
        question5 = true
        buttonClicked(btn: question5Btn)
         Popover()
        Position(btn: question5Btn)
    }
    
    @IBAction func Number6(_ sender: UIButton) {
        question6 = true
        buttonClicked(btn: question6Btn)
        Popover()
        Position(btn: question6Btn)
    }
    
    @IBAction func Number7(_ sender: UIButton) {
        
        question7 = true
        buttonClicked(btn: question7Btn)
        Position(btn: question7Btn)
        Popover()
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
        line13.isHidden = true
        line14.isHidden = true
        line15.isHidden = true
        line16.isHidden = true
        line17.isHidden = true
        
        // prevents unwant button presses
        question1Btn.isEnabled = false
        question2Btn.isEnabled = false
        question3Btn.isEnabled = false
        question4Btn.isEnabled = false
        question5Btn.isEnabled = false
        question6Btn.isEnabled = false
        question7Btn.isEnabled = false
        
       
      PopView.alpha = 0
        
       
        
    }
    
    
    
    
}

