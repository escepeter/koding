class NavigationList extends KDListView

  customizeItemOptions:(options, data)->

    if data.title is "Activity"
      options.childClass = NavigationActivityLink
      return options

    else if data.title is "Invite Friends"
      options.childClass = NavigationInviteLink
      return options

    else if data.title is "Apps"
      options.childClass = NavigationAppsLink
      return options

    if data.docs
      options.childClass = NavigationDocsJobsLink
      return options

    if data.promote
      options.childClass = NavigationPromoteLink
      return options

    if data.nominate
      options.childClass = NavigationNominateLink
      return options

    if data.type is "separator"
      options.childClass = NavigationSeparator
      options.selectable = no
      return options

    if data.type is "admin"
      options.itemClass  = AdminNavigationLink
      options.selectable = no
      return options
