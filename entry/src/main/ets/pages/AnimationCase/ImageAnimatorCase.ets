@Entry
@Component
struct ImageAnimatorCase {
  @State message: string = 'Hello World'
  @State animationState: AnimationStatus = AnimationStatus.Initial

  build() {
    Row() {
      Column() {
        ImageAnimator()
          .images([{
            src: '/assets/帧动画/微信-小狗/watch-loadingdog-0@2x.png'
          }, {
            src: '/assets/微信-小狗/watch-loadingdog-1@2x.png'
          }, {
            src: '/assets微信-小狗/watch-loadingdog-2@2x.png'
          }, {
            src: '/assets/微信-小狗/watch-loadingdog-3@2x.png'
          }])
          .duration(60)
          .state(this.animationState)
          .fillMode(FillMode.None)
          .iterations(-1)
          .width(340)
          .height(240)

        ImageAnimator()
          .images([{
            src: '/assets/小米有品/bigtap_queue_1@3x.png'
          }, {
            src: '/assets/小米有品/bigtap_queue_2@3x.png'
          }, {
            src: '/assets/小米有品/bigtap_queue_3@3x.png'
          }, {
            src: '/assets/小米有品/bigtap_queue_4@3x.png'
          }])
          .duration(200)
          .state(this.animationState)
          .fillMode(FillMode.None)
          .iterations(-1)
          .width(340)
          .height(240)
        Button("京东动画")
          .onClick(() => {
            if (this.animationState === AnimationStatus.Running) {
              this.animationState = AnimationStatus.Paused
              return
            }
            this.animationState = AnimationStatus.Running
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}