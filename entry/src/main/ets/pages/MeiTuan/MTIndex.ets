import { MTBottom } from './components/MTBottom'
import { MTMain } from './components/MTMain'

@Entry
@Component
struct MTIndex {
  @State message: string = 'Hello World'

  build() {
    Column() {
      MTMain()
        .layoutWeight(1)
      MTBottom()
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.white'))
  }
}