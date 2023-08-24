//
//  Addition.swift
//  AwesomeProject
//
//  Created by Sathish Kumar on 24/08/23.
//

import Foundation
import UIKit

@objc(Addition) class Addition : NSObject {
  @objc func showAlert() {
    let alert = UIAlertController(title: "Congratz !", message: "You have added native swift in to React Native", preferredStyle: UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
    let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
    if var topController = keyWindow?.rootViewController {
      while let presentedViewController = topController.presentedViewController {
        topController = presentedViewController
      }
      DispatchQueue.main.async { [weak self] in
        topController.present(alert, animated: true, completion: nil)
      }
    }
  }
}
