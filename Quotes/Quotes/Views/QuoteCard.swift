//
//  QuoteCard.swift
//  Quotes
//
//  Created by Veer Singh on 8/23/22.
//

import SwiftUI

struct QuoteCard: View {
    var quote:Quote
    
    var body: some View {
        ZStack {
            Image(quote.image)
                .resizable()
                .scaledToFill()
                .frame(width: 350, height: 450)
                .clipped()
                .cornerRadius(35)
            
            Text("- \(quote.author)")
        }
    }
}

struct QuoteCard_Previews: PreviewProvider {
    static var previews: some View {
        QuoteCard(quote: Quote.testData())
    }
}
