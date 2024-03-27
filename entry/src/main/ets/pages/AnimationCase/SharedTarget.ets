@Entry
@Component
struct SharedTarget {

  build() {
    Stack() {
      Image($r('app.media.ic_public_like'))
        .width(200)
        .height(200)
        .fillColor(Color.Brown)
        .sharedTransition('sharedLike', {
          duration: 800,
          delay: 100
        })
    }
    .width('100%')
    .height('100%')
  }
}