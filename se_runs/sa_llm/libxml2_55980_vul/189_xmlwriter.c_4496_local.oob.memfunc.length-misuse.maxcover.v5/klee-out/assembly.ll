; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/189_xmlwriter.c_4496_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/189_xmlwriter.c_4496_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [40 x i8] c"xmlTextWriterVSprintf : out of memory!\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"(size > 0 && size < 1024 * 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/189_xmlwriter.c_4496_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlTextWriterVSprintf = private unnamed_addr constant [79 x i8] c"char *xmlTextWriterVSprintf(char *, int, const char *, struct __va_list_tag *)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"fmt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !14 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !21, metadata !DIExpression()), !dbg !22
  %3 = load i64, i64* %2, align 8, !dbg !23
  %4 = call noalias i8* @malloc(i64 noundef %3) #6, !dbg !24
  ret i8* %4, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !26 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !29, metadata !DIExpression()), !dbg !30
  %3 = load i8*, i8** %2, align 8, !dbg !31
  call void @free(i8* noundef %3) #6, !dbg !32
  ret void, !dbg !33
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlWriterErrMsg(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 !dbg !34 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !40, metadata !DIExpression()), !dbg !41
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !42, metadata !DIExpression()), !dbg !43
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !44, metadata !DIExpression()), !dbg !45
  ret void, !dbg !46
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlTextWriterVSprintf(i8* noundef %0, i32 noundef %1, i8* noundef %2, %struct.__va_list_tag* noundef %3) #0 !dbg !47 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.__va_list_tag*, align 8
  %10 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !59, metadata !DIExpression()), !dbg !60
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !61, metadata !DIExpression()), !dbg !62
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !63, metadata !DIExpression()), !dbg !64
  store %struct.__va_list_tag* %3, %struct.__va_list_tag** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %9, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %10, metadata !67, metadata !DIExpression()), !dbg !74
  br label %11, !dbg !75

11:                                               ; preds = %4
  %12 = load i8*, i8** %6, align 8, !dbg !76
  %13 = icmp ne i8* %12, null, !dbg !79
  br i1 %13, label %14, label %16, !dbg !80

14:                                               ; preds = %11
  %15 = load i8*, i8** %6, align 8, !dbg !81
  call void @xmlFree(i8* noundef %15), !dbg !83
  br label %16, !dbg !84

16:                                               ; preds = %14, %11
  %17 = load i32, i32* %7, align 4, !dbg !85
  %18 = add nsw i32 %17, 1024, !dbg !85
  store i32 %18, i32* %7, align 4, !dbg !85
  %19 = load i32, i32* %7, align 4, !dbg !86
  %20 = sext i32 %19 to i64, !dbg !86
  %21 = call i8* @xmlMalloc(i64 noundef %20), !dbg !87
  store i8* %21, i8** %6, align 8, !dbg !88
  %22 = load i8*, i8** %6, align 8, !dbg !89
  %23 = icmp eq i8* %22, null, !dbg !91
  br i1 %23, label %24, label %25, !dbg !92

24:                                               ; preds = %16
  call void @xmlWriterErrMsg(i8* noundef null, i32 noundef 1000, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0)), !dbg !93
  store i8* null, i8** %5, align 8, !dbg !95
  br label %52, !dbg !95

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4, !dbg !96
  %27 = icmp sgt i32 %26, 0, !dbg !96
  br i1 %27, label %28, label %33, !dbg !96

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4, !dbg !96
  %30 = icmp slt i32 %29, 1048576, !dbg !96
  br i1 %30, label %31, label %33, !dbg !96

31:                                               ; preds = %28
  br i1 true, label %32, label %33, !dbg !96

32:                                               ; preds = %31
  br label %35, !dbg !96

33:                                               ; preds = %31, %28, %25
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xmlTextWriterVSprintf, i64 0, i64 0)), !dbg !96
  br label %35, !dbg !96

35:                                               ; preds = %33, %32
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xmlTextWriterVSprintf, i64 0, i64 0)), !dbg !97
  %37 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0, !dbg !98
  %38 = load %struct.__va_list_tag*, %struct.__va_list_tag** %9, align 8, !dbg !98
  %39 = bitcast %struct.__va_list_tag* %37 to i8*, !dbg !98
  %40 = bitcast %struct.__va_list_tag* %38 to i8*, !dbg !98
  %vacopy.cast.dst = bitcast i8* %39 to i64*, !dbg !98
  %vacopy.cast.src = bitcast i8* %40 to i64*, !dbg !98
  %41 = load i64, i64* %vacopy.cast.src, align 8, !dbg !98
  store volatile i64 %41, i64* %vacopy.cast.dst, align 8, !dbg !98
  %42 = getelementptr i64, i64* %vacopy.cast.dst, i64 1, !dbg !98
  %43 = getelementptr i64, i64* %vacopy.cast.src, i64 1, !dbg !98
  %44 = load i64, i64* %43, align 8, !dbg !98
  store i64 %44, i64* %42, align 8, !dbg !98
  %45 = getelementptr i64, i64* %42, i64 1, !dbg !98
  %46 = getelementptr i64, i64* %43, i64 1, !dbg !98
  %47 = load i64, i64* %46, align 8, !dbg !98
  store i64 %47, i64* %45, align 8, !dbg !98
  br label %48, !dbg !99

48:                                               ; preds = %35
  %49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0, !dbg !100
  %50 = bitcast %struct.__va_list_tag* %49 to i8*, !dbg !100
  call void @llvm.va_end(i8* %50), !dbg !100
  %51 = load i8*, i8** %6, align 8, !dbg !101
  store i8* %51, i8** %5, align 8, !dbg !102
  br label %52, !dbg !102

52:                                               ; preds = %48, %24
  %53 = load i8*, i8** %5, align 8, !dbg !103
  ret i8* %53, !dbg !103
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !104 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [100 x i8], align 16
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !107, metadata !DIExpression()), !dbg !108
  store i8* null, i8** %2, align 8, !dbg !108
  call void @llvm.dbg.declare(metadata i32* %3, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata [100 x i8]* %4, metadata !111, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !116, metadata !DIExpression()), !dbg !117
  %7 = bitcast i32* %3 to i8*, !dbg !118
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !119
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0, !dbg !120
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 100, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !121
  %9 = load i32, i32* %3, align 4, !dbg !122
  %10 = icmp sge i32 %9, 0, !dbg !123
  %11 = zext i1 %10 to i32, !dbg !123
  %12 = sext i32 %11 to i64, !dbg !122
  call void @klee_assume(i64 noundef %12), !dbg !124
  %13 = load i32, i32* %3, align 4, !dbg !125
  %14 = icmp slt i32 %13, 10000, !dbg !126
  %15 = zext i1 %14 to i32, !dbg !126
  %16 = sext i32 %15 to i64, !dbg !125
  call void @klee_assume(i64 noundef %16), !dbg !127
  %17 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 99, !dbg !128
  store i8 0, i8* %17, align 1, !dbg !129
  call void @llvm.dbg.declare(metadata i8** %6, metadata !130, metadata !DIExpression()), !dbg !131
  %18 = load i8*, i8** %2, align 8, !dbg !132
  %19 = load i32, i32* %3, align 4, !dbg !133
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0, !dbg !134
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !135
  %22 = call i8* @xmlTextWriterVSprintf(i8* noundef %18, i32 noundef %19, i8* noundef %20, %struct.__va_list_tag* noundef %21), !dbg !136
  store i8* %22, i8** %6, align 8, !dbg !131
  %23 = load i8*, i8** %6, align 8, !dbg !137
  %24 = icmp ne i8* %23, null, !dbg !139
  br i1 %24, label %25, label %27, !dbg !140

25:                                               ; preds = %0
  %26 = load i8*, i8** %6, align 8, !dbg !141
  call void @xmlFree(i8* noundef %26), !dbg !143
  br label %27, !dbg !144

27:                                               ; preds = %25, %0
  ret i32 0, !dbg !145
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/189_xmlwriter.c_4496_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "1ba847e6f338e462a8b4d42d3daad248")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 11, type: !15, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{!3, !17}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 46, baseType: !19)
!18 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!19 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!20 = !{}
!21 = !DILocalVariable(name: "size", arg: 1, scope: !14, file: !1, line: 11, type: !17)
!22 = !DILocation(line: 11, column: 24, scope: !14)
!23 = !DILocation(line: 12, column: 19, scope: !14)
!24 = !DILocation(line: 12, column: 12, scope: !14)
!25 = !DILocation(line: 12, column: 5, scope: !14)
!26 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 16, type: !27, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !3}
!29 = !DILocalVariable(name: "ptr", arg: 1, scope: !26, file: !1, line: 16, type: !3)
!30 = !DILocation(line: 16, column: 20, scope: !26)
!31 = !DILocation(line: 17, column: 10, scope: !26)
!32 = !DILocation(line: 17, column: 5, scope: !26)
!33 = !DILocation(line: 18, column: 1, scope: !26)
!34 = distinct !DISubprogram(name: "xmlWriterErrMsg", scope: !1, file: !1, line: 21, type: !35, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !3, !37, !38}
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!40 = !DILocalVariable(name: "ctx", arg: 1, scope: !34, file: !1, line: 21, type: !3)
!41 = !DILocation(line: 21, column: 28, scope: !34)
!42 = !DILocalVariable(name: "code", arg: 2, scope: !34, file: !1, line: 21, type: !37)
!43 = !DILocation(line: 21, column: 37, scope: !34)
!44 = !DILocalVariable(name: "msg", arg: 3, scope: !34, file: !1, line: 21, type: !38)
!45 = !DILocation(line: 21, column: 55, scope: !34)
!46 = !DILocation(line: 23, column: 1, scope: !34)
!47 = distinct !DISubprogram(name: "xmlTextWriterVSprintf", scope: !1, file: !1, line: 33, type: !48, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!48 = !DISubroutineType(types: !49)
!49 = !{!4, !4, !37, !38, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !52)
!52 = !{!53, !56, !57, !58}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !51, file: !54, line: 23, baseType: !55, size: 32)
!54 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/189_xmlwriter.c_4496_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR")
!55 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !51, file: !54, line: 23, baseType: !55, size: 32, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !51, file: !54, line: 23, baseType: !3, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !51, file: !54, line: 23, baseType: !3, size: 64, offset: 128)
!59 = !DILocalVariable(name: "buf", arg: 1, scope: !47, file: !1, line: 33, type: !4)
!60 = !DILocation(line: 33, column: 35, scope: !47)
!61 = !DILocalVariable(name: "size", arg: 2, scope: !47, file: !1, line: 33, type: !37)
!62 = !DILocation(line: 33, column: 44, scope: !47)
!63 = !DILocalVariable(name: "fmt", arg: 3, scope: !47, file: !1, line: 33, type: !38)
!64 = !DILocation(line: 33, column: 62, scope: !47)
!65 = !DILocalVariable(name: "argptr", arg: 4, scope: !47, file: !1, line: 33, type: !50)
!66 = !DILocation(line: 33, column: 75, scope: !47)
!67 = !DILocalVariable(name: "locarg", scope: !47, file: !1, line: 34, type: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !69, line: 14, baseType: !70)
!69 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !54, baseType: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 192, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 1)
!74 = !DILocation(line: 34, column: 13, scope: !47)
!75 = !DILocation(line: 37, column: 5, scope: !47)
!76 = !DILocation(line: 39, column: 13, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !1, line: 39, column: 13)
!78 = distinct !DILexicalBlock(scope: !47, file: !1, line: 37, column: 15)
!79 = !DILocation(line: 39, column: 17, scope: !77)
!80 = !DILocation(line: 39, column: 13, scope: !78)
!81 = !DILocation(line: 40, column: 21, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !1, line: 39, column: 26)
!83 = !DILocation(line: 40, column: 13, scope: !82)
!84 = !DILocation(line: 41, column: 9, scope: !82)
!85 = !DILocation(line: 44, column: 14, scope: !78)
!86 = !DILocation(line: 45, column: 32, scope: !78)
!87 = !DILocation(line: 45, column: 22, scope: !78)
!88 = !DILocation(line: 45, column: 13, scope: !78)
!89 = !DILocation(line: 48, column: 13, scope: !90)
!90 = distinct !DILexicalBlock(scope: !78, file: !1, line: 48, column: 13)
!91 = !DILocation(line: 48, column: 17, scope: !90)
!92 = !DILocation(line: 48, column: 13, scope: !78)
!93 = !DILocation(line: 49, column: 13, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 48, column: 26)
!95 = !DILocation(line: 51, column: 13, scope: !94)
!96 = !DILocation(line: 56, column: 9, scope: !78)
!97 = !DILocation(line: 59, column: 9, scope: !78)
!98 = !DILocation(line: 62, column: 9, scope: !78)
!99 = !DILocation(line: 63, column: 9, scope: !78)
!100 = !DILocation(line: 66, column: 5, scope: !47)
!101 = !DILocation(line: 67, column: 12, scope: !47)
!102 = !DILocation(line: 67, column: 5, scope: !47)
!103 = !DILocation(line: 68, column: 1, scope: !47)
!104 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 71, type: !105, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!105 = !DISubroutineType(types: !106)
!106 = !{!37}
!107 = !DILocalVariable(name: "buf", scope: !104, file: !1, line: 73, type: !4)
!108 = !DILocation(line: 73, column: 11, scope: !104)
!109 = !DILocalVariable(name: "size", scope: !104, file: !1, line: 74, type: !37)
!110 = !DILocation(line: 74, column: 9, scope: !104)
!111 = !DILocalVariable(name: "fmt", scope: !104, file: !1, line: 75, type: !112)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 800, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 100)
!115 = !DILocation(line: 75, column: 10, scope: !104)
!116 = !DILocalVariable(name: "argptr", scope: !104, file: !1, line: 76, type: !68)
!117 = !DILocation(line: 76, column: 13, scope: !104)
!118 = !DILocation(line: 79, column: 24, scope: !104)
!119 = !DILocation(line: 79, column: 5, scope: !104)
!120 = !DILocation(line: 80, column: 24, scope: !104)
!121 = !DILocation(line: 80, column: 5, scope: !104)
!122 = !DILocation(line: 83, column: 17, scope: !104)
!123 = !DILocation(line: 83, column: 22, scope: !104)
!124 = !DILocation(line: 83, column: 5, scope: !104)
!125 = !DILocation(line: 84, column: 17, scope: !104)
!126 = !DILocation(line: 84, column: 22, scope: !104)
!127 = !DILocation(line: 84, column: 5, scope: !104)
!128 = !DILocation(line: 87, column: 5, scope: !104)
!129 = !DILocation(line: 87, column: 24, scope: !104)
!130 = !DILocalVariable(name: "result", scope: !104, file: !1, line: 90, type: !4)
!131 = !DILocation(line: 90, column: 11, scope: !104)
!132 = !DILocation(line: 90, column: 42, scope: !104)
!133 = !DILocation(line: 90, column: 47, scope: !104)
!134 = !DILocation(line: 90, column: 53, scope: !104)
!135 = !DILocation(line: 90, column: 58, scope: !104)
!136 = !DILocation(line: 90, column: 20, scope: !104)
!137 = !DILocation(line: 93, column: 9, scope: !138)
!138 = distinct !DILexicalBlock(scope: !104, file: !1, line: 93, column: 9)
!139 = !DILocation(line: 93, column: 16, scope: !138)
!140 = !DILocation(line: 93, column: 9, scope: !104)
!141 = !DILocation(line: 94, column: 17, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !1, line: 93, column: 25)
!143 = !DILocation(line: 94, column: 9, scope: !142)
!144 = !DILocation(line: 95, column: 5, scope: !142)
!145 = !DILocation(line: 97, column: 5, scope: !104)
