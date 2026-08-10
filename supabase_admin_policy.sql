-- 기존 SELECT 정책은 그대로 두고, 관리자(로그인 사용자)가 업로드한 메뉴를
-- 삭제/추가할 수 있도록 권한을 추가합니다.
drop policy if exists "로그인 사용자는 메뉴를 추가할 수 있음" on menus;
create policy "로그인 사용자는 메뉴를 추가할 수 있음"
on menus for insert to authenticated
with check (true);

drop policy if exists "로그인 사용자는 메뉴를 삭제할 수 있음" on menus;
create policy "로그인 사용자는 메뉴를 삭제할 수 있음"
on menus for delete to authenticated
using (true);

drop policy if exists "로그인 사용자는 메뉴를 수정할 수 있음" on menus;
create policy "로그인 사용자는 메뉴를 수정할 수 있음"
on menus for update to authenticated
using (true)
with check (true);
