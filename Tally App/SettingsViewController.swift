//
//  ViewController.swift
//  Tally App
//
//  Created by Juliana Nielson on 2/16/23.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var counterNameField: UITextField!
    @IBOutlet weak var countingIntervalField: UITextField!
    @IBOutlet weak var startingNumberField: UITextField!
    @IBOutlet weak var startCountingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let informationDestination = segue.destination as? CounterViewController
        
        informationDestination?.startingNumber = startingNumberField.text ?? "0"
        informationDestination?.counterName = counterNameField.text ?? "Counter"
        informationDestination?.countingInterval = countingIntervalField.text ?? "1"
    }
    
}

