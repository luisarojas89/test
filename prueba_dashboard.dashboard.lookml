---
- dashboard: prueba_dashboard
  title: Prueba dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: KfGC2sGsfbNyHSH9sRcZ2o
  elements:
  - title: Chats respondidos
    name: Chats respondidos
    model: test
    explore: data_chats
    type: looker_line
    fields: [data_chats.total, data_chats.created_date]
    fill_fields: [data_chats.created_date]
    sorts: [data_chats.created_date desc]
    limit: 50
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: 379b5556-6efb-1765-a487-23fb7ceabb6d
        label: Custom
        type: continuous
        stops:
        - color: "#fa2d57"
          offset: 0
        - color: "#ffffff"
          offset: 50
        - color: "#7CB342"
          offset: 100
      options:
        steps: 5
    x_axis_label: Fecha
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    font_size: '10'
    series_colors: {}
    label_color: ["#918a8a"]
    swap_axes: false
    discontinuous_nulls: false
    defaults_version: 1
    listen:
      Filtro Fecha Created: data_chats.filtro_fecha_created
    row: 5
    col: 0
    width: 12
    height: 8
  - title: intervalos
    name: intervalos
    model: test
    explore: data_chats
    type: looker_column
    fields: [data_chats.llamadas, data_chats.total]
    filters:
      data_chats.total: NOT NULL
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Filtro Fecha Created: data_chats.filtro_fecha_created
    row: 5
    col: 12
    width: 12
    height: 8
  - title: parametro_fecha
    name: parametro_fecha
    model: test
    explore: data_chats
    type: looker_line
    fields: [data_chats.fecha_creacion, data_chats.total]
    filters: {}
    sorts: [data_chats.fecha_creacion]
    limit: 50
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Filtro Fecha Created: data_chats.filtro_fecha_created
    row: 13
    col: 8
    width: 8
    height: 6
  - type: button
    name: button_4
    rich_content_json: '{"text":"Atributo","description":"atributo","newTab":true,"alignment":"left","size":"medium","style":"FILLED","color":"#FF8168","href":"https://avanzo.cloud.looker.com/looks/1"}'
    row: 4
    col: 0
    width: 24
    height: 1
  - name: Dashboard de pruebas
    type: text
    title_text: Dashboard de pruebas
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 9
    width: 6
    height: 4
  - title: New Tile
    name: New Tile
    model: test
    explore: datos_solicitudes
    type: looker_column
    fields: [datos_solicitudes.social_reason, datos_solicitudes.producto, datos_solicitudes.count]
    pivots: [datos_solicitudes.producto]
    filters:
      total: NOT NULL
    sorts: [datos_solicitudes.producto, datos_solicitudes.social_reason]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: concat(${datos_solicitudes.producto},${datos_solicitudes.social_reason})
      label: producto_empresa
      value_format:
      value_format_name:
      dimension: producto_empresa
      _kind_hint: measure
      _type_hint: string
    - category: measure
      expression:
      label: total
      value_format:
      value_format_name:
      based_on: datos_solicitudes.quantity
      _kind_hint: measure
      measure: total
      type: sum
      _type_hint: number
    - category: table_calculation
      label: "%total"
      value_format:
      value_format_name: percent_0
      calculation_type: percent_of_row
      table_calculation: total_1
      args:
      - total
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    - args:
      - datos_solicitudes.count
      calculation_type: percent_of_column_sum
      category: table_calculation
      based_on: datos_solicitudes.count
      label: Percent of Datos Solicitudes Count
      source_field: datos_solicitudes.count
      table_calculation: percent_of_datos_solicitudes_count
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: "*00#"
    series_types:
      Avanzo Express - datos_solicitudes.count: line
      Avanzo Plus - datos_solicitudes.count: area
    hidden_pivots: {}
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      PP: datos_solicitudes.producto
    row: 13
    col: 0
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (2)
    model: test
    explore: datos_clientes
    type: looker_column
    fields: [datos_clientes.count, datos_clientes.dtc_fecha_registro_date]
    fill_fields: [datos_clientes.dtc_fecha_registro_date]
    sorts: [datos_clientes.dtc_fecha_registro_date desc]
    limit: 50
    column_limit: 50
    analysis_config:
      forecasting:
      - confidence_interval: 0.95
        field_name: datos_clientes.count
        forecast_n: 5
        forecast_interval: day
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 13
    col: 16
    width: 8
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Hola "},{"type":"a","url":"https://cloud.google.com/looker/docs/reference/param-field-value-format?version=24.4&lookml=new","children":[{"text":"avanzo.co"}],"id":"5n1rs"},{"text":""}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 19
    col: 0
    width: 8
    height: 6
  - name: Información
    type: text
    title_text: Información
    subtitle_text: ''
    body_text: <i class="fa fa-tags fa-lg"></i>   Información
    row: 19
    col: 16
    width: 8
    height: 6
  - name: Alertas
    type: text
    title_text: Alertas
    subtitle_text: "-"
    body_text: <span><img src="" height="75"> <span class='fa fa-bell'> ALERTS</span>
    row: 19
    col: 8
    width: 8
    height: 6
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Hola "},{"type":"a","url":"https://cloud.google.com/looker/docs/reference/param-field-value-format?version=24.4&lookml=new","children":[{"text":"avanzo.co"}],"id":"5n1rs"},{"text":""}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 19
    col: 0
    width: 8
    height: 6
  - name: Alertas (2)
    type: text
    title_text: Alertas
    subtitle_text: "-"
    body_text: <span><img src="" height="75"> <span class='fa fa-bell'> ALERTS</span>
    row: 19
    col: 8
    width: 8
    height: 6
  - name: Información (2)
    type: text
    title_text: Información
    subtitle_text: ''
    body_text: <i class="fa fa-tags fa-lg"></i>   Información
    row: 19
    col: 16
    width: 8
    height: 6
  - name: Alertas (3)
    type: text
    title_text: Alertas
    subtitle_text: "-"
    body_text: <span><img src="" height="75"> <span class='fa fa-bell'> ALERTS</span>
    row: 19
    col: 8
    width: 8
    height: 6
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Hola "},{"type":"a","url":"https://cloud.google.com/looker/docs/reference/param-field-value-format?version=24.4&lookml=new","children":[{"text":"avanzo.co"}],"id":"5n1rs"},{"text":""}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 19
    col: 0
    width: 8
    height: 6
  - name: Información (3)
    type: text
    title_text: Información
    subtitle_text: ''
    body_text: <i class="fa fa-tags fa-lg"></i>   Información
    row: 19
    col: 16
    width: 8
    height: 6
  filters:
  - name: Filtro Fecha Created
    title: Filtro Fecha Created
    type: field_filter
    default_value: year
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - year
      - month
      - day_of_month
    model: test
    explore: data_chats
    listens_to_filters: []
    field: data_chats.filtro_fecha_created
  - name: Producto
    title: Producto
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: inline
    model: test
    explore: datos_solicitudes
    listens_to_filters: []
    field: datos_solicitudes.producto
  - name: PP
    title: PP
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: inline
    model: test
    explore: datos_solicitudes
    listens_to_filters: []
    field: datos_solicitudes.producto
