//
//  Story6.swift
//  StoryBuilder
//
//  Created by Frank Pizza on 2/8/17.
//  Copyright © 2017 Frank Pizza. All rights reserved.
//

import UIKit

class Story6: UIViewController {
   
    // story line outlets
    @IBOutlet weak var line1: UILabel!
    @IBOutlet weak var line2: UILabel!
    @IBOutlet weak var line3: UILabel!
    @IBOutlet weak var line4: UILabel!
    @IBOutlet weak var line5: UILabel!
    @IBOutlet weak var line6: UILabel!
    @IBOutlet weak var line7: UILabel!
    
    @IBOutlet weak var question1Btn: UIButton!
    @IBOutlet weak var question2Btn: UIButton!
    @IBOutlet weak var question3Btn: UIButton!
    @IBOutlet weak var question4Btn: UIButton!
    @IBOutlet weak var question5Btn: UIButton!
    @IBOutlet weak var question6Btn: UIButton!
    
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
    @IBOutlet var ViewBG2: UIView!
   
    
    
    // redeclarations
    var alert = SweetAlert()
    

    
    
    
    var option11 = "looked in"
    var option12 = "looked it up" //
    var option13 = "looked at it"
    
    var option21 = "based in"
    var option22 = "based with"
    var option23 = "based on" //
    
    var option31 = "similar with"
    var option32 = "similar to" //
    var option33 = "similar in"
    
   
    var option41 = "talking about"
    var option42 = "with it"
    var option43 = "at it"
    
    var option51 = "full at"
    var option52 = "full of"//
    var option53 = "full"
    
    var option61 = "finished with" //
    var option62 = "finished"
    var option63 = "finished in"
    
    
    // stores the correct answers of questions
    var Ans1: String! = "looked it up"
    var Ans2: String! = "based on"
    var Ans3: String! = "similar to"
    var Ans4: String! = "talking about"
    var Ans5: String! = "full of"
    var Ans6: String! = "finished with"


   
    
    // variable passed from queston
    var question1 = false
    var question2 = false
    var question3 = false
    var question4 = false
    var question5 = false
    var question6 = false
    
    
    var questionTxt1 = "I asked the waiter to find out your name, and I ____  up on the Internet."
    
    var questionTxt2 = "____ the fact that I saw you and ray kissing and that I know Ray Coning’s wife, I have to tell you to stop dating a married man!"
    
    var questionTxt3 = "This is ____ what he did last year with his daughter’s 5th grade teacher!  That situation is relevant to yours."
    
    
    var questionTxt4 = "The entire school was ____ it. Do you think Kristen will stop seeing Ray now?"
    
    var questionTxt5 = "He is ____ charm and lies.  He should be ashamed of himself, but he is too much of an egomaniac. "
    
    var questionTxt6 = " I wish she would just divorce him and be ____ him."

    
    
         var lineCounter = 1

    override func viewDidLoad() {
        super.viewDidLoad()

         Setup()
        // Do any additional setup after loading the view.
    }


    
   // fires when NexlIne button is pressed
    @IBAction func NextLine(_ sender: UIButton) {
    
    Label()
    
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
       
        }  else if btn == question6Btn {
            
            PopLabel.text = questionTxt6
            SubmitOne.setTitle(option61, for: .normal)
            SubmitTwo.setTitle(option62, for: .normal)
            SubmitThree.setTitle(option63, for: .normal)
        }
        
    }
    
    // function that displays question popover
    func Popover(){
       
        PopView.alpha = 1
        ViewBG.backgroundColor = UIColor.lightGray
        ViewBG2.backgroundColor = UIColor.lightGray
        NextBtn.isEnabled = false
        
        UIView.animate(withDuration: 0.3, animations: {
            
            self.view.layoutIfNeeded()
        })
    }
    
    
    
    // function that hides question popover
    
    func ClosePopover(){
        
       PopView.alpha = 0
        ViewBG.backgroundColor = UIColor.white
        ViewBG2.backgroundColor = UIColor.lightGray
        NextBtn.isEnabled = true
        
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
        
        }  else if X.constant == 0 && btn == question4Btn {
            
            Y.constant = BtnFourY.constant
        
        }  else if X.constant == 0 && btn == question5Btn {
            
            Y.constant = BtnFiveY.constant
        
        } else if X.constant == 0 && btn == question6Btn {
            
            Y.constant = BtnFiveY.constant
        }
        
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
            
        } else if LineCounter == 2{
            
            if btn.titleLabel?.text == Ans2 {
                
              _ =  SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
              _ =  SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        }else if LineCounter == 3{
            
            if btn.titleLabel?.text == Ans3 {
                
            _ =    SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
             _ =   SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        }
        else if LineCounter == 4{
            
            if btn.titleLabel?.text == Ans4 {
                
            _ =    SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
            _ =    SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        }else if LineCounter == 5{
            
            if btn.titleLabel?.text == Ans5 {
                
            _ =    SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
             _ =   SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        }else if LineCounter == 6{
            
            if btn.titleLabel?.text == Ans6 {
                
            _ =    SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
            _ =    SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
    }
}
    
    
    @IBAction func Option1(_ sender: UIButton) {
   
    Submit(btn: SubmitOne, LineCounter: lineCounter)
    
    }
    
    
    @IBAction func Option2(_ sender: Any) {
    
      Submit(btn: SubmitTwo, LineCounter: lineCounter)
        
    }
    
    @IBAction func Option3(_ sender: Any) {
    
    Submit(btn: SubmitThree, LineCounter: lineCounter)
    
    }
    
    
    
    
    
    
    // handles label manipulation
    func Label(){
    
        
        // shows line two
        if lineCounter == 1 && question1 == true{
            
            line2.isHidden = false
            lineCounter = lineCounter + 1
            question2Btn.isEnabled = true
         
            
        }else if lineCounter == 2 && question2 == true {
            
            line3.isHidden = false
            lineCounter = lineCounter + 1
            question3Btn.isEnabled = true
            
        }else if lineCounter == 3 && question3 == true{
            
            line4.isHidden = false
            lineCounter = lineCounter + 1
            question4Btn.isEnabled = true
            
        }else if lineCounter == 4 && question4 == true{
            
            line5.isHidden = false
            lineCounter = lineCounter + 1
            question5Btn.isEnabled = true
            
            
        }else if lineCounter == 5 && question5 == true{
            
            line6.isHidden = false
            lineCounter = lineCounter + 1
            question6Btn.isEnabled = true
            
        } else if lineCounter == 6 && question6 == true {
            line7.isHidden = false
            lineCounter = lineCounter + 1
            UserDefaults.standard.set(true, forKey: "story7")
            UserDefaults.standard.synchronize()
            
        }  else if lineCounter == 7 {
            
            _ = SweetAlert().showAlert("Congradulations", subTitle: "You have finished Story 6", style: .success)
            
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
    
    
    
    

    
    func Setup(){
        
        line2.isHidden = true
        line3.isHidden = true
        line4.isHidden = true
        line5.isHidden = true
        line6.isHidden = true
        line7.isHidden = true
        
        // prevents unwanted btn presses
        question2Btn.isEnabled = false
        question3Btn.isEnabled = false
        question4Btn.isEnabled = false
        question5Btn.isEnabled = false
        question6Btn.isEnabled = false
        
        // moves question view
       PopView.alpha = 0
    }
    
  
}
