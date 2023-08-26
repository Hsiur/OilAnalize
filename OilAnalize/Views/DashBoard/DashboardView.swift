//
//  DashboardView.swift
//  Dashboard
//
//  Created by Руслан Ишмухаметов on 24.06.2023.
//

import SwiftUI

struct DashboardView: View {
    
    @State private var selected = 0
    var colors = [Color("Color2"), Color("Color1")]
    var colomns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack {
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                            .renderingMode(.template)
                            .foregroundColor(.white)
                    }
                    
                }
                .padding()
                
                VStack(alignment: .leading, spacing: 25) {
                    Text("Суточный дебит скважины")
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                    
                    HStack(spacing: 15) {
                        ForEach(oilRateData) { rate in
                            VStack {
                                VStack {
                                    
                                    Spacer(minLength: 0)
                                    
                                    if selected == rate.id {
                                        Text(getRate(value: rate.daylyOilRate))
                                            .foregroundColor(Color("Color1"))
                                            .padding(.bottom, 5)
                                    }
                            
                                    RoundedShape()
                                        .fill(LinearGradient(gradient: .init(colors: selected == rate.id ? colors : [Color.white.opacity(0.06)]), startPoint: .top, endPoint: .bottom))
                                        .frame(height: getHeight(value: rate.daylyOilRate))
                                }
                                .frame(height: 220)
                                .onTapGesture {
                                    withAnimation(.easeOut) {
                                        selected = rate.id
                                    }
                                }
                                
                               
                                Text(rate.day)
                                    .font(.caption)
                                    .foregroundColor(.white)
                            }
                            
                        }
                    }
                    .padding()
                }
                .background(Color.white.opacity(0.06))
                .cornerRadius(15)
                .padding()
                

                
                HStack {
                    
                    Text("Текущие показатели")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Spacer(minLength: 0)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                            .renderingMode(.template)
                            .foregroundColor(.white)
                    }
                    
                }
                .padding()
                
                LazyVGrid(columns: colomns, spacing: 30) {
                    ForEach(statsData) { stat in
                        VStack(spacing: 22) {
                            HStack {
                                Text(stat.tittle)
                                    .font(.system(size: 16))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                                Spacer(minLength: 0)
                                

                            }
                            
                            ZStack {
                                Circle()
                                    .trim(from: 0, to: 1)
                                    .stroke(stat.color.opacity(0.05), lineWidth: 10)
                                    .frame(width: (UIScreen.main.bounds.width - 150) / 2, height: (UIScreen.main.bounds.width - 150) / 2)
                                
                                Circle()
                                    .trim(from: 0, to: (stat.currentData / stat.goal))
                                    .stroke(stat.color, style: StrokeStyle(lineWidth: 10, lineCap: .round))
                                    .frame(width: (UIScreen.main.bounds.width - 150) / 2, height: (UIScreen.main.bounds.width - 150) / 2)
                                
                                Text(getPersent(current: stat.currentData, goal: stat.goal) + " %")
                                    .font(.system(size: 22))
                                    .fontWeight(.bold)
                                    .foregroundColor(stat.color)
                                    .rotationEffect(.init(degrees: 90))
                            }
                            .rotationEffect(.init(degrees: -90))
                            
                            Text(getDec(val: stat.currentData) + " " + getType(val: stat.tittle))
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)


                            
                        }
                        .padding()
                        .background(Color.white.opacity(0.06))
                        .cornerRadius(15)
                        .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 0)


                    }
                }
                .padding()

            }
        }
        .background(RoundedRectangle(cornerRadius: 10)
                        .fill(.ultraThinMaterial)
                        .ignoresSafeArea(.all))
        .background(Color.black.edgesIgnoringSafeArea(.all))
        .preferredColorScheme(.dark)
    }
    
    func getType(val: String) -> String {
        switch val {
        case "Обводненность": return "%"
        case "Загрузка ЭЦН": return "%"
        case "Рзаб": return "ат."
        case "Кпрод": return "м3/сут/ат"
        case "Газосодержание": return "%"
        case "Рпл": return "ат."
        default: return "%"

        }
    }
    
    func getDec(val : CGFloat) -> String {
        let format = NumberFormatter()
        format.numberStyle = .decimal
        
        return format.string(from: NSNumber.init(value: Float(val)))!
    }
    
    func getPersent(current: CGFloat, goal : CGFloat) -> String {
        let per = (current / goal) * 100
        return String(format: "%.1f", per)
    }
    
    func getHeight(value: CGFloat) -> CGFloat {
        let height = CGFloat(value / 20) * 200
        return height
    }
    
    func getRate(value: CGFloat) -> String {
        let rate = value / 10
        return String(format: "%1.1f", rate)
    }
    
}

    

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
