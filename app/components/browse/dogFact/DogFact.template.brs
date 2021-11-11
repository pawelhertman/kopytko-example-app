function render() as object
  return {
    name: "Label",
    props: {
      id: "label",
      color: "0xFFFF00FF",
      width: 900,
      wrap: true,
    },
    dynamicProps: {
      text: m.state.fact,
    }
  }
end function
