//
//  ArticlesWireframe.swift
//  Viper
//
//  Created by Arthur Rocha on 27/03/17.
//  Copyright © 2017 DatIn. All rights reserved.
//

import Foundation

class ArticlesWireframe {
    
    static let sharedInstance = ArticlesWireframe()
    
    func configure(_ viewController: ArticlesViewController) {
        let interactor = ArticlesInterector()
        let presenter = ArticlesPresenter()
        viewController.presenter = presenter
        presenter.interector = interactor
        presenter.view = viewController
        interactor.output = presenter
    }
}
