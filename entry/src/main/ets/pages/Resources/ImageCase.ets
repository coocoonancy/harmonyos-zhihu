@Entry
@Component
struct ImageCase {
  build() {
    Grid() {
      GridItem() {
        Image('/assets/hover.svg')
          .width(100)
          .height(100)
          .fillColor(Color.Brown)
      }

      GridItem() {
        Image($r('app.media.db'))
          .width(80)
          .height(80)
      }

      GridItem() {
        Image($rawfile('arrow_right.svg'))
          .width(80)
          .height(80)
      }

      GridItem() {
        Image('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F2bf1b169-d217-44c3-a5b3-dd00813bc20d%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1704614176&t=e15a2fd5193aeeb24fc95b5dbe395907')
          .width(80)
          .height(80)
      }

      GridItem() {
        Image('/assets/hover.svg')
          .width(100)
          .height(100)
          .fillColor(Color.Brown)
      }

      GridItem() {
        Image($r('app.media.db'))
          .width(80)
          .height(80)
      }

      GridItem() {
        Image($rawfile('arrow_right.svg'))
          .width(80)
          .height(80)
      }

      GridItem() {
        Image('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F2bf1b169-d217-44c3-a5b3-dd00813bc20d%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1704614176&t=e15a2fd5193aeeb24fc95b5dbe395907')
          .width(80)
          .height(80)
      }

    }
    .rowsGap(20)
    .columnsTemplate('1fr 1fr 1fr')
    .rowsTemplate('1fr 1fr 1fr')
  }
}