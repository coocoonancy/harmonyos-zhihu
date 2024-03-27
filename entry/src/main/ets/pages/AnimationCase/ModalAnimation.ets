@Entry
@Component
struct ModalAnimation {
  @State message: string = 'Hello World'

  @Builder
  MenuBuilder() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Center }) {
      Button('Menu1')
      Divider().strokeWidth(2).margin(4).color(Color.Gray)
      Button('Menu2')
      Divider().strokeWidth(2).margin(4).color(Color.Gray)
    }
    .width(200)
    .height(100)
  }

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
      .bindContextMenu(this.MenuBuilder, ResponseType.LongPress)
      .onDragStart(() => {
        animateTo({ duration: 120 }, () => {
          ContextMenu.close()
        })
      })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}