---
# You can also start simply with 'default'
theme: seriph
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
background: /growtika-ZfVyuV8l7WU-unsplash.webp 
# some information about your slides (markdown enabled)
title: Welcome to Microservices architecture design introduction
info: |
  
  Micro services architecture course
# apply unocss classes to the current slide
class: text-center
# https://sli.dev/features/drawing
drawings:
  persist: false
# slide transition: https://sli.dev/guide/animations.html#slide-transitions
transition: slide-left
# enable MDC Syntax: https://sli.dev/features/mdc
mdc: true
colorSchema: light
download: true
biblio:
  filename:
    - bibliography.bib
  locale: 'fr-FR' 
  numerical_ref: false
  show_id: false
addons:
- slidev-addon-citations
---

# Introduction aux architectures micro services

## Cours Architectures distribuées

### Alexandre Touret

---
layout: intro
--- 

# Alexandre Touret

## Architecte logiciel à Worldline

### <mdi-open-in-browser /> https://blog.touret.info
### <mdi-github /> https://github.com/alexandre-touret/
### <mdi-linkedin/> https://www.linkedin.com/in/atouret/

---
src: ./pages/01-introduction.md
---

---
src: ./pages/02-fundamentals.md
---

---
src: ./pages/03-protocols.md
---

---
src: ./pages/04-loosecoupling.md
---

---
src: ./pages/05-messaging.md
---

---
src: ./pages/06-distributed-transaction.md
---

---
src: ./pages/07-observability.md
---