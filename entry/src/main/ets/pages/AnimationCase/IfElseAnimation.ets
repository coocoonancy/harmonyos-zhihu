@Entry
@Component
struct IfElseAnimation {
  @State message: string = 'Hello World'
  @State isShow: boolean = true

  build() {
    Row() {
      Column() {
        if (this.isShow) {
          Text(this.message)
            .fontSize(50)
            .fontWeight(FontWeight.Bold)

        }
        Button('显示隐藏')
          .onClick(() => {
            animateTo({ duration: 1000 }, () => {
              this.isShow = !this.isShow;
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}