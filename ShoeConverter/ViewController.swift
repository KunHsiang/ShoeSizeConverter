//
//  ViewController.swift
//  ShoeConverter
//
//  Created by ChangKH on 2014/12/4.
//  Copyright (c) 2014年 kunhsiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    @IBOutlet weak var womensShoeSizeTextField: UILabel!
    @IBOutlet weak var womenConvertedShoeSizeLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: AnyObject) {

        //Men's shoe converter
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        let conversionConstant = 30
        
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
    }
    

    @IBAction func convertWomenShoeSizeButtonPressed(sender: UIButton) {
        let sizeFromTextField = womenConvertedShoeSizeLabel.text.toInt()!
        let conversionConstant = 30.5
        
        womenConvertedShoeSizeLabel.hidden = false
        womenConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
    }
}