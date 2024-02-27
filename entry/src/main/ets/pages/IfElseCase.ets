@Entry
@Component
struct IfElseCase {
  @State isHidden: boolean = false

  build() {
    Row() {
      Column({ space: 20 }) {
        Toggle({
          type: ToggleType.Switch,
          isOn: !this.isHidden
        })
          .size({})
          .onChange(() => {
            this.isHidden = !this.isHidden;
          })
        // visibility hidden会占位消失
        Image($r('app.media.icon'))
          .width(100)
          .height(100)
          .visibility(this.isHidden ? Visibility.Hidden : Visibility.Visible)
        // 显示和隐藏
        if (!this.isHidden) {
          Image($r('app.media.icon'))
            .width(100)
            .height(100)
        }
        // 宽高
        Image($r('app.media.icon'))
          .width(this.isHidden ? 0 : 100)
          .height(this.isHidden ? 0 : 100)
        // 透明度
        Image($r('app.media.icon'))
          .width(100)
          .height(100)
          .opacity(!this.isHidden ? 1 : 0)

      }
      .width('100%')
    }
    .height('100%')
  }
}