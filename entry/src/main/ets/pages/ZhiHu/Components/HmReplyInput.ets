@Component
struct HmReplyInput {
  @State content: string = ''
  publishComment: (content: string) => void = () => {
  }

  build() {
    Row({ space: 16 }) {
      TextInput({ text: this.content, placeholder: '请输入' })
        .layoutWeight(1)
        .height(40)
        .onChange(value => {
          this.content = value;
        })
      Button('发布')
        .onClick(() => {
          if (this.content) {
            this.publishComment(this.content)
            this.content = ''
          }
        })
    }
    .width('100%')
    .padding(16)
    .height(80)
  }
}

export { HmReplyInput }