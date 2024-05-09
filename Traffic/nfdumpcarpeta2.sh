for variable in nfcapd.20* 
 do
#trafico lan1 lan2   
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.1.1 and dst ip 33.4.2.3' -o csv >> traficolanf1_2
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.1.1 and dst ip 33.4.2.4' -o csv >> traficolanf1_2
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.1.2 and dst ip 33.4.2.3' -o csv >> traficolanf1_2
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.1.2 and dst ip 33.4.2.4' -o csv >> traficolanf1_2
#trafico lan1 lan3 
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.1.1 and dst ip 33.4.3.5' -o csv >> traficolanf1_3
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.1.1 and dst ip 33.4.3.6' -o csv >> traficolanf1_3
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.1.2 and dst ip 33.4.3.5' -o csv >> traficolanf1_3
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.1.2 and dst ip 33.4.3.6' -o csv >> traficolanf1_3
#trafico lan2 lan1 
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.2.3 and dst ip 33.4.1.1' -o csv >> traficolanf2_1
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.2.3 and dst ip 33.4.1.2' -o csv >> traficolanf2_1
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.2.4 and dst ip 33.4.1.1' -o csv >> traficolanf2_1
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.2.4 and dst ip 33.4.1.2' -o csv >> traficolanf2_1
#trafico lan2 lan3
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.2.3 and dst ip 33.4.3.5' -o csv >> traficolanf2_3
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.2.3 and dst ip 33.4.3.6' -o csv >> traficolanf2_3
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.2.4 and dst ip 33.4.3.5' -o csv >> traficolanf2_3
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.2.4 and dst ip 33.4.3.6' -o csv >> traficolanf2_3
#trafico lan3 lan1 
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.3.5 and dst ip 33.4.1.1' -o csv >> traficolanf3_1
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.3.5 and dst ip 33.4.1.2' -o csv >> traficolanf3_1
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.3.6 and dst ip 33.4.1.1' -o csv >> traficolanf3_1
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.3.6 and dst ip 33.4.1.2' -o csv >> traficolanf3_1
#trafico lan3 lan2 
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.3.5 and dst ip 33.4.2.3' -o csv >> traficolanf3_2
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.3.5 and dst ip 33.4.2.4' -o csv >> traficolanf3_2
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.3.6 and dst ip 33.4.2.3' -o csv >> traficolanf3_2
   nfdump -r $variable -q -A srcip,dstip 'src ip 33.4.3.6 and dst ip 33.4.2.4' -o csv >> traficolanf3_2
 done
 
 
