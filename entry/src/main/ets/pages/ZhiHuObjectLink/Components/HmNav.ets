@Preview
@Component
struct HmNav {
  title: string = ''

  build() {
    Row() {
      Row() {
        Image($r('app.media.hover'))
          .width(16)
          .height(16)
      }
      .width(30)
      .height(30)
      .margin({ left: 20 })
      .borderRadius(15)
      .justifyContent(FlexAlign.Center)
      .backgroundColor(Color.Gray)

      Text(this.title)
        .layoutWeight(1)
        .textAlign(TextAlign.Center)

    }
    .width('100%')
    .height(50)
    .padding({ right: 50 })
    .border({ width: { bottom: 1 }, color: Color.Grey })
  }
}

export { HmNav }