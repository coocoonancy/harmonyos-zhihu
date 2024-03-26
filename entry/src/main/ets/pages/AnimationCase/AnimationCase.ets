@Entry
@Component
struct AnimationCase {
  @State message: string = 'Hello World'
  @State fontSize: number = 24
  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(this.fontSize)
          .fontWeight(FontWeight.Bold)

        Button('Animation')
          .onClick(() => {
            // this.animation({ duration: 12 })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}