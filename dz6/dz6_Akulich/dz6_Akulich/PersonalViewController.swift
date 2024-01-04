//
//  PersonalViewController.swift
//  dz6_Akulich
//
//  Created by Артур on 04.01.2024.
//

import UIKit

final class PersonalViewController: UIViewController {
    
    static let identifier = "PersonalViewController"
    
    @IBOutlet weak var educationTitleLabel: UILabel!
    
    @IBOutlet weak var educationInfoLabel: UILabel!
    
    @IBOutlet weak var interestsTitleLabel: UILabel!
    
    @IBOutlet weak var interestsInfoLabel: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fillEducationInfoLabel()
        fillInterestsInfoLabel()
    }

    @IBAction func nextButtonDidTap(_ sender: Any) {
        guard let navController = navigationController else { return }
        pushToController(navigationController: navController, identifier: ProjectsViewController.identifier)
    }
    
    private func fillEducationInfoLabel() {
        self.educationInfoLabel.text = """
        2019 – 2023 Minsk, Belarus
             
             Belarussian State University, Mechanics and Mathematics Faculty
             I got basic knowledge in web development, algorithms and data structures, programming languages like Java, C++, C#, Swift
             
        04/2022 – 10/2022 Minsk, Belarus
        
             Trainee iOS Developer, VironIT
             The internship included daily lectures and homework after them. Everything happened under the supervision of a mentor who pointed out mistakes. Also, each trainee had a project work. I implemented the design, set up the network and worked with the local database.
        """
    }
    
    private func fillInterestsInfoLabel() {
        self.interestsInfoLabel.text = """
            I love music, active recreation, computer games. Playing guitar. sometimes I skateboard. I have been involved in sports for a long time and have the category of “Candidate Master of Sports” in freestyle wrestling. I got acquainted with programming at university and liked it. I love solving mathematical and algorithmic problems.
        """
    }
}
