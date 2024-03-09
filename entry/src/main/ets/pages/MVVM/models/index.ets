interface selectedPhotos {
  goods_img: ResourceStr
  id: string
}

interface FoodItem {
  food_name: string
  food_price: number
  food_id: number
  food_count: number
}
export class selectedPhotosModel implements selectedPhotos {
  goods_img: ResourceStr = ''
  id: string = ''

  constructor(model: selectedPhotos) {
    this.goods_img = model.goods_img
    this.id = model.id
  }
}
export class FoodItemModel implements FoodItem {
  food_name: string = ''
  food_price: number = 0
  food_id: number = 0
  food_count: number = 0

  constructor(model: FoodItem) {
    this.food_name = model.food_name
    this.food_price = model.food_price
    this.food_id = model.food_id
    this.food_count = model.food_count
  }
}
