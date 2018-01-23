library("BSgenome.Hsapiens.UCSC.hg38");
library("BSgenome.Mmusculus.UCSC.mm10");

chrx_human = DNAStringSet(BSgenome.Hsapiens.UCSC.hg38$chrX)
names(chrx_human) = "chrXhuman"
chrx_mouse = DNAStringSet(BSgenome.Mmusculus.UCSC.mm10$chrX)
names(chrx_mouse) = "chrXmouse"

writeXStringSet(chrx_human,"~/Desktop/Thesis/DataSet/ChrXHuman",format = "fasta")
writeXStringSet(chrx_mouse,"~/Desktop/Thesis/DataSet/ChrXMouse",format = "fasta")

a = round(runif(10000,0,1))
j=0;
for(i in 1:(length(a)-1)) {
  if (a[i]==a[i+1]) {
    if(a[i]==1){
      j=j+1
    }
  }
}
j
