import{_ as u}from"./slidev/CodeBlockWrapper.vue_vue_type_script_setup_true_lang-C6gGt0DQ.js";import{_ as f}from"./Cite.vue_vue_type_style_index_0_lang-DRkWoqZ9.js";import{o as k,c as g,k as e,e as s,l as n,m as t,aa as l,q as m,s as I,B as r}from"./modules/vue-h8d-2kXG.js";import{_ as c}from"./slidev/two-cols.vue_vue_type_script_setup_true_lang-BRAZt9N6.js";import{u as h,f as v}from"./slidev/context-DDMXpCXd.js";import"./modules/unplugin-icons-BHiLZ2Rh.js";import"./index-JGt33E_i.js";import"./modules/shiki-DMWgjke_.js";import"./CiteEngine-CgvsTvVG.js";import"./modules/file-saver-CFSks1X-.js";const D={__name:"09-security.md__slidev_63",setup(J){const{$slidev:b,$nav:x,$clicksContext:o,$clicks:y,$page:w,$renderContext:M,$frontmatter:p}=h();return o.setup(),(C,i)=>{const d=f,a=u;return k(),g(c,m(I(r(v)(r(p),62))),{right:e(T=>[i[6]||(i[6]=s("p",null,"L’ en-tête",-1)),n(a,t({},{ranges:[]}),{default:e(()=>i[3]||(i[3]=[s("pre",{class:"shiki shiki-themes vitesse-dark vitesse-light slidev-code",style:{"--shiki-dark":"#dbd7caee","--shiki-light":"#393a34","--shiki-dark-bg":"#121212","--shiki-light-bg":"#ffffff"}},[s("code",{class:"language-text"},[s("span",{class:"line"},[s("span",null,"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9  ")]),l(`
`),s("span",{class:"line"},[s("span",null,"  ")]),l(`
`),s("span",{class:"line"},[s("span",null,"{  ")]),l(`
`),s("span",{class:"line"},[s("span",null,'  "alg": "HS256",  ')]),l(`
`),s("span",{class:"line"},[s("span",null,'  "typ": "JWT"  ')]),l(`
`),s("span",{class:"line"},[s("span",null,"}")])])],-1)])),_:1},16),i[7]||(i[7]=s("p",null,"Le Payload",-1)),n(a,t({},{ranges:[]}),{default:e(()=>i[4]||(i[4]=[s("pre",{class:"shiki shiki-themes vitesse-dark vitesse-light slidev-code",style:{"--shiki-dark":"#dbd7caee","--shiki-light":"#393a34","--shiki-dark-bg":"#121212","--shiki-light-bg":"#ffffff"}},[s("code",{class:"language-text"},[s("span",{class:"line"},[s("span",null,"eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ  ")]),l(`
`),s("span",{class:"line"},[s("span",null,"  ")]),l(`
`),s("span",{class:"line"},[s("span",null,"{  ")]),l(`
`),s("span",{class:"line"},[s("span",null,'  "sub": "1234567890",  ')]),l(`
`),s("span",{class:"line"},[s("span",null,'  "name": "John Doe",  ')]),l(`
`),s("span",{class:"line"},[s("span",null,'  "iat": 1516239022  ')]),l(`
`),s("span",{class:"line"},[s("span",null,"}")])])],-1)])),_:1},16),i[8]||(i[8]=s("p",null,"La signature",-1)),n(a,t({},{ranges:[]}),{default:e(()=>i[5]||(i[5]=[s("pre",{class:"shiki shiki-themes vitesse-dark vitesse-light slidev-code",style:{"--shiki-dark":"#dbd7caee","--shiki-light":"#393a34","--shiki-dark-bg":"#121212","--shiki-light-bg":"#ffffff"}},[s("code",{class:"language-text"},[s("span",{class:"line"},[s("span",null,"SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c")])])],-1)])),_:1},16)]),default:e(()=>[i[9]||(i[9]=s("h3",null,"Anatomie d’un jeton JWT",-1)),s("p",null,[i[0]||(i[0]=l("Les JWT sont définis par la RFC 7519")),n(d,{bref:"rfc-7519"}),i[1]||(i[1]=l(" Ils sont composés de trois parties :"))]),i[10]||(i[10]=s("ul",null,[s("li",null,"Header : Contient des informations sur le type de token (JWT) et l’algorithme de signature utilisé."),s("li",null,"Payload : Contient les informations ou claims de l’utilisateur (ex., ID, rôle, permissions)."),s("li",null,"Signature : Une signature générée avec la clé secrète, qui garantit l’intégrité du token.")],-1)),i[11]||(i[11]=s("p",null,"La version encodée :",-1)),n(a,t({},{ranges:[]}),{default:e(()=>i[2]||(i[2]=[s("pre",{class:"shiki shiki-themes vitesse-dark vitesse-light slidev-code",style:{"--shiki-dark":"#dbd7caee","--shiki-light":"#393a34","--shiki-dark-bg":"#121212","--shiki-light-bg":"#ffffff"}},[s("code",{class:"language-text"},[s("span",{class:"line"},[s("span",null,"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwi ")]),l(`
`),s("span",{class:"line"},[s("span",null,"bmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2Q T  ")]),l(`
`),s("span",{class:"line"},[s("span",null,"4fwpMeJf36POk6yJV_adQssw5c")])])],-1)])),_:1},16),i[12]||(i[12]=s("p",null,[l("Pour valider des JWT : "),s("a",{href:"https://jwt.io/",target:"_blank"},"https://jwt.io/")],-1))]),_:1},16)}}};export{D as default};