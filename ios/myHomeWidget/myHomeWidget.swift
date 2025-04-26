//
//  myHomeWidget.swift
//  myHomeWidget
//
//  Created by Moaz Sayed on 26/04/2025.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    private func getDataFromFlutter() -> [String] {
        let userDefaults = UserDefaults(suiteName: "group.NewsApp")
        return userDefaults?.stringArray(forKey: "newsData") ?? []
    }

    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), imagePath: "")
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let imagesPaths = getDataFromFlutter()
        let firstImagePath = imagesPaths.first ?? ""
        completion(SimpleEntry(date: Date(), imagePath: firstImagePath))
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        let imagesPaths = getDataFromFlutter()
        let totalImages = imagesPaths.count

        var entries: [SimpleEntry] = []
        var currentDate = Date()

        for i in 0..<60 {
            let path = imagesPaths[i % totalImages]
            entries.append(SimpleEntry(date: currentDate, imagePath: path))
            currentDate = Calendar.current.date(byAdding: .second, value: 5, to: currentDate)!
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

// this represents the data structure for our widget
struct SimpleEntry: TimelineEntry {
    let date: Date
    let imagePath: String
}

// the view that defines how our widget looks
struct myHomeWidgetEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        if let uiImage = UIImage(contentsOfFile: entry.imagePath) {
            Image(uiImage: uiImage)
                .resizable()
                .scaledToFill()  // Scales the image to fill the available space
                .aspectRatio(contentMode: .fill)  // Maintain the aspect ratio and fill the space
                .frame(maxWidth: .infinity, maxHeight: .infinity)  // Ensure it takes the full space
                .clipped()  // Clipped to avoid overflow outside the widget bounds
        } else {
            Image(systemName: "exclamationmark.triangle")
                .resizable()
                .scaledToFit()
                .padding()
        }
    }
}



// the main widget configs
struct myHomeWidget: Widget {
    let kind: String = "myHomeWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            if #available(iOS 17.0, *) {
                myHomeWidgetEntryView(entry: entry)
                    .containerBackground(.fill.tertiary, for: .widget)
            } else {
                myHomeWidgetEntryView(entry: entry)
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

#Preview(as: .systemSmall) {
    myHomeWidget()
} timeline: {
    SimpleEntry(date: .now, imagePath: "")
    SimpleEntry(date: .now.addingTimeInterval(5), imagePath: "")
}
