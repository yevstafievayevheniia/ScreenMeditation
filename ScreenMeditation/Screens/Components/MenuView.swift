//
//  MenuView.swift
//  ScreenMeditation
//
//  Created by Yevstafieva Yevheniia on 13.07.2023.
//

import SwiftUI

struct MenuView: View {

    struct Item: Identifiable {
        var id: UUID = UUID()
        var icon: Image
        var name: String
        var menu: SelectedMenu
    }

    enum SelectedMenu: String {
        case edit
        case archive
        case delete
    }

    @State var selectedItem: SelectedMenu = .edit

    var items: [Item] = [
        Item(icon: .editIcon, name: "menu_edit".localized, menu: .edit),
        Item(icon: .archiveIcon, name: "menu_archive".localized, menu: .archive),
        Item(icon: .deleteIcon, name: "menu_delete".localized, menu: .delete)
    ]

    var body: some View {
        Menu {
            ForEach(items, id: \.id) { item in
                buttonMenu(item: item)
            }
        } label: {
            Image.moreIcon
        }
        .background(Color.appBackgroundColor)
        .menuOrder(.fixed)
        .menuStyle(.button)
    }
}

extension MenuView {
    func buttonMenu(item: Item) -> some View {
        Button {
            selectedItem = item.menu
        } label: {
            Label {
                Text(item.name)
                    .font(.gilroyFont(ofSize: 12, weight: .medium))
                    .foregroundColor(.menuItemColor)
            } icon: {
                item.icon
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
