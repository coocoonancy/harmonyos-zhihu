import worker from '@ohos.worker'
import { MessageEvents } from '@ohos.worker'

@Entry
@Component
struct WorkCase {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('线程Worker').onClick(() => {
          // const w = new worker.ThreadWorker('entry/ets/workers')
          // w.postMessage('打开worder')
          // w.onmessage = (e: MessageEvents) => {
          //   AlertDialog.show({ message: e.data })
          //   w.terminate() // 自毁
          // }

        }

        )
      }
      .width('100%')
    }

    .height('100%')
  }
}