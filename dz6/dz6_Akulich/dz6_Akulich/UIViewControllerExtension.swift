//
//  UIViewControllerExtension.swift
//  dz6_Akulich
//
//  Created by Артур on 04.01.2024.
//

import UIKit

extension UIViewController {
    func pushToController(navigationController: UINavigationController, identifier: String) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: identifier)
        navigationController.pushViewController(vc, animated: true)
    }
}
