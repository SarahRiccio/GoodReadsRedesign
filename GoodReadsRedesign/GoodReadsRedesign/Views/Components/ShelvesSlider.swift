//
//  ShelvesSlider.swift
//  GoodReadsRedesign
//
//  Created by Sarah Riccio on 15/12/21.
//

import SwiftUI

struct ShelvesSlider: View {
    @State var shelvesList:[shelves]
    
    var body: some View {

        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 15){
                ForEach(0..<3) { num in
                    shelvesList[num]
                }
            }
            .padding(.leading)
        }
    }
}

struct ShelvesSlider_Previews: PreviewProvider {
    
    static var previews: some View {
        
        let copertinaUno = Image("serie1")
        let copertinaDue = Image ("copertina1")
        let copertinaTre = Image ("copertina3")
        let copertinaQuattro = Image ("copertina4")
        
        let subtitle = "sottotitolo"
        let books = "libri"
        
        let shelveOne = shelves(
            imageOne:copertinaUno,
            imageTwo:copertinaDue,
            imageThree: copertinaTre,
            imageFour: copertinaQuattro,
            subtitle:subtitle,
            books:books
        )
        
        let shelveTwo = shelves(
            imageOne:copertinaUno,
            imageTwo:copertinaDue,
            imageThree: copertinaTre,
            imageFour: copertinaQuattro,
            subtitle:subtitle,
            books:books
        )
        
        let shelveThree = shelves(
            imageOne:copertinaUno,
            imageTwo:copertinaDue,
            imageThree: copertinaTre,
            imageFour: copertinaQuattro,
            subtitle:subtitle,
            books:books
        )
        
        let shelvesList:[shelves] = [shelveOne, shelveTwo, shelveThree]
        
        ShelvesSlider(shelvesList: shelvesList)
            .previewLayout(.sizeThatFits)
            
    }
}
