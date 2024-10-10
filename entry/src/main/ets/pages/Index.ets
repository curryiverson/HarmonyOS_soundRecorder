import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct Index {
  @State
  list: AudioItem[] = []

  build() {
    RelativeContainer() {
      Text("录音机")
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .margin({
          left: 20,
          top: 20
        })


      Row()
        .justifyContent(FlexAlign.Center)
        .width(50)
        .border({
          color: Color.Red,
          width: 18
        })
        .aspectRatio(1)
        .backgroundColor(Color.White)
        .borderRadius(25)
        .alignRules({
          middle: {
            anchor: '__container__',
            align: HorizontalAlign.Center
          },
          bottom: {
            anchor: '__container__',
            align: VerticalAlign.Bottom
          }
        })
        .margin({
          bottom: 10
        })
        .id("btn1")
        .onClick(() => {
          promptAction.showToast({ message: '开始录音' })
        })


      if (!this.list.length) {
        Image($r("sys.media.return_home_fill"))
          .width(100)
          .aspectRatio(1)
          .fillColor("#ccc")
          .alignRules({
            middle: {
              anchor: '__container__',
              align: HorizontalAlign.Center
            },
            center: {
              anchor: '__container__',
              align: VerticalAlign.Center
            }
          })
          .id("img1")
        Text("没有录音")
          .fontSize(18)
          .fontColor("#ccc")
          .alignRules({
            middle: {
              anchor: '__container__',
              align: HorizontalAlign.Center
            },
            top: {
              anchor: 'img1',
              align: VerticalAlign.Bottom
            }
          })
      }
    }
    .height('100%')
    .width('100%')
  }
}

interface AudioItem {
  url: string
  name: string
  time: number
}