//
//  CounterViewController.swift
//  Tally App
//
//  Created by Juliana Nielson on 2/16/23.
//

import UIKit

class CounterViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var counterButton: UIButton!
    
    var counterName = String()
    var startingNumber = String()
    var countingInterval = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkLabels()
    }
    
    @IBAction func counterButtonPressed(_ sender: UIButton) {
        var countedNumber = Int(numberLabel.text!)!

        countedNumber += Int(countingInterval)!
        numberLabel.text = String(countedNumber)
    }
    
    func checkLabels() {
        let counterCheck: Int? = Int(counterName)
        let numberCheck: Int? = Int(startingNumber)
        
        if counterName == ""{
            navigationItem.title = "Counter"
        } else {
            navigationItem.title = counterName
        }
        
        if startingNumber == "" || numberCheck == nil {
            startingNumber = "0"
        }
        numberLabel.text = startingNumber
        
        if countingInterval == "" || counterCheck == nil {
            countingInterval = "1"
        }
    }
}

