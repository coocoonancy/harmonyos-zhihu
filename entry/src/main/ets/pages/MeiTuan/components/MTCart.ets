@Component
struct MTCart {
  @Consume
  cartVisible: boolean

  build() {
    Column() {
      Column() {
        Row() {
          Text('购物车')
            .fontSize(12)
            .fontWeight(600)
          Text('清空购物车')
            .fontSize(12)
            .fontColor($r('app.color.search_font_color'))
        }
      }
    }
    .width('100%')
    .width('100%')
    .backgroundColor('rgba(0, 0, 0, 0.5)')

  }
}

export { MTCart }