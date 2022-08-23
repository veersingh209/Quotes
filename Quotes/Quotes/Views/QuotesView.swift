//
//  QuotesView.swift
//  Quotes
//
//  Created by Veer Singh on 8/23/22.
//

import SwiftUI

struct QuotesView: View {
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        NavigationView {
            
            ForEach(model.quote) { quote in
                
                NavigationLink {
                    QuoteDetailView(quote: quote)
                } label: {
                    //
                }

            }
            
        }
    }
}

struct QuotesView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesView()
    }
}
