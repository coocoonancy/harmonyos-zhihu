@Entry
@Component
struct SafeAreaCase {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Image($r('app.media.db'))
        .width('100%')
        .height('50%')
        // .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP])
    }
    .width('100%')
    .height('100%')
  }
}