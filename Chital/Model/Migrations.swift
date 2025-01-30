//
//  Migrations.swift
//  Chital
//
//  Created by Stephen Beitzel on 1/29/25.
//

import SwiftData

typealias ActiveSchema = SchemaV1
typealias ChatThread = ActiveSchema.ChatThread
typealias ChatMessage = ActiveSchema.ChatMessage

enum MigrationPlan: SchemaMigrationPlan {

  static var schemas: [any VersionedSchema.Type] {
    [
        SchemaV1.self
    ]
  }

  static var stages: [MigrationStage] {
    [
    ]
  }
}

