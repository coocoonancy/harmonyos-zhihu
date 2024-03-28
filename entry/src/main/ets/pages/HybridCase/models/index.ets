export interface VideoItem {
  imgUrl: ResourceStr
  videoUrl: string
  title: string
}
export class VideoItemModel implements VideoItem {
  imgUrl: ResourceStr = ''
  videoUrl: string = ''
  title: string = ''

  constructor(model: VideoItem) {
    this.imgUrl = model.imgUrl
    this.videoUrl = model.videoUrl
    this.title = model.title
  }
}
