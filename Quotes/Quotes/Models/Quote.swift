//
//  Quote.swift
//  Quotes
//
//  Created by Veer Singh on 8/23/22.
//

import Foundation

struct Quote: Identifiable, Decodable {
    
    var id: UUID?
    
    var author: String
    var quote: [String]
    var image: String
    
    static func testData() -> Quote {
        
        return Quote(
            id: UUID(),
            author: "Author",
            quote: ["Example of an quote that would be in the place of Quote1",
                    "Example of an quote that would be in the place of Quote2",
                    "Example of an quote that would be in the place of Quote3"],
            image: "ambition"
        )
    }
    
}
