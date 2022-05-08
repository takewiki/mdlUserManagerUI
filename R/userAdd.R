#' 用户新增UI
#'
#' @param tabTitle 标签名称
#' @param colTitles 列名
#' @param widthRates 比例
#' @param func_left 函数
#' @param func_right 函数
#'
#' @return 返回值
#' @export
#'
#' @examples
#' userAddUI()
userAddUI <- function(tabTitle ='创建用户',
                          colTitles =c('操作区域','报表区域'),
                          widthRates =c(4,8),
                          func_left = userAddFunc_left,
                          func_right =userAddFunc_right) {
  res = uiGen(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right )
  return(res)
}

#' 用户新增操作区
#'
#' @return 返回值
#' @import shiny
#' @import tsui
#'
#' @examples
#' userAddFunc_left()
userAddFunc_left<- function() {

  res <- tagList(
       tsui::mdl_text2(id = 'userAdd_userName_txt',label = '请输入用户名:',value = ''),
       tsui::mdl_text2(id = 'userAdd_EmpName_txt',label = '请输入真实姓名:',value = ''),
       shinyWidgets::actionBttn(inputId = 'userAdd_upload_btn',label = '新增')


  )
  return(res)

}






#' 请输入文件
#'
#' @return 返回值
#' @import tsui
#' @import shiny
#'
#' @examples
#' userAddFunc_right()
userAddFunc_right<- function() {

  res <- tagList(

    uiScrollX(mdl_dataTable(id = 'userAdd_query_dataview',label = '用户列表'))
  )
  return(res)

}



