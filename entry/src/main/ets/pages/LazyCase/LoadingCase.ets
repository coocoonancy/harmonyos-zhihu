import HmLoading from './Components/HmLoading'

@Entry
@Component
struct LoadingCase {
  build() {
    Row() {
      Column() {
        HmLoading()
      }
      .width('100%')
    }
    .height('100%')
  }
}

export default LoadingCase