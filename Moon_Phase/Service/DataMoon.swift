//
//  DataMoon.swift
//  Moon_Phase
//
//  Created by Jadië Oliveira on 01/09/23.
//

import UIKit

class DataMoon:NSObject {
    
    func getMoon(completion: @escaping(Result<MoonList, Error>) -> Void) {
        let urlString: String = "http://localhost:3002/"
        
        guard let url: URL = URL(string: urlString) else { return }
        
        let dataMoon = URLSession.shared.dataTask(with: url) { (data, response, error) in
            DispatchQueue.main.async {
                if let error {
                    print("error -> \(#function) -> \(error)")
                    
                }
                
                guard let data else { return }
                
                guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { return }
                
                do {
                    let moonList: MoonList = try JSONDecoder().decode(MoonList.self, from: data)
                    print(moonList)
                    completion(.success(moonList))
                } catch {
                    print(error)
                }
            }
           
            
        }
        
        dataMoon.resume()
    }
}
