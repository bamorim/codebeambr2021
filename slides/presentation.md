---
theme: gaia
_class: lead
paginate: true
backgroundColor: #fff
backgroundImage: url('https://marp.app/assets/hero-background.jpg')
marp: true
---

# **Elixir sem Mix:**
### **Aprendendo a ferramenta ao tentar não usá-la**

---

![bg right:30% width:90%](./bernardo.jpg)

# Sobre mim

**Bernardo Amorim**
https://github.com/bamorim
https://t.me/BernardoDCGA
https://twitter.com/BernardoDCGA

---

![bg right 80%](./hero-terminal.png)

# SaltPay Portugal

### Estamos contratando!

Elixir, Go, TypeScript, etc...

![](./hiring-qrcode.png)

---

# App de demonstração

- Ao inicializar, começa um acumulador, que por padrão é `0`
- Comandos:
  - `Calc.add/1` que soma ao acumulador
  - `Calc.reset/0` que reseta o acumulador pro estado inicial
  - `Calc.get/0` que retorna o estado do acumulador

```elixir
iex(1)> Calc.get()
#Decimal<0>
iex(2)> Calc.add "1.1"; Calc.get()
#Decimal<1.1>
```

---

<!--
_class: lead
-->

# Sem mix

Vamos lá?

---

<!--
_class: lead
-->

# Como baixar pacotes?

---

# [hexpm/specifications](https://github.com/hexpm/specifications)

Documenta tudo relacionado ao Hex:

- Doc da API usando API Blueprint
  - Versão "compilada" em https://hexpm.docs.apiary.io/
- Formato do registro (protobuf)
- Formato do tarball


---

# Baixando o [decimal](https://hex.pm/packages/decimal)

https://repo.hex.pm/tarballs/decimal-2.0.0.tar

---

<!--
_class: lead
-->

# Demo time

---

# Applications

- http://erlang.org/doc/man/application.html
- https://erlang.org/doc/man/app.html
- `mix help compile.app`

---

# Outras funcionalidades

- Releases: `mix release`
- Escripts: `mix escript.build`|`install`|`uninstall`
- Compiladores: `erlang`, `yecc`, `leex`
- Consolidação de protocolos
- Gerenciamento de dependencias bem mais avançado
- Archives (ex: `phx.new`)
- `mix xref`

---

<!--
_class: lead
-->

# Obrigado
![](./hiring-qrcode.png)