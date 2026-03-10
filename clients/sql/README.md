# NKTg Law SDK – SQL Implementation

This SQL-based implementation models variable mass motion and interaction forces using the **NKTg Law of Varying Inertia**. It provides the database schema, sample data, and optimized queries for Product Logic calculations.

## 📁 Structure
```text
clients/sql/ 
├── schema.sql        # Table definition (nktg_objects)
├── insert_sample.sql # Sample data (Reference case: x=2.0, v=3.0, m=5.0)
├── queries.sql       # Core NKTg Product Logic queries
├── test_queries.sql  # Unit test queries (Validating 30.0 and 1.5)
└── README.md         # Documentation
🚀 UsageTo set up the database and view the calculated results:Bashsqlite3 nktg.db < clients/sql/schema.sql
sqlite3 nktg.db < clients/sql/insert_sample.sql
sqlite3 nktg.db < clients/sql/queries.sql
🧪 Run TestsTo verify the mathematical accuracy ($NKTg_1 = 30.0$, $NKTg_2 = 1.5$):Bashsqlite3 nktg.db < clients/sql/test_queries.sql
📊 BenchmarkFor large-scale data processing performance:Bashsqlite3 nktg.db < benchmarks/benchmark.sql
📄 LicenseNKTgLaw is available under a dual licensing model:GPL-3.0 License (Open Source):You can use, modify, and redistribute NKTgLaw under the terms of the GPL-3.0 License.Commercial License (Proprietary):For commercial use without the GPL obligations, a commercial license is required. Contact Nguyễn Khánh Tùng at traiphieu.com@gmail.com for licensing and support.Note: Each user must choose either the GPL license or the Commercial license. Combining both is not permitted for the same use case.
