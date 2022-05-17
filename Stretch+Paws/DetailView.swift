//
//  DetailView.swift
//  Stretch+Paws
//
//  Created by Ivy  Chen  on 5/16/22.
//

import SwiftUI

struct DetailView: View {
    let pose: Pose
    @State private var timerOpen = false
    var body: some View {
        ZStack {
            Color("Secondary").ignoresSafeArea()
            ScrollView(showsIndicators: false) {
                VStack(spacing:20) {
                    Image(pose.icon)
                        .resizable()
                        .frame(width: 200, height: 200)
                    Text(pose.name)
                        .font(.system(size: 36.0))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Highlight"))
                        .multilineTextAlignment(.center)
                    Text(pose.asana)
                        .font(.system(size: 22.0))
                        .italic()
                        .fontWeight(.medium)
                    VStack(alignment:.leading, spacing: 20) {
                        Text(pose.description)
                   
                    Text("How to")
                        .foregroundColor(Color("Highlight"))
                        .fontWeight(.medium)
                    // loop through an array
                    ForEach(pose.steps, id: \.self) {
                        step in Text(step)
                    }
                    Text("Top tip")
                        .foregroundColor(Color("Highlight"))
                        .fontWeight(.medium)
                    Text(pose.topTip)
                    }
                }.padding(.horizontal, 20)
            }
            TimerPanelView(timerOpen: $timerOpen)
        }.onTapGesture {
            timerOpen = false
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(pose: Pose(
            name: "Downward-Facing Dog",
            asana: "Adho Mukha Shvanasana",
            icon: "Cat-1",
            description:
            "Did someone say dog? Can't we call this a downward-facing cat instead? It's OK – this is a friendly dog, it's not interested in chasing cats. In fact, Downward-Facing Dog is the lynchpin of a yoga asana practice: if you're going to befriend with any of these poses, make sure it's this canine classic.",
            steps: ["From a kneeling position, place your hands shoulder-distance apart and spread your fingers.", "Tuck your toes and lift your hips up towards the ceiling so you create an inverted V shape.", "Balance the weight between hands and feet and think about tilting your tailbone up towards the ceiling.","Send your gaze towards your feet and breath!"],
            topTip: "Bend your knees in order to create more length through the spine." )
        )
    }
}

struct TimerPanelView: View {
    @Binding var timerOpen: Bool
    var body: some View {
        VStack {
            Spacer()
            VStack {
                // use tertiary opoerator to set logic for what to show when timer is open or closed
                timerOpen ? AnyView(TimerOpenView()): AnyView(TimerClosedView())
               
            }
            .frame(maxWidth: .infinity, maxHeight: timerOpen ? 200 : 80)
            .background(Color("Highlight"))
            .cornerRadius(15)
                
        }
        
        .ignoresSafeArea()
        .onTapGesture {
            timerOpen.toggle()
        }
        
    }
}

struct TimerOpenView: View {
    var body: some View {
        Text("Hold the pose")
            .foregroundColor(Color("Secondary"))
    }
}
struct TimerClosedView: View {
    var body: some View {
        Text("Try it out")
            .foregroundColor(Color("Secondary"))
    }
}
