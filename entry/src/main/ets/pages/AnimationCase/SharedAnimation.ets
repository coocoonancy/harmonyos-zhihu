@Entry
@Component
struct SharedAnimation {
  @State active: boolean = false

  build() {
    Navigator({ target: 'pages/AnimationCase/SharedTarget', type: NavigationType.Push }) {
      Image($r('app.media.ic_public_like'))
        .width(60)
        .height(60)
        .fillColor(Color.Red)
        .sharedTransition('sharedLike', {
          duration: 800,
          delay: 100
        })
    }
    .onClick(() => {
      this.active = true
    })
  }
}