export interface tabItem {
  name: string
  icon: ResourceStr
  selectIcon: ResourceStr
  title: string,
  isSelected: boolean | null
}
export class tabItemModel implements tabItem {
  name: string = ''
  icon: ResourceStr = ''
  selectIcon: ResourceStr = ''
  title: string = ''
  isSelected: boolean | null = null

  constructor(model: tabItem) {
    this.name = model.name
    this.icon = model.icon
    this.selectIcon = model.selectIcon
    this.title = model.title
    this.isSelected = model.isSelected
  }
}
