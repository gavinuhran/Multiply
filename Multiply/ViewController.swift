//
//  ViewController.swift
//  Multiply
//
//  Created by Gavin Uhran on 6/6/17.
//  Copyright © 2017 Gavin Uhran. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    @IBOutlet weak var myTextFieldOne: UITextField!
    @IBOutlet weak var myTextFieldTwo: UITextField!
    @IBOutlet weak var myProduct: UILabel!
    @IBOutlet weak var myMarioKartCharacter: UIImageView!
    @IBOutlet weak var myTitle: UILabel!
    @IBOutlet weak var myOperator: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var imageLabel: UILabel!
    
    let operations = ["+", "-", "x", "÷"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
        {
            return 1
        }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
        {
            return operations[row]
        }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
        {
            return operations.count
        }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
        {
            myOperator.text = operations[row]
        }
    
    override func viewDidLoad()
        {
            super.viewDidLoad()
            myProduct.alpha = 0.0
            myMarioKartCharacter.alpha = 0.0
            myOperator.text = "+"
            imageLabel.alpha = 0.0
        }

    @IBAction func productCalculation(_ sender: Any)
        {
            imageLabel.alpha = 0.0
            self.myMarioKartCharacter.alpha = 0.0
            let reactantOne = myTextFieldOne.text!
            let reactantTwo = myTextFieldTwo.text!
            if myOperator.text == "+"
                {
                    let myAdditionNumber = Double(reactantOne)! + Double(reactantTwo)!
                    myProduct.text = "\(myAdditionNumber)"
                    UIView.animate(withDuration: 3.0)
                        {
                            self.myProduct.alpha = 1.0
                        }
                    if Int(myAdditionNumber) % 2 == 0
                        {
                            imageLabel.text = "Funnier"
                            UIView.animate(withDuration: 3.0)
                                {
                                    self.imageLabel.alpha = 1.0
                                }
                        }
                    else
                        {
                            imageLabel.text = "Funny"
                            UIView.animate(withDuration: 3.0)
                                {
                                    self.imageLabel.alpha = 1.0
                                }
                        }
                    if myAdditionNumber == 64
                        {
                            myMarioKartCharacter.image = #imageLiteral(resourceName: "Toad")
                            UIView.animate(withDuration: 3.0)
                                {
                                    self.myMarioKartCharacter.alpha = 1.0
                                }
                        }
                    else
                        {
                            myMarioKartCharacter.alpha = 1.0
                        }
                }
            if myOperator.text == "-"
                {
                    let mySubtractionNumber = Double(reactantOne)! - Double(reactantTwo)!
                    myProduct.text = "\(mySubtractionNumber)"
                    UIView.animate(withDuration: 3.0)
                        {
                            self.myProduct.alpha = 1.0
                        }
                    if Int(mySubtractionNumber) % 2 == 0
                        {
                            imageLabel.text = "Funnier"
                            UIView.animate(withDuration: 3.0)
                                {
                                    self.imageLabel.alpha = 1.0
                                }
                        }
                    else
                        {
                            imageLabel.text = "Funny"
                            UIView.animate(withDuration: 3.0)
                                {
                                    self.imageLabel.alpha = 1.0
                                }
                        }
                    if mySubtractionNumber == 64
                        {
                            myMarioKartCharacter.image = #imageLiteral(resourceName: "Toad")
                            UIView.animate(withDuration: 3.0)
                                {
                                    self.myMarioKartCharacter.alpha = 1.0
                                }
                        }
                    else
                        {
                            myMarioKartCharacter.alpha = 1.0
                        }
                }
            if myOperator.text == "x"
                {
                    let myMultiplicationNumber = Double(reactantOne)! * Double(reactantTwo)!
                    myProduct.text = "\(myMultiplicationNumber)"
                    UIView.animate(withDuration: 3.0)
                        {
                            self.myProduct.alpha = 1.0
                        }
                    if Int(myMultiplicationNumber) % 2 == 0
                        {
                            imageLabel.text = "Funnier"
                            UIView.animate(withDuration: 3.0)
                                {
                                    self.imageLabel.alpha = 1.0
                                }
                        }
                    else
                        {
                            imageLabel.text = "Funny"
                            UIView.animate(withDuration: 3.0)
                                {
                                    self.imageLabel.alpha = 1.0
                                }
                        }
                    if myMultiplicationNumber == 64
                        {
                            myMarioKartCharacter.image = #imageLiteral(resourceName: "Toad")
                            UIView.animate(withDuration: 3.0)
                                {
                                    self.myMarioKartCharacter.alpha = 1.0
                                }
                        }
                    else
                        {
                            myMarioKartCharacter.alpha = 1.0
                        }

                }
            if myOperator.text == "÷"
                {
                    let myDivisionNumber = Double(reactantOne)! / Double(reactantTwo)!
                    myProduct.text = "\(myDivisionNumber)"
                    UIView.animate(withDuration: 3.0)
                        {
                            self.myProduct.alpha = 1.0
                        }
                    if Int(myDivisionNumber) % 2 == 0
                        {
                            imageLabel.text = "Funnier"
                            UIView.animate(withDuration: 3.0)
                                {
                                    self.imageLabel.alpha = 1.0
                                }
                        }
                    else
                        {
                            imageLabel.text = "Funny"
                            UIView.animate(withDuration: 3.0)
                                {
                                    self.imageLabel.alpha = 1.0
                                }
                        }
                    if myDivisionNumber == 64
                        {
                            myMarioKartCharacter.image = #imageLiteral(resourceName: "Toad")
                            UIView.animate(withDuration: 3.0)
                                {
                                    self.myMarioKartCharacter.alpha = 1.0
                                }
                        }
                    else
                        {
                            myMarioKartCharacter.alpha = 1.0
                        }
                }
        }
}
