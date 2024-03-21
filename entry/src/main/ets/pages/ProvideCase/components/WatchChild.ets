import promptAction from '@ohos.promptAction'

@Component
struct WatchChild {
  @Link
  num: number
  @Prop
  @Watch('updateChild')
  message: string

  updateChild() {
    promptAction.showToast({ message: '子组件监听:' + this.message })
  }

  build() {
    Column() {
      Text('子组件监听:' + this.message)
        .onClick(() => {
          this.num++
        })
    }
  }
}

export { WatchChild }