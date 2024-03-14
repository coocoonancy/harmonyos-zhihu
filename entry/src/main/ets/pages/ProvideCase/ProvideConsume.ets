import { Parent } from './components/Parent'

@Entry
@Component
struct ProvideConsume {
  @Provide('life')
  money: number = 10000

  build() {
    Column({ space: 16 }) {
      Row() {
        Text('爷爷👴' + this.money)
        Button('发退休金')
          .onClick(() => {
            this.money += 200
          })
      }
      .justifyContent(FlexAlign.Center)

      Parent()
    }
    .width('100%')
    .height('100')
    .justifyContent(FlexAlign.Center)
    .padding(16)
  }
}