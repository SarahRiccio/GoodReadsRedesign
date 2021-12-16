//
//  Book.swift
//  GoodReadsRedesign
//
//  Created by Sarah Riccio on 14/12/21.
//

import Foundation
import SwiftUI


struct Book {
    
    init(id: UUID, ISBN: Int, title: String, author: String, description: String, publisher: String, editions: String, cover: Image, rating: Double, language: String, publishDate: Date, isFinished: Bool, currentStatePercentage: Double, currentStatePage: Int, totalPages: Int) {
        
        self.id = id
        self.ISBN = ISBN
        self.title = title
        self.author = author
        self.description = description
        self.publisher = publisher
        self.editions = editions
        self.cover = cover
        self.rating = rating
        self.language = language
        self.publishDate = publishDate
        self.isFinished = isFinished
        self.currentStatePercentage = currentStatePercentage
        self.currentStatePage = currentStatePage
        self.totalPages = totalPages
        
    }
    
    var id:UUID
    var ISBN:Int
    var title:String
    var author:String
    var description:String
    var publisher:String
    var editions:String
    var cover:Image
    var rating:Double
    var language:String
    var publishDate:Date
    var isFinished:Bool
    var currentStatePercentage:Double
    var currentStatePage:Int
    var totalPages:Int
    
}
