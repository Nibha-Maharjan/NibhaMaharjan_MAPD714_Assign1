//
//  ViewController.swift
//  NibhaMaharjan_MAPD714_Assign1
//
//  Created by nibha maharjan on 2023-09-17.
//

import UIKit

//Initializing variables
var calc = Double()
var sum = Double()
var totl = Double()
var pnum = Double()
var tnum = Double()
var rnum = Double()

class ViewController: UIViewController {

    //Connecting UI Elements
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

    //Button Click Event Calculations
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
    
    //Clear button click event
    @IBAction func clearAction(_ sender: Any) {
        calcAnswer.text = ""
        totalAmount.text = ""
        myPrincipal.text = ""
        myTime.text = ""
        myRoi.text = ""
    }
}

