@Entry
@Component
struct AnimationCase {
  @State message: string = 'Hello World'
  @State fontSize: number = 24
  @State scaleValue: number = 2
  @State bgColor: Color = Color.White
  @State animationObj: AnimateParam = {
    duration: 60,
    playMode: PlayMode.Normal,
    curve: Curve.Ease,
    iterations: 0,
    onFinish: () => {
      this.fontSize = 24
      this.scaleValue = 2
      this.bgColor = Color.Yellow
    }
  }

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(this.fontSize)
          .fontWeight(FontWeight.Bold)
          .animation(this.animationObj)
        Button('Animation')
          .onClick(() => {
            if (this.scaleValue === 1) {
              this.scaleValue = 2
              this.fontSize = 24
              this.bgColor = Color.Black
              this.animationObj = {
                duration: 0
              }
            } else {
              this.bgColor = Color.Yellow
              this.scaleValue = 1
              this.fontSize = 50
              this.animationObj = {
                duration: 0,
              }
            }
          })
      }
      .width('100%')
      .height(100)
      .backgroundColor(this.bgColor)
      .justifyContent(FlexAlign.Center)
      .scale({
        x: this.scaleValue,
        y: this.scaleValue
      })
    }
    .height('100%')
  }
}