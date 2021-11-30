//
//  ViewController.swift
//  colorMix
//
//  Created by Julian Jackson on 11/23/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var greenSwitch: UISwitch!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBAction func sliderChange(_ sender: Any) {
        updateColor()
    }
    
    @IBOutlet weak var blueSlider: UISlider!
    // ------
    @IBOutlet weak var colorView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorView.backgroundColor = .black

    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
            if sender.isOn {
                colorView.backgroundColor = .red
            }
            else {
                colorView.backgroundColor = .black
        }

    }
    
    func updateColor() {
    var red: CGFloat = 0
    var green: CGFloat = 0
    var blue: CGFloat = 0
    if redSwitch.isOn {
        red = 1
    }
    if greenSwitch.isOn {
    green = 1
    }
    if blueSwitch.isOn {
    blue = 1
    }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
        }
    
}
    
