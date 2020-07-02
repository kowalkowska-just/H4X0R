//
//  DetalView.swift
//  H4X0R
//
//  Created by Justyna Kowalkowska on 02/06/2020.
//  Copyright © 2020 Justyna Kowalkowska. All rights reserved.
//

import SwiftUI
import WebKit

struct DetalView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetalView_Previews: PreviewProvider {
    static var previews: some View {
        DetalView(url: "https://www.google.com")
    }
}


