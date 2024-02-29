import { JobResume } from './models'

@Entry
@Component
struct ForEachCase {
  @State list: JobResume[] = [
    {
      company: '华为',
      date: '2013-09-16',
      task: 'web',
      pay: 10000,
      position: 'FE'
    },
    {
      company: '华为',
      date: '2013-09-16',
      task: 'web',
      pay: 10000,
      position: 'FE'
    },
    {
      company: '华为',
      date: '2013-09-16',
      task: 'web',
      pay: 10000,
      position: 'FE'
    }
  ]

  build() {
    List() {
      ForEach(this.list, (item: JobResume) => {
        ListItem() {
          Column() {
            Row() {
              Text('company')
              Text(item.company)
            }
            .justifyContent(FlexAlign.SpaceBetween)
            .height(40)
            .width('100%')

            Row() {
              Text('date')
              Text(item.date)
            }.justifyContent(FlexAlign.SpaceBetween)
            .height(40)
            .width('100%')

            Row() {
              Text('task')
              Text(item.task)
            }.justifyContent(FlexAlign.SpaceBetween)
            .height(40)
            .width('100%')

            Row() {
              Text('pay')
              Text(item.pay.toString())
            }.justifyContent(FlexAlign.SpaceBetween)
            .height(40)
            .width('100%')

            Row() {
              Text('position')
              Text(item.position)
            }.justifyContent(FlexAlign.SpaceBetween)
            .height(40)
            .width('100%')
          }
          .padding({ left: 16, right: 16 })

        }

      })

    }
  }
}