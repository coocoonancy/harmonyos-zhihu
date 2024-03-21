import promptAction from '@ohos.promptAction'
import { WatchChild } from './components/WatchChild'

@Entry
@Component
struct WatchCase {
  @State
  @Watch('updateNumber')
  num: number = 0
  @State
  @Watch('updateMessage')
  message: string = 'Hello World'
  updateMessage() {
    promptAction.showToast({ message: this.message })
  }
  updateNumber() {
    promptAction.showToast({ message: '子组件变化了' })
  }

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('更新')
          .onClick(() => {
            this.message += Math.random().toFixed(2);
          })
        WatchChild({ message: this.message, num: $num })
      }
      .width('100%')
    }
    .height('100%')
  }
}