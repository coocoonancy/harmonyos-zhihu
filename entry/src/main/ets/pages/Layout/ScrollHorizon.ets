@Entry
@Component
struct ScrollHorizon {
  @State middleWidth: number = 0
  scroller: Scroller = new Scroller()

  build() {
    Row() {
      Column() {
        Scroll(this.scroller) {
          Row({ space: 16 }) {
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
        .scrollable(ScrollDirection.Horizontal)
        .height(100)
        .width('100%')

        Row() {
          Button('<')
            .fontSize(36)
            .onClick(() => {
              this.scroller.scrollEdge(Edge.End)
            })
          Button('>')
            .fontSize(36)
            .onClick(() => {
              this.scroller.scrollEdge(Edge.Start)
            })


        }
      }

    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct ScrollCaseItem {
  build() {
    Row() {
      Text('蜡笔小新')
        .fontColor(Color.White)
    }
    .backgroundColor(Color.Brown)
    .justifyContent(FlexAlign.Center)
    .width(100)
    .height(60)
  }
}