@Component
struct ModelDialog {
  @BuilderParam
  headerSlotFn: () => void
  @BuilderParam
  bodySlotFn: () => void
  @BuilderParam
  footerSlotFn: () => void

  build() {
    Column() {
      Column() {
        if (this.bodySlotFn) {
          this.headerSlotFn()
        }
      }

      Column() {
        if (this.bodySlotFn) {
          this.bodySlotFn()
        }
      }
      .layoutWeight(1)

      if (this.footerSlotFn) {
        this.footerSlotFn()
      } else {
        Row() {
          Button('取消')
            .backgroundColor(Color.Gray)
          Button('确定')
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .padding(16)
        .width('100%')
        .border({ width: 1, color: Color.Gray })
      }
    }
    .layoutWeight(1)
  }
}

export { ModelDialog }