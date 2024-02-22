@Entry
@Component
struct DrawCanvas {
  context: CanvasRenderingContext2D = new CanvasRenderingContext2D(new RenderingContextSettings(true))
  build() {
    Column() {
      Canvas().width('100')
    }
  }
}