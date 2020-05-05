//
//  moviedetailsview.swift
//  classwork4
//
//  Created by sarah alshammari on 5/5/20.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI

struct moviedetailsview: View {
    var backimage : UIImage
    var moviename : String
    var moviechar : [String]
    var body: some View {
        ZStack{
            Image(uiImage: backimage)
               
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
                
                .blur(radius: 20)
            Color.black.opacity(0.3)
            VStack(alignment: .center){
           Image(uiImage: backimage)
            .resizable()
            .scaledToFit()
            .frame(width:300)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 3))
            .shadow(radius: 40)
            
                Text(moviename)
                    .font(.largeTitle)
            
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    
                  
               
        Text(moviechar.joined(separator: " , "))
            .fontWeight(.medium)
            .foregroundColor(.white)
            
                
                
                
              
               
            }
           
            
            
            
            
        
                        
                }
    }
}

struct moviedetailsview_Previews: PreviewProvider {
    static var previews: some View {
        moviedetailsview(backimage:#imageLiteral(resourceName: "coopr") , moviename: "Interstellar", moviechar: ["mathew","anne"])
}
}
