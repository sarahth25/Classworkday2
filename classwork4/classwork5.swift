//
//  classwork5.swift
//  classwork4
//
//  Created by sarah alshammari on 5/4/20.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI

struct classwork5: View {
    var body: some View {
        NavigationView{
           
               
            List{
                NavigationLink(destination:
                moviedetailsview(backimage: #imageLiteral(resourceName: "coopr"), moviename: "INTERSTELLAR",moviechar: ["Mathew","Anne"])) {
                    Movie(moviename: "Intersteller", mainchar: ["mathew","anne"], movieimage: #imageLiteral(resourceName: "intersteller"))
                }
    //Movie(moviename: "Interstellar", mainchar: ["mathew","anne"], movieimage: #imageLiteral(resourceName: "intersteller"))
                NavigationLink(destination:
                moviedetailsview(backimage: #imageLiteral(resourceName: "joaq"), moviename: "WALK THE LINE",moviechar: ["Joaqiun","Reese"])) {Movie(moviename: "walk the line", mainchar: ["joaquin", "reese"], movieimage: #imageLiteral(resourceName: "walk"))
            }
                NavigationLink(destination:
                moviedetailsview(backimage: #imageLiteral(resourceName: "leo"), moviename: "INCEPTION",moviechar: ["Leonardo","Cillin"])){Movie(moviename: "Inception ", mainchar: ["leonardo", "Cillin"], movieimage: #imageLiteral(resourceName: "inception"))
                
            }
            }.navigationBarTitle("Movies")
            }
}

    struct classwork5_Previews: PreviewProvider {
        static var previews: some View {
            classwork5()
    }
}
    
struct Movie: View {
    var moviename : String
    var mainchar: [String]
    var movieimage: UIImage
    var body: some View {
   
        HStack(alignment: .center){
            Image(uiImage: movieimage)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .clipShape(Circle())
            VStack(alignment: .leading){
                Text(moviename)
                    .font(.largeTitle)
                Text(mainchar.joined(separator: ","))
                    
            }
            
        }
        .padding(.vertical)
    }
    }}
