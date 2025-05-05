//
//  ViewController.swift
//  ColorChanger
//
//  Created by Phyo Thant on 5/4/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func changeColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    func randomTextColor() -> UIColor {
        return UIColor(red: .random(in: 0...1),
                       green: .random(in: 0...1),
                       blue: .random(in: 0...1),
                       alpha: 1.0)
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    @IBAction func colorChange(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        nameLabel.textColor = randomTextColor()
        schoolLabel.textColor = randomTextColor()
        jobLabel.textColor = randomTextColor()
    }
}

