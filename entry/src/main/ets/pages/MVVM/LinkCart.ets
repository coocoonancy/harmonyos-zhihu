import { HmCart } from './components/HmCart'
import { FoodItemModel } from './models'

@Entry
@Component
struct LinkCart {
  @State foods: FoodItemModel[] = [
    {
      food_id: 1,
      food_name: '鱼香肉丝',
      food_price: 18.8,
      food_count: 1
    }, {
    food_id: 2,
    food_name: '粗溜丸子',
    food_price: 26,
    food_count: 2
  }, {
    food_id: 3,
    food_name: '杂粮煎饼',
    food_price: 12,
    food_count: 1
  }
  ]

  build() {
    Column() {
      HmCart({ foods: $foods })
    }
    .justifyContent(FlexAlign.Center)
    .height('100%')
    .padding(16)
  }
}