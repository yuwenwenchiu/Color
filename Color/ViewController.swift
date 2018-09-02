//
//  ViewController.swift
//  Color
//
//  Created by Yuwen Chiu on 2018/8/28.
//  Copyright © 2018年 YuwenChiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func colorSliderChange(_ sender: UISlider) {
        
        imageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        
        redLabel.text = String(format:  "%.2f", redSlider.value)
        greenLabel.text = String(format:  "%.2f", greenSlider.value)
        blueLabel.text = String(format:  "%.2f", blueSlider.value)
        alphaLabel.text = String(format:  "%.2f", alphaSlider.value)
        
    }
    
    @IBAction func btnPressed(_ sender: Any) {
        
        let red = Double.random(in: 0...1)
        let green = Double.random(in: 0...1)
        let blue = Double.random(in: 0...1)
        let alpha = Double.random(in: 0...1)
        
        imageView.backgroundColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(alpha))
        
        redLabel.text = String(format:  "%.2f", red)
        greenLabel.text = String(format:  "%.2f", green)
        blueLabel.text = String(format:  "%.2f", blue)
        alphaLabel.text = String(format:  "%.2f", alpha)
        
    }
    
}

