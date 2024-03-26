import { CarLocalModel } from '../../models'

const carLocal = LocalStorage.GetShared()

@Entry(carLocal)
@Component
struct CarLocalStorageB {
  @LocalStorageProp('car')
  myCar: CarLocalModel = new CarLocalModel({ brand: '', color: Color.White, price: 0 })
  @LocalStorageLink('car')
  yourCar: CarLocalModel = new CarLocalModel({ brand: '', color: Color.White, price: 0 })

  build() {
    Row() {
      Column() {
        Text(this.myCar.brand)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.myCar.price.toString())
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor(this.myCar.color)
      }
      .width('100%')

      Column() {
        Text(this.yourCar.brand)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.yourCar.price.toString())
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor(this.yourCar.color)
          .onClick(() => {
            this.yourCar.color = Color.Black
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}