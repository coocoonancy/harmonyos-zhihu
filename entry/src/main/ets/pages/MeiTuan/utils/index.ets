import { FoodItemModel } from '../models'

PersistentStorage.PersistProp('user_cart', [])

export class CartStore {
  static getCarts(): FoodItemModel[] {
    return AppStorage.Get<FoodItemModel[]>('user_cart') || []
  }

  static addCutCart(type: 'add' | 'cut', item: FoodItemModel) {
    const list = CartStore.getCarts()
    const i = list.findIndex(f => f.id === item.id)
    if (i >= 0) {
      const f = list[i]
      if (type === 'add') {
        f.count++
      } else {
        if (f.count > 0) {
          f.count--
        } else {
          list.splice(i, 1)
        }
      }
    }
    // @StorageProp @Watch 监听更新
    AppStorage.Set<FoodItemModel[]>('user_cart', [...list])
    // 通信
    getContext().eventHub.emit('cartChange')
  }

  static clearCart() {
    AppStorage.Set<FoodItemModel[]>('user_cart', [])
    getContext().eventHub.emit('cartChange')
  }
}
