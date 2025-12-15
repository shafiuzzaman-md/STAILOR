; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/000_error.c_889_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/000_error.c_889_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlError = type { i32, i32, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"err_file\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"err_str1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"err_str2\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"err_str3\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"(err != ((void*)0) && sizeof(xmlError) > 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/000_error.c_889_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

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
  br label %70, !dbg !99

8:                                                ; preds = %0
  %9 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !100
  %10 = bitcast %struct._xmlError* %9 to i8*, !dbg !100
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 88, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !101
  %11 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !102
  %12 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %11, i32 0, i32 4, !dbg !104
  %13 = load i8*, i8** %12, align 8, !dbg !104
  %14 = icmp ne i8* %13, null, !dbg !102
  br i1 %14, label %15, label %22, !dbg !105

15:                                               ; preds = %8
  %16 = call noalias i8* @malloc(i64 noundef 256) #7, !dbg !106
  %17 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !108
  %18 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %17, i32 0, i32 4, !dbg !109
  store i8* %16, i8** %18, align 8, !dbg !110
  %19 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !111
  %20 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %19, i32 0, i32 4, !dbg !112
  %21 = load i8*, i8** %20, align 8, !dbg !112
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !113
  br label %22, !dbg !114

22:                                               ; preds = %15, %8
  %23 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !115
  %24 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %23, i32 0, i32 6, !dbg !117
  %25 = load i8*, i8** %24, align 8, !dbg !117
  %26 = icmp ne i8* %25, null, !dbg !115
  br i1 %26, label %27, label %34, !dbg !118

27:                                               ; preds = %22
  %28 = call noalias i8* @malloc(i64 noundef 256) #7, !dbg !119
  %29 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !121
  %30 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %29, i32 0, i32 6, !dbg !122
  store i8* %28, i8** %30, align 8, !dbg !123
  %31 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !124
  %32 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %31, i32 0, i32 6, !dbg !125
  %33 = load i8*, i8** %32, align 8, !dbg !125
  call void @klee_make_symbolic(i8* noundef %33, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !126
  br label %34, !dbg !127

34:                                               ; preds = %27, %22
  %35 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !128
  %36 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %35, i32 0, i32 7, !dbg !130
  %37 = load i8*, i8** %36, align 8, !dbg !130
  %38 = icmp ne i8* %37, null, !dbg !128
  br i1 %38, label %39, label %46, !dbg !131

39:                                               ; preds = %34
  %40 = call noalias i8* @malloc(i64 noundef 256) #7, !dbg !132
  %41 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !134
  %42 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %41, i32 0, i32 7, !dbg !135
  store i8* %40, i8** %42, align 8, !dbg !136
  %43 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !137
  %44 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %43, i32 0, i32 7, !dbg !138
  %45 = load i8*, i8** %44, align 8, !dbg !138
  call void @klee_make_symbolic(i8* noundef %45, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !139
  br label %46, !dbg !140

46:                                               ; preds = %39, %34
  %47 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !141
  %48 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %47, i32 0, i32 8, !dbg !143
  %49 = load i8*, i8** %48, align 8, !dbg !143
  %50 = icmp ne i8* %49, null, !dbg !141
  br i1 %50, label %51, label %58, !dbg !144

51:                                               ; preds = %46
  %52 = call noalias i8* @malloc(i64 noundef 256) #7, !dbg !145
  %53 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !147
  %54 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %53, i32 0, i32 8, !dbg !148
  store i8* %52, i8** %54, align 8, !dbg !149
  %55 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !150
  %56 = getelementptr inbounds %struct._xmlError, %struct._xmlError* %55, i32 0, i32 8, !dbg !151
  %57 = load i8*, i8** %56, align 8, !dbg !151
  call void @klee_make_symbolic(i8* noundef %57, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !152
  br label %58, !dbg !153

58:                                               ; preds = %51, %46
  %59 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !154
  call void @xmlResetError(%struct._xmlError* noundef %59), !dbg !155
  %60 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !156
  %61 = icmp ne %struct._xmlError* %60, null, !dbg !156
  br i1 %61, label %62, label %64, !dbg !156

62:                                               ; preds = %58
  br i1 true, label %63, label %64, !dbg !156

63:                                               ; preds = %62
  br label %66, !dbg !156

64:                                               ; preds = %62, %58
  %65 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !156
  br label %66, !dbg !156

66:                                               ; preds = %64, %63
  %67 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !157
  %68 = load %struct._xmlError*, %struct._xmlError** %2, align 8, !dbg !158
  %69 = bitcast %struct._xmlError* %68 to i8*, !dbg !158
  call void @free(i8* noundef %69) #7, !dbg !159
  store i32 0, i32* %1, align 4, !dbg !160
  br label %70, !dbg !160

70:                                               ; preds = %66, %7
  %71 = load i32, i32* %1, align 4, !dbg !161
  ret i32 %71, !dbg !161
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !162 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !169, metadata !DIExpression()), !dbg !170
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !171, metadata !DIExpression()), !dbg !172
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata i8** %7, metadata !175, metadata !DIExpression()), !dbg !176
  %8 = load i8*, i8** %4, align 8, !dbg !177
  store i8* %8, i8** %7, align 8, !dbg !176
  br label %9, !dbg !178

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !179
  %11 = add i64 %10, -1, !dbg !179
  store i64 %11, i64* %6, align 8, !dbg !179
  %12 = icmp ugt i64 %10, 0, !dbg !180
  br i1 %12, label %13, label %18, !dbg !178

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !181
  %15 = trunc i32 %14 to i8, !dbg !181
  %16 = load i8*, i8** %7, align 8, !dbg !182
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !182
  store i8* %17, i8** %7, align 8, !dbg !182
  store i8 %15, i8* %16, align 1, !dbg !183
  br label %9, !dbg !178, !llvm.loop !184

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !186
  ret i8* %19, !dbg !187
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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/000_error.c_889_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "cd6dd43accaa919a35cec6a8adda777b")
!2 = !{!3, !4, !12}
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
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !6, file: !1, line: 23, baseType: !3, size: 64, offset: 576)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6, file: !1, line: 24, baseType: !3, size: 64, offset: 640)
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
!34 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 28, type: !35, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !3}
!37 = !{}
!38 = !DILocalVariable(name: "ptr", arg: 1, scope: !34, file: !1, line: 28, type: !3)
!39 = !DILocation(line: 28, column: 20, scope: !34)
!40 = !DILocation(line: 29, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !34, file: !1, line: 29, column: 9)
!42 = !DILocation(line: 29, column: 9, scope: !34)
!43 = !DILocation(line: 29, column: 19, scope: !41)
!44 = !DILocation(line: 29, column: 14, scope: !41)
!45 = !DILocation(line: 30, column: 1, scope: !34)
!46 = distinct !DISubprogram(name: "xmlResetError", scope: !1, file: !1, line: 33, type: !47, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !4}
!49 = !DILocalVariable(name: "err", arg: 1, scope: !46, file: !1, line: 33, type: !4)
!50 = !DILocation(line: 33, column: 30, scope: !46)
!51 = !DILocation(line: 34, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !46, file: !1, line: 34, column: 9)
!53 = !DILocation(line: 34, column: 14, scope: !52)
!54 = !DILocation(line: 34, column: 19, scope: !52)
!55 = !DILocation(line: 34, column: 9, scope: !46)
!56 = !DILocation(line: 35, column: 17, scope: !52)
!57 = !DILocation(line: 35, column: 22, scope: !52)
!58 = !DILocation(line: 35, column: 9, scope: !52)
!59 = !DILocation(line: 36, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !46, file: !1, line: 36, column: 9)
!61 = !DILocation(line: 36, column: 14, scope: !60)
!62 = !DILocation(line: 36, column: 19, scope: !60)
!63 = !DILocation(line: 36, column: 9, scope: !46)
!64 = !DILocation(line: 37, column: 17, scope: !60)
!65 = !DILocation(line: 37, column: 22, scope: !60)
!66 = !DILocation(line: 37, column: 9, scope: !60)
!67 = !DILocation(line: 38, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !46, file: !1, line: 38, column: 9)
!69 = !DILocation(line: 38, column: 14, scope: !68)
!70 = !DILocation(line: 38, column: 19, scope: !68)
!71 = !DILocation(line: 38, column: 9, scope: !46)
!72 = !DILocation(line: 39, column: 17, scope: !68)
!73 = !DILocation(line: 39, column: 22, scope: !68)
!74 = !DILocation(line: 39, column: 9, scope: !68)
!75 = !DILocation(line: 40, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !46, file: !1, line: 40, column: 9)
!77 = !DILocation(line: 40, column: 14, scope: !76)
!78 = !DILocation(line: 40, column: 19, scope: !76)
!79 = !DILocation(line: 40, column: 9, scope: !46)
!80 = !DILocation(line: 41, column: 17, scope: !76)
!81 = !DILocation(line: 41, column: 22, scope: !76)
!82 = !DILocation(line: 41, column: 9, scope: !76)
!83 = !DILocation(line: 43, column: 12, scope: !46)
!84 = !DILocation(line: 43, column: 5, scope: !46)
!85 = !DILocation(line: 44, column: 5, scope: !46)
!86 = !DILocation(line: 44, column: 10, scope: !46)
!87 = !DILocation(line: 44, column: 15, scope: !46)
!88 = !DILocation(line: 45, column: 1, scope: !46)
!89 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 47, type: !90, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!90 = !DISubroutineType(types: !91)
!91 = !{!9}
!92 = !DILocalVariable(name: "err", scope: !89, file: !1, line: 49, type: !4)
!93 = !DILocation(line: 49, column: 15, scope: !89)
!94 = !DILocation(line: 49, column: 33, scope: !89)
!95 = !DILocation(line: 49, column: 21, scope: !89)
!96 = !DILocation(line: 50, column: 10, scope: !97)
!97 = distinct !DILexicalBlock(scope: !89, file: !1, line: 50, column: 9)
!98 = !DILocation(line: 50, column: 9, scope: !89)
!99 = !DILocation(line: 50, column: 15, scope: !97)
!100 = !DILocation(line: 53, column: 24, scope: !89)
!101 = !DILocation(line: 53, column: 5, scope: !89)
!102 = !DILocation(line: 56, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !89, file: !1, line: 56, column: 9)
!104 = !DILocation(line: 56, column: 14, scope: !103)
!105 = !DILocation(line: 56, column: 9, scope: !89)
!106 = !DILocation(line: 57, column: 29, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !1, line: 56, column: 20)
!108 = !DILocation(line: 57, column: 9, scope: !107)
!109 = !DILocation(line: 57, column: 14, scope: !107)
!110 = !DILocation(line: 57, column: 19, scope: !107)
!111 = !DILocation(line: 58, column: 28, scope: !107)
!112 = !DILocation(line: 58, column: 33, scope: !107)
!113 = !DILocation(line: 58, column: 9, scope: !107)
!114 = !DILocation(line: 59, column: 5, scope: !107)
!115 = !DILocation(line: 60, column: 9, scope: !116)
!116 = distinct !DILexicalBlock(scope: !89, file: !1, line: 60, column: 9)
!117 = !DILocation(line: 60, column: 14, scope: !116)
!118 = !DILocation(line: 60, column: 9, scope: !89)
!119 = !DILocation(line: 61, column: 29, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !1, line: 60, column: 20)
!121 = !DILocation(line: 61, column: 9, scope: !120)
!122 = !DILocation(line: 61, column: 14, scope: !120)
!123 = !DILocation(line: 61, column: 19, scope: !120)
!124 = !DILocation(line: 62, column: 28, scope: !120)
!125 = !DILocation(line: 62, column: 33, scope: !120)
!126 = !DILocation(line: 62, column: 9, scope: !120)
!127 = !DILocation(line: 63, column: 5, scope: !120)
!128 = !DILocation(line: 64, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !89, file: !1, line: 64, column: 9)
!130 = !DILocation(line: 64, column: 14, scope: !129)
!131 = !DILocation(line: 64, column: 9, scope: !89)
!132 = !DILocation(line: 65, column: 29, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !1, line: 64, column: 20)
!134 = !DILocation(line: 65, column: 9, scope: !133)
!135 = !DILocation(line: 65, column: 14, scope: !133)
!136 = !DILocation(line: 65, column: 19, scope: !133)
!137 = !DILocation(line: 66, column: 28, scope: !133)
!138 = !DILocation(line: 66, column: 33, scope: !133)
!139 = !DILocation(line: 66, column: 9, scope: !133)
!140 = !DILocation(line: 67, column: 5, scope: !133)
!141 = !DILocation(line: 68, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !89, file: !1, line: 68, column: 9)
!143 = !DILocation(line: 68, column: 14, scope: !142)
!144 = !DILocation(line: 68, column: 9, scope: !89)
!145 = !DILocation(line: 69, column: 29, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !1, line: 68, column: 20)
!147 = !DILocation(line: 69, column: 9, scope: !146)
!148 = !DILocation(line: 69, column: 14, scope: !146)
!149 = !DILocation(line: 69, column: 19, scope: !146)
!150 = !DILocation(line: 70, column: 28, scope: !146)
!151 = !DILocation(line: 70, column: 33, scope: !146)
!152 = !DILocation(line: 70, column: 9, scope: !146)
!153 = !DILocation(line: 71, column: 5, scope: !146)
!154 = !DILocation(line: 74, column: 19, scope: !89)
!155 = !DILocation(line: 74, column: 5, scope: !89)
!156 = !DILocation(line: 77, column: 5, scope: !89)
!157 = !DILocation(line: 80, column: 5, scope: !89)
!158 = !DILocation(line: 83, column: 10, scope: !89)
!159 = !DILocation(line: 83, column: 5, scope: !89)
!160 = !DILocation(line: 84, column: 5, scope: !89)
!161 = !DILocation(line: 85, column: 1, scope: !89)
!162 = distinct !DISubprogram(name: "memset", scope: !163, file: !163, line: 12, type: !164, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !37)
!163 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!164 = !DISubroutineType(types: !165)
!165 = !{!3, !3, !9, !166}
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !167, line: 46, baseType: !168)
!167 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!168 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!169 = !DILocalVariable(name: "dst", arg: 1, scope: !162, file: !163, line: 12, type: !3)
!170 = !DILocation(line: 12, column: 20, scope: !162)
!171 = !DILocalVariable(name: "s", arg: 2, scope: !162, file: !163, line: 12, type: !9)
!172 = !DILocation(line: 12, column: 29, scope: !162)
!173 = !DILocalVariable(name: "count", arg: 3, scope: !162, file: !163, line: 12, type: !166)
!174 = !DILocation(line: 12, column: 39, scope: !162)
!175 = !DILocalVariable(name: "a", scope: !162, file: !163, line: 13, type: !12)
!176 = !DILocation(line: 13, column: 9, scope: !162)
!177 = !DILocation(line: 13, column: 13, scope: !162)
!178 = !DILocation(line: 14, column: 3, scope: !162)
!179 = !DILocation(line: 14, column: 15, scope: !162)
!180 = !DILocation(line: 14, column: 18, scope: !162)
!181 = !DILocation(line: 15, column: 12, scope: !162)
!182 = !DILocation(line: 15, column: 7, scope: !162)
!183 = !DILocation(line: 15, column: 10, scope: !162)
!184 = distinct !{!184, !178, !181, !185}
!185 = !{!"llvm.loop.mustprogress"}
!186 = !DILocation(line: 16, column: 10, scope: !162)
!187 = !DILocation(line: 16, column: 3, scope: !162)
