@Component
struct MTAddCart {
  build() {
    Row() {
      Row() {
        Image($r('app.media.ic_screenshot_line'))
          .width(10)
          .aspectRatio(1)
      }
      .width(16)
      .aspectRatio(1)
      .justifyContent(FlexAlign.Center)
      .borderRadius(4)
      .border({ width: 0.5, color: $r('app.color.font_main_color') })
      .backgroundColor($r('app.color.white'))

      Text('0').fontSize(14)
      Row() {
        Image($r('app.media.ic_public_add_filled'))
          .width(10)
          .aspectRatio(1)
      }
      .width(16)
      .aspectRatio(1)
      .justifyContent(FlexAlign.Center)
      .borderRadius(4)
      .border({ width: 0.5, color: $r('app.color.font_main_color') })
      .backgroundColor($r('app.color.main_color'))
    }
  }
}

export { MTAddCart }