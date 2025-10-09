# NKTg Law SDK – SQL Implementation

This SQL-based implementation models variable mass motion using the NKTg Law. It defines a table structure and queries to compute momentum, NKTg₁, and NKTg₂.

## 📁 Structure

clients/sql/ 
├── schema.sql # Table definition 
├── insert_sample.sql # Sample data 
├── queries.sql # Core NKTg queries 
├── test_queries.sql # Unit test queries 
└── README.md # Documentation


## 🚀 Usage

```
sqlite3 nktg.db < schema.sql
sqlite3 nktg.db < insert_sample.sql
sqlite3 nktg.db < queries.sql

🧪 Run Tests

sqlite3 nktg.db < test_queries.sql

📊 Benchmark

sqlite3 nktg.db < ../../benchmarks/benchmark.sql

📄 License
NKTgLaw is available under a dual licensing model:

1. GPL-3.0 License (Open Source)
You can use, modify, and redistribute NKTgLaw under the terms of the GPL-3.0 License.

2. Commercial License (Proprietary)
For commercial use without the GPL obligations, a commercial license is required. See LICENSE-commercial.txt for terms and conditions. Contact Nguyễn Khánh Tùng at traiphieu.com@gmail.com for licensing and support.

Note: Each user must choose either the GPL license or the Commercial license. Combining both is not permitted for the same use case.
