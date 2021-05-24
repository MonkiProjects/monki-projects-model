//
//  Placemark+Public.swift
//  MonkiMapModel
//
//  Created by Rémi Bardon on 09/01/2021.
//  Copyright © 2021 Monki Projects. All rights reserved.
//

import Foundation

extension Placemark {
	
	/// Model of a placemark used in APIs responses.
	public struct Public: Codable, Hashable, Identifiable {
		
		public enum CodingKeys: String, CodingKey {
			case id
			case name
			case latitude, longitude
			case kind, category
			case state
			case creator
			case details
			case createdAt = "created_at"
			case updatedAt = "updated_at"
		}
		
		public let id: UUID
		public let name: String
		public let latitude, longitude: Double
		public let kind: Placemark.Kind
		public let category: Placemark.Category
		public let state: State
		public let creator: UUID
		public let details: Details.Public
		public let createdAt, updatedAt: Date
		
		public init(
			id: UUID,
			name: String,
			latitude: Double,
			longitude: Double,
			kind: Placemark.Kind,
			category: Placemark.Category,
			state: State,
			creator: UUID,
			details: Details.Public,
			createdAt: Date,
			updatedAt: Date
		) {
			self.id = id
			self.name = name
			self.latitude = latitude
			self.longitude = longitude
			self.kind = kind
			self.category = category
			self.state = state
			self.creator = creator
			self.details = details
			self.createdAt = createdAt
			self.updatedAt = updatedAt
		}
		
	}
	
}
