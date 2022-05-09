#' 查询角色UI
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
#' roleQueryUI()
roleQueryUI <- function(tabTitle ='查询角色',
                      colTitles =c('操作区域','报表区域'),
                      widthRates =c(4,8),
                      func_left = roleQueryFunc_left,
                      func_right =roleQueryFunc_right) {
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
#' roleQueryFunc_left()
roleQueryFunc_left<- function() {

  res <- tagList(
    tsui::mdl_text2(id = 'roleQuery_roleName_txt',label = '请输入角色名称:',value = ''),
    tsui::mdl_ListChoose1(id ='roleQuery_status_lc1',label = '禁用状态',choiceNames = list('否','是','全部'),choiceValues = list(0,1,-1),selected = 0),
    shinyWidgets::actionBttn(inputId = 'roleQuery_query_btn',label = '查询'),
    br(),
    hr(),
    shinyWidgets::actionBttn(inputId = 'roleQuery_disable_btn',label = '禁用'),
    shinyWidgets::actionBttn(inputId = 'roleQuery_enable_btn',label = '反禁用')


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
#' roleQueryFunc_right()
roleQueryFunc_right<- function() {

  res <- tagList(

    uiScrollX(mdl_dataTable(id = 'roleQuery_query_dataview',label = '角色列表'))
  )
  return(res)

}
