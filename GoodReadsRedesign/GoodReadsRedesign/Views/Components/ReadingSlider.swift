//
//  ReadingSlider.swift
//  GoodReadsRedesign
//
//  Created by Sarah Riccio on 10/12/21.
//

import SwiftUI

struct ReadingSlider: View {
    
    let copertinaUno = Image("serie1")
    let copertinaDue = Image("copertina1")
    let copertinaTre = Image("copertina3")
    let copertinaQuattro = Image("copertina4")
    let copertinaCinque = Image("copertina1")
    let copertinaSei = Image("copertina5")
    let copertinaSette = Image("copertina8")
    let copertinaOtto = Image("copertina9")
    
    let imgs:[Image] = [Image("serie1"), Image("copertina1"), Image("copertina3"), Image("copertina4"), Image("copertina1"), Image("copertina5"), Image("copertina8"), Image("copertina9")]
    
    let title = "Titolo"
    let subtitle = "sottotitolo"
    let progress = "bar"
    
    var body: some View {

        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 15){
                ForEach(0..<8) { num in
                    ReadingBookview(image:imgs[num], title:title, subtitle: subtitle, progress: progress)
                        
                }
            }
            .padding(.leading)
        }
    }
}

struct ReadingSlider_Previews: PreviewProvider {
    static var previews: some View {
        ReadingSlider()
            .previewLayout(.sizeThatFits)
    }
}
