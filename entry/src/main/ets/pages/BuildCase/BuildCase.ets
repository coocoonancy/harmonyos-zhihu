@Entry
@Component
struct BuildCase {
  @State stringList: string[] = ['A', 'B', 'C', 'D']

  @Builder
  getTextBuilder(index: number) {
    Text(index.toString())
  }

  @Builder
  getItemBuilder(itemName: string, index: number) {
    Row() {
      Text(`${itemName}. 选项`)
      this.getTextBuilder(index)
    }
    .height(60)
    .backgroundColor("#ffe0dede")
    .borderRadius(8)
    .width("100%")
    .padding({
      left: 20,
      right: 20
    })
  }

  build() {
    Column({ space: 20 }) {
      ForEach(this.stringList, (item: string, index: number) => {
        this.getItemBuilder(item, index)
      })
    }.padding(20)

  }
}