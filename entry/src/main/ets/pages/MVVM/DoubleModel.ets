@Entry
@Component
struct DoubleModel {
  @State isChecked: boolean = false
  @State searchText: string = ''
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
      .backgroundColor(Color.Yellow)
    }
    .width('100%')
    .height('100%')
    .columnsTemplate('1fr 1fr')
    .columnsGap(16)
    .rowsGap(16)
  }
}