#!/usr/bin/perl -w
use utf8;

while (<>) 
{
# convert latin to syllabics

#s/nngaai//g ; 
s/nngii/ᙱ/g ; 
s/nnguu/ᙳ/g ; 
s/nngaa/ᙵ/g ; 

s/ngaai/ᙰ/g ; 
s/ngii/ᖏ/g ; 
s/nguu/ᖑ/g ; 
s/ngaa/ᖓ/g ; 

#s/paai/ᐯ/g ; 
s/pii/ᐲ/g ; 
s/puu/ᐴ/g ; 
s/paa/ᐹ/g ; 

s/baai/ᐯ/g ; 
s/bii/ᐲ/g ; 
s/buu/ᐴ/g ; 
s/baa/ᐹ/g ; 

s/taai/ᑌ/g ; 
s/tii/ᑏ/g ; 
s/tuu/ᑑ/g ; 
s/taa/ᑖ/g ; 

s/daai/ᑌ/g ; 
s/dii/ᑏ/g ; 
s/duu/ᑑ/g ; 
s/daa/ᑖ/g ; 

s/kaai/ᑫ/g ; 
s/kii/ᑮ/g ; 
s/kuu/ᑰ/g ; 
s/kaa/ᑳ/g ; 

s/gaai/ᒉ/g ; 
s/gii/ᒌ/g ; 
s/guu/ᒎ/g ; 
s/gaa/ᒑ/g ; 

s/maai/ᒣ/g ; 
s/mii/ᒦ/g ; 
s/muu/ᒨ/g ; 
s/maa/ᒫ/g ; 

s/naai/ᓀ/g ; 
s/nii/ᓃ/g ; 
s/nuu/ᓅ/g ; 
s/naa/ᓈ/g ; 

s/saai/ᓭ/g ; 
s/sii/ᓰ/g ; 
s/suu/ᓲ/g ; 
s/saa/ᓵ/g ; 

s/zaai/ᓭ/g ; 
s/zii/ᓰ/g ; 
s/zuu/ᓲ/g ; 
s/zaa/ᓵ/g ; 

s/haai/ᓭ/g ; 
s/hii/ᓰ/g ; 
s/huu/ᓲ/g ; 
s/haa/ᓵ/g ; 

s/laai/ᓓ/g ; 
s/lii/ᓖ/g ; 
s/luu/ᓘ/g ; 
s/laa/ᓛ/g ; 

s/jaai/ᔦ/g ; 
s/jii/ᔩ/g ; 
s/juu/ᔫ/g ; 
s/jaa/ᔮ/g ; 

s/vaai/ᕓ/g ; 
s/vii/ᕖ/g ; 
s/vuu/ᕘ/g ; 
s/vaa/ᕚ/g ; 

s/faai/ᕓ/g ; 
s/fii/ᕖ/g ; 
s/fuu/ᕘ/g ; 
s/faa/ᕚ/g ; 

s/raai/ᕃ/g ; 
s/rii/ᕇ/g ; 
s/ruu/ᕉ/g ; 
s/raa/ᕌ/g ; 

s/qaai/ᙯ/g ; 
s/qii/ᖀ/g ; 
s/quu/ᖂ/g ; 
s/qaa/ᖄ/g ; 

s/łaai//g ; 
s/łii/ᖡ/g ; 
s/łuu/ᖣ/g ; 
s/łaa/ᖥ/g ; 

s/aai/ᐁ/g ; #?
s/ii/ᐄ/g ; 
s/uu/ᐆ/g ; 
s/aa/ᐋ/g ; 



s/nngai//g ; 
s/nngi/ᙱ/g ; 
s/nngu/ᙳ/g ; 
s/nnga/ᙵ/g ; 

s/ngai/ᙰ/g ; 
s/ngi/ᖏ/g ; 
s/ngu/ᖑ/g ; 
s/nga/ᖓ/g ; 

s/pai/ᐯ/g ; 
s/pi/ᐱ/g ; 
s/pu/ᐳ/g ; 
s/pa/ᐸ/g ; 

s/bai/ᐯ/g ; 
s/bi/ᐱ/g ; 
s/bu/ᐳ/g ; 
s/ba/ᐸ/g ; 

s/tai/ᑌ/g ; 
s/ti/ᑎ/g ; 
s/tu/ᑐ/g ; 
s/ta/ᑕ/g ; 

s/dai/ᑌ/g ; 
s/di/ᑎ/g ; 
s/du/ᑐ/g ; 
s/da/ᑕ/g ; 

s/kai/ᑫ/g ; 
s/ki/ᑭ/g ; 
s/ku/ᑯ/g ; 
s/ka/ᑲ/g ; 

s/gai/ᒉ/g ; 
s/gi/ᒋ/g ; 
s/gu/ᒍ/g ; 
s/ga/ᒐ/g ; 

s/mai/ᒣ/g ; 
s/mi/ᒥ/g ; 
s/mu/ᒧ/g ; 
s/ma/ᒪ/g ; 

s/nai/ᓀ/g ; 
s/ni/ᓂ/g ; 
s/nu/ᓄ/g ; 
s/na/ᓇ/g ; 

s/sai/ᓭ/g ; 
s/si/ᓯ/g ; 
s/su/ᓱ/g ; 
s/sa/ᓴ/g ; 

s/zai/ᓭ/g ; 
s/zi/ᓯ/g ; 
s/zu/ᓱ/g ; 
s/za/ᓴ/g ; 

s/hai/ᓭ/g ; 
s/hi/ᓯ/g ; 
s/hu/ᓱ/g ; 
s/ha/ᓴ/g ; 

s/lai/ᓓ/g ; 
s/li/ᓕ/g ; 
s/lu/ᓗ/g ; 
s/la/ᓚ/g ; 

s/jai/ᔦ/g ; 
s/ji/ᔨ/g ; 
s/ju/ᔪ/g ; 
s/ja/ᔭ/g ; 

s/vai/ᕓ/g ; 
s/vi/ᕕ/g ; 
s/vu/ᕗ/g ; 
s/va/ᕙ/g ; 

s/fai/ᕓ/g ; 
s/fi/ᕕ/g ; 
s/fu/ᕗ/g ; 
s/fa/ᕙ/g ; 

s/rai/ᕃ/g ; 
s/ri/ᕆ/g ; 
s/ru/ᕈ/g ; 
s/ra/ᕋ/g ; 

s/qai/ᙯ/g ; 
s/qi/ᕿ/g ; 
s/qu/ᖁ/g ; 
s/qa/ᖃ/g ; 

s/łai//g ; 
s/łi/ᖠ/g ; 
s/łu/ᖢ/g ; 
s/ła/ᖤ/g ; 

s/ai/ᐁ/g ; 
s/i/ᐃ/g ; 
s/e/ᐃ/g ; 
s/u/ᐅ/g ; 
s/o/ᐅ/g ; 
s/a/ᐊ/g ; 

s/ng/ᖕ/g ;
s/nng/ᖖ/g ;

s/p/ᑉ/g ;
s/b/ᑉ/g ;
s/t/ᑦ/g ;
s/d/ᑦ/g ;
s/k/ᒃ/g ;
s/g/ᖅ/g ;
s/m/ᒻ/g ;
s/n/ᓐ/g ;
s/s/ᔅ/g ;
s/z/ᔅ/g ;
s/h/ᕻ/g ;
s/l/ᓪ/g ;
s/j//g ;
s/v/ᕝ/g ;
s/f/ᕝ/g ;
s/r/ᕐ/g ;
s/q/ᖅ/g ;
s/ł/ᖦ/g ;


print ;
}
