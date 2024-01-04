//
//  ClosingViewController.swift
//  dz6_Akulich
//
//  Created by Артур on 04.01.2024.
//

import UIKit

final class ClosingViewController: UIViewController {
    
    static let identifier = "ClosingViewController"
    
    @IBOutlet weak var thanksgivingLabel: UILabel!
    
    @IBOutlet weak var socialMediaTitleLabel: UILabel!
    
    @IBOutlet weak var socialMediaInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fillSocialMediaInfo()
    }
    
    private func fillSocialMediaInfo() {
        self.socialMediaInfoLabel.text = """
        linkedIn: www.linkedin.com/example
        telegram: @example
        github: github.com/example
        gmail: example@gmail.com
        """
    }
}
