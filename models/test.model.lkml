connection: "dbavanzo_azure"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_default_datagroup

explore: data_agentes {}

explore: data_autogestion {}

explore: data_campanas {}

explore: data_chats {}

explore: data_chats_hora {}

explore: data_chats_respondidos {}

explore: data_duracion_llamadas {}

explore: data_email {}

explore: data_encuesta_satisfaccion {}

explore: data_llamadas {}

explore: data_llamada_hora {}

explore: data_motivos_chats {}

explore: data_motivos_llamadas {}

explore: data_segmentos_contestados {}

explore: data_tratos {}

explore: datos_clientes {}

explore: datos_solicitudes {}

explore: datos_usuarios {}

explore: historico_administracion_mensual {}

explore: historico_credito_mensual {}

explore: historico_desembolso_mensual {}

explore: historico_estado_cliente {}

explore: historico_solicitud_mensual {}

