//
//  ProfileView.swift
//  OilAnalize
//
//  Created by Руслан Ишмухаметов on 20.08.2023.
//

import SwiftUI
import MapKit

struct ProfileView: View {
    
    @EnvironmentObject private var vm: LocationViewModel
    @State private var isShowLocationsView = false

    var safeArea: EdgeInsets
    var size: CGSize
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack{
                ProfilePhoto()
                
                GeometryReader { proxy in
                    Button {
                        isShowLocationsView.toggle()
                    } label: {
                        Text("Посмотреть на карте")
                            .font(.callout)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.horizontal, 45)
                            .padding(.vertical, 12)
                            .background{
                                Capsule()
                                    .fill(Color.green.gradient)
                            }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .sheet(isPresented: $isShowLocationsView) {
                        LocationsView()
                    }
                }
                .frame(height: 50)
                .padding(.top, -34)
                
                VStack{
                    Text("Избранные скважины")
                        .fontWeight(.heavy)
                    ForEach(vm.locations, id:\.self) { well in
                        Text(well.id)
                    }
                    
                }
                .padding(.top, 10)
                
            }
        }
        .coordinateSpace(name: "SCROLL")
    }
    @ViewBuilder
    func ProfilePhoto() -> some View {
        let height = size.height * 0.45
        GeometryReader{ proxy in
            let size = proxy.size
            let minY = proxy.frame(in: .named("SCROLL")).minY
            let progress = minY / (height * (minY > 0 ? 0.5 : 0.8))
            Image("Profile")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: size.width, height: size.height + (minY > 0 ? minY : 0))
                .clipped()
                .overlay(content: {
                    ZStack(alignment: .bottom) {
                        Rectangle()
                            .fill(
                                .linearGradient(colors: [
                                    .black.opacity(0 - progress),
                                    .black.opacity(0.1 - progress),
                                    .black.opacity(0.3 - progress),
                                    .black.opacity(0.5 - progress),
                                    .black.opacity(0.8 - progress),
                                    .black.opacity(1 - progress),
                                ], startPoint: .top, endPoint: .bottom)
                            )
                        VStack(spacing: 0) {
                            Text("Добро пожаловать,")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Андрей Николаевич")
                                .font(.system(size: 45))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                        }
                        .opacity(1 + (progress > 0 ? -progress : progress))
                        .padding(.bottom, 55)
                        .offset(y: minY < 0 ? minY : 0)
                    }
                })
                .offset(y: -minY)
        }
        .frame(height: height + safeArea.top)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

