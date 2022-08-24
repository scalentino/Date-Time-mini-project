//
//  SecondViewController.swift
//  segue homework
//
//  Created by Consultant on 8/23/22.
//

import UIKit

class SecondViewController: UIViewController {

   
    @IBOutlet weak var dateLabel: UILabel!
    var timer = Timer()
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .long, timeStyle: .none)
        timeLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .short)
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(self.tick) , userInfo: nil, repeats: true)        // Do any additional setup after loading the view.
        
    }
    
    @objc func tick() {
        dateLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .long, timeStyle: .none)
        timeLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .short)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
