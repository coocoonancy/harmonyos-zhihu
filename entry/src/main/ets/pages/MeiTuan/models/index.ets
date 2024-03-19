export interface FoodItem {
  id: number
  name: string
  like_ratio_desc: string
  food_tag_list: string[]
  price: number
  picture: string
  description: string
  tag: string
  month_saled: number
  count: number
}

export interface  Category {
  tag: string
  name: string
  foods: FoodItem[]
}
export class FoodItemModel implements FoodItem {
  id: number = 0
  name: string = ''
  like_ratio_desc: string = ''
  food_tag_list: string[] = []
  price: number = 0
  picture: string = ''
  description: string = ''
  tag: string = ''
  month_saled: number = 0
  count: number = 0

  constructor(model: FoodItem) {
    this.id = model.id
    this.name = model.name
    this.like_ratio_desc = model.like_ratio_desc
    this.food_tag_list = model.food_tag_list
    this.price = model.price
    this.picture = model.picture
    this.description = model.description
    this.tag = model.tag
    this.month_saled = model.month_saled
    this.count = model.count
  }
}
export class CategoryModel implements Category {
  tag: string = ''
  name: string = ''
  foods: FoodItem[] = []

  constructor(model: Category) {
    this.tag = model.tag
    this.name = model.name
    this.foods = model.foods
  }
}
