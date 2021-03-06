cmake_minimum_required(VERSION 3.4.1)

# OPTION(ANDROID "Android platform" OFF)

if(ANDROID)
  string(TOLOWER ${CMAKE_BUILD_TYPE} ANDROID_BUILD_DIR)
  set(DISTRIBUTION_DIR ${CMAKE_SOURCE_DIR}/android/distribution/android/SDL2/intermediates/ndkBuild)
  set(SOURCE_FILES android/test_engine_repo/src/main.cpp)
  set(SDL_LOCATION ${CMAKE_SOURCE_DIR}/android/thirdparty/SDL2)

  add_library( SDL2 SHARED IMPORTED )
  set_target_properties(SDL2 PROPERTIES IMPORTED_LOCATION
  ${DISTRIBUTION_DIR}/${ANDROID_BUILD_DIR}/obj/local/${ANDROID_ABI}/libSDL2.so)

  include_directories(${SDL_LOCATION}/SDL2/include)

  add_library( main SHARED ${SDL_LOCATION}/SDL2/src/main/android/SDL_android_main.c ${SOURCE_FILES} )

  target_link_libraries( main SDL2 )
endif(ANDROID)
