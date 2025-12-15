; ModuleID = '/media/shafi/Research/home/SAILR/se_runs/sailr_cegir/libxml2_62911_vul/164_dict.c_541_local.oob.memfunc.length-misuse.maxcover.v5/try_01/harness/harness.bc'
source_filename = "/media/shafi/Research/home/SAILR/se_runs/sailr_cegir/libxml2_62911_vul/164_dict.c_541_local.oob.memfunc.length-misuse.maxcover.v5/try_01/harness/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type { i32, %struct.xmlHashedString*, i64, i32, i8*, %struct._xmlDict*, i32, i64 }
%struct.xmlHashedString = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"name_buf\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"entry_name_buf\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"hashValue\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"BUG_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"len < strlen(entry->name) && \22BUG_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [155 x i8] c"/media/shafi/Research/home/SAILR/se_runs/sailr_cegir/libxml2_62911_vul/164_dict.c_541_local.oob.memfunc.length-misuse.maxcover.v5/try_01/harness/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlDictFindEntry = private unnamed_addr constant [108 x i8] c"xmlDictEntry *xmlDictFindEntry(const xmlDict *, const xmlChar *, const xmlChar *, int, unsigned int, int *)\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"0 && \22REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias i8* @malloc(i64 noundef %3) #9
  ret i8* %4
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void @free(i8* noundef %3) #9
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlMutexLock(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlMutexUnlock(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlInitParser() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlDictHashName(i32 noundef %0, i8* noundef %1, i64 noundef %2, i64* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %9 = load i64*, i64** %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %28, %12
  %14 = load i8*, i8** %6, align 8
  %15 = load i64*, i64** %8, align 8
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %23, %24
  br label %26

26:                                               ; preds = %21, %13
  %27 = phi i1 [ false, %13 ], [ %25, %21 ]
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = load i64*, i64** %8, align 8
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %29, align 8
  br label %13, !llvm.loop !12

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %4
  ret i32 -559038737
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlDictHashQName(i32 noundef %0, i8* noundef %1, i8* noundef %2, i64* noundef %3, i64* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %11 = load i64*, i64** %9, align 8
  store i64 0, i64* %11, align 8
  %12 = load i64*, i64** %10, align 8
  store i64 0, i64* %12, align 8
  ret i32 -559038737
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDict, align 8
  %3 = alloca %struct.xmlHashedString*, align 8
  %4 = alloca %struct.xmlHashedString, align 8
  %5 = alloca [100 x i8], align 16
  %6 = alloca [50 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %10 = bitcast %struct._xmlDict* %2 to i8*
  %11 = call i8* @memset(i8* %10, i32 0, i64 64)
  %12 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %2, i32 0, i32 2
  store i64 1, i64* %12, align 8
  %13 = call i8* @xmlMalloc(i64 noundef 16)
  %14 = bitcast i8* %13 to %struct.xmlHashedString*
  store %struct.xmlHashedString* %14, %struct.xmlHashedString** %3, align 8
  %15 = load %struct.xmlHashedString*, %struct.xmlHashedString** %3, align 8
  %16 = bitcast %struct.xmlHashedString* %15 to i8*
  %17 = call i8* @memset(i8* %16, i32 0, i64 16)
  %18 = load %struct.xmlHashedString*, %struct.xmlHashedString** %3, align 8
  %19 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %2, i32 0, i32 1
  store %struct.xmlHashedString* %18, %struct.xmlHashedString** %19, align 8
  %20 = bitcast i32* %7 to i8*
  call void @klee_make_symbolic(i8* noundef %20, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %7, align 4
  %22 = icmp sge i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  call void @klee_assume(i64 noundef %24)
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 1000
  %27 = zext i1 %26 to i32
  %28 = sext i32 %27 to i64
  call void @klee_assume(i64 noundef %28)
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  call void @klee_make_symbolic(i8* noundef %29, i64 noundef 100, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 99
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  call void @klee_make_symbolic(i8* noundef %31, i64 noundef 50, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %32 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 49
  store i8 0, i8* %32, align 1
  %33 = bitcast i32* %8 to i8*
  call void @klee_make_symbolic(i8* noundef %33, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* %8, align 4
  %35 = getelementptr inbounds %struct.xmlHashedString, %struct.xmlHashedString* %4, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %37 = getelementptr inbounds %struct.xmlHashedString, %struct.xmlHashedString* %4, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = load %struct.xmlHashedString*, %struct.xmlHashedString** %3, align 8
  %39 = getelementptr inbounds %struct.xmlHashedString, %struct.xmlHashedString* %38, i64 0
  %40 = bitcast %struct.xmlHashedString* %39 to i8*
  %41 = bitcast %struct.xmlHashedString* %4 to i8*
  %42 = call i8* @memcpy(i8* %40, i8* %41, i64 16)
  %43 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call %struct.xmlHashedString* @xmlDictFindEntry(%struct._xmlDict* noundef %2, i8* noundef null, i8* noundef %43, i32 noundef %44, i32 noundef %45, i32* noundef %9)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xmlHashedString* @xmlDictFindEntry(%struct._xmlDict* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef %4, i32* noundef %5) #0 {
  %7 = alloca %struct._xmlDict*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.xmlHashedString*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct._xmlDict* %0, %struct._xmlDict** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct._xmlDict*, %struct._xmlDict** %7, align 8
  %19 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %20, 1
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %14, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %15, align 4
  %26 = load %struct._xmlDict*, %struct._xmlDict** %7, align 8
  %27 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %26, i32 0, i32 1
  %28 = load %struct.xmlHashedString*, %struct.xmlHashedString** %27, align 8
  %29 = load i32, i32* %15, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.xmlHashedString, %struct.xmlHashedString* %28, i64 %30
  store %struct.xmlHashedString* %31, %struct.xmlHashedString** %13, align 8
  %32 = load %struct.xmlHashedString*, %struct.xmlHashedString** %13, align 8
  %33 = getelementptr inbounds %struct.xmlHashedString, %struct.xmlHashedString* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %104

36:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  br label %37

37:                                               ; preds = %101, %36
  %38 = load %struct.xmlHashedString*, %struct.xmlHashedString** %13, align 8
  %39 = getelementptr inbounds %struct.xmlHashedString, %struct.xmlHashedString* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.xmlHashedString*, %struct.xmlHashedString** %13, align 8
  %50 = getelementptr inbounds %struct.xmlHashedString, %struct.xmlHashedString* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strlen(i8* noundef %51) #10
  %53 = icmp ult i64 %48, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  br i1 true, label %55, label %56

55:                                               ; preds = %54
  br label %58

56:                                               ; preds = %54, %46
  call void @__assert_fail(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([155 x i8], [155 x i8]* @.str.6, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @__PRETTY_FUNCTION__.xmlDictFindEntry, i64 0, i64 0)) #11
  unreachable

57:                                               ; No predecessors!
  br label %58

58:                                               ; preds = %57, %55
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([155 x i8], [155 x i8]* @.str.6, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @__PRETTY_FUNCTION__.xmlDictFindEntry, i64 0, i64 0)) #11
  unreachable

59:                                               ; preds = %43
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load %struct.xmlHashedString*, %struct.xmlHashedString** %13, align 8
  %63 = getelementptr inbounds %struct.xmlHashedString, %struct.xmlHashedString* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @xmlStrQEqual(i8* noundef %60, i8* noundef %61, i8* noundef %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 1, i32* %17, align 4
  br label %103

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69, %37
  %71 = load i32, i32* %16, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %15, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %15, align 4
  %75 = load %struct.xmlHashedString*, %struct.xmlHashedString** %13, align 8
  %76 = getelementptr inbounds %struct.xmlHashedString, %struct.xmlHashedString* %75, i32 1
  store %struct.xmlHashedString* %76, %struct.xmlHashedString** %13, align 8
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %14, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %70
  %82 = load %struct._xmlDict*, %struct._xmlDict** %7, align 8
  %83 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %82, i32 0, i32 1
  %84 = load %struct.xmlHashedString*, %struct.xmlHashedString** %83, align 8
  store %struct.xmlHashedString* %84, %struct.xmlHashedString** %13, align 8
  br label %85

85:                                               ; preds = %81, %70
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.xmlHashedString*, %struct.xmlHashedString** %13, align 8
  %88 = getelementptr inbounds %struct.xmlHashedString, %struct.xmlHashedString* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.xmlHashedString*, %struct.xmlHashedString** %13, align 8
  %94 = getelementptr inbounds %struct.xmlHashedString, %struct.xmlHashedString* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sub i32 %92, %95
  %97 = load i32, i32* %14, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* %16, align 4
  %100 = icmp uge i32 %98, %99
  br label %101

101:                                              ; preds = %91, %86
  %102 = phi i1 [ false, %86 ], [ %100, %91 ]
  br i1 %102, label %37, label %103, !llvm.loop !14

103:                                              ; preds = %101, %67
  br label %104

104:                                              ; preds = %103, %6
  %105 = load i32, i32* %17, align 4
  %106 = load i32*, i32** %12, align 8
  store i32 %105, i32* %106, align 4
  %107 = load %struct.xmlHashedString*, %struct.xmlHashedString** %13, align 8
  ret %struct.xmlHashedString* %107
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #5

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlStrQEqual(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @xmlStrEqual(i8* noundef %11, i8* noundef %12)
  store i32 %13, i32* %4, align 4
  br label %72

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %72

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %72

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %45, %22
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  %26 = load i8, i8* %24, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %72

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %7, align 8
  %37 = load i8, i8* %35, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %40, %34
  %46 = phi i1 [ false, %34 ], [ %44, %40 ]
  br i1 %46, label %23, label %47, !llvm.loop !15

47:                                               ; preds = %45
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  %50 = load i8, i8* %48, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %51, 58
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %72

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %66, %54
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  %58 = load i8, i8* %56, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %72

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  %69 = load i8, i8* %67, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %55, label %71, !llvm.loop !16

71:                                               ; preds = %66
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %64, %53, %32, %21, %17, %10
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlStrEqual(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp eq i8* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %35

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10
  store i32 0, i32* %3, align 4
  br label %35

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %29, %17
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %4, align 8
  %21 = load i8, i8* %19, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %35

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  %32 = load i8, i8* %30, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %18, label %34, !llvm.loop !17

34:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %27, %16, %9
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !18 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !29, metadata !DIExpression()), !dbg !30
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !31, metadata !DIExpression()), !dbg !32
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i8** %7, metadata !35, metadata !DIExpression()), !dbg !38
  %9 = load i8*, i8** %4, align 8, !dbg !39
  store i8* %9, i8** %7, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata i8** %8, metadata !40, metadata !DIExpression()), !dbg !43
  %10 = load i8*, i8** %5, align 8, !dbg !44
  store i8* %10, i8** %8, align 8, !dbg !43
  br label %11, !dbg !45

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !46
  %13 = add i64 %12, -1, !dbg !46
  store i64 %13, i64* %6, align 8, !dbg !46
  %14 = icmp ugt i64 %12, 0, !dbg !47
  br i1 %14, label %15, label %21, !dbg !45

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !48
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !48
  store i8* %17, i8** %8, align 8, !dbg !48
  %18 = load i8, i8* %16, align 1, !dbg !49
  %19 = load i8*, i8** %7, align 8, !dbg !50
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !50
  store i8* %20, i8** %7, align 8, !dbg !50
  store i8 %18, i8* %19, align 1, !dbg !51
  br label %11, !dbg !45, !llvm.loop !52

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !53
  ret i8* %22, !dbg !54
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !55 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !60, metadata !DIExpression()), !dbg !61
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !62, metadata !DIExpression()), !dbg !63
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i8** %7, metadata !66, metadata !DIExpression()), !dbg !67
  %8 = load i8*, i8** %4, align 8, !dbg !68
  store i8* %8, i8** %7, align 8, !dbg !67
  br label %9, !dbg !69

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !70
  %11 = add i64 %10, -1, !dbg !70
  store i64 %11, i64* %6, align 8, !dbg !70
  %12 = icmp ugt i64 %10, 0, !dbg !71
  br i1 %12, label %13, label %18, !dbg !69

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !72
  %15 = trunc i32 %14 to i8, !dbg !72
  %16 = load i8*, i8** %7, align 8, !dbg !73
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !73
  store i8* %17, i8** %7, align 8, !dbg !73
  store i8 %15, i8* %16, align 1, !dbg !74
  br label %9, !dbg !69, !llvm.loop !75

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !76
  ret i8* %19, !dbg !77
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7, !7, !7}
!llvm.dbg.cu = !{!8, !10}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{!"Ubuntu clang version 14.0.6"}
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !DISubprogram(name: "memcpy", scope: !19, file: !19, line: 12, type: !20, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !28)
!19 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !22, !23, !25}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !27)
!26 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !{}
!29 = !DILocalVariable(name: "destaddr", arg: 1, scope: !18, file: !19, line: 12, type: !22)
!30 = !DILocation(line: 12, column: 20, scope: !18)
!31 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !18, file: !19, line: 12, type: !23)
!32 = !DILocation(line: 12, column: 42, scope: !18)
!33 = !DILocalVariable(name: "len", arg: 3, scope: !18, file: !19, line: 12, type: !25)
!34 = !DILocation(line: 12, column: 58, scope: !18)
!35 = !DILocalVariable(name: "dest", scope: !18, file: !19, line: 13, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!38 = !DILocation(line: 13, column: 9, scope: !18)
!39 = !DILocation(line: 13, column: 16, scope: !18)
!40 = !DILocalVariable(name: "src", scope: !18, file: !19, line: 14, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!43 = !DILocation(line: 14, column: 15, scope: !18)
!44 = !DILocation(line: 14, column: 21, scope: !18)
!45 = !DILocation(line: 16, column: 3, scope: !18)
!46 = !DILocation(line: 16, column: 13, scope: !18)
!47 = !DILocation(line: 16, column: 16, scope: !18)
!48 = !DILocation(line: 17, column: 19, scope: !18)
!49 = !DILocation(line: 17, column: 15, scope: !18)
!50 = !DILocation(line: 17, column: 10, scope: !18)
!51 = !DILocation(line: 17, column: 13, scope: !18)
!52 = distinct !{!52, !45, !48, !13}
!53 = !DILocation(line: 18, column: 10, scope: !18)
!54 = !DILocation(line: 18, column: 3, scope: !18)
!55 = distinct !DISubprogram(name: "memset", scope: !56, file: !56, line: 12, type: !57, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !28)
!56 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!57 = !DISubroutineType(types: !58)
!58 = !{!22, !22, !59, !25}
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !DILocalVariable(name: "dst", arg: 1, scope: !55, file: !56, line: 12, type: !22)
!61 = !DILocation(line: 12, column: 20, scope: !55)
!62 = !DILocalVariable(name: "s", arg: 2, scope: !55, file: !56, line: 12, type: !59)
!63 = !DILocation(line: 12, column: 29, scope: !55)
!64 = !DILocalVariable(name: "count", arg: 3, scope: !55, file: !56, line: 12, type: !25)
!65 = !DILocation(line: 12, column: 39, scope: !55)
!66 = !DILocalVariable(name: "a", scope: !55, file: !56, line: 13, type: !36)
!67 = !DILocation(line: 13, column: 9, scope: !55)
!68 = !DILocation(line: 13, column: 13, scope: !55)
!69 = !DILocation(line: 14, column: 3, scope: !55)
!70 = !DILocation(line: 14, column: 15, scope: !55)
!71 = !DILocation(line: 14, column: 18, scope: !55)
!72 = !DILocation(line: 15, column: 12, scope: !55)
!73 = !DILocation(line: 15, column: 7, scope: !55)
!74 = !DILocation(line: 15, column: 10, scope: !55)
!75 = distinct !{!75, !69, !72, !13}
!76 = !DILocation(line: 16, column: 10, scope: !55)
!77 = !DILocation(line: 16, column: 3, scope: !55)
