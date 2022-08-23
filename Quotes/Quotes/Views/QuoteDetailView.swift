//
//  QuoteDetailView.swift
//  Quotes
//
//  Created by Veer Singh on 8/23/22.
//

import SwiftUI

struct QuoteDetailView: View {
    var quote: Quote
    var body: some View {
        ZStack {
            Image(quote.image)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.7)
            
            ScrollView {
                
                VStack {
                
                    Text(quote.details)
                }
                
            }
            .navigationTitle(quote.author)
        }
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        QuoteDetailView(quote: model.quote[0])
    }
}
