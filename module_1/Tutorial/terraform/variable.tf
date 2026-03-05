variable "credentials" {
  description = "My Credentials"
  default     = "./dtc-de-course-489210-1f9b2b6d4f4d.json"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  #Update the below to what you want your dataset to be called
  default = "demo_dataset"
}

variable "region" {
  description = "project Region"
  default     = "asia-southeast3"
}

variable "project" {
  description = "Project"
  default     = "dtc-de-course-489210"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "dtc-de-course-489210-terra-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}

variable "location" {
  description = "Project Location"
  default     = "ASIA-SOUTHEAST3"
}