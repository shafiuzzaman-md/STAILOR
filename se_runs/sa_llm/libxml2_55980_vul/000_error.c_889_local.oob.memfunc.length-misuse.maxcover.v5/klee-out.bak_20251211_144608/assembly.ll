; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/000_error.c_889_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/000_error.c_889_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlError = type { i32, i32, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"err_file\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"err_str1\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"err_str2\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"err_str3\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"(err != ((void*)0) && sizeof(xmlError) > 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/000_error.c_889_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !34 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !38, metadata !DIExpression()), !dbg !39
  %3 = load i8*, i8** %2, align 8, !dbg !40
  %4 = icmp ne i8* %3, null, !dbg !40
  br i1 %4, label %5, label %7, !dbg !42

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !43
  call void @free(i8* noundef %6) #7, !dbg !44
  br label %7, !dbg !44

7:                                                ; preds = %5, %1
  ret void, !dbg !45
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlResetError(%struct._xmlError* noundef %0) #0 !dbg !46 {
  %2 = alloca %struct._xmlError*, align 8
  store %struct._xmlError* %0, %struct._xmlError** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlError** %2, metadata !49, metadata !DIExpression()), !dbg !50
  %3 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !51
  %4 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %3, i32 0, i32 4, !dbg !53
  %5 = load i8*, i8** %4, align 8, !dbg !53
  %6 = icmp ne i8* %5, null, !dbg !54
  br i1 %6, label %7, label %11, !dbg !55

7:                                                ; preds = %1
  %8 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !56
  %9 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %8, i32 0, i32 4, !dbg !57
  %10 = load i8*, i8** %9, align 8, !dbg !57
  call void @xmlFree(i8* noundef %10), !dbg !58
  br label %11, !dbg !58

11:                                               ; preds = %7, %1
  %12 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !59
  %13 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %12, i32 0, i32 6, !dbg !61
  %14 = load i8*, i8** %13, align 8, !dbg !61
  %15 = icmp ne i8* %14, null, !dbg !62
  br i1 %15, label %16, label %20, !dbg !63

16:                                               ; preds = %11
  %17 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !64
  %18 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %17, i32 0, i32 6, !dbg !65
  %19 = load i8*, i8** %18, align 8, !dbg !65
  call void @xmlFree(i8* noundef %19), !dbg !66
  br label %20, !dbg !66

20:                                               ; preds = %16, %11
  %21 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !67
  %22 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %21, i32 0, i32 7, !dbg !69
  %23 = load i8*, i8** %22, align 8, !dbg !69
  %24 = icmp ne i8* %23, null, !dbg !70
  br i1 %24, label %25, label %29, !dbg !71

25:                                               ; preds = %20
  %26 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !72
  %27 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %26, i32 0, i32 7, !dbg !73
  %28 = load i8*, i8** %27, align 8, !dbg !73
  call void @xmlFree(i8* noundef %28), !dbg !74
  br label %29, !dbg !74

29:                                               ; preds = %25, %20
  %30 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !75
  %31 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %30, i32 0, i32 8, !dbg !77
  %32 = load i8*, i8** %31, align 8, !dbg !77
  %33 = icmp ne i8* %32, null, !dbg !78
  br i1 %33, label %34, label %38, !dbg !79

34:                                               ; preds = %29
  %35 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !80
  %36 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %35, i32 0, i32 8, !dbg !81
  %37 = load i8*, i8** %36, align 8, !dbg !81
  call void @xmlFree(i8* noundef %37), !dbg !82
  br label %38, !dbg !82

38:                                               ; preds = %34, %29
  %39 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !83
  %40 = bitcast %struct._xmlError* %39 to i8*, !dbg !84
  %41 = call i8* @memset(i8* %40, i32 0, i64 88), !dbg !84
  %42 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !85
  %43 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %42, i32 0, i32 1, !dbg !86
  store i32 0, i32* %43, align 4, !dbg !87
  ret void, !dbg !88
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !89 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlError*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlError** %2, metadata !92, metadata !DIExpression()), !dbg !93
  %3 = call noalias i8* @malloc(i64 noundef 88) #7, !dbg !94
  %4 = bitcast i8* %3 to %struct._xmlError*, !dbg !95
  store %struct._xmlError* %4, %struct._xmlError** %2, align 8, !dbg !93
  %5 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !96
  %6 = icmp ne %struct._xmlError* %5, null, !dbg !96
  br i1 %6, label %8, label %7, !dbg !98

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !99
  br label %92, !dbg !99

8:                                                ; preds = %0
  %9 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !100
  %10 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %9, i32 0, i32 4, !dbg !101
  %11 = bitcast i8** %10 to i8*, !dbg !102
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !103
  %12 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !104
  %13 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %12, i32 0, i32 6, !dbg !105
  %14 = bitcast i8** %13 to i8*, !dbg !106
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !107
  %15 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !108
  %16 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %15, i32 0, i32 7, !dbg !109
  %17 = bitcast i8** %16 to i8*, !dbg !110
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !111
  %18 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !112
  %19 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %18, i32 0, i32 8, !dbg !113
  %20 = bitcast i8** %19 to i8*, !dbg !114
  call void @klee_make_symbolic(i8* noundef %20, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !115
  %21 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !116
  %22 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %21, i32 0, i32 4, !dbg !118
  %23 = load i8*, i8** %22, align 8, !dbg !118
  %24 = icmp ne i8* %23, null, !dbg !119
  br i1 %24, label %25, label %35, !dbg !120

25:                                               ; preds = %8
  %26 = call noalias i8* @malloc(i64 noundef 10) #7, !dbg !121
  %27 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !123
  %28 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %27, i32 0, i32 4, !dbg !124
  store i8* %26, i8** %28, align 8, !dbg !125
  %29 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !126
  %30 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %29, i32 0, i32 4, !dbg !127
  %31 = load i8*, i8** %30, align 8, !dbg !127
  %32 = icmp ne i8* %31, null, !dbg !128
  %33 = zext i1 %32 to i32, !dbg !128
  %34 = sext i32 %33 to i64, !dbg !126
  call void @klee_assume(i64 noundef %34), !dbg !129
  br label %35, !dbg !130

35:                                               ; preds = %25, %8
  %36 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !131
  %37 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %36, i32 0, i32 6, !dbg !133
  %38 = load i8*, i8** %37, align 8, !dbg !133
  %39 = icmp ne i8* %38, null, !dbg !134
  br i1 %39, label %40, label %50, !dbg !135

40:                                               ; preds = %35
  %41 = call noalias i8* @malloc(i64 noundef 10) #7, !dbg !136
  %42 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !138
  %43 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %42, i32 0, i32 6, !dbg !139
  store i8* %41, i8** %43, align 8, !dbg !140
  %44 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !141
  %45 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %44, i32 0, i32 6, !dbg !142
  %46 = load i8*, i8** %45, align 8, !dbg !142
  %47 = icmp ne i8* %46, null, !dbg !143
  %48 = zext i1 %47 to i32, !dbg !143
  %49 = sext i32 %48 to i64, !dbg !141
  call void @klee_assume(i64 noundef %49), !dbg !144
  br label %50, !dbg !145

50:                                               ; preds = %40, %35
  %51 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !146
  %52 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %51, i32 0, i32 7, !dbg !148
  %53 = load i8*, i8** %52, align 8, !dbg !148
  %54 = icmp ne i8* %53, null, !dbg !149
  br i1 %54, label %55, label %65, !dbg !150

55:                                               ; preds = %50
  %56 = call noalias i8* @malloc(i64 noundef 10) #7, !dbg !151
  %57 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !153
  %58 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %57, i32 0, i32 7, !dbg !154
  store i8* %56, i8** %58, align 8, !dbg !155
  %59 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !156
  %60 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %59, i32 0, i32 7, !dbg !157
  %61 = load i8*, i8** %60, align 8, !dbg !157
  %62 = icmp ne i8* %61, null, !dbg !158
  %63 = zext i1 %62 to i32, !dbg !158
  %64 = sext i32 %63 to i64, !dbg !156
  call void @klee_assume(i64 noundef %64), !dbg !159
  br label %65, !dbg !160

65:                                               ; preds = %55, %50
  %66 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !161
  %67 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %66, i32 0, i32 8, !dbg !163
  %68 = load i8*, i8** %67, align 8, !dbg !163
  %69 = icmp ne i8* %68, null, !dbg !164
  br i1 %69, label %70, label %80, !dbg !165

70:                                               ; preds = %65
  %71 = call noalias i8* @malloc(i64 noundef 10) #7, !dbg !166
  %72 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !168
  %73 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %72, i32 0, i32 8, !dbg !169
  store i8* %71, i8** %73, align 8, !dbg !170
  %74 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !171
  %75 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %74, i32 0, i32 8, !dbg !172
  %76 = load i8*, i8** %75, align 8, !dbg !172
  %77 = icmp ne i8* %76, null, !dbg !173
  %78 = zext i1 %77 to i32, !dbg !173
  %79 = sext i32 %78 to i64, !dbg !171
  call void @klee_assume(i64 noundef %79), !dbg !174
  br label %80, !dbg !175

80:                                               ; preds = %70, %65
  %81 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !176
  %82 = icmp ne %struct._xmlError* %81, null, !dbg !176
  br i1 %82, label %83, label %85, !dbg !176

83:                                               ; preds = %80
  br i1 true, label %84, label %85, !dbg !176

84:                                               ; preds = %83
  br label %87, !dbg !176

85:                                               ; preds = %83, %80
  %86 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !176
  br label %87, !dbg !176

87:                                               ; preds = %85, %84
  %88 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !177
  call void @xmlResetError(%struct._xmlError* noundef %88), !dbg !178
  %89 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !179
  %90 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !180
  %91 = bitcast %struct._xmlError* %90 to i8*, !dbg !180
  call void @free(i8* noundef %91) #7, !dbg !181
  store i32 0, i32* %1, align 4, !dbg !182
  br label %92, !dbg !182

92:                                               ; preds = %87, %7
  %93 = load i32, i32* %1, align 4, !dbg !183
  ret i32 %93, !dbg !183
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !184 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !191, metadata !DIExpression()), !dbg !192
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !193, metadata !DIExpression()), !dbg !194
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata i8** %7, metadata !197, metadata !DIExpression()), !dbg !198
  %8 = load i8*, i8** %4, align 8, !dbg !199
  store i8* %8, i8** %7, align 8, !dbg !198
  br label %9, !dbg !200

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !201
  %11 = add i64 %10, -1, !dbg !201
  store i64 %11, i64* %6, align 8, !dbg !201
  %12 = icmp ugt i64 %10, 0, !dbg !202
  br i1 %12, label %13, label %18, !dbg !200

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !203
  %15 = trunc i32 %14 to i8, !dbg !203
  %16 = load i8*, i8** %7, align 8, !dbg !204
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !204
  store i8* %17, i8** %7, align 8, !dbg !204
  store i8 %15, i8* %16, align 1, !dbg !205
  br label %9, !dbg !200, !llvm.loop !206

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !208
  ret i8* %19, !dbg !209
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33, !33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/000_error.c_889_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "4963ae3aa2b18cf71aea7fb4c14e9213")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !1, line: 11, size: 704, elements: !7)
!7 = !{!8, !10, !11, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !6, file: !1, line: 12, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !6, file: !1, line: 13, baseType: !9, size: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !6, file: !1, line: 14, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !6, file: !1, line: 15, baseType: !9, size: 32, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !6, file: !1, line: 16, baseType: !12, size: 64, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !6, file: !1, line: 17, baseType: !9, size: 32, offset: 256)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !6, file: !1, line: 18, baseType: !12, size: 64, offset: 320)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !6, file: !1, line: 19, baseType: !12, size: 64, offset: 384)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !6, file: !1, line: 20, baseType: !12, size: 64, offset: 448)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !6, file: !1, line: 21, baseType: !9, size: 32, offset: 512)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !6, file: !1, line: 22, baseType: !9, size: 32, offset: 544)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6, file: !1, line: 23, baseType: !3, size: 64, offset: 576)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !6, file: !1, line: 24, baseType: !3, size: 64, offset: 640)
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"Ubuntu clang version 14.0.6"}
!34 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 29, type: !35, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !3}
!37 = !{}
!38 = !DILocalVariable(name: "ptr", arg: 1, scope: !34, file: !1, line: 29, type: !3)
!39 = !DILocation(line: 29, column: 20, scope: !34)
!40 = !DILocation(line: 30, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !34, file: !1, line: 30, column: 9)
!42 = !DILocation(line: 30, column: 9, scope: !34)
!43 = !DILocation(line: 30, column: 19, scope: !41)
!44 = !DILocation(line: 30, column: 14, scope: !41)
!45 = !DILocation(line: 31, column: 1, scope: !34)
!46 = distinct !DISubprogram(name: "xmlResetError", scope: !1, file: !1, line: 34, type: !47, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !4}
!49 = !DILocalVariable(name: "err", arg: 1, scope: !46, file: !1, line: 34, type: !4)
!50 = !DILocation(line: 34, column: 30, scope: !46)
!51 = !DILocation(line: 35, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !46, file: !1, line: 35, column: 9)
!53 = !DILocation(line: 35, column: 14, scope: !52)
!54 = !DILocation(line: 35, column: 19, scope: !52)
!55 = !DILocation(line: 35, column: 9, scope: !46)
!56 = !DILocation(line: 36, column: 17, scope: !52)
!57 = !DILocation(line: 36, column: 22, scope: !52)
!58 = !DILocation(line: 36, column: 9, scope: !52)
!59 = !DILocation(line: 37, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !46, file: !1, line: 37, column: 9)
!61 = !DILocation(line: 37, column: 14, scope: !60)
!62 = !DILocation(line: 37, column: 19, scope: !60)
!63 = !DILocation(line: 37, column: 9, scope: !46)
!64 = !DILocation(line: 38, column: 17, scope: !60)
!65 = !DILocation(line: 38, column: 22, scope: !60)
!66 = !DILocation(line: 38, column: 9, scope: !60)
!67 = !DILocation(line: 39, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !46, file: !1, line: 39, column: 9)
!69 = !DILocation(line: 39, column: 14, scope: !68)
!70 = !DILocation(line: 39, column: 19, scope: !68)
!71 = !DILocation(line: 39, column: 9, scope: !46)
!72 = !DILocation(line: 40, column: 17, scope: !68)
!73 = !DILocation(line: 40, column: 22, scope: !68)
!74 = !DILocation(line: 40, column: 9, scope: !68)
!75 = !DILocation(line: 41, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !46, file: !1, line: 41, column: 9)
!77 = !DILocation(line: 41, column: 14, scope: !76)
!78 = !DILocation(line: 41, column: 19, scope: !76)
!79 = !DILocation(line: 41, column: 9, scope: !46)
!80 = !DILocation(line: 42, column: 17, scope: !76)
!81 = !DILocation(line: 42, column: 22, scope: !76)
!82 = !DILocation(line: 42, column: 9, scope: !76)
!83 = !DILocation(line: 43, column: 12, scope: !46)
!84 = !DILocation(line: 43, column: 5, scope: !46)
!85 = !DILocation(line: 44, column: 5, scope: !46)
!86 = !DILocation(line: 44, column: 10, scope: !46)
!87 = !DILocation(line: 44, column: 15, scope: !46)
!88 = !DILocation(line: 45, column: 1, scope: !46)
!89 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 47, type: !90, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!90 = !DISubroutineType(types: !91)
!91 = !{!9}
!92 = !DILocalVariable(name: "err", scope: !89, file: !1, line: 48, type: !4)
!93 = !DILocation(line: 48, column: 15, scope: !89)
!94 = !DILocation(line: 48, column: 33, scope: !89)
!95 = !DILocation(line: 48, column: 21, scope: !89)
!96 = !DILocation(line: 49, column: 10, scope: !97)
!97 = distinct !DILexicalBlock(scope: !89, file: !1, line: 49, column: 9)
!98 = !DILocation(line: 49, column: 9, scope: !89)
!99 = !DILocation(line: 49, column: 15, scope: !97)
!100 = !DILocation(line: 52, column: 25, scope: !89)
!101 = !DILocation(line: 52, column: 30, scope: !89)
!102 = !DILocation(line: 52, column: 24, scope: !89)
!103 = !DILocation(line: 52, column: 5, scope: !89)
!104 = !DILocation(line: 53, column: 25, scope: !89)
!105 = !DILocation(line: 53, column: 30, scope: !89)
!106 = !DILocation(line: 53, column: 24, scope: !89)
!107 = !DILocation(line: 53, column: 5, scope: !89)
!108 = !DILocation(line: 54, column: 25, scope: !89)
!109 = !DILocation(line: 54, column: 30, scope: !89)
!110 = !DILocation(line: 54, column: 24, scope: !89)
!111 = !DILocation(line: 54, column: 5, scope: !89)
!112 = !DILocation(line: 55, column: 25, scope: !89)
!113 = !DILocation(line: 55, column: 30, scope: !89)
!114 = !DILocation(line: 55, column: 24, scope: !89)
!115 = !DILocation(line: 55, column: 5, scope: !89)
!116 = !DILocation(line: 58, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !89, file: !1, line: 58, column: 9)
!118 = !DILocation(line: 58, column: 14, scope: !117)
!119 = !DILocation(line: 58, column: 19, scope: !117)
!120 = !DILocation(line: 58, column: 9, scope: !89)
!121 = !DILocation(line: 59, column: 21, scope: !122)
!122 = distinct !DILexicalBlock(scope: !117, file: !1, line: 58, column: 28)
!123 = !DILocation(line: 59, column: 9, scope: !122)
!124 = !DILocation(line: 59, column: 14, scope: !122)
!125 = !DILocation(line: 59, column: 19, scope: !122)
!126 = !DILocation(line: 60, column: 21, scope: !122)
!127 = !DILocation(line: 60, column: 26, scope: !122)
!128 = !DILocation(line: 60, column: 31, scope: !122)
!129 = !DILocation(line: 60, column: 9, scope: !122)
!130 = !DILocation(line: 61, column: 5, scope: !122)
!131 = !DILocation(line: 62, column: 9, scope: !132)
!132 = distinct !DILexicalBlock(scope: !89, file: !1, line: 62, column: 9)
!133 = !DILocation(line: 62, column: 14, scope: !132)
!134 = !DILocation(line: 62, column: 19, scope: !132)
!135 = !DILocation(line: 62, column: 9, scope: !89)
!136 = !DILocation(line: 63, column: 21, scope: !137)
!137 = distinct !DILexicalBlock(scope: !132, file: !1, line: 62, column: 28)
!138 = !DILocation(line: 63, column: 9, scope: !137)
!139 = !DILocation(line: 63, column: 14, scope: !137)
!140 = !DILocation(line: 63, column: 19, scope: !137)
!141 = !DILocation(line: 64, column: 21, scope: !137)
!142 = !DILocation(line: 64, column: 26, scope: !137)
!143 = !DILocation(line: 64, column: 31, scope: !137)
!144 = !DILocation(line: 64, column: 9, scope: !137)
!145 = !DILocation(line: 65, column: 5, scope: !137)
!146 = !DILocation(line: 66, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !89, file: !1, line: 66, column: 9)
!148 = !DILocation(line: 66, column: 14, scope: !147)
!149 = !DILocation(line: 66, column: 19, scope: !147)
!150 = !DILocation(line: 66, column: 9, scope: !89)
!151 = !DILocation(line: 67, column: 21, scope: !152)
!152 = distinct !DILexicalBlock(scope: !147, file: !1, line: 66, column: 28)
!153 = !DILocation(line: 67, column: 9, scope: !152)
!154 = !DILocation(line: 67, column: 14, scope: !152)
!155 = !DILocation(line: 67, column: 19, scope: !152)
!156 = !DILocation(line: 68, column: 21, scope: !152)
!157 = !DILocation(line: 68, column: 26, scope: !152)
!158 = !DILocation(line: 68, column: 31, scope: !152)
!159 = !DILocation(line: 68, column: 9, scope: !152)
!160 = !DILocation(line: 69, column: 5, scope: !152)
!161 = !DILocation(line: 70, column: 9, scope: !162)
!162 = distinct !DILexicalBlock(scope: !89, file: !1, line: 70, column: 9)
!163 = !DILocation(line: 70, column: 14, scope: !162)
!164 = !DILocation(line: 70, column: 19, scope: !162)
!165 = !DILocation(line: 70, column: 9, scope: !89)
!166 = !DILocation(line: 71, column: 21, scope: !167)
!167 = distinct !DILexicalBlock(scope: !162, file: !1, line: 70, column: 28)
!168 = !DILocation(line: 71, column: 9, scope: !167)
!169 = !DILocation(line: 71, column: 14, scope: !167)
!170 = !DILocation(line: 71, column: 19, scope: !167)
!171 = !DILocation(line: 72, column: 21, scope: !167)
!172 = !DILocation(line: 72, column: 26, scope: !167)
!173 = !DILocation(line: 72, column: 31, scope: !167)
!174 = !DILocation(line: 72, column: 9, scope: !167)
!175 = !DILocation(line: 73, column: 5, scope: !167)
!176 = !DILocation(line: 76, column: 5, scope: !89)
!177 = !DILocation(line: 79, column: 19, scope: !89)
!178 = !DILocation(line: 79, column: 5, scope: !89)
!179 = !DILocation(line: 82, column: 5, scope: !89)
!180 = !DILocation(line: 85, column: 10, scope: !89)
!181 = !DILocation(line: 85, column: 5, scope: !89)
!182 = !DILocation(line: 86, column: 5, scope: !89)
!183 = !DILocation(line: 87, column: 1, scope: !89)
!184 = distinct !DISubprogram(name: "memset", scope: !185, file: !185, line: 12, type: !186, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !37)
!185 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!186 = !DISubroutineType(types: !187)
!187 = !{!3, !3, !9, !188}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 46, baseType: !190)
!189 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!190 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!191 = !DILocalVariable(name: "dst", arg: 1, scope: !184, file: !185, line: 12, type: !3)
!192 = !DILocation(line: 12, column: 20, scope: !184)
!193 = !DILocalVariable(name: "s", arg: 2, scope: !184, file: !185, line: 12, type: !9)
!194 = !DILocation(line: 12, column: 29, scope: !184)
!195 = !DILocalVariable(name: "count", arg: 3, scope: !184, file: !185, line: 12, type: !188)
!196 = !DILocation(line: 12, column: 39, scope: !184)
!197 = !DILocalVariable(name: "a", scope: !184, file: !185, line: 13, type: !12)
!198 = !DILocation(line: 13, column: 9, scope: !184)
!199 = !DILocation(line: 13, column: 13, scope: !184)
!200 = !DILocation(line: 14, column: 3, scope: !184)
!201 = !DILocation(line: 14, column: 15, scope: !184)
!202 = !DILocation(line: 14, column: 18, scope: !184)
!203 = !DILocation(line: 15, column: 12, scope: !184)
!204 = !DILocation(line: 15, column: 7, scope: !184)
!205 = !DILocation(line: 15, column: 10, scope: !184)
!206 = distinct !{!206, !200, !203, !207}
!207 = !{!"llvm.loop.mustprogress"}
!208 = !DILocation(line: 16, column: 10, scope: !184)
!209 = !DILocation(line: 16, column: 3, scope: !184)
