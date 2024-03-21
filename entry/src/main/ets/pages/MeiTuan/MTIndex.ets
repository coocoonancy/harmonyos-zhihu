import window from '@ohos.window'
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
  @State
  safeH: number = 0
  // 监听第一种方案
  // @StorageProp('user_cart')
  // @Watch('updateCart')
  // userCartProp: FoodItemModel[] = []
  // 沉浸式
  async setWindow() {
    const win = await window.getLastWindow(getContext())
    win.setWindowLayoutFullScreen(false)
    const h = win.getWindowAvoidArea(window.AvoidAreaType.TYPE_SYSTEM).topRect.height
    this.safeH = px2vp(h)
  }

  aboutToAppear(): void {
    // this.setWindow()
    this.userCart = CartStore.getCarts()
    getContext().eventHub.on('cartChange', () => {
      this.userCart = CartStore.getCarts()
    })
  }

  // updateCart() {
  //   this.userCart = CartStore.getCarts()
  // }

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
    .padding({ top: this.safeH })
  }
}