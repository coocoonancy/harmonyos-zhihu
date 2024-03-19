import taskpool from '@ohos.taskpool'

@Entry
@Component
struct TaskCase {
  @State message: string = 'Hello World'

  async beginTask() {
    taskpool.execute(task1)
    taskpool.execute(task2)
  }

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('线程')
          .onClick(() => {
            this.beginTask()
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}

@Concurrent
function task1() {
  for (let i = 0; i < 10; i++) {
    console.log('任务1', i)
  }
}

@Concurrent
function task2() {
  for (let i = 10; i > 0; i--) {
    console.log('任务2', i)
  }
}