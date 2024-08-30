<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Cours Architectures Microservices" FOLDED="false" ID="ID_1114697535" CREATED="1724590191585" MODIFIED="1724590202370" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle" zoom="1.21">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="21" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Pourquoi?" POSITION="right" ID="ID_1900353684" CREATED="1724590205098" MODIFIED="1724590207727">
<edge COLOR="#ff0000"/>
<node TEXT="g&#xe9;rer au mieux le changement" ID="ID_1203387017" CREATED="1724591374692" MODIFIED="1724591383497"/>
<node TEXT="Autonomie" ID="ID_101185807" CREATED="1724591400897" MODIFIED="1724591411134"/>
<node TEXT="Faciliter le d&#xe9;ploiement" ID="ID_1491277981" CREATED="1724591426474" MODIFIED="1724591430332"/>
</node>
<node TEXT="La d&#xe9;finition d&apos;Amazon" POSITION="right" ID="ID_1635942234" CREATED="1724590225913" MODIFIED="1724590301465">
<edge COLOR="#0000ff"/>
</node>
<node TEXT="Les principes de bases" POSITION="right" ID="ID_1306115656" CREATED="1724590402576" MODIFIED="1724590407300">
<edge COLOR="#007c00"/>
<node TEXT="Une API" ID="ID_95506024" CREATED="1724590409793" MODIFIED="1724590412617"/>
<node TEXT="Une base de donn&#xe9;es" ID="ID_1396218890" CREATED="1724590412956" MODIFIED="1724590417363"/>
<node TEXT="Notion de couplage l&#xe2;che" ID="ID_1270924164" CREATED="1724590417743" MODIFIED="1724590767841">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1696947083" STARTINCLINATION="282;0;" ENDINCLINATION="282;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
</node>
</node>
<node TEXT="Les d&#xe9;fis" POSITION="right" ID="ID_1651720732" CREATED="1724590302903" MODIFIED="1724590307729">
<edge COLOR="#00ff00"/>
</node>
<node TEXT="Les &#xe9;checs" POSITION="right" ID="ID_1638185629" CREATED="1724590309960" MODIFIED="1724590313395">
<edge COLOR="#ff00ff"/>
<node TEXT="Monolithe distribu&#xe9;" ID="ID_864384074" CREATED="1724590332131" MODIFIED="1724590337057"/>
</node>
<node TEXT="Stranger fit pattern" POSITION="right" ID="ID_535646862" CREATED="1724590384750" MODIFIED="1724590396441">
<edge COLOR="#7c0000"/>
</node>
<node TEXT="base de donn&#xe9;es" POSITION="right" ID="ID_666319488" CREATED="1724590397003" MODIFIED="1724590399593">
<edge COLOR="#00007c"/>
<node TEXT="Le principal enjeu" ID="ID_963719043" CREATED="1724591235751" MODIFIED="1724591242127"/>
</node>
<node TEXT="Un exemple d&apos;architecture distribu&#xe9;" POSITION="right" ID="ID_1394197378" CREATED="1724591200206" MODIFIED="1724591208376">
<edge COLOR="#007c00"/>
<node TEXT="Exemple avec un moniolithe" ID="ID_1528057763" CREATED="1724591209754" MODIFIED="1724591215040"/>
<node TEXT="Exemple avec une architecture microservices" ID="ID_53657834" CREATED="1724591215399" MODIFIED="1724591227931"/>
</node>
<node TEXT="Expliquer event streaming" POSITION="right" ID="ID_1202096659" CREATED="1724591541553" MODIFIED="1724591557728">
<edge COLOR="#7c007c"/>
</node>
<node TEXT="Comment les concevoir" POSITION="right" ID="ID_1298213412" CREATED="1724590439565" MODIFIED="1724590444227">
<edge COLOR="#7c007c"/>
<node TEXT="Bounded contexts" ID="ID_484406301" CREATED="1724590445601" MODIFIED="1724590450742"/>
<node TEXT="Eviter les couplages forts entre services" ID="ID_340683712" CREATED="1724590451229" MODIFIED="1724590498941"/>
</node>
<node TEXT="Coupl&#xe2;ge l&#xe2;che" POSITION="right" ID="ID_1696947083" CREATED="1724590648202" MODIFIED="1724590652368">
<edge COLOR="#0000ff"/>
<node TEXT="Expliquer la notion" ID="ID_1626832154" CREATED="1724590654139" MODIFIED="1724590659136"/>
<node TEXT="Don&apos;t call us, we &apos;ll call you" ID="ID_1281094335" CREATED="1724590716463" MODIFIED="1724590737943"/>
</node>
<node TEXT="Pr&#xe9;sentation des architectures microservices&#xa;&#xa;    Fondamentaux (Pourquoi? Comment les concevoir?)&#xa;    Coh&#xe9;rence des donn&#xe9;es (Th&#xe9;or&#xe8;me de CAP)?&#xa;    Protocoles (HTTP, REST, GRAPHQL, GRPC)&#xa;    Couplage l&#xe2;che&#xa;    Utilisation de messageries asynchrones (ex. JMS en Java, Kafka)&#xa;&#xa;Retour d&apos;exp&#xe9;rience en architecture distribu&#xe9;es&#xa;&#xa;    Coh&#xe9;rence des donn&#xe9;es (Split Brain, comment est g&#xe9;r&#xe9;e la coh&#xe9;rence de donn&#xe9;es avec MongoDB)&#xa;    Gestion des latences, pannes et erreurs (ex. Circuit Breaker)&#xa;    Observabilit&#xe9; (Comment identifier les erreurs? --&gt; Logs, Traces)" POSITION="left" ID="ID_1984637004" CREATED="1724590554810" MODIFIED="1724590556098">
<edge COLOR="#007c7c"/>
</node>
<node TEXT="La coh&#xe9;rence des donn&#xe9;es" POSITION="right" ID="ID_1202268667" CREATED="1724590568085" MODIFIED="1724590573029">
<edge COLOR="#ff0000"/>
<node TEXT="Commencer par un exemple d&apos;architecture r&#xe9;partie" ID="ID_1074778524" CREATED="1724590576410" MODIFIED="1724590586259"/>
<node TEXT="Ex. ACS" ID="ID_1731456137" CREATED="1724590586603" MODIFIED="1724590589191"/>
<node TEXT="Th&#xe9;or&#xe8;me de CAP" ID="ID_1296758480" CREATED="1724590597991" MODIFIED="1724590602734"/>
<node TEXT="Split Brain" ID="ID_616366624" CREATED="1724590670395" MODIFIED="1724590672480"/>
<node TEXT="Exemple avec MonGoDB" ID="ID_1617399117" CREATED="1724590672684" MODIFIED="1724590679331"/>
</node>
<node TEXT="Transactions distribu&#xe9;es" FOLDED="true" POSITION="right" ID="ID_1419047916" CREATED="1724590786455" MODIFIED="1724590793528">
<edge COLOR="#00ff00"/>
<node TEXT="Eviter" ID="ID_1962323571" CREATED="1724590794802" MODIFIED="1724590798323"/>
<node TEXT="Long Running Actions" ID="ID_1806042015" CREATED="1724590798709" MODIFIED="1724590802345"/>
</node>
<node TEXT="Latences" POSITION="right" ID="ID_336266662" CREATED="1724590895518" MODIFIED="1724590899225">
<edge COLOR="#ff00ff"/>
<node TEXT="Comment g&#xe9;rer la latence entre deux services" ID="ID_580287632" CREATED="1724590986585" MODIFIED="1724590995659">
<node TEXT="Timeout" ID="ID_1482439416" CREATED="1724590997040" MODIFIED="1724591001475"/>
</node>
</node>
<node TEXT="Pannes et erreurs" POSITION="right" ID="ID_510460506" CREATED="1724590899439" MODIFIED="1724590905123">
<edge COLOR="#00ffff"/>
<node TEXT="Circuit Breaker" ID="ID_352193370" CREATED="1724591015377" MODIFIED="1724591021799"/>
<node TEXT="Retry" ID="ID_1783628301" CREATED="1724591172514" MODIFIED="1724591182442">
<node TEXT="Exponential Backoff" ID="ID_1856064389" CREATED="1724591027603" MODIFIED="1724591033383"/>
</node>
</node>
<node TEXT="Transactions" POSITION="right" ID="ID_1330814560" CREATED="1724590916869" MODIFIED="1724590919409">
<edge COLOR="#00007c"/>
<node TEXT="Synchrones" ID="ID_1338091052" CREATED="1724590920677" MODIFIED="1724590922567">
<node TEXT="HTTP" ID="ID_1281520782" CREATED="1724590930158" MODIFIED="1724590932505">
<node TEXT="JSON" ID="ID_1064556014" CREATED="1724591568426" MODIFIED="1724591570000"/>
<node TEXT="XML" ID="ID_1631374276" CREATED="1724591570601" MODIFIED="1724591571547"/>
</node>
<node TEXT="REST" ID="ID_1860301929" CREATED="1724591107613" MODIFIED="1724591109389">
<node TEXT="D&#xe9;finition" ID="ID_1769665232" CREATED="1724591111561" MODIFIED="1724591114404"/>
<node TEXT="verbes, ressources" ID="ID_1966018806" CREATED="1724591115066" MODIFIED="1724591122871"/>
</node>
<node TEXT="GRPC" ID="ID_256230140" CREATED="1724590932877" MODIFIED="1724590934566"/>
<node TEXT="GraphQL" ID="ID_82960472" CREATED="1724591077224" MODIFIED="1724591079805"/>
</node>
<node TEXT="Ajouter un tableau comparatif des diff&#xe9;rents protocoles" ID="ID_1090497214" CREATED="1724591086785" MODIFIED="1724591101262"/>
<node TEXT="Asynchrones" ID="ID_31816994" CREATED="1724590922806" MODIFIED="1724590924726">
<node TEXT="Messageries distribut&#xe9;es" ID="ID_667106070" CREATED="1724590935724" MODIFIED="1724590942302">
<node TEXT="KAFKA" ID="ID_1834299133" CREATED="1724590946259" MODIFIED="1724590947947"/>
<node TEXT="Artemis" ID="ID_442423576" CREATED="1724590948327" MODIFIED="1724590950262"/>
<node TEXT="RabbitMQ" ID="ID_378225255" CREATED="1724591582257" MODIFIED="1724591584342"/>
<node TEXT="PubSub" ID="ID_1029189669" CREATED="1724590950879" MODIFIED="1724590958131"/>
</node>
<node TEXT="Expliquer la complexit&#xe9;" ID="ID_1321220251" CREATED="1724591594337" MODIFIED="1724591599927">
<node TEXT="Ex. Gestion des erreurs" ID="ID_1894133748" CREATED="1724591601105" MODIFIED="1724591605164"/>
</node>
</node>
<node TEXT="Observabilit&#xe9;" ID="ID_362706805" CREATED="1724590979930" MODIFIED="1724590982311"/>
</node>
<node TEXT="S&#xe9;curit&#xe9;" POSITION="right" ID="ID_1595553737" CREATED="1724591680848" MODIFIED="1724591685366">
<edge COLOR="#007c7c"/>
<node TEXT="OpenID Connect" ID="ID_1236447129" CREATED="1724591686200" MODIFIED="1724591691982"/>
<node TEXT="Oauthv2" ID="ID_1175206381" CREATED="1724591692382" MODIFIED="1724591694978"/>
<node TEXT="API Gateway ?" ID="ID_1515166550" CREATED="1724591704428" MODIFIED="1724591706682"/>
</node>
</node>
</map>
