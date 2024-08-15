# Continue from August 15
base_date="2024-08-15T10:00:00"
i=0

commit_and_add() {
  git add "$1"
  commit_msg="$2"
  commit_date=$(date -v+${i}d -jf "%Y-%m-%dT%H:%M:%S" "$base_date" +"%a %b %d %H:%M:%S %Y")
  GIT_AUTHOR_DATE="$commit_date" GIT_COMMITTER_DATE="$commit_date" git commit -m "$commit_msg"
}

# 📦 Commit 1 – Aug 15: Project scaffolding and setup
commit_and_add .gitignore ".gitignore for Python, dbt, system files"
commit_and_add Makefile "Add Makefile for project automation"
commit_and_add setup.sh "Shell script to automate setup"
commit_and_add tf.Makefile "Terraform-specific Makefile"
commit_and_add committer.sh "Add committer script for reproducible Git history"
i=$((i+1))

# 📁 Commit 2 – Aug 16: Seeds, snapshots, tests, and keys (placeholder structure)
commit_and_add dags/dbt/ca_trademarks_dp/seeds/ "Add seed files directory"
commit_and_add dags/dbt/ca_trademarks_dp/snapshots/ "Add snapshot folder for future snapshot tests"
commit_and_add dags/dbt/ca_trademarks_dp/tests/ "Add tests folder for dbt model testing"
commit_and_add keys/ ".keys folder placeholder for GCP auth"
i=$((i+1))

# 🎯 Commit 3 – Aug 18: Remaining dbt files and DAG visuals
commit_and_add dags/dbt/ca_trademarks_dp/models/intermediate/_intermediate.yml "Add intermediate model metadata"
commit_and_add dags/dbt/ca_trademarks_dp/models/intermediate/int_filings_grouped_and_aggregated.sql "Add grouped filings model"
commit_and_add dags/dbt/ca_trademarks_dp/models/intermediate/int_registrations_grouped_and_aggregated.sql "Add grouped registrations model"
commit_and_add dags/dbt/ca_trademarks_dp/models/marts/_marts.yml "Add marts metadata"
commit_and_add dags/dbt/ca_trademarks_dp/models/marts/filings_categories.sql "Mart: filing category stats"
commit_and_add dags/dbt/ca_trademarks_dp/models/marts/plaintiffs.sql "Mart: opposing party summary"
commit_and_add dags/dbt/ca_trademarks_dp/models/marts/trademark_owners.sql "Mart: top registrants"
commit_and_add dags/dbt/ca_trademarks_dp/models/staging/cipo/_cipo_sources.yml "CIPO staging metadata"
commit_and_add dags/dbt/ca_trademarks_dp/models/staging/cipo/stg_cipo__cipo_classifications.sql "Staging: trademark class mapping"
commit_and_add dags/dbt/ca_trademarks_dp/models/staging/cipo/stg_cipo__oppositions.sql "Staging: opposition case data"
commit_and_add dags/dbt/ca_trademarks_dp/models/staging/cipo/base/ "Add base staging models for CIPO tables"
commit_and_add dags/dbt/ca_trademarks_dp/macros/ "Add project macros (year, name cleaner)"
commit_and_add dags/dbt/ca_trademarks_dp/analyses/ "Add analyses folder for future extensions"
commit_and_add dags/dbt/ca_trademarks_dp/dbt_project.yml "Add dbt project config"
commit_and_add dags/dbt/ca_trademarks_dp/.gitignore "Ignore target, dbt artifacts"
commit_and_add dags/include/__init__.py "Make include a proper Python module"
commit_and_add assets/dag_runs.png "Add Airflow DAG run screenshot"
