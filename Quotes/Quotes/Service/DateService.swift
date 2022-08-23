//
//  DateService.swift
//  Quotes
//
//  Created by Veer Singh on 8/23/22.
//

import Foundation

class DataService {
    
    static func getQuoteData() -> [Quote]{
        
        let stringPathToDataFile = Bundle.main.path(forResource: "data", ofType: "json")
        
        guard let stringURL = stringPathToDataFile else {
            return [Quote]()
        }
        
        let url = URL(fileURLWithPath: stringURL)
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                var quoteData = try decoder.decode([Quote].self, from: data)
                
                for index in 0..<quoteData.count {
                    quoteData[index].id = UUID()
                }
                
                return quoteData
                
            } catch {
                print("ERROR: Unable to decode data. Error: \(error)")
            }
            
            
        } catch {
            print("ERROR: Unable to get data from content. \n \(error)")
        }
        print("ERROR: Unable to find data file")
        return [Quote]()
    }
    
}
