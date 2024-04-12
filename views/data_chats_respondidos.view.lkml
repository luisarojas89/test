view: data_chats_respondidos {
  sql_table_name: dbavanzo.data_chats_respondidos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: agente_id {
    type: number
    sql: ${TABLE}.AGENTE_ID ;;
  }
  dimension: ani {
    type: string
    sql: ${TABLE}.ANI ;;
  }
  dimension: answer_time {
    type: number
    sql: ${TABLE}.ANSWER_TIME ;;
  }
  dimension: conn_id {
    type: string
    sql: ${TABLE}.CONN_ID ;;
  }
  dimension: fecha {
    type: string
    sql: ${TABLE}.FECHA ;;
  }
  dimension: medio {
    type: string
    sql: ${TABLE}.MEDIO ;;
  }
  dimension: result {
    type: string
    sql: ${TABLE}.RESULT ;;
  }
  dimension: skill_id {
    type: number
    sql: ${TABLE}.SKILL_ID ;;
  }
  dimension: skill_name {
    type: string
    sql: ${TABLE}.SKILL_NAME ;;
  }
  measure: count {
    type: count
    drill_fields: [id, skill_name]
  }
}
