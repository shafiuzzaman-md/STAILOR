; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/028_runtest.c_4595_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/028_runtest.c_4595_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [25 x i8] c"0 && \22fatalError called\22\00", align 1
@.str.1 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/028_runtest.c_4595_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.fatalError = private unnamed_addr constant [22 x i8] c"void fatalError(void)\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to open output file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"(len >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@__PRETTY_FUNCTION__.simulate_runtest_code = private unnamed_addr constant [50 x i8] c"int simulate_runtest_code(FILE *, FILE *, char *)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"temp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fatalError() #0 !dbg !12 {
  %1 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0), i32 noundef 13, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__PRETTY_FUNCTION__.fatalError, i64 0, i64 0)), !dbg !16
  ret void, !dbg !17
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @simulate_runtest_code(%struct._IO_FILE* noundef %0, %struct._IO_FILE* noundef %1, i8* noundef %2) #0 !dbg !18 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [4500 x i8], align 16
  %9 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !83, metadata !DIExpression()), !dbg !84
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !85, metadata !DIExpression()), !dbg !86
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata [4500 x i8]* %8, metadata !89, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %9, metadata !94, metadata !DIExpression()), !dbg !95
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !96
  %11 = icmp eq %struct._IO_FILE* %10, null, !dbg !98
  br i1 %11, label %12, label %17, !dbg !99

12:                                               ; preds = %3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !100
  %14 = load i8*, i8** %7, align 8, !dbg !102
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* noundef %14), !dbg !103
  %16 = load i8*, i8** %7, align 8, !dbg !104
  call void @free(i8* noundef %16) #6, !dbg !105
  store i32 -1, i32* %4, align 4, !dbg !106
  br label %91, !dbg !106

17:                                               ; preds = %3
  br label %18, !dbg !107

18:                                               ; preds = %87, %17
  %19 = getelementptr inbounds [4500 x i8], [4500 x i8]* %8, i64 0, i64 0, !dbg !108
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !109
  %21 = call i8* @fgets(i8* noundef %19, i32 noundef 4500, %struct._IO_FILE* noundef %20), !dbg !110
  %22 = icmp ne i8* %21, null, !dbg !111
  br i1 %22, label %23, label %90, !dbg !107

23:                                               ; preds = %18
  %24 = getelementptr inbounds [4500 x i8], [4500 x i8]* %8, i64 0, i64 0, !dbg !112
  %25 = call i64 @strlen(i8* noundef %24) #7, !dbg !114
  %26 = trunc i64 %25 to i32, !dbg !114
  store i32 %26, i32* %9, align 4, !dbg !115
  %27 = load i32, i32* %9, align 4, !dbg !116
  %28 = add nsw i32 %27, -1, !dbg !116
  store i32 %28, i32* %9, align 4, !dbg !116
  %29 = load i32, i32* %9, align 4, !dbg !117
  %30 = icmp sge i32 %29, 0, !dbg !117
  br i1 %30, label %31, label %33, !dbg !117

31:                                               ; preds = %23
  br i1 true, label %32, label %33, !dbg !117

32:                                               ; preds = %31
  br label %35, !dbg !117

33:                                               ; preds = %31, %23
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.simulate_runtest_code, i64 0, i64 0)), !dbg !117
  br label %35, !dbg !117

35:                                               ; preds = %33, %32
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.simulate_runtest_code, i64 0, i64 0)), !dbg !118
  br label %37, !dbg !119

37:                                               ; preds = %72, %35
  %38 = load i32, i32* %9, align 4, !dbg !120
  %39 = icmp sge i32 %38, 0, !dbg !121
  br i1 %39, label %40, label %70, !dbg !122

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4, !dbg !123
  %42 = sext i32 %41 to i64, !dbg !124
  %43 = getelementptr inbounds [4500 x i8], [4500 x i8]* %8, i64 0, i64 %42, !dbg !124
  %44 = load i8, i8* %43, align 1, !dbg !124
  %45 = sext i8 %44 to i32, !dbg !124
  %46 = icmp eq i32 %45, 10, !dbg !125
  br i1 %46, label %68, label %47, !dbg !126

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4, !dbg !127
  %49 = sext i32 %48 to i64, !dbg !128
  %50 = getelementptr inbounds [4500 x i8], [4500 x i8]* %8, i64 0, i64 %49, !dbg !128
  %51 = load i8, i8* %50, align 1, !dbg !128
  %52 = sext i8 %51 to i32, !dbg !128
  %53 = icmp eq i32 %52, 9, !dbg !129
  br i1 %53, label %68, label %54, !dbg !130

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4, !dbg !131
  %56 = sext i32 %55 to i64, !dbg !132
  %57 = getelementptr inbounds [4500 x i8], [4500 x i8]* %8, i64 0, i64 %56, !dbg !132
  %58 = load i8, i8* %57, align 1, !dbg !132
  %59 = sext i8 %58 to i32, !dbg !132
  %60 = icmp eq i32 %59, 13, !dbg !133
  br i1 %60, label %68, label %61, !dbg !134

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4, !dbg !135
  %63 = sext i32 %62 to i64, !dbg !136
  %64 = getelementptr inbounds [4500 x i8], [4500 x i8]* %8, i64 0, i64 %63, !dbg !136
  %65 = load i8, i8* %64, align 1, !dbg !136
  %66 = sext i8 %65 to i32, !dbg !136
  %67 = icmp eq i32 %66, 32, !dbg !137
  br label %68, !dbg !134

68:                                               ; preds = %61, %54, %47, %40
  %69 = phi i1 [ true, %54 ], [ true, %47 ], [ true, %40 ], [ %67, %61 ]
  br label %70

70:                                               ; preds = %68, %37
  %71 = phi i1 [ false, %37 ], [ %69, %68 ], !dbg !138
  br i1 %71, label %72, label %75, !dbg !119

72:                                               ; preds = %70
  %73 = load i32, i32* %9, align 4, !dbg !139
  %74 = add nsw i32 %73, -1, !dbg !139
  store i32 %74, i32* %9, align 4, !dbg !139
  br label %37, !dbg !119, !llvm.loop !140

75:                                               ; preds = %70
  %76 = load i32, i32* %9, align 4, !dbg !142
  %77 = add nsw i32 %76, 1, !dbg !143
  %78 = sext i32 %77 to i64, !dbg !144
  %79 = getelementptr inbounds [4500 x i8], [4500 x i8]* %8, i64 0, i64 %78, !dbg !144
  store i8 0, i8* %79, align 1, !dbg !145
  %80 = load i32, i32* %9, align 4, !dbg !146
  %81 = icmp sge i32 %80, 0, !dbg !148
  br i1 %81, label %82, label %89, !dbg !149

82:                                               ; preds = %75
  %83 = getelementptr inbounds [4500 x i8], [4500 x i8]* %8, i64 0, i64 0, !dbg !150
  %84 = load i8, i8* %83, align 16, !dbg !150
  %85 = sext i8 %84 to i32, !dbg !150
  %86 = icmp eq i32 %85, 35, !dbg !153
  br i1 %86, label %87, label %88, !dbg !154

87:                                               ; preds = %82
  br label %18, !dbg !155, !llvm.loop !157

88:                                               ; preds = %82
  br label %89, !dbg !159

89:                                               ; preds = %88, %75
  br label %90, !dbg !160

90:                                               ; preds = %89, %18
  store i32 0, i32* %4, align 4, !dbg !161
  br label %91, !dbg !161

91:                                               ; preds = %90, %12
  %92 = load i32, i32* %4, align 4, !dbg !162
  ret i32 %92, !dbg !162
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !163 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !168, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata i8** %4, metadata !170, metadata !DIExpression()), !dbg !171
  %5 = bitcast %struct._IO_FILE** %2 to i8*, !dbg !172
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)), !dbg !173
  %6 = bitcast %struct._IO_FILE** %3 to i8*, !dbg !174
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)), !dbg !175
  %7 = call noalias i8* @malloc(i64 noundef 256) #6, !dbg !176
  store i8* %7, i8** %4, align 8, !dbg !177
  %8 = load i8*, i8** %4, align 8, !dbg !178
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)), !dbg !179
  %9 = load i8*, i8** %4, align 8, !dbg !180
  %10 = getelementptr inbounds i8, i8* %9, i64 255, !dbg !180
  store i8 0, i8* %10, align 1, !dbg !181
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !182
  %12 = icmp ne %struct._IO_FILE* %11, null, !dbg !183
  %13 = zext i1 %12 to i32, !dbg !183
  %14 = sext i32 %13 to i64, !dbg !182
  call void @klee_assume(i64 noundef %14), !dbg !184
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !185
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !186
  %17 = load i8*, i8** %4, align 8, !dbg !187
  %18 = call i32 @simulate_runtest_code(%struct._IO_FILE* noundef %15, %struct._IO_FILE* noundef %16, i8* noundef %17), !dbg !188
  %19 = load i8*, i8** %4, align 8, !dbg !189
  call void @free(i8* noundef %19) #6, !dbg !190
  ret i32 0, !dbg !191
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

declare void @klee_assume(i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/028_runtest.c_4595_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "5d5f1783952f66c8d4a1b25779df44f1")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "fatalError", scope: !1, file: !1, line: 11, type: !13, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DISubroutineType(types: !14)
!14 = !{null}
!15 = !{}
!16 = !DILocation(line: 13, column: 5, scope: !12)
!17 = !DILocation(line: 14, column: 1, scope: !12)
!18 = distinct !DISubprogram(name: "simulate_runtest_code", scope: !1, file: !1, line: 17, type: !19, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !22, !22, !30}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !24, line: 7, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !26, line: 49, size: 1728, elements: !27)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "7a6d4a00a37ee6b9a40cd04bd01f5d00")
!27 = !{!28, !29, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !45, !47, !48, !49, !53, !55, !57, !61, !64, !66, !69, !72, !73, !74, !78, !79}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !25, file: !26, line: 51, baseType: !21, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !25, file: !26, line: 54, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !25, file: !26, line: 55, baseType: !30, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !25, file: !26, line: 56, baseType: !30, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !25, file: !26, line: 57, baseType: !30, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !25, file: !26, line: 58, baseType: !30, size: 64, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !25, file: !26, line: 59, baseType: !30, size: 64, offset: 384)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !25, file: !26, line: 60, baseType: !30, size: 64, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !25, file: !26, line: 61, baseType: !30, size: 64, offset: 512)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !25, file: !26, line: 64, baseType: !30, size: 64, offset: 576)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !25, file: !26, line: 65, baseType: !30, size: 64, offset: 640)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !25, file: !26, line: 66, baseType: !30, size: 64, offset: 704)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !25, file: !26, line: 68, baseType: !43, size: 64, offset: 768)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !26, line: 36, flags: DIFlagFwdDecl)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !25, file: !26, line: 70, baseType: !46, size: 64, offset: 832)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !25, file: !26, line: 72, baseType: !21, size: 32, offset: 896)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !25, file: !26, line: 73, baseType: !21, size: 32, offset: 928)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !25, file: !26, line: 74, baseType: !50, size: 64, offset: 960)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !51, line: 152, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!52 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !25, file: !26, line: 77, baseType: !54, size: 16, offset: 1024)
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !25, file: !26, line: 78, baseType: !56, size: 8, offset: 1040)
!56 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !25, file: !26, line: 79, baseType: !58, size: 8, offset: 1048)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 1)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !25, file: !26, line: 81, baseType: !62, size: 64, offset: 1088)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !26, line: 43, baseType: null)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !25, file: !26, line: 89, baseType: !65, size: 64, offset: 1152)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !51, line: 153, baseType: !52)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !25, file: !26, line: 91, baseType: !67, size: 64, offset: 1216)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !26, line: 37, flags: DIFlagFwdDecl)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !25, file: !26, line: 92, baseType: !70, size: 64, offset: 1280)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !26, line: 38, flags: DIFlagFwdDecl)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !25, file: !26, line: 93, baseType: !46, size: 64, offset: 1344)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !25, file: !26, line: 94, baseType: !3, size: 64, offset: 1408)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !25, file: !26, line: 95, baseType: !75, size: 64, offset: 1472)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!77 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !25, file: !26, line: 96, baseType: !21, size: 32, offset: 1536)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !25, file: !26, line: 98, baseType: !80, size: 160, offset: 1568)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 20)
!83 = !DILocalVariable(name: "input", arg: 1, scope: !18, file: !1, line: 17, type: !22)
!84 = !DILocation(line: 17, column: 33, scope: !18)
!85 = !DILocalVariable(name: "output", arg: 2, scope: !18, file: !1, line: 17, type: !22)
!86 = !DILocation(line: 17, column: 46, scope: !18)
!87 = !DILocalVariable(name: "temp", arg: 3, scope: !18, file: !1, line: 17, type: !30)
!88 = !DILocation(line: 17, column: 60, scope: !18)
!89 = !DILocalVariable(name: "expression", scope: !18, file: !1, line: 18, type: !90)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 36000, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 4500)
!93 = !DILocation(line: 18, column: 10, scope: !18)
!94 = !DILocalVariable(name: "len", scope: !18, file: !1, line: 19, type: !21)
!95 = !DILocation(line: 19, column: 9, scope: !18)
!96 = !DILocation(line: 21, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !18, file: !1, line: 21, column: 9)
!98 = !DILocation(line: 21, column: 16, scope: !97)
!99 = !DILocation(line: 21, column: 9, scope: !18)
!100 = !DILocation(line: 22, column: 17, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 21, column: 25)
!102 = !DILocation(line: 22, column: 60, scope: !101)
!103 = !DILocation(line: 22, column: 9, scope: !101)
!104 = !DILocation(line: 23, column: 14, scope: !101)
!105 = !DILocation(line: 23, column: 9, scope: !101)
!106 = !DILocation(line: 24, column: 9, scope: !101)
!107 = !DILocation(line: 28, column: 5, scope: !18)
!108 = !DILocation(line: 28, column: 18, scope: !18)
!109 = !DILocation(line: 28, column: 36, scope: !18)
!110 = !DILocation(line: 28, column: 12, scope: !18)
!111 = !DILocation(line: 28, column: 43, scope: !18)
!112 = !DILocation(line: 29, column: 22, scope: !113)
!113 = distinct !DILexicalBlock(scope: !18, file: !1, line: 28, column: 52)
!114 = !DILocation(line: 29, column: 15, scope: !113)
!115 = !DILocation(line: 29, column: 13, scope: !113)
!116 = !DILocation(line: 30, column: 12, scope: !113)
!117 = !DILocation(line: 34, column: 9, scope: !113)
!118 = !DILocation(line: 35, column: 9, scope: !113)
!119 = !DILocation(line: 37, column: 9, scope: !113)
!120 = !DILocation(line: 37, column: 17, scope: !113)
!121 = !DILocation(line: 37, column: 21, scope: !113)
!122 = !DILocation(line: 37, column: 27, scope: !113)
!123 = !DILocation(line: 38, column: 29, scope: !113)
!124 = !DILocation(line: 38, column: 18, scope: !113)
!125 = !DILocation(line: 38, column: 34, scope: !113)
!126 = !DILocation(line: 38, column: 43, scope: !113)
!127 = !DILocation(line: 38, column: 58, scope: !113)
!128 = !DILocation(line: 38, column: 47, scope: !113)
!129 = !DILocation(line: 38, column: 63, scope: !113)
!130 = !DILocation(line: 38, column: 72, scope: !113)
!131 = !DILocation(line: 39, column: 29, scope: !113)
!132 = !DILocation(line: 39, column: 18, scope: !113)
!133 = !DILocation(line: 39, column: 34, scope: !113)
!134 = !DILocation(line: 39, column: 43, scope: !113)
!135 = !DILocation(line: 39, column: 58, scope: !113)
!136 = !DILocation(line: 39, column: 47, scope: !113)
!137 = !DILocation(line: 39, column: 63, scope: !113)
!138 = !DILocation(line: 0, scope: !113)
!139 = !DILocation(line: 39, column: 76, scope: !113)
!140 = distinct !{!140, !119, !139, !141}
!141 = !{!"llvm.loop.mustprogress"}
!142 = !DILocation(line: 40, column: 20, scope: !113)
!143 = !DILocation(line: 40, column: 24, scope: !113)
!144 = !DILocation(line: 40, column: 9, scope: !113)
!145 = !DILocation(line: 40, column: 29, scope: !113)
!146 = !DILocation(line: 41, column: 13, scope: !147)
!147 = distinct !DILexicalBlock(scope: !113, file: !1, line: 41, column: 13)
!148 = !DILocation(line: 41, column: 17, scope: !147)
!149 = !DILocation(line: 41, column: 13, scope: !113)
!150 = !DILocation(line: 42, column: 17, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !1, line: 42, column: 17)
!152 = distinct !DILexicalBlock(scope: !147, file: !1, line: 41, column: 23)
!153 = !DILocation(line: 42, column: 31, scope: !151)
!154 = !DILocation(line: 42, column: 17, scope: !152)
!155 = !DILocation(line: 44, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !151, file: !1, line: 42, column: 39)
!157 = distinct !{!157, !107, !158, !141}
!158 = !DILocation(line: 48, column: 5, scope: !18)
!159 = !DILocation(line: 46, column: 9, scope: !152)
!160 = !DILocation(line: 47, column: 9, scope: !113)
!161 = !DILocation(line: 50, column: 5, scope: !18)
!162 = !DILocation(line: 51, column: 1, scope: !18)
!163 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !164, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!164 = !DISubroutineType(types: !165)
!165 = !{!21}
!166 = !DILocalVariable(name: "input", scope: !163, file: !1, line: 54, type: !22)
!167 = !DILocation(line: 54, column: 11, scope: !163)
!168 = !DILocalVariable(name: "output", scope: !163, file: !1, line: 55, type: !22)
!169 = !DILocation(line: 55, column: 11, scope: !163)
!170 = !DILocalVariable(name: "temp", scope: !163, file: !1, line: 56, type: !30)
!171 = !DILocation(line: 56, column: 11, scope: !163)
!172 = !DILocation(line: 59, column: 24, scope: !163)
!173 = !DILocation(line: 59, column: 5, scope: !163)
!174 = !DILocation(line: 60, column: 24, scope: !163)
!175 = !DILocation(line: 60, column: 5, scope: !163)
!176 = !DILocation(line: 63, column: 12, scope: !163)
!177 = !DILocation(line: 63, column: 10, scope: !163)
!178 = !DILocation(line: 64, column: 24, scope: !163)
!179 = !DILocation(line: 64, column: 5, scope: !163)
!180 = !DILocation(line: 65, column: 5, scope: !163)
!181 = !DILocation(line: 65, column: 15, scope: !163)
!182 = !DILocation(line: 68, column: 17, scope: !163)
!183 = !DILocation(line: 68, column: 23, scope: !163)
!184 = !DILocation(line: 68, column: 5, scope: !163)
!185 = !DILocation(line: 71, column: 27, scope: !163)
!186 = !DILocation(line: 71, column: 34, scope: !163)
!187 = !DILocation(line: 71, column: 42, scope: !163)
!188 = !DILocation(line: 71, column: 5, scope: !163)
!189 = !DILocation(line: 73, column: 10, scope: !163)
!190 = !DILocation(line: 73, column: 5, scope: !163)
!191 = !DILocation(line: 74, column: 5, scope: !163)
