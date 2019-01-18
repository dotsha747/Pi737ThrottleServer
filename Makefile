
NAME = Pi737ThrottleServer

BUILDDIR = output

SRCS = $(wildcard src/*.cpp)
LIBS = boost_system
OBJS = $(patsubst $(BUILDDIR)/src/%.o, $(BUILDDIR)/%.o, $(patsubst %.cpp, $(BUILDDIR)/%.o, $(SRCS)))
EXE = output/$(NAME)


all:	output/$(NAME)

show:
	@echo SRCS: $(SRCS)
	@echo OBJS: $(OBJS)

$(BUILDDIR):
	mkdir -p $(BUILDDIR)


$(BUILDDIR)/%.o:src/%.cpp
	@echo compile $<
	$(CXX) $(CFLAGS) $(CXXFLAGS) -c -o $@ $< 

$(EXE): $(OBJS) 
	$(CXX) -o $@ $(OBJS) $(LDFLAGS) $(patsubst %, -l%, $(LIBS))
	

clean:
	rm -fr $(EXE) $(OBJS)
