//
//  Shortener.swift
//  Shortener
//
//  Created by Travis Brigman on 11/29/21.
//

import Foundation
import Fluent
import Vapor

final class Shortener: Model, Content {
    static let schema = "shorteners"
    
    @ID(key: .id)
    var id: UUID?

    @Timestamp(key: "created_on", on: .create)
    var createdOn: Date?
    
    @Field(key: "timesFollowed")
    var timesFollowed: Int
    
    @Field(key: "longURL")
    var longURL: URL
    
    @Field(key: "shortURL"')
           var shortURL: String

    init() { }

    init(id: UUID? = nil, title: String) {
        self.id = id
        self.title = title
    }
}
