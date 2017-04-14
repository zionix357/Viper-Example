//
//  ArticlesInterector.swift
//  Viper
//
//  Created by Arthur Rocha on 27/03/17.
//  Copyright © 2017 DatIn. All rights reserved.
//

import Foundation

protocol ArticlesInterectorInput : class {
    func fetchArticles()
}


class ArticlesInterector: ArticlesInterectorInput {
    
    let url = ""
    
    weak var output : ArticlesInteractorOutput!
    
    // MARK: ArticlesInterectorInput
    func fetchArticles() {
        let article = Article()
        article.authors = "Arthur Rocha"
        var articles = [Article]()
        articles.append(article)
        output.articlesFetched(articles: articles)
    } 
}
