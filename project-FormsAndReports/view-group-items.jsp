<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %> 
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<!--
<rw:report id="report"> 
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="view group items" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="MODULE3" xmlPrologType="text">
  <![CDATA[<?xml version="1.0" encoding="&Encoding"?>]]>
  </xmlSettings>
  <reportHtmlEscapes>
    <beforeReportHtmlEscape>
    <![CDATA[<html>
<body dir=&Direction bgcolor="#ffffff">
]]>
    </beforeReportHtmlEscape>
    <beforeFormHtmlEscape>
    <![CDATA[<html>
<body dir=&Direction bgcolor="#ffffff">
<form method=post action="_action_">
<input name="hidden_run_parameters" type=hidden value="_hidden_">
<font color=red><!--error--></font>
<center>
<p><table border=0 cellspacing=0 cellpadding=0>
<tr>
<td><input type=submit></td>
<td width=15>
<td><input type=reset></td>
</tr>
</table>
<p><hr><p>
]]>
    </beforeFormHtmlEscape>
  </reportHtmlEscapes>
  <data>
    <dataSource name="Q_1">
      <select>
      <![CDATA[SELECT ALL ORDERS_PRICE.ORDER_ID, ORDERS_PRICE.ITEM_PRICE, ORDERS_PRICE.ITEM_NAME, 
ORDERS_PRICE.ITEM_QUANTITY, ORDERS_PRICE.TOTAL_ITEM_PRICE
FROM ORDERS_PRICE ]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_ORDER_ID">
        <displayInfo x="0.57166" y="1.94995" width="2.85681" height="0.61963"
        />
        <dataItem name="ORDER_ID" oracleDatatype="number" columnOrder="11"
         width="22" defaultWidth="80000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Order Id">
          <dataDescriptor expression="ORDERS_PRICE.ORDER_ID"
           descriptiveExpression="ORDER_ID" order="1" width="22" precision="6"
          />
        </dataItem>
        <summary name="SumTOTAL_ITEM_PRICEPerORDER_ID"
         source="TOTAL_ITEM_PRICE" function="sum" width="22" precision="38"
         reset="G_ORDER_ID" compute="report" defaultWidth="90000"
         defaultHeight="10000" columnFlags="552" defaultLabel="Total:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
      </group>
      <group name="G_ITEM_PRICE">
        <displayInfo x="1.08435" y="3.31958" width="1.83142" height="0.97949"
        />
        <dataItem name="ITEM_PRICE" oracleDatatype="number" columnOrder="12"
         width="22" defaultWidth="80000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Item Price">
          <dataDescriptor expression="ORDERS_PRICE.ITEM_PRICE"
           descriptiveExpression="ITEM_PRICE" order="2" width="22"
           precision="6"/>
        </dataItem>
        <dataItem name="ITEM_NAME" datatype="vchar2" columnOrder="13"
         width="100" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Item Name">
          <dataDescriptor expression="ORDERS_PRICE.ITEM_NAME"
           descriptiveExpression="ITEM_NAME" order="3" width="100"/>
        </dataItem>
        <dataItem name="ITEM_QUANTITY" oracleDatatype="number"
         columnOrder="14" width="22" defaultWidth="60000"
         defaultHeight="10000" columnFlags="33" defaultLabel="Item Quantity">
          <dataDescriptor expression="ORDERS_PRICE.ITEM_QUANTITY"
           descriptiveExpression="ITEM_QUANTITY" order="4" width="22"
           precision="4"/>
        </dataItem>
        <dataItem name="TOTAL_ITEM_PRICE" oracleDatatype="number"
         columnOrder="15" width="22" defaultWidth="90000"
         defaultHeight="10000" columnFlags="33"
         defaultLabel="Total Item Price">
          <dataDescriptor expression="ORDERS_PRICE.TOTAL_ITEM_PRICE"
           descriptiveExpression="TOTAL_ITEM_PRICE" order="5" width="22"
           precision="38"/>
        </dataItem>
      </group>
    </dataSource>
    <summary name="SumTOTAL_ITEM_PRICEPerReport" source="TOTAL_ITEM_PRICE"
     function="sum" width="22" precision="38" reset="report" compute="report"
     defaultWidth="90000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Total:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_ORDER_ID_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="5.00000" height="0.93750"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"
         fillBackgroundColor="r100g100b100"/>
        <repeatingFrame name="R_G_ORDER_ID" source="G_ORDER_ID"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.00000" width="5.00000"
           height="0.75000"/>
          <generalLayout verticalElasticity="variable"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableCell"/>
          <field name="F_ORDER_ID" source="ORDER_ID" alignment="start">
            <font face="Arial" size="10" bold="yes" textColor="TextColor"/>
            <geometryInfo x="0.56250" y="0.00000" width="1.18750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <frame name="M_G_ITEM_PRICE_GRPFR">
            <geometryInfo x="0.00000" y="0.18750" width="5.00000"
             height="0.56250"/>
            <generalLayout verticalElasticity="variable"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r100g100b100"/>
            <repeatingFrame name="R_G_ITEM_PRICE" source="G_ITEM_PRICE"
             printDirection="down" minWidowRecords="1" columnMode="no">
              <geometryInfo x="0.00000" y="0.37500" width="5.00000"
               height="0.18750"/>
              <generalLayout verticalElasticity="expand"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="TableCell"/>
              <field name="F_ITEM_PRICE" source="ITEM_PRICE" alignment="start"
                >
                <font face="Arial" size="10"/>
                <geometryInfo x="0.00000" y="0.37500" width="1.18750"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_ITEM_NAME" source="ITEM_NAME" alignment="start">
                <font face="Arial" size="10"/>
                <geometryInfo x="1.18750" y="0.37500" width="1.50000"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_ITEM_QUANTITY" source="ITEM_QUANTITY"
               alignment="start">
                <font face="Arial" size="10"/>
                <geometryInfo x="2.68750" y="0.37500" width="0.93750"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_TOTAL_ITEM_PRICE" source="TOTAL_ITEM_PRICE"
               alignment="start">
                <font face="Arial" size="10"/>
                <geometryInfo x="3.62500" y="0.37500" width="1.37500"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
            </repeatingFrame>
            <frame name="M_G_ITEM_PRICE_FTR">
              <geometryInfo x="0.00000" y="0.56250" width="5.00000"
               height="0.18750"/>
              <advancedLayout printObjectOnPage="lastPage"
               basePrintingOn="anchoringObject"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="Totals"/>
              <field name="F_SumTOTAL_ITEM_PRICEPerORDER_"
               source="SumTOTAL_ITEM_PRICEPerORDER_ID" alignment="start">
                <font face="Arial" size="10" bold="yes"/>
                <geometryInfo x="3.62500" y="0.56250" width="1.37500"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <text name="B_Total">
                <geometryInfo x="0.00000" y="0.56250" width="0.43750"
                 height="0.18750"/>
                <textSegment>
                  <font face="Arial" size="10" bold="yes"/>
                  <string>
                  <![CDATA[Total:]]>
                  </string>
                </textSegment>
              </text>
            </frame>
            <frame name="M_G_ITEM_PRICE_HDR">
              <geometryInfo x="0.00000" y="0.18750" width="5.00000"
               height="0.18750"/>
              <advancedLayout printObjectOnPage="allPage"
               basePrintingOn="enclosingObject"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="TableHeading"/>
              <text name="B_ITEM_PRICE">
                <geometryInfo x="0.00000" y="0.18750" width="1.18750"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="Arial" size="10" bold="yes" textColor="white"/>
                  <string>
                  <![CDATA[Item Price]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_ITEM_NAME">
                <geometryInfo x="1.18750" y="0.18750" width="1.50000"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="Arial" size="10" bold="yes" textColor="white"/>
                  <string>
                  <![CDATA[Item Name]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_ITEM_QUANTITY">
                <geometryInfo x="2.68750" y="0.18750" width="0.93750"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="Arial" size="10" bold="yes" textColor="white"/>
                  <string>
                  <![CDATA[Item Quantity]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_TOTAL_ITEM_PRICE">
                <geometryInfo x="3.62500" y="0.18750" width="1.37500"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="Arial" size="10" bold="yes" textColor="white"/>
                  <string>
                  <![CDATA[Total Item Price]]>
                  </string>
                </textSegment>
              </text>
            </frame>
          </frame>
          <text name="B_ORDER_ID">
            <geometryInfo x="0.00000" y="0.00000" width="0.56250"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="Arial" size="10" bold="yes" textColor="TextColor"/>
              <string>
              <![CDATA[Order Id]]>
              </string>
            </textSegment>
          </text>
        </repeatingFrame>
        <frame name="M_G_ORDER_ID_FTR">
          <geometryInfo x="0.00000" y="0.75000" width="5.00000"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="lastPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="Totals"/>
          <field name="F_SumTOTAL_ITEM_PRICEPerReport"
           source="SumTOTAL_ITEM_PRICEPerReport" alignment="start">
            <font face="Arial" size="10" bold="yes"/>
            <geometryInfo x="0.43750" y="0.75000" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <text name="B_SumTOTAL_ITEM_PRICEPerReport">
            <geometryInfo x="0.00000" y="0.75000" width="0.43750"
             height="0.18750"/>
            <textSegment>
              <font face="Arial" size="10" bold="yes"/>
              <string>
              <![CDATA[Total:]]>
              </string>
            </textSegment>
          </text>
        </frame>
      </frame>
    </body>
    <margin>
      <image name="B_1_SEC2" templateSection="main">
        <geometryInfo x="0.50000" y="0.37500" width="1.40625" height="0.37500"
        />
        <visualSettings fillPattern="transparent" fillBackgroundColor="black"
         linePattern="transparent" lineBackgroundColor="black"/>
        <points>
          <point x="0.00000" y="0.00000"/>
          <point x="1.40625" y="0.37500"/>
          <point x="0.50000" y="0.37500"/>
          <point x="1.40625" y="0.37500"/>
        </points>
        <binaryData encoding="hexidecimal" dataId="image.B_1_SEC2">
          
74946483 93167800 42007F00 00FFFFFF 5E2B999F CE6EBC56 432F9DCC CE5C3B7E
7BF9CF5F 2FDFAF9F 8ECB6ADE AC9BFEFC FB5F2E9D 4FDD2DAE 0CCA7F7E FDAF1FCE
0F4D6CEC F614FDF9 08BD5937 2E8AD85D 28A55E2B A98DC876 FEFC0C2D 87D43EDA
396D7806 DCA6A30E 4A680000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00129F40 00000000 00C20000 00007800 42000080
FF003080 C1840B0A 1C388031 A2C58C01 1E60C0A1 6084C10D 18305868 8133E043
08000874 0020A061 8F820A0C 143040A3 E7400408 0E8C5912 90E7C69B 071C1859
8317E189 830804EC F90438A0 51811A0E 28599080 A18B9C27 162080B2 96A0C794
2B0ECC68 C15829C9 8614BA7D FA8350A0 05050508 749A20B1 87C60855 563D1845
D36CC187 5B1E15FA 90626500 BC7DBA85 406080A3 00070203 C5F870C0 A2020112
921CBBF6 7A2EC9B2 0BEA0470 20233307 C20D0C75 A031D76F D1DF35C2 08705090
89CD8C47 18258AF1 D53146A8 63E284BA 76D5EA44 D23DBA40 98212821 06AC2983
05202A5B A9600467 36145BE1 D0B0C4EE 1103148E 5B723EE8 C102E230 5AE590C4
FF4A0B2F 04508830 4387C20F B5381F99 4103468C 021C67EC 5E808371 450F1313
148DB292 010C0810 CD540018 108D6200 2810C747 0218E080 02121060 02809505
51C00A1A D670860A 1E400046 8A1E004D 97491288 00C50304 0724D086 6974B023
810810E6 5C840EF4 F0E08F25 E8902E46 3E08E0AC 824A10FE DF461C88 F2EA4218
68914104 14203223 083D4030 060E1130 A1AA7D26 00942001 18C8F0CA 4F363893
1F8B3228 A023814A 09862081 49003267 583169A1 21002610 A12B8F19 A842A747
0C196F1E 4E2EA480 420802F7 26AA9562 A9E1999E 3A2A000F 823A100D 97587A68
B71E4C72 5031CD44 1C7826A6 8276F538 EA450028 52220C06 79E1D9A4 0640D823
FFA98228 B6AE8004 30C02CAE 5D7A576E 474EA825 200326C5 45E00710 965AE74E
AE085220 06821871 20070038 1CE3080A 76B21EA4 06205B6F 8E523816 A65B4EA8
931C9A1E 1B004603 2A173E66 08C27983 D2B1043B 2965A708 30C0AA43 DA58F114
05124BDD EB480CFB 30620E61 E8322971 F6E9C498 83A20047 6F914110 5462BDA2
AA93D0CC 0A10500E BC02572F EC8D1BC8 94A3A75E 7C249883 007B831F A99200E1
A1B00CB8 40C88EEE A4C4DF90 CA0A0FA9 A8179BC6 238E0C1C 0140DCF6 0CB297C3
021914DF A300BA2C 23903E88 40C50F2E 1032A59B 7EB405A6 8A0F7461 3002F63B
E1D3040B 09A0C1C7 5E9D2361 070B9C03 2381DA38 32E00FE9 AB4E63A3 2E401716
FF095F50 51840455 7D30C7DE 158D3670 580010FC E1A05F74 70C20C67 00E040BB
21CDE190 8802BA50 40E57360 710175CE 7D20C292 83E47041 BF1679A3 B4069F1E
78619E15 3039FCBD 19482000 82082DCC AF8F5218 596DAE59 6B8068BB 2DFE0969
DB1C40B1 4FEE0E60 E18EAE72 1C31CBE0 086E30EC D8351D7D E3E83D20 F3FA4CDF
08E66CA0 4E0F7DEF 43E3DA83 16F3FE5E 30A4F6EB 7BF195B4 060AB821 86D705A4
39DFF26B 83120400 60806940 C003002F B59810F0 8404C902 0C00704A E800708C
AA50A17E 18C0C7F4 30A00A00 65140300 6B930440 8386D310 440F72A0 81022A20
8704C941 060890C5 0C10BC7F 1960030B 1883970C 90F3231C 00420E06 62C215A0
FFF08389 598C0768 F1930C01 D8700830 C7016883 170C0039 300260C0 0B2500AE
1AB0198C 3C102BCC 32F007BC 10E6846A C9C01528 C0C40698 478C04AE 040E6850
860C2061 8834F8C1 1338B299 0627400F 2A136008 92C7CE26 D1100F2C 10A174F8
B2980031 5A8C040A 0601D8C0 4FE10003 8C0462AD 09C873C2 2E748E87 0C7D1B17
F89C940C 71900942 D2622938 C4424A12 518712B2 632182A3 484E10D0 0A6BF841
2329974C 42C11728 94AE8903 00B74AAC 20023508 256B0DB2 E74D4631 D78B2140
CD0172D5 2508C2F0 8B2C59C5 2F68D5AE 1AE2148C B423AF27 A8F1131E 7481069B
00813709 F3140032 38779473 D01709F3 CF802028 7ADC306A 2D9889CC 6291939C
FFDC59C3 1F081CBF 5EE1DC9E 19300029 0AE11356 05E10C8C F3EA4A09 4D175E02
3005D461 291108E1 977ED0FB 9C0C1C04 06387CCF 8864708E 6244A742 8893110E
93BC8E19 11610A00 D0551243 9F85EB72 67335928 423E6113 9515E4EB EC59E6AF
5E10D637 6C076F3F 1A805008 24D327B4 23EEF082 77CE62D2 F725FC09 2357B96C
180CB0D0 024C1064 B81A1003 0C20E06E C407E941 D941CC9E E41395B4 85A55100
4D4AAAE2 7DA46CA8 205CF842 50BCD170 A94500CF 275A4756 0A6F282B 0CE6E001
7A55D146 35D9AA51 572303E9 A5198203 D8A39514 20619A89 462EB191 88150044
062A3B45 B52695AA ACD66002 87E0C89A 71529808 FC6B192B 17924E56 D6989CEC
35AB6B29 B29DCA16 56A9B4C4 60613990 86042901 020880CF 31E8C081 E617F8B1
08500F15 007DC7EA 0558BC7C B3A47500 AAD10613 5AB9D57E A471287D 523257BA
BABCBE66 7D4B8ED4 FAA77DBC ED6FAB7F DB6AD080 00B35222 E3A00202 C34524F4
4495E3A0 0202C345 25E3A002 020202C3 45440226 7634F6C6 F627D332 66660303
03030267 14C69676 E6D347F6 070236C6 163737D3 22F42716 34F6C657 D6E68456
16465627 22E3C394 D4740216 C647D322 220226F6 27465627 D3030286 56967686
47D31373 02372736 D32296D6 16765637 F247F607 365727C6 E2769666 22027796
464786D3 3303E3C3 F24544E3 A0020202 02C34544 026714C6 9676E6D3 47F60702
77964647 86D32213 03035222 E3A00202 02020202 C3451424 C4540226 F6274656
27D30302 3656C6C6 05164646 96E676D3 03023656 C6C63507 163696E6 76D30302
77964647 86D32213 03035222 E3A00202 02020202 0202C345 24F44495 E3A00202
02020202 0202C345 25E3A002 02020202 02020202 02C34544 02267634 F6C6F627
D3320303 03030303 02865696 768647D3 13E3C394 D4740216 C647D322 220226F6
27465627 D3030286 56967686 47D31302 372736D3 2296D616 765637F2 37472756
473686E2 76966622 02779646 4786D313 E3C3F245 44E3A002 02020202 020202C3
F24525E3 A0020202 02020202 02C34525 E3A00202 02020202 02020202 C3454402
267634F6 C6F627D3 32931693 36931602 86569676 8647D313 E3C394D4 740216C6
47D32222 0226F627 465627D3 03028656 96768647 D3130237 2736D322 96D61676
5637F237 47275647 3686E276 96662202 77964647 86D313E3 C3F24544 E3A00202
02020202 0202C3F2 4525E3A0 02020202 02020202 C34525E3 A0020202 02020202
020202C3 45440226 7634F6C6 F627D332 26332643 26330286 56967686 47D313E3
C394D474 0216C647 D3222202 26F62746 5627D303 02865696 768647D3 13023727
36D32296 D6167656 37F23747 27564736 86E27696 66220277 96464786 D313E3C3
F24544E3 A0020202 02020202 02C3F245 25E3A002 02020202 020202C3 F24524F4
4495E3A0 02020202 0202C3F2 451424C4 54E3A002 020202C3 F24544E3 A00202C3
F24525E3 A00202C3 F24524F4 4495E3A0 C3F24514 24C454E3 A0C34514 24C45402
77964647 86D32213 03035222 0226F627 465627D3 22032202 3656C6C6 37071636
96E676D3 22032202 3656C6C6 07164646 96E676D3 220322E3 A00202C3 4525E3A0
02020202 C3454402 77964647 86D32223 93522202 6716C696 76E6D322 47F60722
E302A002 02020202 02C34514 24C45402 77964647 86D32273 73522202 26F62746
5627D322 03220236 56C6C637 0716
        </binaryData>
      </image>
      <text name="B_OR$BODY_SECTION">
        <geometryInfo x="3.79138" y="0.25000" width="0.91711" height="0.16675"
        />
        <textSegment>
          <font face="Courier New" size="10"/>
          <string>
          <![CDATA[view prices]]>
          </string>
        </textSegment>
      </text>
    </margin>
  </section>
  </layout>
  <colorPalette>
    <color index="190" displayName="TextColor" value="#000000"/>
    <color index="191" displayName="TableHeading" value="#cc6635"/>
    <color index="192" displayName="TableCell" value="#f2d9cc"/>
    <color index="193" displayName="Totals" value="#e5b29a"/>
  </colorPalette>
  <reportPrivate defaultReportType="masterDetail" templateName="rwpeach"
   sectionTitle="view prices"/>
</report>
</rw:objects>
-->

<HTML>
<HEAD>
<rw:style id="rwpeach">
<link rel="StyleSheet" type="text/css" href="css/rwpeach.css">
</rw:style>

<TITLE> Your Title </TITLE>
<META content="text/html; charset=iso-8859-1" http-equiv=Content-Type>

<BODY bgColor=#ffffff link=#000000 vLink=#000000>
<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor=#ffffff rowSpan=2 vAlign=center width=188> 
      <p><IMG src="images/rwpeach_logo.gif" width="135" height="36"><br>
      </p>
      </TD>
    <TD bgColor=#ffffff height=40 vAlign=top><IMG alt="" height=1 src="images/stretch.gif" width=5></TD>
    <TD align=right bgColor=#ffffff vAlign=bottom>&nbsp; </TD>
  </TR></TBODY></TABLE>
<TABLE bgColor=#ff0000 border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD class="OraColumnHeader">&nbsp; </TD>
  </TR></TBODY></TABLE>
<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor=#ff0000 vAlign=top class="OraColumnHeader"><IMG alt="" border=0 height=17 src="images/topcurl.gif" width=30></TD>
    <TD vAlign=top width="100%">
      <TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
        <TBODY>
        <TR>
          <TD bgColor=#000000 height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor=#9a9c9a height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor=#b3b4b3 height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        </TBODY>
      </TABLE>
    </TD>
  </TR>
  </TBODY>
</TABLE>
<TABLE width="100%" border="0" cellspacing="0" cellpadding="0">
  <TR>
    <TD width="29%" valign="top"> 
      <TABLE width="77%" border="0" cellspacing="0" cellpadding="0">
        <TR> 
          <TD width="10%" class="OraCellText"><IMG src="images/peach_d_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation goes here </TD>
        </TR>
        <TR> 
          <TD width="10%" class="OraCellText"><IMG src="images/peach_r_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation Item</TD>
        </TR>
      </TABLE>
    </TD>
    <TD width="71%">
      <DIV align="center">
	    <!-- Data Area Generated by Reports Developer -->
<rw:dataArea id="MGORDERIDGRPFR121">
<rw:foreach id="RGORDERID1211" src="G_ORDER_ID">
<!-- Start GetGroupHeader/n --> <table class="OraTable">
 <caption class="OraHeader"> view prices <br>Order Id <rw:field id="F_ORDER_ID" src="ORDER_ID" breakLevel="RGORDERID1211" breakValue="&nbsp;"> F_ORDER_ID </rw:field><br>
 </caption>
<!-- End GetGroupHeader/n -->   <tr>
    <td valign="top">
    <table class="OraTable" summary="view prices">
     <!-- Header -->
     <thead>
      <tr>
       <th <rw:id id="HBITEMPRICE121" asArray="no"/> class="OraColumnHeader"> Item Price </th>
       <th <rw:id id="HBITEMNAME121" asArray="no"/> class="OraColumnHeader"> Item Name </th>
       <th <rw:id id="HBITEMQUANTITY121" asArray="no"/> class="OraColumnHeader"> Item Quantity </th>
       <th <rw:id id="HBTOTALITEMPRICE121" asArray="no"/> class="OraColumnHeader"> Total Item Price </th>
      </tr>
     </thead>
     <!-- Body -->
     <tbody>
      <rw:foreach id="RGITEMPRICE1211" src="G_ITEM_PRICE">
       <tr>
        <td <rw:headers id="HFITEMPRICE121" src="HBITEMPRICE121"/> class="OraCellNumber"><rw:field id="FITEMPRICE121" src="ITEM_PRICE" nullValue="&nbsp;"> F_ITEM_PRICE </rw:field></td>
        <td <rw:headers id="HFITEMNAME121" src="HBITEMNAME121"/> class="OraCellText"><rw:field id="FITEMNAME121" src="ITEM_NAME" nullValue="&nbsp;"> F_ITEM_NAME </rw:field></td>
        <td <rw:headers id="HFITEMQUANTITY121" src="HBITEMQUANTITY121"/> class="OraCellNumber"><rw:field id="FITEMQUANTITY121" src="ITEM_QUANTITY" nullValue="&nbsp;"> F_ITEM_QUANTITY </rw:field></td>
        <td <rw:headers id="HFTOTALITEMPRICE121" src="HBTOTALITEMPRICE121"/> class="OraCellNumber"><rw:field id="FTOTALITEMPRICE121" src="TOTAL_ITEM_PRICE" nullValue="&nbsp;"> F_TOTAL_ITEM_PRICE </rw:field></td>
       </tr>
      </rw:foreach>
     </tbody>
     <tr>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <td <rw:headers id="HFSumTOTALITEMPRICEPerORDER121" src="HBTOTALITEMPRICE121"/> class="OraTotalNumber">Total: <rw:field id="FSumTOTALITEMPRICEPerORDER121" src="SumTOTAL_ITEM_PRICEPerORDER_ID" nullValue="&nbsp;"> F_SumTOTAL_ITEM_PRICEPerORDER_ </rw:field></td>
     </tr>
     <tr>
     </tr>
    </table>
   </td>
  </tr>
 </table>
</rw:foreach>
<table class="OraTable" summary="view prices">
 <tr>
  <th class="OraTotalNumber"> Total: <rw:field id="F_SumTOTAL_ITEM_PRICEPerReport" src="SumTOTAL_ITEM_PRICEPerReport" nullValue="&nbsp;"> F_SumTOTAL_ITEM_PRICEPerReport </rw:field></th>
 </tr>
</table>
</rw:dataArea> <!-- id="MGORDERIDGRPFR121" -->
<!-- End of Data Area Generated by Reports Developer -->

	  </DIV>
    </TD>
  </TR>
</TABLE>
<P><BR>
</P>
<TD align=middle vAlign=top width="100%">&nbsp;</TD>
<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor=#000000 colSpan=2><IMG alt=" " border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor=#ff0000 colSpan=2 class="OraColumnHeader"><IMG alt=" " border=0 height=4 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor=#000000 colSpan=2><IMG alt=" " border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor=#ffffff>&nbsp;</TD>
    <TD align=right bgColor=#ffffff>&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>
<p>&nbsp;</p>
</BODY>
</HTML>
<!--
</rw:report>
-->
