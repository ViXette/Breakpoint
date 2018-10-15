//
//  Created by ViXette on 20/05/2018.
//

import Foundation
import Firebase


let DB_BASE = Database.database().reference()


class DataService {

	static let instance = DataService()

	private var _REF_BASE = DB_BASE
	var REF_BASE: DatabaseReference {
		return _REF_BASE
	}
	
	private var _REF_USERS = DB_BASE.child("users")
	var REF_USERS: DatabaseReference {
		return _REF_USERS
	}
	
	private var _REF_GROUPS = DB_BASE.child("groups")
	var REF_GROUPS: DatabaseReference {
		return _REF_GROUPS
	}
	
	private var _REF_FEED = DB_BASE.child("feed")
	var REF_FEED: DatabaseReference {
		return _REF_FEED
	}
	
	
	func createDBUser (uid: String, userData: Dictionary<String, Any>) {
		REF_USERS.child(uid).updateChildValues(userData)
	}
	
}
