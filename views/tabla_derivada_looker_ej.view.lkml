view: tabla_derivada_looker_ej {

    derived_table: {
      explore_source: data_agentes {
        column: agent_name {}
        column: calls {}
        column: hour {}
        column: inbound {}
      }
    }
    dimension: agent_name {
      description: ""
    }
    dimension: calls {
      description: ""
      type: number
    }
    dimension: hour {
      description: ""
    }
    dimension: inbound {
      description: ""
      type: number
    }
  }
