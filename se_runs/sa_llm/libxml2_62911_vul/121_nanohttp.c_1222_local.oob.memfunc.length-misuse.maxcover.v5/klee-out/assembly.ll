; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/121_nanohttp.c_1222_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/121_nanohttp.c_1222_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"http://example.com\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"response_buf\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"reachable\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/121_nanohttp.c_1222_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca [2048 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca [2048 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !17, metadata !DIExpression()), !dbg !21
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %2, align 8, !dbg !21
  call void @llvm.dbg.declare(metadata i8** %3, metadata !22, metadata !DIExpression()), !dbg !23
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8, !dbg !23
  call void @llvm.dbg.declare(metadata i8** %4, metadata !24, metadata !DIExpression()), !dbg !25
  store i8* null, i8** %4, align 8, !dbg !25
  call void @llvm.dbg.declare(metadata i8** %5, metadata !26, metadata !DIExpression()), !dbg !28
  store i8* null, i8** %5, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8** %6, metadata !29, metadata !DIExpression()), !dbg !30
  store i8* null, i8** %6, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %7, metadata !31, metadata !DIExpression()), !dbg !32
  store i32 0, i32* %7, align 4, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %8, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata [1024 x i8]* %9, metadata !35, metadata !DIExpression()), !dbg !39
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0, !dbg !40
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 1024, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)), !dbg !41
  %17 = call i32 (...) @xmlInitParser(), !dbg !42
  call void @llvm.dbg.declare(metadata i8** %10, metadata !43, metadata !DIExpression()), !dbg !44
  %18 = load i8*, i8** %2, align 8, !dbg !45
  %19 = load i8*, i8** %3, align 8, !dbg !46
  %20 = load i8*, i8** %4, align 8, !dbg !47
  %21 = bitcast i32* %7 to i8*, !dbg !48
  %22 = ptrtoint i32* %8 to i32, !dbg !49
  %23 = call i8* @xmlNanoHTTPMethodRedir(i8* noundef %18, i8* noundef %19, i8* noundef %20, i8** noundef %5, i8** noundef %6, i8* noundef %21, i32 noundef %22), !dbg !50
  store i8* %23, i8** %10, align 8, !dbg !44
  %24 = load i8*, i8** %10, align 8, !dbg !51
  %25 = icmp eq i8* %24, null, !dbg !53
  br i1 %25, label %26, label %38, !dbg !54

26:                                               ; preds = %0
  %27 = load i8*, i8** %6, align 8, !dbg !55
  %28 = icmp ne i8* %27, null, !dbg !55
  br i1 %28, label %29, label %31, !dbg !58

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8, !dbg !59
  call void @free(i8* noundef %30) #5, !dbg !60
  br label %31, !dbg !60

31:                                               ; preds = %29, %26
  %32 = load i8*, i8** %5, align 8, !dbg !61
  %33 = icmp ne i8* %32, null, !dbg !61
  br i1 %33, label %34, label %36, !dbg !63

34:                                               ; preds = %31
  %35 = load i8*, i8** %5, align 8, !dbg !64
  call void @free(i8* noundef %35) #5, !dbg !65
  br label %36, !dbg !65

36:                                               ; preds = %34, %31
  %37 = call i32 (...) @xmlCleanupParser(), !dbg !66
  store i32 0, i32* %1, align 4, !dbg !67
  br label %65, !dbg !67

38:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata [2048 x i8]* %11, metadata !68, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %12, metadata !73, metadata !DIExpression()), !dbg !74
  store i32 1024, i32* %12, align 4, !dbg !74
  %39 = bitcast i32* %12 to i8*, !dbg !75
  call void @klee_make_symbolic(i8* noundef %39, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !76
  %40 = load i32, i32* %12, align 4, !dbg !77
  %41 = icmp sge i32 %40, 0, !dbg !78
  %42 = zext i1 %41 to i32, !dbg !78
  %43 = sext i32 %42 to i64, !dbg !77
  call void @klee_assume(i64 noundef %43), !dbg !79
  call void @llvm.dbg.declare(metadata [2048 x i8]* %13, metadata !80, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata i32* %14, metadata !82, metadata !DIExpression()), !dbg !83
  %44 = load i8*, i8** %10, align 8, !dbg !84
  %45 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0, !dbg !85
  %46 = call i32 (i8*, i8*, i64, ...) bitcast (i32 (...)* @xmlNanoHTTPReadLine to i32 (i8*, i8*, i64, ...)*)(i8* noundef %44, i8* noundef %45, i64 noundef 2048), !dbg !86
  store i32 %46, i32* %14, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %15, metadata !87, metadata !DIExpression()), !dbg !88
  store i32 0, i32* %15, align 4, !dbg !88
  %47 = bitcast i32* %15 to i8*, !dbg !89
  call void @klee_make_symbolic(i8* noundef %47, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)), !dbg !90
  %48 = load i32, i32* %15, align 4, !dbg !91
  %49 = icmp ne i32 %48, 0, !dbg !91
  br i1 %49, label %50, label %52, !dbg !93

50:                                               ; preds = %38
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.6, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !94
  br label %52, !dbg !96

52:                                               ; preds = %50, %38
  %53 = load i8*, i8** %10, align 8, !dbg !97
  call void @xmlNanoHTTPClose(i8* noundef %53), !dbg !98
  %54 = load i8*, i8** %6, align 8, !dbg !99
  %55 = icmp ne i8* %54, null, !dbg !99
  br i1 %55, label %56, label %58, !dbg !101

56:                                               ; preds = %52
  %57 = load i8*, i8** %6, align 8, !dbg !102
  call void @free(i8* noundef %57) #5, !dbg !103
  br label %58, !dbg !103

58:                                               ; preds = %56, %52
  %59 = load i8*, i8** %5, align 8, !dbg !104
  %60 = icmp ne i8* %59, null, !dbg !104
  br i1 %60, label %61, label %63, !dbg !106

61:                                               ; preds = %58
  %62 = load i8*, i8** %5, align 8, !dbg !107
  call void @free(i8* noundef %62) #5, !dbg !108
  br label %63, !dbg !108

63:                                               ; preds = %61, %58
  %64 = call i32 (...) @xmlCleanupParser(), !dbg !109
  store i32 0, i32* %1, align 4, !dbg !110
  br label %65, !dbg !110

65:                                               ; preds = %63, %36
  %66 = load i32, i32* %1, align 4, !dbg !111
  ret i32 %66, !dbg !111
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i32 @xmlInitParser(...) #2

declare i8* @xmlNanoHTTPMethodRedir(i8* noundef, i8* noundef, i8* noundef, i8** noundef, i8** noundef, i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

declare i32 @xmlCleanupParser(...) #2

declare void @klee_assume(i64 noundef) #2

declare i32 @xmlNanoHTTPReadLine(...) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @xmlNanoHTTPClose(i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/121_nanohttp.c_1222_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "b3eb91ec76e0ec50a2378784ce2103e6")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !13, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "url", scope: !12, file: !1, line: 7, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DILocation(line: 7, column: 17, scope: !12)
!22 = !DILocalVariable(name: "method", scope: !12, file: !1, line: 8, type: !18)
!23 = !DILocation(line: 8, column: 17, scope: !12)
!24 = !DILocalVariable(name: "input", scope: !12, file: !1, line: 9, type: !18)
!25 = !DILocation(line: 9, column: 17, scope: !12)
!26 = !DILocalVariable(name: "contentType", scope: !12, file: !1, line: 10, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!28 = !DILocation(line: 10, column: 11, scope: !12)
!29 = !DILocalVariable(name: "out", scope: !12, file: !1, line: 11, type: !27)
!30 = !DILocation(line: 11, column: 11, scope: !12)
!31 = !DILocalVariable(name: "outlen", scope: !12, file: !1, line: 12, type: !15)
!32 = !DILocation(line: 12, column: 11, scope: !12)
!33 = !DILocalVariable(name: "status", scope: !12, file: !1, line: 13, type: !15)
!34 = !DILocation(line: 13, column: 11, scope: !12)
!35 = !DILocalVariable(name: "response_buf", scope: !12, file: !1, line: 16, type: !36)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 8192, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 1024)
!39 = !DILocation(line: 16, column: 10, scope: !12)
!40 = !DILocation(line: 17, column: 24, scope: !12)
!41 = !DILocation(line: 17, column: 5, scope: !12)
!42 = !DILocation(line: 20, column: 5, scope: !12)
!43 = !DILocalVariable(name: "ctxt", scope: !12, file: !1, line: 23, type: !3)
!44 = !DILocation(line: 23, column: 11, scope: !12)
!45 = !DILocation(line: 23, column: 41, scope: !12)
!46 = !DILocation(line: 23, column: 46, scope: !12)
!47 = !DILocation(line: 23, column: 54, scope: !12)
!48 = !DILocation(line: 23, column: 81, scope: !12)
!49 = !DILocation(line: 23, column: 90, scope: !12)
!50 = !DILocation(line: 23, column: 18, scope: !12)
!51 = !DILocation(line: 24, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !12, file: !1, line: 24, column: 9)
!53 = !DILocation(line: 24, column: 14, scope: !52)
!54 = !DILocation(line: 24, column: 9, scope: !12)
!55 = !DILocation(line: 27, column: 13, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 27, column: 13)
!57 = distinct !DILexicalBlock(scope: !52, file: !1, line: 24, column: 23)
!58 = !DILocation(line: 27, column: 13, scope: !57)
!59 = !DILocation(line: 27, column: 23, scope: !56)
!60 = !DILocation(line: 27, column: 18, scope: !56)
!61 = !DILocation(line: 28, column: 13, scope: !62)
!62 = distinct !DILexicalBlock(scope: !57, file: !1, line: 28, column: 13)
!63 = !DILocation(line: 28, column: 13, scope: !57)
!64 = !DILocation(line: 28, column: 31, scope: !62)
!65 = !DILocation(line: 28, column: 26, scope: !62)
!66 = !DILocation(line: 29, column: 9, scope: !57)
!67 = !DILocation(line: 30, column: 9, scope: !57)
!68 = !DILocalVariable(name: "dest", scope: !12, file: !1, line: 39, type: !69)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 16384, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 2048)
!72 = !DILocation(line: 39, column: 10, scope: !12)
!73 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 40, type: !15)
!74 = !DILocation(line: 40, column: 9, scope: !12)
!75 = !DILocation(line: 41, column: 24, scope: !12)
!76 = !DILocation(line: 41, column: 5, scope: !12)
!77 = !DILocation(line: 43, column: 17, scope: !12)
!78 = !DILocation(line: 43, column: 21, scope: !12)
!79 = !DILocation(line: 43, column: 5, scope: !12)
!80 = !DILocalVariable(name: "line", scope: !12, file: !1, line: 61, type: !69)
!81 = !DILocation(line: 61, column: 10, scope: !12)
!82 = !DILocalVariable(name: "read_len", scope: !12, file: !1, line: 62, type: !15)
!83 = !DILocation(line: 62, column: 9, scope: !12)
!84 = !DILocation(line: 62, column: 40, scope: !12)
!85 = !DILocation(line: 62, column: 46, scope: !12)
!86 = !DILocation(line: 62, column: 20, scope: !12)
!87 = !DILocalVariable(name: "reachable", scope: !12, file: !1, line: 73, type: !15)
!88 = !DILocation(line: 73, column: 9, scope: !12)
!89 = !DILocation(line: 74, column: 24, scope: !12)
!90 = !DILocation(line: 74, column: 5, scope: !12)
!91 = !DILocation(line: 75, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !12, file: !1, line: 75, column: 9)
!93 = !DILocation(line: 75, column: 9, scope: !12)
!94 = !DILocation(line: 78, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !92, file: !1, line: 75, column: 20)
!96 = !DILocation(line: 79, column: 5, scope: !95)
!97 = !DILocation(line: 82, column: 22, scope: !12)
!98 = !DILocation(line: 82, column: 5, scope: !12)
!99 = !DILocation(line: 83, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !12, file: !1, line: 83, column: 9)
!101 = !DILocation(line: 83, column: 9, scope: !12)
!102 = !DILocation(line: 83, column: 19, scope: !100)
!103 = !DILocation(line: 83, column: 14, scope: !100)
!104 = !DILocation(line: 84, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !12, file: !1, line: 84, column: 9)
!106 = !DILocation(line: 84, column: 9, scope: !12)
!107 = !DILocation(line: 84, column: 27, scope: !105)
!108 = !DILocation(line: 84, column: 22, scope: !105)
!109 = !DILocation(line: 85, column: 5, scope: !12)
!110 = !DILocation(line: 87, column: 5, scope: !12)
!111 = !DILocation(line: 88, column: 1, scope: !12)
