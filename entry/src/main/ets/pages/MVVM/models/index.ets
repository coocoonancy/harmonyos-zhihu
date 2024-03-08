interface selectedPhotos {
  goods_img: ResourceStr
  id: string
}
export class selectedPhotosModel implements selectedPhotos {
  goods_img: ResourceStr = ''
  id: string = ''

  constructor(model: selectedPhotos) {
    this.goods_img = model.goods_img
    this.id = model.id
  }
}
