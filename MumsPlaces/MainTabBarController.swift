//
//  MainTabBarController.swift
//  MumsPlaces
//
//  Created by Richard Price on 27/10/2020.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    
    
    private func setupUI() {
        viewControllers = [
            setupNavigationController(with: RecomendedViewController(), title: "Recomended", image: UIImage(systemName: "house") ?? UIImage(), tag: 0),
            setupNavigationController(with: RecomendedViewController(), title: "Search", image: UIImage(systemName: "magnifyingglass") ?? UIImage(), tag: 1),
            setupNavigationController(with: RecomendedViewController(), title: "Profile", image: UIImage(systemName: "person.fill") ?? UIImage(), tag: 2)
        ]
    }
    
    private func setupNavigationController(with rootController: UIViewController, title: String, image: UIImage, tag: Int) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: rootController)
        navigationController.tabBarItem.title = title
        navigationController.navigationBar.prefersLargeTitles = true
        rootController.title = title
        navigationController.tabBarItem.image = image
        return navigationController
    }
}
