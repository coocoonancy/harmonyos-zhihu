import { LinkChild } from './components/LinkChild'
import { PropChild } from './components/PropChild'

@Entry
@Component
struct LinkCase {
  @State linkNum: number = 0
  @State propNum: number = 0

  build() {
    Column({ space: 4 }) {
      Row() {
        Text('Link num: ')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.linkNum.toString())
          .fontSize(32)
      }.onClick(() => {
        this.linkNum++
      })

      LinkChild({ linkNum: $linkNum })
      Divider().strokeWidth(20).backgroundColor(Color.Black)

      Row() {
        Text('Prop num: ')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.propNum.toString())
          .fontSize(32)
      }.onClick(() => {
        this.propNum++
      })

      PropChild({ propNum: this.propNum })
    }
    .justifyContent(FlexAlign.Center)
    .height('100%')
  }
}