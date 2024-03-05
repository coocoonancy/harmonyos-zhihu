@Component
struct HmCard {
  @Builder getDefault() {
    Text('默认')
  }

  @BuilderParam
  slotFn: () => void = this.getDefault

  build() {
    Column({ space: 20 }) {
      Column() {
        this.slotFn()
      }
      .width('100%')
      .backgroundColor(Color.White)
      .height(60)
      .borderRadius(8)
      .justifyContent(FlexAlign.Center)
      .alignItems(HorizontalAlign.Center)
    }
    .width('100%')
  }
}

export { HmCard }