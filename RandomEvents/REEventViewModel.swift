//
//  REEventViewModel.swift
//  RandomEvents
//
//  Created by Steven Wijaya on 05.05.2023.
//

import Foundation

final class REEventViewModel: ObservableObject {
    @Published var events: [Event] = [Event]()
    
    func insertAllEvents(_ eventsProb: [String]) {
        for (i, eventProb) in eventsProb.enumerated() {
            let eventName = "Prob \(i + 1)"
            let prob = Double(eventProb)!
            events.append(Event(name: eventName, prob: prob))
        }
    }
    
    func insertEvent(_ event: Event) {
        events.append(event)
    }
    
    func updateEventProb(forEvent: Int, withProb: Double) {
        events[forEvent].prob = withProb
    }
    
    func generateAllEvents(n: Int) {
        for _ in 0..<n {
            let random: Double = Double.random(in: 0.0...1.0)
            print("Random \(random)")
            var curProb = events[0].prob
            var i = 0
            while(curProb < random) {
                i += 1
                print(i)
                print(curProb)
                print(events[i].prob)
                curProb += events[i].prob
            }
            events[i].occurence += 1
        }
        
        for i in 0..<events.count {
            events[i].calculateFrequency(n: n)
        }
    }
}
