import{A as p}from"../modules/unplugin-icons-BHiLZ2Rh.js";import{d as f,z as v,o as c,b as _,e as s,f as x,h as C,c as $,k as g,l as h,aa as k,q as b,s as y,B as i}from"../modules/vue-h8d-2kXG.js";import{u,f as B}from"./context-DDMXpCXd.js";import"../index-JGt33E_i.js";import"../modules/shiki-DMWgjke_.js";function l(e){return e.startsWith("/")?"/microservices-architecture-course/"+e.slice(1):e}function A(e,n=!1){const r=e&&["#","rgb","hsl"].some(a=>e.indexOf(a)===0),o={background:r?e:void 0,color:e&&!r?"white":void 0,backgroundImage:r?void 0:e?n?`linear-gradient(#0005, #0008), url(${l(e)})`:`url("${l(e)}")`:void 0,backgroundRepeat:"no-repeat",backgroundPosition:"center",backgroundSize:"cover"};return o.background||delete o.background,o}const z={class:"my-auto w-full"},P=f({__name:"cover",props:{background:{default:"https://source.unsplash.com/collection/94734566/1920x1080"}},setup(e){u();const n=e,r=v(()=>A(n.background,!0));return(o,a)=>(c(),_("div",{class:"slidev-layout cover text-center",style:C(r.value)},[s("div",z,[x(o.$slots,"default")])],4))}}),E={__name:"slides.md__slidev_1",setup(e){const{$slidev:n,$nav:r,$clicksContext:o,$clicks:a,$page:S,$renderContext:w,$frontmatter:d}=u();return o.setup(),(I,t)=>{const m=p;return c(),$(P,b(y(i(B)(i(d),0))),{default:g(()=>[t[1]||(t[1]=s("h1",null,"Introduction aux architectures micro services",-1)),t[2]||(t[2]=s("h2",null,"Cours Architectures distribuées",-1)),t[3]||(t[3]=s("h3",null,"Alexandre Touret",-1)),s("h4",null,[h(m),t[0]||(t[0]=k(" Creative Commons Attribution 4.0 International"))])]),_:1},16)}}};export{E as default};