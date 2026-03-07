# 사순절 새벽기도 출석부

## 배포 순서

### 1. Supabase 설정
1. https://supabase.com → 새 프로젝트 생성
2. SQL Editor → `supabase_setup.sql` 내용 실행
3. Project Settings → API → `Project URL`과 `anon public key` 복사

### 2. supabase-client.js 수정
```js
const SUPABASE_URL = 'https://xxxx.supabase.co';      // 본인 URL
const SUPABASE_ANON_KEY = 'eyJhbGci...';              // 본인 anon key
```

### 3. GitHub 배포
```bash
git init
git add .
git commit -m "init"
git remote add origin https://github.com/본인계정/repo명.git
git push -u origin main
```
4. GitHub repo → Settings → Pages → Branch: main / folder: / (root) → Save
5. 약 1분 후 `https://본인계정.github.io/repo명/` 접속 확인

## 파일 구조
```
├── index.html          # 출석 입력
├── students.html       # 학생 관리
├── report.html         # 출석 현황
├── css/style.css
├── js/supabase-client.js
└── supabase_setup.sql
```

## 사용 방법
1. **학생 관리** 페이지에서 학생 등록 (개별 or 일괄)
2. **출석 입력** 페이지에서 날짜 선택 후 출석 체크 → 저장
3. **출석 현황** 페이지에서 전체 통계 및 21일 그리드 확인
