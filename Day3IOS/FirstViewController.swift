//
//  ViewController.swift
//  Day3IOS
//
//  Created by Ankita Pabbi on 2019-07-02.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var myLion: UIImageView!
    @IBAction func btnSetImage(_ sender: Any) {
        
        //myLion.image = UIImage(named: "elephant.png")
       
        // this using image Literal
        myLion.image = #imageLiteral(resourceName: "gorilla.png")
        
        // for background color
       // view.backgroundColor = UIColor.cyan
        // using color Literal
        //view.backgroundColor = #colorLiteral(red: 0, green: 0.6821404696, blue: 0.9205035567, alpha: 1)
        
        // using RGB
        view.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0, alpha: 1)
        
    }
    
    @IBOutlet weak var getCurrentValueOfSlider: UISlider!
    @IBOutlet weak var labelForSlider: UILabel!
    
    @IBAction func sliderValueChange(_ sender: UISlider) {
        labelForSlider.text = "\(Int(sender.value))"
    }
    @IBAction func changeImageBySwitch(_ sender: UISwitch) {
        if sender.isOn {
            myLion.image = UIImage(named: "lion.png")
        }else {
            myLion.image = UIImage(named: "elephant.png")
        }
    }
    
    @IBOutlet weak var labelForSteeper: UILabel!
    @IBOutlet weak var getStepperCurrentValue: UIStepper!
    @IBAction func stepperAfterFive(_ sender: UIStepper) {
       labelForSteeper.text = "\(Int(sender.value))"
        switch sender.value {
        case 5:
            myLion.image = UIImage(named: "lion.png")
        case 10:
            myLion.image = UIImage(named: "elephant.png")
        case 15:
            myLion.image = UIImage(named: "home.png")
        case 20:
            myLion.image = UIImage(named: "gorilla.png")
        case 25:
            myLion.image = UIImage(named: "ice cream.png")
        default:
            print("Wrong")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "First"
        labelForSlider.text =  String(Int(getCurrentValueOfSlider.value))
         labelForSteeper.text = String(Int(getStepperCurrentValue.value))
        
        // Do any additional setup after loading the view.
    }


}

