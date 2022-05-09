
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
#' userRoleSettingUI()
userRoleSettingUI <- function(tabTitle ='分配角色',
                      colTitles =c('操作区域','报表区域'),
                      widthRates =c(4,8),
                      func_left = userRoleSettingFunc_left,
                      func_right =userRoleSettingFunc_right) {
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
#' userRoleSettingFunc_left()
userRoleSettingFunc_left<- function() {

  res <- tagList(
    shinyWidgets::actionBttn(inputId = 'userRoleSetting_getUserName_btn',label = '获取最新用户'),
    br(),
    hr(),
    shiny::uiOutput(outputId = 'userRoleSetting_userName_ph'),
    shiny::uiOutput(outputId = 'userRoleSetting_roleName_ph'),
    br(),
    hr(),
    shinyWidgets::actionBttn(inputId = 'userRoleSetting_save_btn',label = '分配')


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
#' userRoleSettingFunc_right()
userRoleSettingFunc_right<- function() {

  res <- tagList(

    uiScrollX(mdl_dataTable(id = 'userRoleSetting_query_dataview',label = '角色列表'))
  )
  return(res)

}
