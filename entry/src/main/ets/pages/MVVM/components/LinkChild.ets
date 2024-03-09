@Component
struct LinkChild {
  @Link
  linkNum: number

  build() {
    Row() {
      Text('LinkChild num:')
      Text(this.linkNum.toString()).fontSize(32)
    }
    .onClick(() => {
      this.linkNum++
    })
  }
}

export { LinkChild }