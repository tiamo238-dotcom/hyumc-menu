/*
  홈 화면 추가(설치) 조건을 만족시키기 위한
  최소한의 서비스워커입니다.

  메뉴 데이터(Supabase 응답)는 매일 바뀌므로
  캐싱하지 않고 그대로 네트워크로 전달합니다.
*/

self.addEventListener('install', e=>{

  self.skipWaiting();

});

self.addEventListener('activate', e=>{

  self.clients.claim();

});

self.addEventListener('fetch', e=>{

  e.respondWith(fetch(e.request));

});
