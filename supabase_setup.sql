-- Agenda Renata — setup Supabase
-- Rodar no SQL Editor do projeto pxcqyzbgfbwwkazmonzx (mesmo projeto do BIG GTD / Finanças Casa)

-- Tabela principal: uma linha fixa por "instância" do app (sync_id), sem noção de usuário/login
create table if not exists renata_agenda_sync (
  sync_id text primary key,
  reminders jsonb,
  turmas jsonb,
  aulas jsonb,
  updated_at timestamptz default now()
);

alter table renata_agenda_sync enable row level security;

create policy "allow all - renata_agenda_sync"
  on renata_agenda_sync
  for all
  using (true)
  with check (true);

-- Histórico append-only (proteção contra sobrescrita — lição aprendida com o incidente do BIG GTD).
-- Toda sincronização grava uma cópia aqui também; nada aqui é sobrescrito ou apagado automaticamente.
create table if not exists renata_agenda_history (
  id bigserial primary key,
  sync_id text,
  reminders jsonb,
  turmas jsonb,
  aulas jsonb,
  updated_at timestamptz,
  created_at timestamptz default now()
);

alter table renata_agenda_history enable row level security;

create policy "allow all - renata_agenda_history"
  on renata_agenda_history
  for all
  using (true)
  with check (true);
