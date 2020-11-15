//
//  CreateMention.swift
//  SZMentionsSwift
//
//  Created by Steven Zweier on 9/21/17.
//  Copyright © 2017 Steven Zweier. All rights reserved.
//

import UIKit

public protocol CreateMention {
    /**
     @brief The name of the mention to be added to the UITextView when selected.
     */
    var nameAttribute: String { get } // Changing this because it is interferring with my app's name property
}

internal extension CreateMention {
    func mentionName(with spaceAfterMention: Bool) -> String {
        return nameAttribute + (spaceAfterMention ? " " : "")
    }
}
