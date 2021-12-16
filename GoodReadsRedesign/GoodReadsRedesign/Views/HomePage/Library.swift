//
//  ContentView.swift
//  GoodReadsRedesign
//
//  Created by Sarah Riccio on 10/12/21.
//

import SwiftUI
import CoreData

struct Library: View {
    
    let copertinaUno = Image("serie1")
    let copertinaDue = Image("copertina1")
    let copertinaTre = Image("copertina3")
    let copertinaQuattro = Image("copertina4")
    let copertinaCinque = Image("copertina1")
    let copertinaSei = Image("copertina5")
    let copertinaSette = Image("copertina8")
    let copertinaOtto = Image("copertina9")
    let subtitleOne = "Want to Read"
    let subtitleTwo = "Favourites"
    let booksOne = "34 Books"
    let booksTwo = "5 Books"
    
    var body: some View {
        
        let year = Calendar.current.component(.year, from: Date())
        
        
        // Card One Variables
        let imageOne = Image("CardOnePic")
        let titleOne = year.description + "Reading\nchallenge"
        let cardOneWidth:CGFloat = 375
        let cardOneHeight:CGFloat = 143
        let cardOnePicHeight:CGFloat = 163
        let cardOneTitlePaddingTop:CGFloat = 33
        let cardOneTitlePaddingLeading:CGFloat = 19
        let cardOneTitleFontSize:CGFloat = 18
        
        // Card Two Variables
        let imageTwo = Image("CardTwoPic")
        let titleTwo = "Kindle Notes & Highlights"
        let cardTwoWidth:CGFloat = 375
        let cardTwoHeight:CGFloat = 61
        let cardTwoPicHeight:CGFloat = 52
        let cardTwoTitlePaddingTop:CGFloat = 20
        let cardTwoTitlePaddingLeading:CGFloat = 19
        let cardTwoTitleFontSize:CGFloat = 18
        
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
        
        ScrollView(.vertical){
            VStack(alignment:.center, spacing: 20) {

                LazyVStack {
                    Section(
                        content: {
                            ReadingSlider()
                            
                        },
                        header: {
                            HStack{
                                Text("Reading")
                                    .font(.custom("Outfit-Medium", size: 20))
                                Spacer()
                                Text("See all")
                                    .font(.custom("Outfit-Regular", size: 12))
                                    .foregroundColor(Color(red: 237/255, green: 118/255, blue: 74/255))
                            }
                            .padding([.leading, .trailing], 22)
                        }){
                        
                    }
                    
                }
                
                LazyVStack {
                    Section(
                        content: {
                            ShelvesSlider(shelvesList: shelvesList)
                        },
                        header: {
                            HStack{
                                Text("My Shelves")
                                    .font(.custom("Outfit-Medium",size: 20))
                                Spacer()
                                Text("See all")
                                    .font(.custom("Outfit-Regular",size: 12))
                                    .foregroundColor(Color(red: 237/255, green: 118/255, blue: 74/255))
                            }
                            .padding([.leading, .trailing], 22)
                        }){
                        
                    }
                    
                }
                
                LazyVStack {
                    Section(
                        content: {
                            Card(image: imageOne, title: titleOne, width: cardOneWidth, height: cardOneHeight, imageWidth: cardOnePicHeight, titlePaddingTop: cardOneTitlePaddingTop, titlePaddingLeading: cardOneTitlePaddingLeading, titleFontSize: cardOneTitleFontSize)
                            
                            Card(image: imageTwo, title: titleTwo, width: cardTwoWidth, height: cardTwoHeight, imageWidth: cardTwoPicHeight, titlePaddingTop: cardTwoTitlePaddingTop, titlePaddingLeading: cardTwoTitlePaddingLeading, titleFontSize: cardTwoTitleFontSize)
                            
                        },
                        header: {
                            HStack{
                                Text("Reading Activity")
                                    .font(
                                        .custom(
                                            "Outfit-Medium",
                                            size: 20
                                        )
                                    )
                                
                                Spacer()
                            }
                            .padding([.leading, .trailing], 22)
                        }){
                        
                    }
                    
                }
                
            }
        }
    }
}
      

struct Library_Previews: PreviewProvider {
    static var previews: some View {
        Library().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
