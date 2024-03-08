@Component
struct HmPanel {
  panelColor: Color = Color.Gray
  panelHeight: number = 300
  @BuilderParam
  panelBody: () => void

  build() {
    Column({ space: 20 }) {
      Column() {
        if (this.panelBody) {
          this.panelBody()
        }
      }
      .backgroundColor(this.panelColor)
      .height(this.panelHeight)
    }
    .padding(20)
  }
}

export { HmPanel }