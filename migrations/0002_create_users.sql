-- Migration number: 0002 	 2026-11-10T02:37:42.785Z
CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  email TEXT NOT NULL UNIQUE,
  password_hash TEXT NOT NULL,
  role TEXT NOT NULL CHECK (role IN ('viewer', 'editor', 'admin')),
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);