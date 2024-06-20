//
//  MonthlyWidgetBundle.swift
//  MonthlyWidget
//
//  Created by Juhyun Yun on 6/20/24.
//

import WidgetKit
import SwiftUI

@main
struct MonthlyWidgetBundle: WidgetBundle {
    var body: some Widget {
        MonthlyWidget()
        MonthlyWidgetLiveActivity()
    }
}
