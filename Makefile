##########
# SIMPAGER
##########
CXX = g++
CXXFLAGS = -O2
OBJS = main.o fifo.o lru.o opt.o rand.o

#   $^ - "all the dependencies"
#   $< - "the first dependency"
#   $@ - "the target name"


simpager: $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

$(OBJS) : %.o : %.cpp
	@echo "Macros Version"
	$(CXX) $(CXXFLAGS) -c $<

main.o: main.cpp
	@echo "Building main.o"
	$(CXX) $(CXXFLAGS) -c $<

#fifo.o: fifo.cpp
#	$(CXX) $(CXXFLAGS) -c $<

#lru.o: lru.cpp
#	$(CXX) $(CXXFLAGS) -c $<

#opt.o: opt.cpp
#	$(CXX) $(CXXFLAGS) -c $<

#rand.o: rand.cpp
#	$(CXX) $(CXXFLAGS) -c $<

.PHONEY: clean
clean:
	/bin/rm -f *.o simpager
