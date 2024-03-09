import { FoodItemModel } from '../models'
import { HmCount } from './HmCount'

@Component
struct HmCartItem {
  @Prop
  item: FoodItemModel = {} as FoodItemModel
  addCart: (item: FoodItemModel, type: 'add' | 'cut') => void = () => {
  }

  build() {
    Row() {
      Column() {
        Text(this.item.food_name)
          .fontSize(20)
        Text('¥' + this.item.food_price.toString())
          .fontSize(12)
          .fontColor(Color.Red)
      }
      .alignItems(HorizontalAlign.Start)

      HmCount({ item: this.item, addCart: (item: FoodItemModel, type: 'add' | 'cut') => {
        this.addCart(item, type)
      } })
    }
    .width('100%')
    .padding(16)
    .justifyContent(FlexAlign.SpaceBetween)
    .border({ width: 1, color: Color.Gray })
  }
}

export { HmCartItem }