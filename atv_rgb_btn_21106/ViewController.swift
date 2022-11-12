//
//  ViewController.swift
//  atv_rgb_btn_21106
//
//  Created by LUNARA MORENA CUNHA on 11/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var displaylbl: UILabel!
    @IBOutlet weak var displayView: UIView!
    @IBOutlet weak var botaoCor: UIButton!
    
    var clickOk  = true
    
    var color: Cores!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        color = Cores(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)
        
        displaylbl.text = color.getString()
        
        displayView.backgroundColor = color.getColor()
    }


    
    
    //Sem botao
    @IBAction func sliderChanged(_ sender: UISlider) {
        if (sender.tag == 1){
            color.setRed(red: sender.value)
            displaylbl.text = color.getString()
            
            displayView.backgroundColor = color.getColor()
        }
         else if (sender.tag == 2){
            color.setGreen(green:  sender.value)
            displaylbl.text = color.getString()
            
            displayView.backgroundColor = color.getColor()
            
        }
        else if (sender.tag == 3){
            color.setBlue(blue:  sender.value)
            displaylbl.text = color.getString()
            
            displayView.backgroundColor = color.getColor()
         }
    }
  
}

