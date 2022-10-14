//
//  Task+CoreDataProperties.swift
//  TimePad
//
//  Created by Emre Alpago on 22.09.2022.
//
//

import Foundation
import CoreData


extension Task {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task")
    }

    @NSManaged public var mainCategory: String?
    @NSManaged public var projectLabel: String?
    @NSManaged public var secondCategory: String?
    @NSManaged public var projectHour: Int64

}

extension Task : Identifiable {

}
