import { testObj, testObjModel } from './models'

PersistentStorage.PersistProp('name', '张三')
// PersistentStorage.PersistProp('test', '')

@Entry
@Component
struct PersistenceCase {
  @StorageLink('name')
  username: string = '李四'
  @StorageProp('test')
  usertest: testObjModel = new testObjModel({ num: 10 })

  build() {
    Row() {
      Column() {
        TextInput({ text: this.username })
          .onChange((value) => {
            this.username = value
          })
        Text(this.username)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.usertest?.num?.toString())
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('写入磁盘')
          .onClick(() => {
            // AppStorage.SetOrCreate<testObjModel>('test', new testObjModel({ num: 100 }))
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}