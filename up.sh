up ()
{
  LIMIT=$1
  P=$PWD
  echo "Moving $LIMIT directories up from $P"
  for ((i=1; i <= LIMIT; i++))
  do
      P=$P/..
  done
  cd $P
}
