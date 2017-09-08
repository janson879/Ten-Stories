//
//  Story_1.swift
//  StoryBuilder
//
//  Created by Frank Pizza on 1/23/17.
//  Copyright © 2017 Frank Pizza. All rights reserved.
//

import UIKit

class Story_1: UIViewController {
   
    // story line outlets
    @IBOutlet weak var line2: UILabel!
    @IBOutlet weak var line3: UILabel!
    @IBOutlet weak var line4: UILabel!
    @IBOutlet weak var line5: UILabel!
   
    // questionBtns
    @IBOutlet weak var question2Btn: UIButton!
    @IBOutlet weak var question1Btn: UIButton!
    
    // main question view parts
   
    @IBOutlet weak var QuestionView: UIView!
    @IBOutlet weak var QuestionLbl: UILabel!

    
    // BG
    
    @IBOutlet var ViewBG: UIView!
    @IBOutlet weak var ViewBG2: UIView!
   
    // submit btns
    @IBOutlet weak var SubmitOne: UIButton!
    @IBOutlet weak var SubmitTwo: UIButton!
    @IBOutlet weak var SubmitThree: UIButton!
  
    
    @IBOutlet weak var Next: UIButton!
    
    
    
    
    // when question is answered
    var question1 = false
    var question2 = false
    
    
    
    //redeclarations
    var alert = SweetAlert()
    
   
    var questionTxt1 = "Beth: But I haven’t   _____ anything in the last few months, and I’ve never done anything related to working in a restaurant.  I feel like I’m trying to cheat my way into a job."
    
    
    var questionTxt2 = "Kristen:  The only thing you’re guilty of is not having confidence.  You can do this.  We’re cousins, and I’m not  ____ any failures! "
    
    var option11 = "succeeded at"// correct
    var option12 = "succeeded in"
    var option13 = "succeeded in"
    var option21 = "related to" // correct
    var option22 = "related with"
    var option23 = "related on"
    
    

    var Ans1: String! = "succeeded at"
    var Ans2: String! = "related to"

    var lineCounter = 1
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    Setup()
     
    //Welcome()
    
    
    }

    
    
    @IBAction func NextLine(_ sender: UIButton) {
    
    
     Label()

    
    }
    

    
    
    
    
    
    func Popover (){
        
       QuestionView.alpha = 1
        ViewBG.backgroundColor = UIColor.lightGray
        ViewBG2.backgroundColor = UIColor.lightGray
        Next.isEnabled = false
        
        UIView.animate(withDuration: 0.3, animations: {
            
            self.view.layoutIfNeeded()
        })
        
        
    }

    
    func ClosePopover (){
        
       QuestionView.alpha = 0
        ViewBG.backgroundColor = UIColor.white
        ViewBG2.backgroundColor = UIColor.white
        Next.isEnabled = true
        
        UIView.animate(withDuration: 0.3, animations: {
            
            self.view.layoutIfNeeded()
        })
    }
    
    
    func Submit (btn: UIButton, LineCounter: Int) {
        
        if LineCounter == 3 {
            
            if btn.titleLabel?.text == Ans1 {
                
             _ = SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
            }else {
                
               _ = SweetAlert().showAlert("Wrong", subTitle: "sorry", style: .error)
                ClosePopover()
            }
            
        } else {
            
            if btn.titleLabel?.text == Ans2 {
                
            _ =   SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
             _ =   SweetAlert().showAlert("Wrong", subTitle: "sorry", style: .error)
                ClosePopover()
            }
            
        }
        
        
        
    }
    
    
    //  submit option buttons
    @IBAction func Option1(_ sender: UIButton) {
      Submit(btn: SubmitOne, LineCounter: lineCounter)
    
    }
    
    
    @IBAction func Option2(_ sender: UIButton) {
    Submit(btn: SubmitTwo, LineCounter: lineCounter)
    
    }
    
    @IBAction func Option3(_ sender: UIButton) {
    Submit(btn: SubmitThree, LineCounter: lineCounter)
    
    }
    
    
    
    

    func buttonClicked(btn : UIButton){
        
       
        
        if btn == question1Btn {
            
            QuestionLbl.text = questionTxt1
            SubmitOne.setTitle(option11, for: .normal)
            SubmitTwo.setTitle(option12, for: .normal)
            SubmitThree.setTitle(option13, for: .normal)
            
        } else if btn == question2Btn {
            QuestionLbl.text = questionTxt2
            SubmitOne.setTitle(option21, for: .normal)
            SubmitTwo.setTitle(option22, for: .normal)
            SubmitThree.setTitle(option23, for: .normal)
            
        }
    
    }

        
    func Welcome(){
        
        if UserDefaults.standard.bool(forKey: "tut") == true{
            
            _ = SweetAlert().showAlert("Story 1 begins", subTitle: "When you start a story, all you have is a starting line.", style: AlertStyle.success, buttonTitle:"Ok",buttonColor:UIColor.lightGray) { (button) -> Void in
                if button == true {
                    
                    _ = SweetAlert().showAlert("Progress", subTitle: "To move through a story press the Next Line!!", style: AlertStyle.success)
                }
            }
        }
    }

    
    
    
    // handles label manipulation
    func Label(){
       
        if lineCounter == 1{
        
            line2.isHidden = false
            lineCounter = lineCounter + 1
       
        
        } else if lineCounter == 2{
           
            line3.isHidden = false
            lineCounter = lineCounter + 1
            question1Btn.isEnabled = true
            // tutor here
            
            if UserDefaults.standard.bool(forKey: "tut") == true{

            _ = SweetAlert().showAlert("What's Missing", subTitle: "The line that just poped up is missing a piece", style: AlertStyle.success, buttonTitle:"Ok",buttonColor:UIColor.lightGray) { (button) -> Void in
                if button == true {
                    
                    _ = SweetAlert().showAlert("Press on it", subTitle:  "tap on a line with missing text and answer the question", style: AlertStyle.success, buttonTitle:"Ok", buttonColor: UIColor.lightGray) { (button) ->Void in if button == true {
                        
                        
                        _ = SweetAlert().showAlert("You Shall Not Pass", subTitle:  "A story will not be able to progress until you do", style: AlertStyle.success)
                        
                    }
                }
            }
        }
    }

        
        } else if lineCounter == 3 && question1 == true{
            
            line4.isHidden = false
            question2Btn.isEnabled = true
            lineCounter = lineCounter + 1
            
        }else if lineCounter == 4 && question2 == true {
        
            line5.isHidden = false
            lineCounter = lineCounter + 1
            UserDefaults.standard.set(true, forKey: "story2")
            UserDefaults.standard.synchronize()
            
        } else if lineCounter == 5 {
            
            if UserDefaults.standard.bool(forKey: "tut") == true{
            
            _ = SweetAlert().showAlert("When it ends", subTitle: "When you finish a story, you will recieve a message like this", style: AlertStyle.success, buttonTitle:"Ok",buttonColor:UIColor.lightGray) { (button) -> Void in
                if button == true {
                    
                    _ = SweetAlert().showAlert(" Story 2 Unlocked", subTitle:  "When you finish a stroy the following story is unlock, play all of the stories and unlock them all", style: AlertStyle.success, buttonTitle:"Ok", buttonColor: UIColor.lightGray) { (button) ->Void in if button == true {
                        
                        
                            _ = SweetAlert().showAlert("Congratulation", subTitle:  "You have finished Story 1", style: AlertStyle.success)
                        
                          UserDefaults.standard.set(false, forKey: "tut")
                          UserDefaults.standard.synchronize()
                        
                          }
                        }
                     }
                }
            } else {
                
                 _ = SweetAlert().showAlert("Congratulation", subTitle:  "You have finished Story 1", style: AlertStyle.success)
            }
        }
    }
  
    
    
    
    @IBAction func Number1(_ sender: Any) {
    
        question1 = true
        Popover()
        buttonClicked(btn : question1Btn)
        question1Btn.isEnabled = false
    
    }
    
    
    @IBAction func Number2(_ sender: Any) {
        
     
        question2 = true
        buttonClicked(btn: question2Btn)
        Popover()
        question2Btn.isEnabled = false
        
    }
    
    
    
    func Setup(){
        
        line2.isHidden = true
        line3.isHidden = true
        line4.isHidden = true
        line5.isHidden = true
     
        
        // prevents unwanted btn presses
        question1Btn.isEnabled = false
        question2Btn.isEnabled = false
        
        ViewBG.backgroundColor = UIColor.white
        QuestionView.alpha = 0
        
      
     }
  }












