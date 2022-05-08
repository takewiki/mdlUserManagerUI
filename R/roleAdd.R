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
#' roleAddUI()
roleAddUI <- function(tabTitle ='创建角色',
                          colTitles =c('操作区域','报表区域'),
                          widthRates =c(4,8),
                          func_left = roleAddFunc_left,
                          func_right =roleAddFunc_right) {
  res = uiGen(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right )
  return(res)
}

#' 角色新增操作区
#'
#' @return 返回值
#' @import shiny
#' @import tsui
#'
#' @examples
#' roleAddFunc_left()
roleAddFunc_left<- function() {

  res <- tagList(
       tsui::mdl_text2(id = 'roleAdd_roleName_txt',label = '请输入角色名称:',value = ''),
       tsui::mdl_text2(id = 'roleAdd_note_txt',label = '请输入角色备注:',value = ''),
       shinyWidgets::actionBttn(inputId = 'roleAdd_upload_btn',label = '新增')


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
#' roleAddFunc_right()
roleAddFunc_right<- function() {

  res <- tagList(

    uiScrollX(mdl_dataTable(id = 'roleAdd_query_dataview',label = '角色列表'))
  )
  return(res)

}



