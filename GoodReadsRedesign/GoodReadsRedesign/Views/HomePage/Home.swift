//
//  Home.swift
//  GoodReadsRedesign
//
//  Created by Sarah Riccio on 15/12/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        NavigationView{
            
            TabView {
                
                Library()
                    .tabItem {
                        Label("Library", systemImage: "book")
                    }
                    .navigationBarHidden(false)
                
                Discover()
                    .tabItem {
                        Label("Discover", systemImage: "magnifyingglass")
                    }
                
                Profile()
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
            }
            .navigationBarTitle("Library")
            
        }
        
    }
}

//enum TabViewsName:String, IteratorProtocol {
//    case library = "Library"
//    case discover = "Discover"
//    case profile = "Profile"
//}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
