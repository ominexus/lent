-- 1. students 테이블
CREATE TABLE students (
  id         UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  grade      INTEGER NOT NULL,
  class_name TEXT NOT NULL,
  name       TEXT NOT NULL,
  is_active  BOOLEAN DEFAULT true,
  created_at TIMESTAMPTZ DEFAULT now()
);

-- 2. attendance 테이블
CREATE TABLE attendance (
  id         UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  student_id UUID REFERENCES students(id) ON DELETE CASCADE,
  date       DATE NOT NULL,
  present    BOOLEAN NOT NULL DEFAULT false,
  UNIQUE (student_id, date)
);

-- 3. RLS 설정
ALTER TABLE students   ENABLE ROW LEVEL SECURITY;
ALTER TABLE attendance ENABLE ROW LEVEL SECURITY;

CREATE POLICY "allow_all" ON students    FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "allow_all" ON attendance  FOR ALL USING (true) WITH CHECK (true);
