TARGET= server client
normal: $(TARGET)
server: server.o hashtable.o
	clang++ -o server server.o hashtable.o
server.o: server.cpp hashtable.h
	clang++ -c server.cpp
client: client.o
	clang++ -o client client.o
client.o: client.cpp
	clang++ -c client.cpp
hashtable.o: hashtable.h hashtable.cpp
	clang++ -c hashtable.cpp
testavl: test_avl.o
	clang++ -o testavl test_avl.o
test_avl.o: test_avl.cpp avl.cpp
	clang++ -c test_avl.cpp
clean:
	rm -f ./*.o
	rm server
	rm client
