resource "datadog_timeboard" "rds" {
  title       = "RDS Timeboard"
  description = "A generated timeboard for RDS"
  read_only   = true

  template_variable {
    name   = "db"
    prefix = "dbinstanceidentifier"
  }

  template_variable {
    name   = "env"
    prefix = "environment"
  }

  template_variable {
    name   = "eng"
    prefix = "engine"
  }

  graph {
    title     = "CPU Utilization"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.cpuutilization{$env,$db,$eng} by {dbinstanceidentifier}"
      type = "area"
    }
  }

  graph {
    title     = "Database Connections"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.database_connections{$env,$db,$eng} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Free Storage Space"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.free_storage_space{$env,$db,$eng} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Freeable Memory"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.freeable_memory{$env,$db,$eng} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Maximum Used Transaction Ids"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.maximum_used_transaction_ids{$env,$db,$eng} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Network Receive Throughput"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.network_receive_throughput{$env,$db,$eng} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Network Transmit Throughput"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.network_transmit_throughput{$env,$db,$eng} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Oldest Replication Slot Lag"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.oldest_replication_slot_lag{$env,$db,$eng} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Read IOPS"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.read_iops{$env,$db,$eng} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Read Latency"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.read_latency{$env,$db,$eng} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Read Throughput"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.read_throughput{$env,$db,$eng} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Replica Lag"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.replica_lag{$env,$db,$eng} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Replication Slot Disk Usage"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.replication_slot_disk_usage{$env,$db,$eng} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Swap Usage"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.swap_usage{$env,$db,$eng} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Total Storage Space"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.total_storage_space{$env,$db,$eng} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Transaction Logs Disk Usage"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.transaction_logs_disk_usage{$env,$db,$eng} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Transaction Logs Generation"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.transaction_logs_generation{$env,$db,$eng} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Write IOPS"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.write_iops{$env,$db,$eng} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Write Latency"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.write_latency{$env,$db,$eng} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Write Throughtput"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.write_throughput{$env,$db,$eng} by {hostname}"
      type = "area"
    }
  }
}
