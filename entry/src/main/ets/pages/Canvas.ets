@Entry
@Component
struct DrawCanvas {
  myPen: CanvasRenderingContext2D = new CanvasRenderingContext2D(new RenderingContextSettings(true))

  build() {
    Column() {
      Canvas(this.myPen)
        .width('100%')
        .height(300)
        .backgroundColor(Color.Grey)
        .onReady(() => {
          this.myPen.lineWidth = 2
          this.myPen.strokeStyle = 'blue'
        })
        .onTouch(event => {
          if (event.type === TouchType.Down) {
            this.myPen.beginPath()
            this.myPen.moveTo(event.touches[0].x, event.touches[0].y)
          }
          if (event.type === TouchType.Move) {
            this.myPen.moveTo(event.touches[0].x, event.touches[0].y)
            this.myPen.stroke()
          }
          if (event.type === TouchType.Up) {
            this.myPen.closePath()
          }
        })

    }
    .justifyContent(FlexAlign.Center)
    .height('100%')
  }
}