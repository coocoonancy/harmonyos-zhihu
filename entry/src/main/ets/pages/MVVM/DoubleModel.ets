@Entry
@Component
struct DoubleModel {
  @State isChecked: boolean = false
  @State searchText: string = ''
  @State textareaText: string = ''
  // 4.0 $$ 不支持 需要API 10.0 版本以上
  build() {
    Grid() {
      GridItem() {
        Column() {
          Checkbox()
            .select(this.isChecked)
            .onChange(value => {
              this.isChecked = value;
            })
          Text(this.isChecked ? '是' : '否')
        }
      }
      .height(200)
      .padding({ left: 16, right: 16 })
      .backgroundColor(Color.Yellow)

      GridItem() {
        Column() {
          Search({ value: this.searchText })
            .onChange(value => {
              this.searchText = value;
            })
          Text(this.searchText)
          Button('搜索')
            .onClick(() => {
              this.searchText = Date.now() + ''
            })
        }
      }
      .height(200)
      .padding({ left: 16, right: 16 })
      .backgroundColor(Color.Yellow)

      GridItem() {
        Column() {
          TextArea({ text: this.textareaText })
            .onChange(value => {
              this.textareaText = value;
            })
          Text(this.textareaText)
          Button('多行文本')
            .onClick(() => {
              this.textareaText = Date.now() + ''
            })
        }
      }
      .height(200)
      .padding({ left: 16, right: 16 })
      .backgroundColor(Color.Yellow)

      .width('100%')

    }
    .width('100%')
    .height('100%')
    .columnsTemplate('1fr 1fr')
    .columnsGap(16)
    .rowsGap(16)


  }
}