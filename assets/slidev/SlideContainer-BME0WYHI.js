import{t as u,z as i,B as d,d as M,az as x,aj as z,ai as v,o as B,b as E,e as k,f,h}from"../modules/vue-6soBvrIb.js";import{a0 as j,a as C,D as m,W as p,w as S,v as w,F as D,a3 as I,_ as N}from"../index-Dt1ALd6Y.js";function b(a){var e;return{info:u(((e=j(a))==null?void 0:e.meta.slide)??null),update:async()=>{}}}const c={};function T(a){function e(t){return c[t]??(c[t]=b(t))}return{info:i({get(){return e(d(a)).info.value},set(t){e(d(a)).info.value=t}}),update:async(t,l)=>{const n=e(l??d(a)),s=await n.update(t);return s&&(n.info.value=s),s}}}const W=["id"],A=["id"],F=M({__name:"SlideContainer",props:{width:{type:Number},meta:{default:()=>({})},isMain:{type:Boolean,default:!1}},setup(a){const e=a,{isPrintMode:t}=C(),l=u(null),n=x(l),s=u(null),y=i(()=>e.width??n.width.value),_=i(()=>e.width?e.width/m.value:n.height.value),o=i(()=>p.value&&!t.value?+p.value:Math.min(y.value/S.value,_.value/w.value)),g=i(()=>({height:`${w.value}px`,width:`${S.value}px`,transform:`translate(-50%, -50%) scale(${o.value})`,"--slidev-slide-scale":o.value})),$=i(()=>e.width?{width:`${e.width}px`,height:`${e.width/m.value}px`}:{});return e.isMain&&z(i(()=>`:root { --slidev-slide-scale: ${o.value}; }`)),v(D,o),v(I,s),(r,H)=>(B(),E("div",{id:a.isMain?"slide-container":void 0,ref_key:"container",ref:l,class:"slidev-slide-container",style:h($.value)},[k("div",{id:a.isMain?"slide-content":void 0,ref_key:"slideElement",ref:s,class:"slidev-slide-content",style:h(g.value)},[f(r.$slots,"default",{},void 0,!0)],12,A),f(r.$slots,"controls",{},void 0,!0)],12,W))}}),V=N(F,[["__scopeId","data-v-d7d8f842"]]);export{V as S,b as a,T as u};
