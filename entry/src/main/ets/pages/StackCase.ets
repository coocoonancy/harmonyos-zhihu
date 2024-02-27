@Entry
@Component
struct StackCase {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Stack({ alignContent: Alignment.TopStart }) {
        Row() {
          Image(($r('app.media.hover')))
            .width(16)
            .height(16)
            .fillColor(Color.Grey)
        }
        .width(30)
        .height(30)
        .borderRadius(15)
        .justifyContent(FlexAlign.Center)
        .backgroundColor(Color.Gray)
        .zIndex(2)
        Text('评论回复')
          .textAlign(TextAlign.Center)
          .width('100%')
      }
      .width('100%')
      .height(50)
      .padding(10)
      .backgroundColor(Color.White)
      .align(Alignment.Start)
    }
    .width('100%')
    .height('50%')
    .backgroundColor(Color.Pink)
    .alignItems(VerticalAlign.Top)
  }
}