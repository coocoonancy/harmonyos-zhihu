@Entry
@Component
struct TransitionAnimation {
  @State flag: boolean = false

  build() {
    Row() {
      Column() {
        Button('转场')
          .onClick(() => {
            animateTo({ duration: 1000 }, () => {
              this.flag = !this.flag
            })

          })

        if (this.flag) {
          Image($r('app.media.ic_public_contacts_group'))
            .width(300)
            .height(300)
            .transition({
              type: TransitionType.Insert, scale: { x: 0, y: 0 }
            })
            .transition({
              type: TransitionType.Delete, rotate: { angle: 180 }
            })
        }
      }
      .width('100%')
    }
    .height('100%')
  }
}