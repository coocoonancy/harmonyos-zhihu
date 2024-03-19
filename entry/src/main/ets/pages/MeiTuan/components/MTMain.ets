import { FoodItemModel } from '../../MVVM/models'

@Component
struct MTMain {
  list: string[] = ['一人套餐', '特色烧烤', '杂粮主食']
  @State
  activeIndex: number = 0

  build() {
    Row({ space: 16 }) {
      Column() {
        ForEach(this.list, (item: string, index: number) => {
          Text(item)
            .height(50)
            .width('100%')
            .textAlign(TextAlign.Center)
            .fontSize(14)
            .backgroundColor(this.activeIndex === index ? $r('app.color.white') : $r('app.color.left_back_color'))
            .onClick(() => {
              this.activeIndex = index
            })
        })
      }
      .width(90)
      .height('100%')
      .backgroundColor($r('app.color.left_back_color'))
      Column() {

      }
      .layoutWeight(1)
    }
    .width('100%')
    .layoutWeight(1)
    .alignItems(VerticalAlign.Top)
  }
}

export { MTMain }