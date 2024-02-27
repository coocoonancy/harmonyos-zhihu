@Styles function payStyle() {
  .width('100%')
  .height(50)
  .borderRadius(4)
}


@Entry
@Component
struct StyleCase {
  @State message: string = 'Hello'

  build() {
    Column({ space: 20 }) {
      Column() {
        Button(this.message)
          .payStyle()
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }

      Column() {
        Button(this.message)
          .payStyle()
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .padding(20)
  }
}