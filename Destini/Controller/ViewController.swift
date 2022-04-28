//
//  ViewController.swift
//  Destini
//
//  Created by Muhammad Ziddan Hidayatullah on 28/04/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var choiceOneButton: UIButton!
    @IBOutlet weak var choiceTwoButton: UIButton!
    @IBOutlet weak var storyLabel: UILabel!
    
    var story = Story()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        guard let choice = sender.titleLabel?.text else { return }
        
        story.nextStories(userChoice: choice)
        
        updateUI()
    }
    
    func updateUI() {
        
        let currentstories = story.storyList[story.choiceDestination]
        
        storyLabel.text = currentstories.title
        choiceOneButton.setTitle(currentstories.choice1, for: UIControl.State.normal)
        choiceTwoButton.setTitle(currentstories.choice2, for: UIControl.State.normal)
    }
}
