@Entry
@Component
struct FlexCase {
  build() {
    Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.SpaceAround }) {
      Flex({ justifyContent: FlexAlign.SpaceEvenly, alignItems: ItemAlign.Center }) {
        Row().width(60).height(60).backgroundColor(Color.Red)
        Row().width(60).height(60).backgroundColor(Color.Green)
        Row().width(60).height(60).backgroundColor(Color.Blue)
      }

      Flex({ justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {
        Row().width(60).height(60).backgroundColor(Color.Red)
        Row().width(60).height(60).backgroundColor(Color.Green)
        Row().width(60).height(60).backgroundColor(Color.Blue)
      }

      Flex({ justifyContent: FlexAlign.End, alignItems: ItemAlign.Center }) {
        Row().width(60).height(60).backgroundColor(Color.Red)
        Row().width(60).height(60).backgroundColor(Color.Green)
        Row().width(60).height(60).backgroundColor(Color.Blue)
      }
    }.width('100%').height('100%')
  }
}