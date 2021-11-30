//
//  File.swift
//  File
//
//  Created by Travis Brigman on 11/29/21.
//

import Foundation

import Vapor
import Leaf

// 1
struct WebsiteController: RouteCollection {
  // 2
  func boot(routes: RoutesBuilder) throws {
    // 3
    routes.get(use: indexHandler)
  }

    func indexHandler(_ req: Request)
      -> EventLoopFuture<View> {
        // 1
        let context = IndexContext(title: "Home page")
        // 2
        return req.view.render("index", context)
    }
    
    struct IndexContext: Encodable {
      let title: String
    }
}
