//
//  ViewController.swift
//  Enjoy Every Day App
//
//  Created by Арай Дуйсебекова on 26.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var infoLabel: UILabel!
    //@IBOutlet weak var resultButton: UIButton!
    
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //resultButton.layer.cornerRadius = 12
    }
    @IBAction func datePicker(_ sender: UIDatePicker) {
        //        let range = sender.date..<Date()
        //        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
        
        let currentDate = Date()
        let selectedDate = sender.date
        
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .full
        formatter.allowedUnits = [.day]
        
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: selectedDate, to: currentDate)
        
        if let formattedNumberOfDays = formatter.string(from: components) {
            numberOfDays = formattedNumberOfDays
            print("Number of days: \(numberOfDays)")
        }
    }
    @IBAction func resultButtonTapped() {
        infoLabel.text = "Ты наслаждаешься  жизнью уже \(numberOfDays)"
    }
}







