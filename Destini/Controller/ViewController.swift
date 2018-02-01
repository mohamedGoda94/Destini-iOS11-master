//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let story = Stories()
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    // TODO Step 5: Initialise instance variables here
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        self.storyNumberOne()
        
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        // TODO Step 4: Write an IF-Statement to update the views
        if sender.tag == 1 {
            storyNumberThree()
        }
        else if sender.tag == 2 {
            storyNumberTwo()
        }
        if sender.tag == 3 {
            storyNumberOne()
        }
                
        // TODO Step 6: Modify the IF-Statement to complete the story
        
        if topButton.titleLabel?.text == story.answer3a {
            storyNumberSix()
        }
        if topButton.titleLabel?.text == story.answer3b {
            storyNumberFive()
        }
        if topButton.titleLabel?.text == story.answer2b {
            storyNumberFour()
        }
        if topButton.titleLabel?.text == story.answer2a {
            storyNumberThree()
        }
        
    }
    func storyNumberOne(){
        storyTextView.text = story.story1
        topButton.setTitle(story.answer1a, for: UIControlState.normal)
        bottomButton.setTitle(story.answer1b, for: UIControlState.normal)
        restartButton.isHidden = true
        bottomButton.isHidden = false
        topButton.isHidden = false
    }
    func storyNumberTwo(){
        storyTextView.text = story.story2
        topButton.setTitle(story.answer2a, for: UIControlState.normal)
        bottomButton.setTitle(story.answer2b, for: UIControlState.normal)
        restartButton.isHidden = true
        bottomButton.isHidden = false
        topButton.isHidden = false
    }
    func storyNumberThree(){
        storyTextView.text = story.story3
        topButton.setTitle(story.answer3a, for: UIControlState.normal)
        bottomButton.setTitle(story.answer3b, for: UIControlState.normal)
        restartButton.isHidden = true
        bottomButton.isHidden = false
        topButton.isHidden = false
    }
    func storyNumberFour(){
        storyTextView.text = story.story4
        topButton.isHidden = true
        bottomButton.isHidden = true
        restartButton.isHidden = false
        bottomButton.isHidden = true
        topButton.isHidden = true
    }
    func storyNumberFive(){
        storyTextView.text = story.story5
        topButton.isHidden = true
        bottomButton.isHidden = true
        restartButton.isHidden = false
        bottomButton.isHidden = true
        topButton.isHidden = true
    }
    func storyNumberSix(){
        storyTextView.text = story.story6
        topButton.isHidden = true
        bottomButton.isHidden = true
        restartButton.isHidden = false
        bottomButton.isHidden = true
        topButton.isHidden = true
    }

}

