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
            ScrollView {
            VStack(alignment: .leading) {
                ForEach(quote.quote, id: \.self){ q in
                    Text("- \(q)")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding()
                        .font(.body)
                }
                Spacer()
            }
        }
            .navigationTitle(quote.author)
            
        }
        .background(
            Image(quote.image)
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .opacity(0.5)
        )
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteDetailView(quote: Quote.testData())
    }
}
