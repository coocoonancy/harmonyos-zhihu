@Entry
@Component
struct ScrollVertical {
  @State middleHeight: number = 0
  scroller: Scroller = new Scroller()

  build() {
    Column() {
      Row()
      .width('100%')
      .height(60)
      .backgroundColor(Color.Yellow)
      .onClick(() => {
        this.scroller.scrollEdge(Edge.Bottom)
      })

      Scroll(this.scroller) {
        Column() {
          ScrollCaseItem()
          ScrollCaseItem()
          ScrollCaseItem()
          ScrollCaseItem()
          ScrollCaseItem()
          ScrollCaseItem()
          ScrollCaseItem()
          ScrollCaseItem()
          ScrollCaseItem()
          ScrollCaseItem()
          ScrollCaseItem()
          ScrollCaseItem()
          ScrollCaseItem()
          ScrollCaseItem()
          ScrollCaseItem()
          ScrollCaseItem()
        }
      }
      .width('100%')
      .height(this.middleHeight)
      .backgroundColor(Color.Black)

      Row()
        .width('100%')
        .height(60)
        .backgroundColor(Color.Orange)
        .onClick(() => {
          this.scroller.scrollEdge(Edge.Top)
        })

    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
    .height('100%')
    .onAreaChange((oldArea: Area, newArea: Area) => {
      this.middleHeight = (newArea.height as number) - 120
    })

  }
}

@Component
struct ScrollCaseItem {
  build() {
    Row() {
      Text('赤橙黄绿青蓝紫').fontColor(Color.Black)
    }
    .width('100%')
    .height(60)
    .justifyContent(FlexAlign.Center)
    .backgroundColor(Color.White)
    .margin({ top: 12 })
  }
}