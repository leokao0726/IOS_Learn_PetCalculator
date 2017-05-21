//
//  ViewController.swift
//  IOS_Learn_PetCalculator
//
//  Created by LeoKao on 2017/5/21.
//  Copyright © 2017年 LeoKao. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let catYears = [15,24,28,32,36,40,44,48,52,65,60,64,68,72,76,80,84,88,92,96]
    let dogYears = [17,23,28,32,36,40,44,48,52,65,60,64,68,72,76,80,84,88,92,96]
    
    
    @IBOutlet weak var yearPicker: UIPickerView!
    
    @IBAction func giveMeAns(_ sender: UIButton) {
        let age = yearPicker.selectedRow(inComponent: 0)
        var resultAge:Int
        
        if let petType = self.restorationIdentifier{
            if petType == "cat"{
            resultAge = catYears[age]
            }else{
                resultAge = dogYears[age]
            }
            let resultAlert = UIAlertController(title: "Yes!", message: "Your pet's age is \(resultAge) years old.", preferredStyle: .alert)
            let okBtn = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            resultAlert.addAction(okBtn)
            
            present(resultAlert, animated: true, completion: nil)
        }
    }
    
    
    //how many components? how many rows? what's the title?
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 20
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let yearNum = row + 1
        if yearNum == 1 {
            return "\(yearNum) year old."
        }else{
            return "\(yearNum) years old."
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
        // let statusbar words turn to white
    }

    

}

