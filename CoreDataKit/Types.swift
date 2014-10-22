//
//  Types.swift
//  CoreDataKit
//
//  Created by Mathijs Kadijk on 15-10-14.
//  Copyright (c) 2014 Mathijs Kadijk. All rights reserved.
//

import CoreData

/// Error domain used by CoreDataKit when it generates a NSError
public let CoreDataKitErrorDomain = "CoreDataKitErrorDomain"

/// Error codes used by CoreDataKit when it generates a NSError
public enum CoreDataKitErrorCode: Int {
    /// Number of results was not within the expected range
    case UnexpectedNumberOfResults = 1

    /// Entity description could not be found
    case EntityDescriptionNotFound

    /// Idenifying attribute could not be found
    case IdentifyingAttributeNotFound

    /// Relationship property could not be found
    case RelationshipPropertyNotFound

    /// Import was cancelled
    case ImportCancelled
}

//protocol CommitAction {}

public enum CommitAction {
    case DoNothing
    case SaveToParentContext
    case SaveToPersistentStore
//    case Undo
//    case RollbackAllChanges
}

/**
Blocktype used to perform changes on a `NSManagedObjectContext`.

:param: context The context to perform your changes on
*/
public typealias PerformBlock = (NSManagedObjectContext) -> CommitAction

/**
Blocktype used to handle completion.

:param: error The error that occurred or nil if operation was successful
*/
public typealias CompletionHandler = (NSError?) -> Void

public typealias PerformBlockCompletionHandler = (CommitAction, NSError?) -> Void
