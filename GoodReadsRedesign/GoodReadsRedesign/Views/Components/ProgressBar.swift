//
//  ProgressBar.swift
//  GoodReadsRedesign
//
//  Created by Sarah Riccio on 14/12/21.
//

import SwiftUI

struct ProgressBar: View {
    @State var progress:Double = 0.5
    @State var value:Int = 50
    
    var body: some View {
        
        HStack {
            Text(value.description + "%")
            ProgressView(value: progress)
                .progressViewStyle(LinearProgressViewStyle(tint: Color("myOrange")))

        }
        .font(.custom("Outfit-Regular",size: 10))
        .foregroundColor(Color(red: 112/255, green: 118/255, blue: 129/255))
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar()
            .previewLayout(.sizeThatFits)
        
    }
}
