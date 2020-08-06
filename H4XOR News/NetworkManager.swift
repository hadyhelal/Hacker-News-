//
//  File.swift
//  H4XOR News
//
//  Created by Hady on 7/7/20.
//  Copyright © 2020 HadyOrg. All rights reserved.
//

import Foundation

class NetworkManager : ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page")
        {
            let session = URLSession(configuration: .default)
            
            
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                
                    print("no errors")
                    let decoder = JSONDecoder()
                    
                    if let safeData = data {
                        do{
                            let result = try decoder.decode(Results.self, from: safeData)
                            print("Save Data")
                           // print(result.hits.count)
                            DispatchQueue.main.async {
                                self.posts = result.hits
                                print("Done")
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
            print("Task resumed succsessfully")
            
        }
        
    }
    
}
