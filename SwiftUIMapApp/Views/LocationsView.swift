//
//  LocationsView.swift
//  SwiftUIMapApp
//
//  Created by Loic HACHEME on 11/07/2023.
//

import SwiftUI
import MapKit


struct LocationsView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $vm.mapRegion )
                .ignoresSafeArea()
            
            VStack {
                header
                .padding()
                Spacer()
            }
            
           
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}

extension LocationsView {
    private var header: some View {
        VStack {
            
            
            Button {
                vm.toggleLocationsList()
            } label: {
                Text(vm.mapLocation.name + ", " + vm.mapLocation.cityName)
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .frame(height: 55)
                .frame(maxWidth: .infinity)
                .animation(.none, value: vm.mapLocation)
                .overlay(alignment: .leading) {
                    Image(systemName: "arrow.down")
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding()
                        .rotationEffect(Angle(degrees: vm.showLocationsList ? 180 : 0))
                }
            }

            
            if vm.showLocationsList {
                LocationsListView() 
            }
            
           
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 20,
        x: 0,y: 15)
    }
}
