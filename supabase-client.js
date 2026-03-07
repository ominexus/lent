const SUPABASE_URL = 'https://rbckheornjrhnvjybhff.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJiY2toZW9ybmpyaG52anliaGZmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzI4Njc3NDQsImV4cCI6MjA4ODQ0Mzc0NH0.dlN5jl-7nhl00sicKSboR3-1aDMP5A8ZZCoPmT0habY';

const { createClient } = supabase;
const db = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);
