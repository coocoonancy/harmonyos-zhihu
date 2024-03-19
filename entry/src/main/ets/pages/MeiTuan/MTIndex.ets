import { MTBottom } from './components/MTBottom'
import { MTCart } from './components/MTCart'
import { MTMain } from './components/MTMain'
import { MTTop } from './components/MTTop'
import { FoodItemModel } from './models'
import { CartStore } from './utils'

@Entry
@Component
struct MTIndex {
  @Provide
  cartVisible: boolean = false
  @Provide
  userCart: FoodItemModel[] = []

  aboutToAppear(): void {
    this.userCart = CartStore.getCarts()
  }

  build() {
    Column() {

      Stack({ alignContent: Alignment.Bottom }) {
        Column() {
          MTTop()
          MTMain()
        }
        .height('100%')

        if (this.cartVisible) {
          MTCart()
        }
        MTBottom()
      }
      .layoutWeight(1)

    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.white'))
  }
}