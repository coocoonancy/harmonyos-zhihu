import { RequrieChild } from './components/RequrieChild'
@Entry
@Component
struct RequrieCase {
  @State message: string = 'Hello World'
  @State num: number = 0
  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        RequrieChild({ num: this.num })
      }
      .width('100%')
    }
    .height('100%')
  }
}