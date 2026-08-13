# Agenda Renata

Sistema de agenda pessoal e planejamento de aulas, feito para a Renata (professora de inglês). Duas abas: **Agenda** (lembretes do dia a dia) e **Aulas** (planejamento semanal por turma).

🌐 **[Abrir Agenda Renata](https://brunorivero-afk.github.io/agenda-renata/)**

## Aba Agenda

- 📅 Calendário mensal interativo
- 📝 Lembretes com 3 categorias: Trabalho, Pessoal, Contas
- ⏰ Hora e recorrência (diária, semanal, mensal)
- ✍️ Notas com formatação (negrito, itálico, sublinhado)
- ☑️ Marcar como concluído

## Aba Aulas — Planejamento de Aulas

- Matriz: turmas (linhas) × dias da semana, segunda a sexta
- Navegação por semana (← →)
- **Turmas editáveis** — renomear, excluir ou adicionar direto na matriz
- **Feriados nacionais automáticos** (fixos + Páscoa/Carnaval/Corpus Christi calculados), sem precisar de API externa
- Edição direto na célula (sem modal): Livro/Página, Unidade, Conteúdo/Tópicos, Objetivos, Metodologia, Recursos, Homework, Avaliação

## Sincronização

Dados sincronizam automaticamente entre aparelhos via [Supabase](https://supabase.com), sem exigir login — abre e já sincroniza sozinho em segundo plano. `localStorage` funciona como cache local (o app funciona offline, sincroniza quando volta a conexão).

Setup do banco: ver [`supabase_setup.sql`](supabase_setup.sql).

## Tecnologia

- HTML5 + CSS3 + JavaScript puro (sem build, sem dependências além do cliente Supabase via CDN)
- 100% responsivo (desktop, tablet, mobile)

---

Desenvolvido com ❤️ pelo Bruno para Renata
