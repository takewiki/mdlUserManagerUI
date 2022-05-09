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
#' roleRightUI()
roleRightUI <- function(tabTitle ='角色授权',
                      colTitles =c('操作区域','系统对象区域'),
                      widthRates =c(4,8),
                      func_left = roleRightFunc_left,
                      func_right =roleRightFunc_right) {
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
#' roleRightFunc_left()
roleRightFunc_left<- function() {

  res <- tagList(
    shinyWidgets::actionBttn(inputId = 'roleRight_getRoleName_btn',label = '获取最新角色'),
    br(),

    shiny::uiOutput(outputId = 'roleRight_roleName_ph'),
    hr(),

    tsui::mdl_ListChoose1(id = 'roleRight_type_lc1',label = '授权方式',choiceNames = list('按系统','按功能'),choiceValues = list('system','module'),selected = 'system'),
    br(),

    shinyWidgets::actionBttn(inputId = 'roleRight_getObject_btn',label = '获取最新对象列表'),
    hr(),


    tsui::mdl_ListChoose1(id = 'roleRight_show_lc1',label = '授权内容',choiceNames = list('有权','无权'),choiceValues = list(1,0),selected = 1),
    br(),

    shinyWidgets::actionBttn(inputId = 'roleRight_done_btn',label = '授权'),
    hr()







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
#' roleRightFunc_right()
roleRightFunc_right<- function() {

  res <- tagList(

    tsui::uiScrollX(DT::dataTableOutput(outputId = 'roleRight_object_dt'))
  )
  return(res)

}
