import promptAction from '@ohos.promptAction'
import { FoodItemModel } from '../models'
import { HmCartItem } from './HmCartItem'

@Component
struct HmCart {
  @Link
  foods: FoodItemModel[]

  updateCart(item, type) {

    const index = this.foods.findIndex(e => e.food_id === item.food_id);

    if (index > -1) {
      const foodCount = this.foods[index].food_count;
      this.foods[index].food_count = type === 'add' ? foodCount + 1 : foodCount ? foodCount - 1 : foodCount;
      this.foods[index] = new FoodItemModel(this.foods[index])
    }

    promptAction.showToast({ message: index + type + item.food_count + JSON.stringify(item) })
  }

  build() {
    List() {
      ForEach(this.foods, (item: FoodItemModel) => {
        ListItem() {
          HmCartItem({ item, addCart: (item: FoodItemModel, type: 'add' | 'cut') => {
            this.updateCart(item, type)
          } })
        }
      })
    }
  }
}

export { HmCart }