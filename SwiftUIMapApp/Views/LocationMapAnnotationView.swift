//
//  LocationMapAnnotationView.swift
//  SwiftUIMapApp
//
//  Created by Loic HACHEME on 13/07/2023.
//

import SwiftUI

struct LocationMapAnnotationView: View {
    let accentColor = Color("AccentColor")
    var body: some View {
        VStack(spacing:0) {
           Image(systemName: "map.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30,height: 30)
                .font(.headline)
                .foregroundColor(.white)
                .padding(6)
                .background(accentColor)
                .clipShape(Circle())
            
            
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 10,height: 10)
                .foregroundColor(accentColor)
                .rotationEffect(Angle(degrees: 180))
                .offset(y: -3)
                .padding(.bottom,40)
            
        }
    }
}

struct LocationMapAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapAnnotationView()
    }
}
