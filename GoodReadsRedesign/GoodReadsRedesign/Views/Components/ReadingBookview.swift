//
//  ReadungBookview.swift
//  GoodReadsRedesign
//
//  Created by Sarah Riccio on 10/12/21.
//

import SwiftUI

struct ReadingBookview: View {
    let image: Image
    let title: String
    let subtitle: String
    let progress: String
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            image
                .resizable()
                .frame(width: 117, height: 181)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Spacer(minLength: 8)
            
            Text(title)
                .font(.custom("Outfit-Regular",size: 15))
            
            
            Spacer(minLength: 3)
            
            ProgressBar()

        }
        .frame(width: 117, height: 225)
        
    }
    
}


struct ReadingBookview_Previews: PreviewProvider {
    static var previews: some View {
        
        let img = Image("segnaposto")
        let title = "Titolo"
        let subtitle = "sottotitolo"
        let progress = "bar"
        
        ReadingBookview(image:img, title:title, subtitle: subtitle, progress: progress)
            .previewLayout(.sizeThatFits)
        
        
    }
}
