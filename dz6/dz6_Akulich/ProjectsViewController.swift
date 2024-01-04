//
//  ProjectsViewController.swift
//  dz6_Akulich
//
//  Created by Артур on 04.01.2024.
//

import UIKit

final class ProjectsViewController: UIViewController {
    
    static let identifier = "ProjectsViewController"
    
    @IBOutlet weak var projectsTitleLabel: UILabel!
    
    @IBOutlet weak var todoListAppLabel: UILabel!
    
    @IBOutlet weak var todoListAppInfoLabel: UILabel!
    
    @IBOutlet weak var pokemonAppLabel: UILabel!
    
    @IBOutlet weak var pokemonAppInfoLabel: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fillTodoListAppInfo()
        fillPokemonAppInfo()
    }

    @IBAction func nextButtonDidTap(_ sender: Any) {
        guard let navController = navigationController else { return }
        pushToController(navigationController: navController, identifier: ClosingViewController.identifier)
    }
    
    private func fillTodoListAppInfo() {
        self.todoListAppInfoLabel.text = """
                Simple iOS todo list app. User type title of a task in text field and press "Add" button. Task list is implemented using UITableView. User can mark tasks done by tapping them. Also user can delete complete or incomlete tasks by swipe. All tasks are saved in CoreData.
                Architecture: MVC.
            """
    }
    
    private func fillPokemonAppInfo() {
        self.pokemonAppInfoLabel.text = """
                This app take list of pokemons from open API. List is presented as UITableView with pokemon name as a title of a cell. After user select a pokemon, details is presented. Details include: name, race, height, weight and pokemon image. Also the selected pokemon is saved in CoreData. User can choose where to download informartion from: CoreData or API.
                Architecture: VIPER (improper i guess).
            """
    }
}
