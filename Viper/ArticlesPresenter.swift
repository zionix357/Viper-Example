//
//  ArticlesPresenter.swift
//  Viper
//
//  Created by Arthur Rocha on 27/03/17.
//  Copyright © 2017 DatIn. All rights reserved.
//

import Foundation

/*
 * Protocolo que define os comandos enviados do View para o Presenter.
 */
protocol ArticlesModuleInterface : class {
    func updateView()
    func showDetailsForArticle(article : Article)
}

/*
 * Protocolo que define os comandos enviados do Interactor para o Presenter.
 */
protocol ArticlesInteractorOutput : class {
    func articlesFetched(articles : [Article])
}

/*
 * O Presenter é responsável por conectar 
 *os outros objetos dentro do Módulo VIPER
 */

class ArticlesPresenter: ArticlesModuleInterface, ArticlesInteractorOutput {
    
    weak var view : ArticlesViewInterface!
    
    var interector : ArticlesInterectorInput!
    
    
    // MARK: ArticlesModuleInterface
    func updateView() {
        self.interector.fetchArticles()
    }
    
    func showDetailsForArticle(article: Article) {
        
    }
    
    // MARK: ArticlesInterfaceOutput
    func articlesFetched(articles: [Article]) {
        if articles.count > 0 {
            self.view.showArticlesData(articles: articles)
        }else{
            self.view.showNoContentScreen()
        }
    }
}

























