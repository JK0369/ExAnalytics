//
//  ViewController.swift
//  ExAnalytics
//
//  Created by Jake.K on 2022/01/06.
//

import UIKit
import FirebaseAnalytics

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func didTapButton(_ sender: Any) {
    let event = "didTapButton"
    let parameters = [
      "file": #file,
      "function": #function
    ]
    
    Analytics.setUserID("userID = \(1234)")
    Analytics.setUserProperty("ko", forName: "country")
    Analytics.logEvent(AnalyticsEventSelectItem, parameters: nil) // select_item으로 로깅
    Analytics.logEvent(event, parameters: parameters)
  }
}
