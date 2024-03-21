import { ModelDialog } from './components/ModelDialog'

@Entry
@Component
struct HmDialog {
  @Builder
  headerSlotFn() {
    Row() {
      Stack() {
        Text('返回')
        Row() {
          Text('头部')
        }
        .width('100%')
        .justifyContent(FlexAlign.Center)
      }
      .alignContent(Alignment.Start)
      .padding(16)
      .border({ width: 1, color: Color.Gray })
    }
  }

  @Builder
  bodySlotFn() {
    Column() {
      Text('内容')
        .fontSize(24)
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Yellow)
    .justifyContent(FlexAlign.Center)
    .padding(16)

  }
  @Builder
  footerSlotFn() {
    Row() {
      Text('内容')
        .fontSize(24)
    }
    .width('100%')
    .height(60)
    .backgroundColor(Color.Yellow)
    .justifyContent(FlexAlign.Center)
    .padding(16)

  }

  build() {
    Column() {
      ModelDialog({
        headerSlotFn: () => {
          this.headerSlotFn()
        },
        bodySlotFn: () => {
          this.bodySlotFn()
        },
        footerSlotFn: () => {
          this.footerSlotFn()
        }
      })
    }
  }
}