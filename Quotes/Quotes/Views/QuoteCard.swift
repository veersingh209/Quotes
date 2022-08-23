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
                .aspectRatio(contentMode: .fill)
                .cornerRadius(15)
            
            VStack(alignment: .center) {
                let random = Int.random(in: 0...quote.quote.count-1)
                Text(quote.quote[random])
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.all, 5)
                
                HStack(alignment: .center) {
                    Spacer()
                    Text(quote.author)
                        .padding(.top, 2)
                    Spacer()
                }
            }
            .padding([.top, .leading], 20.0)
            .shadow(color: .black, radius: 10, x: 2, y: 2)
        }
        .foregroundColor(Color.white)
        .frame(width: .none, height: 400, alignment: .center)
        .clipped()
        .cornerRadius(15)
        .padding([.leading, .trailing])
    }
}

struct QuoteCard_Previews: PreviewProvider {
    static var previews: some View {
        QuoteCard(quote: Quote.testData())
    }
}
