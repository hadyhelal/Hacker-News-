//  Data.swift
//  H4XOR News
//
//  Created by Hady on 7/14/20.
//  Copyright © 2020 HadyOrg. All rights reserved.


import  SwiftUI
struct DetailView: View {
    
    let url : String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct Data_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
        
    }
}
