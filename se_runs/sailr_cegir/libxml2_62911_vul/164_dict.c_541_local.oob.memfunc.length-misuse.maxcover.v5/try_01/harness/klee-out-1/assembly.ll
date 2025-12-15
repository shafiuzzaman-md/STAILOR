; ModuleID = '/media/shafi/Research/home/SAILR/se_runs/sailr_cegir/libxml2_62911_vul/164_dict.c_541_local.oob.memfunc.length-misuse.maxcover.v5/try_01/harness/harness.bc'
source_filename = "/media/shafi/Research/home/SAILR/se_runs/sailr_cegir/libxml2_62911_vul/164_dict.c_541_local.oob.memfunc.length-misuse.maxcover.v5/try_01/harness/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type { i32, %struct.xmlHashedString*, i64, i32, i8*, %struct._xmlDict*, i32, i64 }
%struct.xmlHashedString = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"entry_name_buf\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"name_buf\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"hashValue\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"BUG_ASSERT: OOB access on entry->name[len]\00", align 1
@.str.5 = private unnamed_addr constant [87 x i8] c"len < strlen((const char*)entry->name) && \22BUG_ASSERT: OOB access on entry->name[len]\22\00", align 1
@.str.6 = private unnamed_addr constant [155 x i8] c"/media/shafi/Research/home/SAILR/se_runs/sailr_cegir/libxml2_62911_vul/164_dict.c_541_local.oob.memfunc.length-misuse.maxcover.v5/try_01/harness/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlDictFindEntry = private unnamed_addr constant [108 x i8] c"xmlDictEntry *xmlDictFindEntry(const xmlDict *, const xmlChar *, const xmlChar *, int, unsigned int, int *)\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"0 && \22REACH_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"xmlStrQEqual_ret\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDict, align 8
  %3 = alloca %struct.xmlHashedString*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 8, i64* %9, align 8
  %10 = bitcast i32* %6 to i8*
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = sext i32 %13 to i64
  call void @klee_assume(i64 noundef %14)
  %15 = load i32, i32* %6, align 4
  %16 = icmp sle i32 %15, 1000
  %17 = zext i1 %16 to i32
  %18 = sext i32 %17 to i64
  call void @klee_assume(i64 noundef %18)
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 1024, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %21 = load i8, i8* %20, align 16
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  call void @klee_assume(i64 noundef %25)
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  call void @klee_make_symbolic(i8* noundef %26, i64 noundef 1024, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %27 = bitcast i32* %7 to i8*
  call void @klee_make_symbolic(i8* noundef %27, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i64, i64* %9, align 8
  %29 = call noalias i8* @calloc(i64 noundef %28, i64 noundef 16) #5
  %30 = bitcast i8* %29 to %struct.xmlHashedString*
  store %struct.xmlHashedString* %30, %struct.xmlHashedString** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.xmlHashedString*, %struct.xmlHashedString** %3, align 8
  %33 = getelementptr inbounds %struct.xmlHashedString, %struct.xmlHashedString* %32, i64 0
  %34 = getelementptr inbounds %struct.xmlHashedString, %struct.xmlHashedString* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %36 = load %struct.xmlHashedString*, %struct.xmlHashedString** %3, align 8
  %37 = getelementptr inbounds %struct.xmlHashedString, %struct.xmlHashedString* %36, i64 0
  %38 = getelementptr inbounds %struct.xmlHashedString, %struct.xmlHashedString* %37, i32 0, i32 1
  store i8* %35, i8** %38, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %2, i32 0, i32 2
  store i64 %39, i64* %40, align 8
  %41 = load %struct.xmlHashedString*, %struct.xmlHashedString** %3, align 8
  %42 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %2, i32 0, i32 1
  store %struct.xmlHashedString* %41, %struct.xmlHashedString** %42, align 8
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.xmlHashedString* @xmlDictFindEntry(%struct._xmlDict* noundef %2, i8* noundef null, i8* noundef %43, i32 noundef %44, i32 noundef %45, i32* noundef %8)
  %47 = load %struct.xmlHashedString*, %struct.xmlHashedString** %3, align 8
  %48 = bitcast %struct.xmlHashedString* %47 to i8*
  call void @free(i8* noundef %48) #5
  ret i32 0
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #1

declare void @klee_assume(i64 noundef) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

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
  %52 = call i64 @strlen(i8* noundef %51) #6
  %53 = icmp ult i64 %48, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  br i1 true, label %55, label %56

55:                                               ; preds = %54
  br label %58

56:                                               ; preds = %54, %46
  call void @__assert_fail(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([155 x i8], [155 x i8]* @.str.6, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @__PRETTY_FUNCTION__.xmlDictFindEntry, i64 0, i64 0)) #7
  unreachable

57:                                               ; No predecessors!
  br label %58

58:                                               ; preds = %57, %55
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([155 x i8], [155 x i8]* @.str.6, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @__PRETTY_FUNCTION__.xmlDictFindEntry, i64 0, i64 0)) #7
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
  br i1 %102, label %37, label %103, !llvm.loop !6

103:                                              ; preds = %101, %67
  br label %104

104:                                              ; preds = %103, %6
  %105 = load i32, i32* %17, align 4
  %106 = load i32*, i32** %12, align 8
  store i32 %105, i32* %106, align 4
  %107 = load %struct.xmlHashedString*, %struct.xmlHashedString** %13, align 8
  ret %struct.xmlHashedString* %107
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlStrQEqual(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = bitcast i32* %7 to i8*
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 1
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi i1 [ true, %3 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = sext i32 %16 to i64
  call void @klee_assume(i64 noundef %17)
  %18 = load i32, i32* %7, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.6"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
