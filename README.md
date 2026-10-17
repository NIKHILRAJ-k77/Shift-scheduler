# ShiftFlow

ShiftFlow is a workforce operations dashboard for planning staff shifts, spotting coverage gaps, managing staff swaps, and monitoring operational workload.

## What is included

- Dashboard with coverage health, weekly shift volume, upcoming shifts and action items
- Weekly schedule with department, staff and status filters
- Conflict protection for overlapping staff shifts
- Staff management with search, filters, workload metrics and profile drawer
- Swap request workflow with validation and notifications
- Notification center with unread filtering and mark-all-read
- Analytics for coverage, shift volume, departments and staff workload
- PostgreSQL persistence
- Responsive dark operations UI

## Requirements

- Node.js 18+
- PostgreSQL 14+

Docker is optional. The application works with a locally installed PostgreSQL server.

## Setup

From the project root:

```powershell
npm install
npm run install:all
```

Create `backend/.env`:

```env
PORT=5000
DB_HOST=localhost
DB_PORT=5432
DB_NAME=shiftflow
DB_USER=postgres
DB_PASSWORD=YOUR_POSTGRES_PASSWORD
CORS_ORIGIN=http://localhost:5173
```

Make sure the PostgreSQL database `shiftflow` exists. The database schema is documented in `backend/database/schema.sql` and the optional sample data is in `backend/database/seed.sql`.

Then run:

```powershell
npm run dev
```

Frontend: http://localhost:5173
Backend: http://localhost:5000
Health check: http://localhost:5000/api/health

## Important

The supplied database can already contain production/demo records. Do not run destructive reset scripts against it. The application performs normal CRUD operations against the existing `shiftflow` database.

## Production direction

The next production-hardening layer would be authentication, role-based authorization, availability rules and audit logging. The current MVP deliberately keeps those separate from the scheduling core so the project stays maintainable.
