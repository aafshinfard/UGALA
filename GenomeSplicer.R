## Input: a genome + fragLen + 
## 
## 

library("biostrings")
E.albe = readDNAStringSet( "~/Desktop/Thesis/DataSet/E_albertii_TW07627.fa" )
E.coli = readDNAStringSet( "~/Desktop/Thesis/DataSet/E_coli_K12_DH10B.fa" )


Genome = E.alb[1];
fragLen = 25
GenomeSplicer = function (Genome, fragLen){
  boxes = DNAStringSet();
  require("BSgenome");
  require("Biostrings");
  LEN = width(Genome);
  fragCount = as.integer((LEN-20) / fragLen);
  LEN - (fragCount * fragLen)
  
  for (i in 1:fragCount ){
    boxes = DNAString(substr(Genome,(i-1)*fragLen+1,(i)*fragLen))
  }
  
}
