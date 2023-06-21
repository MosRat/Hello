import router from '@ohos.router'
@Entry
@Component
struct Spage {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick(()=>{

            router.back()


          })

      }
      .width('100%')
    }
    .height('100%')
  }
}