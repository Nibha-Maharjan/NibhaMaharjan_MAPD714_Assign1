//
//  ViewController.swift
//  NibhaMaharjan_MAPD714_Assign1
//
//  * File name: NibhaMaharjan_MAPD714_Assign1
//  * Name: Nibha Maharjan
//  * Student Number: 301282952
//  * Date completed: Sep 19th 2023
//  * App info: Simple app with UI to determine Interest and Total amount by taking Principle, ROI and time as Input from the user
//
//  Created by nibha maharjan on 2023-09-17.
//

import UIKit

//Initializing variables for calculations
var calc = Double()
var sum = Double()
var totl = Double()
var pnum = Double()
var tnum = Double()
var rnum = Double()

class ViewController: UIViewController {

    //Declaring UI Elements
    @IBOutlet weak var myPrincipal: UITextField!
    @IBOutlet weak var myTime: UITextField!
    @IBOutlet weak var myRoi: UITextField!
    @IBOutlet weak var buttonCalc: UIButton!
    @IBOutlet weak var buttonClear: UIButton!
    @IBOutlet weak var calcAnswer: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Button Click Event Calculations to calculate Interest and Total amount
    @IBAction func interestCalculate(_ sender: Any) {
        
        //Storing inputs into variables as Double Datatype
        let pnum = Double(myPrincipal.text!)
        let tnum = Double(myTime.text!)
        let rnum = Double(myRoi.text!)
        
        //Calculation part
        sum = pnum!*tnum!*rnum!
        calc = sum/100
        totl = calc + pnum!
        
        //Changing answers into String with proper decimal points as shown in the example
        let answer = String(format: "%.2f", calc)
        let total = String(format: "%.2f", totl)
        
        //Updating the text fields to show user the calculation
        calcAnswer.text=answer
        totalAmount.text=total
        
    }
    
    //Clear button click event as requested by the question
    @IBAction func clearAction(_ sender: Any) {
        calcAnswer.text = "0"
        totalAmount.text = "0"
        myPrincipal.text = ""
        myTime.text = ""
        myRoi.text = ""
    }
}

