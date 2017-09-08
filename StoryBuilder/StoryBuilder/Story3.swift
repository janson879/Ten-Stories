//
//  Story3.swift
//  StoryBuilder
//
//  Created by Frank Pizza on 1/23/17.
//  Copyright © 2017 Frank Pizza. All rights reserved.
//

import UIKit

class Story3: UIViewController {

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
   
    @IBOutlet weak var PopView: UIView!
    @IBOutlet weak var PopLabel: UILabel!
  
    
    @IBOutlet var ViewBG: UIView!
    @IBOutlet weak var ViewBG2: UIView!
    
    
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
    
    
    
    
    // redeclarations
    var alert = SweetAlert()
    
    
    // when question is answered
    var question1 = false
    var question2 = false
    var question3 = false
    var question4 = false
    
    
   
    
    var questionTxt1 = "  Ravi Gupta:  If I could “like” this a million times, I would.  I’m so fond of the two of you.  I couldn’t be happier.  This couldn’t have ___ a pair of nicer people.  I can’t wait until the party."
    
    var questionTxt2 = " Ravi:  You can ___ the excuses.   I know you don’t have work.  These people are in love. I’m disappointed with your attitude.  I should be more careful with who I ask…and who I date."
    
    var questionTxt3 = "Ravi:  I didn’t think you were ___ that type of prejudice.  I’ll just go by myself.  Don’t bother calling me again."
    
    var questionTxt4 = ""
    
    var option11 = "happened to" // correct
    var option12 = "happened on"
    var option13 = "happened with"
    
    var option21 = "turn off" // correct
    var option22 = "turn at"
    var option23 = "turn in"
    
    var option31 = "capable of"// correct
    var option32 = "capable to"
    var option33 = "capable with"
    

    
    var Ans1: String! = "happened to"
    var Ans2: String! = "turn off"
    var Ans3: String! = "capable of"
    
    var lineCounter = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Setup()
    }
    
    
    
    @IBAction func NextLine(_ sender: UIButton){
        
        Label()
    }
    
    
    
    
    func Popover (){
        
       PopView.alpha = 1
        ViewBG.backgroundColor = UIColor.lightGray
         ViewBG2.backgroundColor = UIColor.lightGray
        NextBtn.isEnabled = false
        
        UIView.animate(withDuration: 0.3, animations: {
            
            self.view.layoutIfNeeded()
        })
        
    }
    
    
    func ClosePopover () {
        
        PopView.alpha = 0
         ViewBG.backgroundColor = UIColor.white
         ViewBG2.backgroundColor = UIColor.white
        NextBtn.isEnabled = true
        
        UIView.animate(withDuration: 0.3, animations: {
            
            self.view.layoutIfNeeded()
        })
        
    }
    

    
    
    
    
    func Submit (btn: UIButton, LineCounter: Int) {
        
        if LineCounter == 2 {
            
            if btn.titleLabel?.text == Ans1 {
                
              _ =  SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
            }else {
                
               _ = SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
            
        } else if LineCounter == 5 {
            
            if btn.titleLabel?.text == Ans2 {
                
               _ = SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                ClosePopover()
                
            } else {
                
               _ = SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                ClosePopover()
            }
        }else if LineCounter == 7  {
            
            if btn.titleLabel?.text == Ans3 {
                
               _ = SweetAlert().showAlert("Correct", subTitle: "Nice", style: .success)
                NextBtn.setTitle("Back", for: .normal)
                ClosePopover()

            } else {
                
              _ =  SweetAlert().showAlert("Wrong", subTitle: " ", style: .error)
                 NextBtn.setTitle("Back", for: .normal)
                ClosePopover()
            }
            
        }
        
    }
    
    

    
    
    
    func Position (btn: UIButton){
        
        if X.constant == 0 && btn == question1Btn{
            
            Y.constant = BtnOneY.constant + 80
        
        } else if X.constant == 0 && btn == question2Btn {
            
            Y.constant = BtnTwoY.constant - 100
            
        } else if X.constant == 0 && btn == question3Btn {
            
            Y.constant = BtnThreeY.constant - 50
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
          NextBtn.setTitle("Back", for: .normal)
    
    }
    
    
}







    // handles label manipulation
    func Label(){
        
        if lineCounter == 1{
            
            line2.isHidden = false
            lineCounter = lineCounter + 1
            question1Btn.isEnabled = true
            
        } else if lineCounter == 2 && question1 == true  {
            
            line3.isHidden = false
            lineCounter = lineCounter + 1
          
            
        } else if lineCounter == 3 {
            
            line4.isHidden = false
            lineCounter = lineCounter + 1
        
        }else if lineCounter == 4{
            
            line5.isHidden = false
            question2Btn.isEnabled = true
            lineCounter = lineCounter + 1
            
        }else if lineCounter == 5 && question2 == true {
            
            line6.isHidden = false
            lineCounter = lineCounter + 1
     
        } else if lineCounter == 6 {
          
            line7.isHidden = false
            lineCounter = lineCounter + 1
            question3Btn.isEnabled = true
            
            
            UserDefaults.standard.set(true, forKey: "story4")
            
            UserDefaults.standard.synchronize()

        } else if lineCounter == 7 && question3 == true{
    
    _ = SweetAlert().showAlert("Congradulations", subTitle: "You have finished Story 3", style: .success)
    
    }
    
    
    
        
    }
    
    
    
    
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
        Position(btn: question2Btn)
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
    

    
    
    
    
    
    
    func Setup(){
    //
    line2.isHidden = true
    line3.isHidden = true
    line4.isHidden = true
    line5.isHidden = true
    line6.isHidden = true
    line7.isHidden = true
       
     //
    question1Btn.isEnabled = false
    question2Btn.isEnabled = false
    question3Btn.isEnabled = false
        
       PopView.alpha = 0
        
        // sets scrollable conent area
        
       
    }
    
    
    
}



