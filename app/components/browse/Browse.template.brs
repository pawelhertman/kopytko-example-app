function render() as object
  return [
    {
      name: "SimpleLabel",
      props: {
        id: "label",
        color: "0xFFFFFFFF"
        text: "BrowseView. Details number: " + m.detailsNumber.toStr(),
        horizOrigin: "center",
        vertOrigin: "center",
        translation: "[960, 540]",
      },
    },
    {
      name: "LayoutGroup",
      props: {
        id: "container",
        layoutDirection: "horiz"
        horizAlignment: "center",
        translation: "[960, 640]",
      },
      children: [
        {
          name: "Button",
          props: {
            id: "navigationButton",
            text: "Go to /details route",
          },
          events: {
            buttonSelected: "_onNavigationButtonSelected",
          },
        },
        {
          name: "Button",
          props: { id: "emptyButton", text: "Do nothing" },
        },
      ],
    },
  ]
end function
