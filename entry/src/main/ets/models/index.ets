interface CarLocal {
  brand: string
  color: Color
  price: number
}

export class CarLocalModel implements CarLocal {
  brand: string = ''
  color: Color = Color.White
  price: number = 0

  constructor(model: CarLocal) {
    this.brand = model.brand
    this.color = model.color
    this.price = model.price
  }
}
