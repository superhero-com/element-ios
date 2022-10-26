// 
// Copyright 2022 New Vector Ltd
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

import SwiftUI

struct InfoView: View {
    struct Action {
        let text: String
        let action: () -> Void
    }
    
    @Environment(\.theme) var theme: ThemeSwiftUI
    private let title: String
    private let description: String
    private let action: Action
    
    init(title: String, description: String, action: Action) {
        self.title = title
        self.description = description
        self.action = action
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            VStack(alignment: .leading, spacing: 16) {
                Text(title)
                    .font(theme.fonts.calloutSB)
                    .foregroundColor(theme.colors.primaryContent)
                    .accessibilityIdentifier(title)
                
                Text(description)
                    .font(theme.fonts.footnote)
                    .foregroundColor(theme.colors.primaryContent)
                    .accessibilityIdentifier(description)
            }
            
            Button(action: action.action) {
                Text(action.text)
                    .font(theme.fonts.bodySB)
                    .foregroundColor(theme.colors.background)
                    .frame(height: 48)
                    .frame(maxWidth: .infinity)
                    .accessibilityIdentifier(action.text)
            }
            .background(theme.colors.accent)
            .cornerRadius(8)
        }
        .padding(24)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(title: "Verified sessions",
                 description: "Verified sessions have logged in with your credentials and then been verified, either using your secure passphrase or by cross-verifying.\n\nThis means they hold encryption keys for your previous messages, and confirm to other users you are communicating with that these sessions are really you.",
                 action: .init(text: "GOT IT", action: {}))
    }
}
