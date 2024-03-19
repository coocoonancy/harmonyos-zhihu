import { MTBottom } from './components/MTBottom'
import { MTCart } from './components/MTCart'
import { MTMain } from './components/MTMain'
import { MTTop } from './components/MTTop'

@Entry
@Component
struct MTIndex {
  @Provide
  cartVisible: boolean = false

  build() {
    Column() {

      Stack({ alignContent: Alignment.Bottom }) {
        Column() {
          MTTop()
          MTMain()
        }
        .height('100%')
        if(this.cartVisible) {
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