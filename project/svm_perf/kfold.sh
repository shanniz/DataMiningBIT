#Author: Zeeshan Ahmed


#echo './nb_learn data/train.samp data/nb.mod'
#./nb_learn data/train.samp data/nb.mod
#echo './nb_classify data/test.samp data/nb.mod data/nb.out'
#./nb_classify data/test.samp data/nb.mod data/nb.out

for i in 1 #2 3 4 5 6 7 8 9 10
do
	#./nb_learn data/train.samp data/nb.mod
	echo
#	echo Fold - $i
	echo Training...
# START=$(date +%s%N)
	#./svm_perf_learn -c 20  data/trainset$i.dat ./output/svmmodel$i.dat > /dev/null
	./svm_perf_learn -c 20  data/trainfeaturevectors.dat ./output/svmmodel$i.dat > /dev/null
	echo Classifying...
	#./svm_perf_classify data/testset$i.dat ./output/svmmodel$i.dat ./output/svmoutput$i.dat
	./svm_perf_classify data/testfeaturevectors.dat ./output/svmmodel$i.dat ./output/svmoutput$i.dat
	#./svm_perf_classify ./data/newtestset$i.dat ./output/svmmodel$i.dat ./output/svmoutput$i.dat
#	END=$(date +%s%N)
#	DIFF=$(( $END - $START ))

done

#echo "It took $DIFF nano seconds for training"
