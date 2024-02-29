import HmLoading, { HmLoading as MultiHmLoading, HmLoading1, HmLoading2 } from './Components/DefaultHmLoading'
// 默认导入后别名
import * as DefaultHmLoading from './Components/DefaultHmLoading'

@Entry
@Component
struct LazyCase {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        HmLoading()
        DefaultHmLoading.HmLoading()
        MultiHmLoading()
        DefaultHmLoading.HmLoading1()
        HmLoading1()
        HmLoading2()
        DefaultHmLoading.HmLoading2()
      }
      .width('100%')
    }.height('100%')
  }
}