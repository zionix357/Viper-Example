//
//  ArticlesViewController.swift
//  Viper
//
//  Created by Arthur Rocha on 27/03/17.
//  Copyright © 2017 DatIn. All rights reserved.
//

import UIKit

/*
 *Protocolo que define os métodos de entrada de vista.
 */

protocol ArticlesViewInterface : class {
    func showArticlesData(articles : [Article])
    func showNoContentScreen()
}


/*
 * Uma visualização responsável por exibir uma lista, de artigos obtidos de alguma fonte.
 */
class ArticlesViewController: UIViewController, ArticlesViewInterface {
    
    //Referenciar a uma view
     var presenter : ArticlesModuleInterface!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.updateView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        ArticlesWireframe.sharedInstance.configure(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: ArticlesViewInterface
    
    func showArticlesData(articles: [Article]) {
        print("Varios dados")
    }
    
    func showNoContentScreen() {
        print("Nenhum dado")
    }
}



















