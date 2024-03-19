import { getFoodData } from '../api'
import { Category, FoodItemModel } from '../models'
import { MTFoodItem } from './MTFoodItem'

@Component
struct MTMain {
  foods: Category[] = []
  @State
  activeIndex: number = 0

  aboutToAppear(): void {
    this.getFoods()
  }

  async getFoods() {
    this.foods = await getFoodData()
  }

  build() {
    Row({ space: 16 }) {
      Column() {
        ForEach(this.foods, (item: Category, index: number) => {
          Text(item.name)
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

      List() {
        ForEach(this.foods[this.activeIndex]?.foods || [], (item: FoodItemModel) => {
          ListItem() {
            MTFoodItem({ item })
          }
        })
      }
      .layoutWeight(1)
      .backgroundColor($r('app.color.white'))
      .padding({
        bottom: 80
      })
    }
    .width('100%')
    .layoutWeight(1)
    .alignItems(VerticalAlign.Top)
  }
}

export { MTMain }