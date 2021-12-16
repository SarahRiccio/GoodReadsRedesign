//
//  ReadingAct.swift
//  GoodReadsRedesign
//
//  Created by Sarah Riccio on 14/12/21.
//

import SwiftUI

struct ReadingAct: View {
    let imageOne: Image
    let imageTwo: Image
    let titleOne: String
    let titleTwo: String
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 13){
            
            Card(image: imageOne, title: titleOne, width: 339, height: 143, imageWidth: 163, titlePaddingTop: 33, titlePaddingLeading: 19, titleFontSize: 22)
            
            Card(image: imageTwo, title: titleTwo, width: 339, height: 61, imageWidth: 52, titlePaddingTop: 20, titlePaddingLeading: 19, titleFontSize: 18)
        
        }
        
    }
}

struct Card: View {
    let image: Image
    let title: String
    let width:CGFloat
    let height:CGFloat
    let imageWidth:CGFloat
    let titlePaddingTop:CGFloat
    let titlePaddingLeading:CGFloat
    let titleFontSize:CGFloat
    
    var body: some View {
        
        HStack{
            
            Text(title)
                .font(
                    .custom(
                        "Outfit-Regular",
                        size: titleFontSize)
                )
                .padding(.bottom)
                .foregroundColor(.white)
            
            Spacer()
            
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: imageWidth)
            
        }
        .padding(.leading)
        .frame(width: width, height: height)
        .background(
            Color(red: 89/255, green: 95/255, blue: 197/255)
        )
        .clipShape(
            RoundedRectangle(cornerRadius: 10)
        )
    }
}

struct ReadingAct_Previews: PreviewProvider {
    static var previews: some View {
        let year = Calendar.current.component(.year, from: Date())
        
        let imgOne = Image("CardOnePic")
        let imgTwo = Image("CardTwoPic")
        let titleOne = year.description + " Reading\nchallenge"
        let titleTwo = "Kindle Notes & Highlights"

        ReadingAct(
            imageOne:imgOne,
            imageTwo:imgTwo,
            titleOne:titleOne,
            titleTwo: titleTwo
        )
        .previewLayout(
            .sizeThatFits
        )
        
    }
}

