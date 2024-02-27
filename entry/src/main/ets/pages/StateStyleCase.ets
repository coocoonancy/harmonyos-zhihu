@Entry
@Component
struct StateStyleCase {
  @State isEnabled: boolean = true

  build() {
    Column({ space: 20 }) {
      Row() {
        Search() {}
        .stateStyles({
          normal: {
            .border({ color: Color.Transparent })
          },
          // 需要在模拟器里tab健查看
          focused: {
            .border({ color: Color.Orange })
          }
        })
      }

      Column() {
        Row({ space: 16 }) {
          Image($r('app.media.app_icon'))
            .width(40)
            .height(40)
          Text('从图说云服务、初学者教程、典型场景最佳实践到专家技术汇，不论您处于什么阶段都可以从中查找所需信息，快速上手华为云服务。')
            .layoutWeight(1)
        }
        .alignItems(VerticalAlign.Top)
      }
      .padding(16)
      .borderRadius(4)
      .stateStyles({
        normal: {
          .backgroundColor(Color.Pink)
        },
        pressed: {
          .backgroundColor(Color.Orange)
        },
        disabled: {
          .backgroundColor(Color.Gray)
        }
      })

      Column() {
        Row({ space: 16 }) {
          Image($r('app.media.app_icon'))
            .width(40)
            .height(40)
          Text('从图说云服务、初学者教程、典型场景最佳实践到专家技术汇，不论您处于什么阶段都可以从中查找所需信息，快速上手华为云服务。')
            .layoutWeight(1)
        }
        .alignItems(VerticalAlign.Center)
      }
      .padding(16)
      .borderRadius(4)
      .stateStyles({
        normal: {
          .backgroundColor(Color.Pink)
        },
        pressed: {
          .backgroundColor(Color.Orange)
        },
        disabled: {
          .backgroundColor(Color.Gray)
        }
      })
      .enabled(this.isEnabled)

      Column() {
        Row({ space: 16 }) {
          Image($r('app.media.app_icon'))
            .width(40)
            .height(40)
          Text('从图说云服务、初学者教程、典型场景最佳实践到专家技术汇，不论您处于什么阶段都可以从中查找所需信息，快速上手华为云服务。')
            .layoutWeight(1)
        }
        .alignItems(VerticalAlign.Bottom)
      }
      .padding(16)
      .borderRadius(4)
      .stateStyles({
        normal: {
          .backgroundColor(Color.Pink)
        },
        pressed: {
          .backgroundColor(Color.Orange)
        },
        disabled: {
          .backgroundColor(Color.Gray)
        }
      })

      Button(this.isEnabled ? '禁用' : '启用')
        .onClick(() => {
          this.isEnabled = !this.isEnabled;
        })

    }
    .width('100%')
    .padding(16)
  }
}