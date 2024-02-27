import Prompt from '@system.prompt'
// 不允许导出
@Extend(Button) function payButton(type) {
  .type(ButtonType.Normal)
  .fontColor(Color.White)
  .backgroundColor(type === '支付宝支付' ? Color.Orange : Color.Green)
  .onClick(() => {
    Prompt.showToast({ message: type })
  })
}

@Entry
@Component
struct ExtendCase {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column({ space: 20 }) {
        Button('微信支付')
          .payButton('微信支付')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('支付宝支付')
          .payButton('支付宝支付')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('微信支付')
          .payButton('微信支付')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('支付宝支付')
          .payButton('支付宝支付')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}