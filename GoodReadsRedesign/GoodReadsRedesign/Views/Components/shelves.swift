//
//  shelves.swift
//  GoodReadsRedesign
//
//  Created by Sarah Riccio on 14/12/21.
//

import SwiftUI

struct shelves: View {
    let imageOne: Image
    let imageTwo: Image
    let imageThree: Image
    let imageFour: Image
    
    let subtitle: String
    let books: String
    
    var body: some View {
        
        ZStack(alignment: .bottomLeading){
            
            HStack(spacing: 0) {
                
                imageOne
                    .resizable()
                    .frame(width: 80, height: 123)
                
                imageTwo
                    .resizable()
                    .frame(width: 80, height: 123)
                
                imageThree
                    .resizable()
                    .frame(width: 80, height: 123)
                
                imageFour
                    .resizable()
                    .frame(width: 80, height: 123)
                
            }
            
            HStack(alignment: .bottom){
                
                Text(subtitle)
                    .colorInvert()
                    .padding(9)
                    .font(.custom("Outfit-Medium",size: 18))
                
                Spacer()
                
                Text(books)
                    .colorInvert()
                    .padding(9)
                    .font(.custom("Outfit-Regular",size: 12))
                
            }
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [.black.opacity(0), .black]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            
        }
        .frame(width: 320, height: 123)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        
        
    }
    
}

struct shelves_Previews: PreviewProvider {
    static var previews: some View {
        
        let copertinaUno = Image("serie1")
        let copertinaDue = Image ("copertina1")
        let copertinaTre = Image ("copertina3")
        let copertinaQuattro = Image ("copertina4")
        
        let subtitle = "sottotitolo"
        let books = "libri"
        
        
        shelves(
            imageOne:copertinaUno,
            imageTwo:copertinaDue,
            imageThree: copertinaTre,
            imageFour: copertinaQuattro,
            subtitle:subtitle,
            books:books
        )
        .previewLayout(.sizeThatFits)
        
    }
}
