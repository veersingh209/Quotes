//
//  QuotesListView.swift
//  Quotes
//
//  Created by Veer Singh on 8/23/22.
//

import SwiftUI

struct QuotesListView: View {
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        NavigationView {
            
            ForEach(model.quote) { quote in
                
                NavigationLink {
                    //
                } label: {
                    ZStack {
                        Image(quote.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 350, height: 450)
                            .clipped()
                            .cornerRadius(35)
                        
                        Text(quote.quote)
                    }
                }

            }
            
        }
    }
}

struct QuotesListView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesListView()
    }
}
