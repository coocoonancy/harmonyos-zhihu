
import { FoodItemModel } from '../models'
PersistentStorage.PersistProp('user_cart', [])
export class CartStore {
  static getCarts(): FoodItemModel[] {
    return AppStorage.Get<FoodItemModel[]>('user_cart') || []
  }
  static addCutCart(type: 'add' | 'cut', item: FoodItemModel) {
    const list = CartStore.getCarts()
    const f = list.find(f => f.id === item.id)
    if (f) {
      if (type === 'add') {
        f.count++
      } else {
        f.count--
      }
    }
  }

}
