import { GoodsItem } from '../../LazyCase/models'
import { selectedPhotosModel } from '../models'

@Component
struct PhotoAlbum {
  @Prop maxCounts: number = 0
  @Prop goods: GoodsItem[] = []
  @State selectedPhotos: selectedPhotosModel[] = []
  toggleShow: () => void = () => {
  }

  selectImage(item) {
    const index = this.selectedPhotos.findIndex(e => e.id === item.id)
    if (index > -1) {
      this.selectedPhotos.splice(index, 1)
    } else {
      this.selectedPhotos.push({ goods_img: item.goods_img, id: item.id })
    }
  }

  getSelected(item) {
    return this.selectedPhotos.some(e => e.id === item.id)
  }

  getEnabled(item) {
    return this.maxCounts > this.selectedPhotos.length || this.getSelected(item)
  }

  build() {
    Column() {
      Grid() {
        ForEach(this.goods, (item: GoodsItem) => {
          GridItem() {
            Stack({ alignContent: Alignment.TopEnd }) {
              Image(item.goods_img)
                .aspectRatio(1)

              if (this.getSelected(item)) {
                Text('☑️')
                  .fontSize(32)
                  .fontColor(Color.Green)
                  .zIndex(2)
                  .margin({ right: 8 })
              }
            }
            .onClick(() => {
              this.selectImage(item)
            })
            .enabled(this.getEnabled(item))
          }
        })
      }
      .width('100%')
      .height('100%')
      .columnsTemplate('1fr 1fr 1fr')
      .columnsGap(8)
      .rowsGap(8)
      .layoutWeight(1)

      Row() {
        Button('取消')
          .onClick(() => {
            this.toggleShow()
          })
          .backgroundColor(Color.Gray)
        Text(this.selectedPhotos.length + ' / ' + this.maxCounts)
        Button('完成')
      }
      .backgroundColor(Color.White)
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({ left: 16, right: 16 })
      .width('100%')
      .height(60)

    }
    .position({ x: 0, y: 0 })
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.SpaceBetween)
  }
}

export { PhotoAlbum }