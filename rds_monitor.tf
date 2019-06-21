module "rds-cpu-utilization" {
  source       = "modules/datadog-monitors"
  name         = "RDS CPU Utilization High"
  query        = "avg(last_1h):avg:aws.rds.cpuutilization{environment:${var.env_name}} by {dbinstanceidentifier} > 90"
  notify_prod  = ["${var.dba-pagerduty}"]
  critical     = "90"
  env_name     = "${var.env_name}"
}

module "rds-disk-usage" {
  source       = "modules/datadog-monitors"
  name         = "RDS Disk Usage High"
  query        = "avg(last_5m):( avg:aws.rds.total_storage_space{environment:${var.env_name}} by {dbinstanceidentifier} - avg:aws.rds.free_storage_space{environment:${var.env_name}} by {dbinstanceidentifier} ) / avg:aws.rds.total_storage_space{environment:${var.env_name}} by {dbinstanceidentifier} > 0.85"
  notify_prod  = ["${var.dba-pagerduty}"]
  critical     = "0.85"
  env_name     = "${var.env_name}"
}

module "rds-wal-files-disk-usage" {
  source       = "modules/datadog-monitors"
  name         = "RDS WAL Disk Usage High"
  query        = "avg(last_5m):avg:aws.rds.transaction_logs_disk_usage{environment:${var.env_name}} by {dbinstanceidentifier} / avg:aws.rds.total_storage_space{environment:${var.env_name}} by {dbinstanceidentifier} > 0.20"
  notify_prod  = ["${var.dba-pagerduty}"]
  critical     = "0.20"
  env_name     = "${var.env_name}"
}

module "rds-replication-slots-disk-usage" {
  source       = "modules/datadog-monitors"
  name         = "RDS Replication Slots Disk Usage High"
  query        = "avg(last_5m):avg:aws.rds.replication_slot_disk_usage{environment:${var.env_name}} by {dbinstanceidentifier} / avg:aws.rds.total_storage_space{environment:${var.env_name}} by {dbinstanceidentifier} > 0.15"
  notify_prod  = ["${var.dba-pagerduty}"]
  critical     = "0.15"
  env_name     = "${var.env_name}"
}

module "rds-replication-slots-lag" {
  source       = "modules/datadog-monitors"
  name         = "RDS Replication Slots Lag High"
  query        = "avg(last_15m):avg:aws.rds.oldest_replication_slot_lag{environment:${var.env_name}} by {dbinstanceidentifier}  > 21474836480"
  notify_prod  = ["${var.dba-pagerduty}"]
  critical     = "21474836480"
  env_name     = "${var.env_name}"
}

module "rds-maximum-used-xid" {
  source       = "modules/datadog-monitors"
  name         = "RDS Maximum Used XID High"
  query        = "avg(last_1h):avg:aws.rds.maximum_used_transaction_ids{environment:${var.env_name}} by {dbinstanceidentifier}  > 1000000000"
  notify_prod  = ["${var.dba-pagerduty}"]
  critical     = "1000000000"
  env_name     = "${var.env_name}"
}

module "rds-replication-lag" {
  source       = "modules/datadog-monitors"
  name         = "RDS Replication Lag High"
  query        = "avg(last_15m):avg:aws.rds.replica_lag{environment:${var.env_name}} by {dbinstanceidentifier}  > 3600"
  notify_prod  = ["${var.dba-pagerduty}"]
  critical     = "3600"
  env_name     = "${var.env_name}"
}
