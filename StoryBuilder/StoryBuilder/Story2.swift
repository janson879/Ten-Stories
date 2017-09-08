//
//  Story2.swift
//  StoryBuilder
//
//  Created by Frank Pizza on 1/23/17.
//  Copyright © 2017 Frank Pizza. All rights reserved.
//

import UIKit

class Story2: UIViewController {

    // story line outlets
    @IBOutlet weak var line2: UILabel!
    @IBOutlet weak var line3: UILabel!
    @IBOutlet weak var line4: UILabel!
    @IBOutlet weak var line5: UILabel!
    @IBOutlet weak var line6: UILabel!
    
    @IBOutlet weak var question1Btn: UIButton!
    @IBOutlet weak var question2Btn: UIButton!
    @IBOutlet weak var question3Btn: UIButton!
    @IBOutlet weak var question4Btn: UIButton!
    
    @IBOutlet weak var QuestionView: UIView!
    @IBOutlet weak var QuestionLbl: UILabel!
    
   // view outlet
    @IBOutlet var ViewBG: UIView!
    @IBOutlet var ViewBG2: UIView!
    
    
    // submit btns
    @IBOutlet weak var SubmitOne: UIButton!
    @IBOutlet weak var SubmitTwo: UIButton!
    @IBOutlet weak var SubmitThree: UIButton!
  
    
    
    @IBOutlet weak var CenterAlignment: NSLayoutConstraint!
    @IBOutlet weak var VerticalAlignment: NSLayoutConstraint!
    
    
    @IBOutlet weak var Next: UIButton!
    
    
    // when question is answered
    var question1 = false
    var question2 = false
    var question3 = false
    var question4 = false
    
    //redelcaration
    
    var alert = SweetAlert()
    
    var questionTxt1 = " Johnny:  Hey Duane I’m fed up with Tommy.   We’ll never ____ being a band if he goes missing for days and makes us cancel shows."
    
    
    var questionTxt2 = "Duane:  I feel the same way.  His disappearance had better not be _____   drugs.  He can’t handle that stuff.    He needs someone to look over him 24/7.  One mistake and he’s lost."
    
    var questionTxt3 = "Johnny:  Can you visit his house and   ____ it?  I don’t know what’s happened to him.  If it is drugs, he’s capable of anything—running away, stealing…anything.  This could be similar to the time he stole his brother’s car last year."
    
    
    var questionTxt4 = "Duane:  I’m a little frightened to go.  I don’t want his parents to think I’m   _____ getting him the drugs.  They hate me already because they don’t approve of the band."
    
    var option11 = "succeed at" // correct
    var option12 = "succeed with"
    var option13 = "succeed on"
    
    var option21 = "related to" // correct
    var option22 = "related with"
    var option23 = "related in"
    
    var option31 = "look into"// correct
    var option32 = "look at"
    var option33 = "look with"
    
    var option41 = "guilty of" // correct
    var option42 = "guilty in"
    var option43 = "guilty on"
    
    
    
    var Ans1: String! = "succeed at"
    var Ans2: String! = "related to"
    var Ans3: String! = "look into"
    var Ans4: String! = "guilty of"
    
    var lineCounter = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Setup()
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
        
        if LineCounter == 2 {
            
            if btn.titleLabel?.text == Ans1 {
                
             _ =   SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
            }else {
                
             _ =   SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        } else if LineCounter == 3 {
            
            if btn.titleLabel?.text == Ans2 {
                
              _ =  SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
              _ =  SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
        }else if LineCounter == 4  {
                
                if btn.titleLabel?.text == Ans3 {
                    
                 _ =   SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                    ClosePopover()
                    
                } else {
                    
                   _ = SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                    ClosePopover()
                }
                
        } else if LineCounter == 5 {
            
            if btn.titleLabel?.text == Ans4 {
                
              _ =  SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
              _ =  SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        }
        

}
    
        
        
        
        
    
    
    
        
    
    // submit btns
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
            
        } else if btn == question3Btn {
            QuestionLbl.text = questionTxt3
            SubmitOne.setTitle(option31, for: .normal)
            SubmitTwo.setTitle(option32, for: .normal)
            SubmitThree.setTitle(option33, for: .normal)
            
        } else if btn == question4Btn {
          QuestionLbl.text = questionTxt4
            SubmitOne.setTitle(option41, for: .normal)
            SubmitTwo.setTitle(option42, for: .normal)
            SubmitThree.setTitle(option43, for: .normal)
        }
        
    }
    
    
    
    
    
    
    
    // handles label manipulation
    func Label(){
        
        if lineCounter == 1{
            
            line2.isHidden = false
            lineCounter = lineCounter + 1
            question1Btn.isEnabled = true
            
            
        } else if lineCounter == 2 && question1 {
            
            line3.isHidden = false
            lineCounter = lineCounter + 1
            question2Btn.isEnabled = true
            
            
        } else if lineCounter == 3 && question2{
            
            line4.isHidden = false
            lineCounter = lineCounter + 1
            question3Btn.isEnabled = true
            
            
        }else if lineCounter == 4 && question3{
            
            line5.isHidden = false
            question4Btn.isEnabled = true
            lineCounter = lineCounter + 1
            
        }else if lineCounter == 5 && question4{
            
            line6.isHidden = false
            lineCounter = lineCounter + 1
            UserDefaults.standard.set(true, forKey: "story3")
            UserDefaults.standard.synchronize()
       
        } else if lineCounter == 6 {
    
    _ = SweetAlert().showAlert("Congradulations", subTitle: "You have finished Story 2", style: .success)
    
    }
}




    @IBAction func Number1(_ sender: UIButton) {
        
      
        Popover()
        buttonClicked(btn : question1Btn)
        question1 = true
        question1Btn.isEnabled = false
    }
    
    
    @IBAction func Number2(_ sender: UIButton) {
        
        question2 = true
        buttonClicked(btn: question2Btn)
        Popover()
        question2Btn.isEnabled = false
    }
    
    @IBAction func Number3(_ sender: UIButton) {
        
        question3 = true
        buttonClicked(btn: question3Btn)
        Popover()
        question3Btn.isEnabled = false
    }
    
    @IBAction func Number4(_ sender: UIButton) {
        
        question4 = true
        buttonClicked(btn: question4Btn)
        Popover()
        question4Btn.isEnabled = false
    }
    
    
    
    func Setup(){
        
        line2.isHidden = true
        line3.isHidden = true
        line4.isHidden = true
        line5.isHidden = true
        line6.isHidden = true
        
        
        question1Btn.isEnabled = false
        question2Btn.isEnabled = false
        question3Btn.isEnabled = false
        question4Btn.isEnabled = false
        
       
        QuestionView.alpha = 0
        
        
        
    }
    

    
}



