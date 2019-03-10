#Kompilerer .java til et directory "run" og kjører filnavn fra argument: jd [filnavnDuVilKjøre]
jd(){
  if javac *.java; then
    printf "Kompilering suksess, kjører program.\n======================================\n\n"
   # if [ ! -d "$run" ]; then
       mkdir -p run
   # fi

    mv *.class run
    java -cp run "$1"
  else
    echo "Feil i kompilering.\n==================\n\n"
  fi
}
