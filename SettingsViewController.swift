//
//  ViewController.swift
//  HW 2
//
//  Created by Alexey Efimov on 12.06.2018.
//  Copyright © 2018 Alexey Efimov. All rights reserved.
//

import UIKit
protocol ColorPickerDelegate: AnyObject { func didSelectColor(_ color: UIColor) }

class SettingsViewController: UIViewController {


weak var delegate: ColorPickerDelegate?
   
    
    @IBOutlet var colorView: UIView!
	
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
	
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
		setupViewColor()
        
        redLabel.text = string(from: redSlider)
        greenLabel.text = string(from: greenSlider)
        blueLabel.text = string(from: blueSlider)
    }
    
	@IBAction func sliderAction(_ sender: UISlider) {
        
      
        let selectedColor = UIColor( red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1 ); delegate?.didSelectColor(selectedColor) }


        private func setupViewColor() { colorView.backgroundColor = UIColor( red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1 ) }


    
	private func string(from slider: UISlider) -> String {
		String(format: "%.2f", slider.value)
	}
}


