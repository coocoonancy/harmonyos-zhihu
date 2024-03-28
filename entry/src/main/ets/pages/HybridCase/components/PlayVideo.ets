import { VideoItemModel } from '../models'

@Component
struct PlayVideo {
  controller: VideoController = new VideoController()
  item: Partial<VideoItemModel> = {}
  index: number = -1
  @Prop
  currentIndex: number
  @State
  isPlaying: boolean = false

  build() {
    Stack({ alignContent: Alignment.Bottom }) {
      Stack() {
        if (this.index === this.currentIndex) {
          Video({
            src: this.item.videoUrl,
            controller: this.controller
          })
            .width('100%')
            .aspectRatio(1.4)
            .controls(false)
            .onPrepared(() => {
              this.isPlaying = true
              this.controller.start()
            })
            .objectFit(ImageFit.Contain)
            .onClick(() => {
              this.isPlaying = false
              this.controller.pause()
            })
        }
        Image(this.item.imgUrl)
          .width(this.index === this.currentIndex ? 0 : '100%')
          .aspectRatio(1.4)
          .animation({
            duration: 300
          })

        if (!this.isPlaying) {
          Row() {
            Image($r('app.media.ic_gallery_discover_filled'))
              .width(100)
              .height(100)
              .fillColor("#9d9393")
          }.width('100%')
          .justifyContent(FlexAlign.Center)
          .onClick(() => {
            this.controller.start()
            this.isPlaying = true
          })

        }
      }
      .backgroundColor(Color.Black)
      .height('100%')
      .width('100%')

      Text(this.item.title)
        .fontColor(Color.White)
        .width('100%')
        .padding(20)
        .fontSize(20)
        .height(150)
        .lineHeight(28)
        .fontWeight(FontWeight.Bold)
        .textOverflow({
          overflow: TextOverflow.Ellipsis
        })

    }
    .height('100%')
  }
}

export { PlayVideo }