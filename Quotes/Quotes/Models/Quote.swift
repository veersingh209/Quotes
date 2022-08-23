//
//  Quote.swift
//  Quotes
//
//  Created by Veer Singh on 8/23/22.
//

import Foundation

class Quote: Identifiable, Decodable {
    
    var id:UUID?
    
    var quote: String
    var author: String
    var details: String
    var image: String
    
}
