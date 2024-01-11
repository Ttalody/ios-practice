//
//  Extensions.swift
//  dz7_Akulich
//
//  Created by Артур on 09.01.2024.
//

import UIKit

extension UIButton {
    func setupBorderedButton(title: String, borderColor: UIColor) {
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 10
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = 1
    }
}
