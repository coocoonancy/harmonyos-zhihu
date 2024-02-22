@Entry
@Component
struct GridCase {
  build() {
    Grid() {
      // 4.0 这种写法会有些
      GridCaseItem()
      GridItem() {
        Row()
          .width(60)
          .height(60)
          .backgroundColor(Color.Red)
      }
      GridItem() {
        Row()
          .width(60)
          .height(60)
          .backgroundColor(Color.Red)
      }
      GridItem() {
        Row()
          .width(60)
          .height(60)
          .backgroundColor(Color.Red)
      }
      GridItem() {
        Row()
          .width(60)
          .height(60)
          .backgroundColor(Color.Red)
      }
    }
    .width('100%')
    .height('100%')
    .columnsTemplate('1fr 1fr 1fr 1fr')
    .columnsGap(16)
    .rowsGap(16)
  }
}

@Component
struct GridCaseItem {
  build() {
    GridItem() {
      Row()
        .width(60)
        .height(60)
        .backgroundColor(Color.Red)
    }
  }
}