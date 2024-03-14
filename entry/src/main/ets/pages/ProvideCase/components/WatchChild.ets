import promptAction from '@ohos.promptAction'

@Component
struct WatchChild {
  @Prop
  message: string
  @Watch('updateMessage')
  updateMessage() {
    promptAction.showToast({ message: '子组件监听:' + this.message })
  }

  build() {
    Column() {
      Text('子组件监听:' + this.message)
    }
  }
}

export { WatchChild }