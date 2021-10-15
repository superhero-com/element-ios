// File created from SimpleUserProfileExample
// $ createScreen.sh Room/UserSuggestion UserSuggestion
// 
// Copyright 2021 New Vector Ltd
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Foundation

@available(iOS 14, *)
protocol UserSuggestionViewModelProtocol {
    
    static func makeUserSuggestionViewModel(userSuggestionService: UserSuggestionServiceProtocol) -> UserSuggestionViewModelProtocol
    
    var context: UserSuggestionViewModelType.Context { get }
    
    var completion: ((UserSuggestionViewModelResult) -> Void)? { get set }
}
