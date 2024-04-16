view: data_chats {
  sql_table_name: dbavanzo.data_chats ;;

  dimension: abandon_ {
    type: string
    sql: ${TABLE}.`ABANDON %` ;;
  }
  dimension: abandon_calls {
    type: number
    sql: ${TABLE}.`ABANDON CALLS` ;;
  }
  dimension: answer_calls {
    type: number
    sql: ${TABLE}.`ANSWER CALLS` ;;
  }
  dimension: asa {
    type: string
    sql: ${TABLE}.ASA ;;
  }
  dimension: ata {
    type: string
    sql: ${TABLE}.ATA ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year, day_of_week, day_of_month]
    sql: ${TABLE}.createdAt ;;
  }

  parameter: filtro_fecha_created {
    type: unquoted
    allowed_value: {
      label: "Semana"
      value: "week"
    }
    allowed_value: {
      label: "Año"
      value: "year"
    }
    allowed_value: {
      label: "Dia de la semana"
      value: "day_of_week"
    }
    allowed_value: {
      label: "Dia del mes"
      value: "day_of_month"
    }
    allowed_value: {
      label: "Month"
      value: "month"
    }
    allowed_value: {
      label: "Quarter"
      value: "quarter"
    }
    allowed_value: {
      label: "Date"
      value: "date"
    }
  }
  dimension: fecha_creacion {
    sql: {% if filtro_fecha_created._parameter_value == 'week' %}
       ${created_week}
       {% elsif filtro_fecha_created._parameter_value == 'year' %}
      ${created_year}
         {% elsif filtro_fecha_created._parameter_value == 'day_of_week' %}
      ${created_day_of_week}
       {% elsif filtro_fecha_created._parameter_value == 'day_of_month' %}
      ${created_day_of_month}
      {% elsif filtro_fecha_created._parameter_value == 'month' %}
      ${created_month}
      {% elsif filtro_fecha_created._parameter_value == 'quarter' %}
      ${created_quarter}
      {% elsif filtro_fecha_created._parameter_value == 'date' %}
      ${created_date}
      {% else %}
      ${created_date}
      {% endif %} ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}.DAY ;;
  }
  dimension: id_chat {
    type: number
    sql: ${TABLE}.idChat ;;
  }
  dimension: inbound_calls {
    type: number
    sql: ${TABLE}.`INBOUND CALLS` ;;
  }
  dimension: queue {
    type: string
    sql: ${TABLE}.QUEUE ;;
  }
  dimension: service_level_10_seg {
    type: string
    sql: ${TABLE}.`SERVICE LEVEL 10SEG` ;;
  }
  dimension: service_level_20_seg {
    type: string
    sql: ${TABLE}.`SERVICE LEVEL 20SEG` ;;

  }
  dimension: service_level_30_seg {
    type: string
    sql: ${TABLE}.`SERVICE LEVEL 30SEG` ;;
  }
  measure: total {
    type: sum
    sql: ${answer_calls} ;;
  }

# Intervalo variable answer_calls

  dimension: llamadas {
    type: tier
    tiers: [0, 50, 100, 150, 200, 250, 263]
    style: integer
    sql: ${answer_calls} ;;

  drill_fields: [service_level_30_seg,service_level_20_seg]
  }





}
