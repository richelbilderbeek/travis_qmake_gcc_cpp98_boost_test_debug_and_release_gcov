# Shared files
HEADERS += my_functions.h
SOURCES += my_functions.cpp

# Unique files
SOURCES += main.cpp

# Compile with a high warning level, a warning is an error
QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror

# Debug and release mode
CONFIG += console debug_and_release
CONFIG(release, debug|release) {
  DEFINES += NDEBUG
}

# gcov
QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov
