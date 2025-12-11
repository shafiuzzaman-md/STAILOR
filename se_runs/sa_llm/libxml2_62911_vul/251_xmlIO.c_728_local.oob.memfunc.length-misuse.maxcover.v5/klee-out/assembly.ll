; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/251_xmlIO.c_728_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/251_xmlIO.c_728_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"(ret <= len) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/251_xmlIO.c_728_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"read()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlIOErr(i32 noundef %0, i8* noundef %1) #0 !dbg !16 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !23, metadata !DIExpression()), !dbg !24
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !25, metadata !DIExpression()), !dbg !26
  ret void, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !28 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i8** %3, metadata !33, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %4, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %5, metadata !38, metadata !DIExpression()), !dbg !39
  %6 = bitcast i32* %4 to i8*, !dbg !40
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !41
  %7 = load i32, i32* %4, align 4, !dbg !42
  %8 = icmp sge i32 %7, 0, !dbg !43
  %9 = zext i1 %8 to i32, !dbg !43
  %10 = sext i32 %9 to i64, !dbg !42
  call void @klee_assume(i64 noundef %10), !dbg !44
  %11 = load i32, i32* %4, align 4, !dbg !45
  %12 = icmp sle i32 %11, 4096, !dbg !46
  %13 = zext i1 %12 to i32, !dbg !46
  %14 = sext i32 %13 to i64, !dbg !45
  call void @klee_assume(i64 noundef %14), !dbg !47
  %15 = load i32, i32* %4, align 4, !dbg !48
  %16 = add nsw i32 %15, 1, !dbg !49
  %17 = sext i32 %16 to i64, !dbg !48
  %18 = call noalias i8* @malloc(i64 noundef %17) #5, !dbg !50
  store i8* %18, i8** %3, align 8, !dbg !51
  %19 = load i8*, i8** %3, align 8, !dbg !52
  %20 = icmp eq i8* %19, null, !dbg !54
  br i1 %20, label %21, label %22, !dbg !55

21:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !56
  br label %43, !dbg !56

22:                                               ; preds = %0
  %23 = load i8*, i8** %3, align 8, !dbg !58
  %24 = load i32, i32* %4, align 4, !dbg !59
  %25 = add nsw i32 %24, 1, !dbg !60
  %26 = sext i32 %25 to i64, !dbg !59
  call void @klee_make_symbolic(i8* noundef %23, i64 noundef %26, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !61
  store i32 0, i32* %2, align 4, !dbg !62
  %27 = load i32, i32* %2, align 4, !dbg !63
  %28 = sext i32 %27 to i64, !dbg !64
  %29 = inttoptr i64 %28 to i8*, !dbg !65
  %30 = load i8*, i8** %3, align 8, !dbg !66
  %31 = load i32, i32* %4, align 4, !dbg !67
  %32 = call i32 @xmlFdRead(i8* noundef %29, i8* noundef %30, i32 noundef %31), !dbg !68
  store i32 %32, i32* %5, align 4, !dbg !69
  %33 = load i32, i32* %5, align 4, !dbg !70
  %34 = load i32, i32* %4, align 4, !dbg !70
  %35 = icmp sle i32 %33, %34, !dbg !70
  br i1 %35, label %36, label %38, !dbg !70

36:                                               ; preds = %22
  br i1 true, label %37, label %38, !dbg !70

37:                                               ; preds = %36
  br label %40, !dbg !70

38:                                               ; preds = %36, %22
  %39 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !70
  br label %40, !dbg !70

40:                                               ; preds = %38, %37
  %41 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !71
  %42 = load i8*, i8** %3, align 8, !dbg !72
  call void @free(i8* noundef %42) #5, !dbg !73
  store i32 0, i32* %1, align 4, !dbg !74
  br label %43, !dbg !74

43:                                               ; preds = %40, %21
  %44 = load i32, i32* %1, align 4, !dbg !75
  ret i32 %44, !dbg !75
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlFdRead(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !76 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !79, metadata !DIExpression()), !dbg !80
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !81, metadata !DIExpression()), !dbg !82
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i32* %7, metadata !85, metadata !DIExpression()), !dbg !86
  %8 = load i8*, i8** %4, align 8, !dbg !87
  %9 = ptrtoint i8* %8 to i64, !dbg !88
  %10 = trunc i64 %9 to i32, !dbg !89
  %11 = load i8*, i8** %5, align 8, !dbg !90
  %12 = getelementptr inbounds i8, i8* %11, i64 0, !dbg !90
  %13 = load i32, i32* %6, align 4, !dbg !91
  %14 = sext i32 %13 to i64, !dbg !91
  %15 = call i64 @read(i32 noundef %10, i8* noundef %12, i64 noundef %14), !dbg !92
  %16 = trunc i64 %15 to i32, !dbg !92
  store i32 %16, i32* %7, align 4, !dbg !93
  %17 = load i32, i32* %7, align 4, !dbg !94
  %18 = icmp slt i32 %17, 0, !dbg !96
  br i1 %18, label %19, label %20, !dbg !97

19:                                               ; preds = %3
  call void @xmlIOErr(i32 noundef 0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !98
  br label %20, !dbg !98

20:                                               ; preds = %19, %3
  %21 = load i32, i32* %7, align 4, !dbg !99
  ret i32 %21, !dbg !100
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/251_xmlIO.c_728_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "efb243b918e882de0c19263de8972792")
!2 = !{!3, !4, !7}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !5, line: 35, baseType: !6)
!5 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!6 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "xmlIOErr", scope: !1, file: !1, line: 12, type: !17, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !7, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !{}
!23 = !DILocalVariable(name: "domain", arg: 1, scope: !16, file: !1, line: 12, type: !7)
!24 = !DILocation(line: 12, column: 19, scope: !16)
!25 = !DILocalVariable(name: "msg", arg: 2, scope: !16, file: !1, line: 12, type: !19)
!26 = !DILocation(line: 12, column: 39, scope: !16)
!27 = !DILocation(line: 14, column: 1, scope: !16)
!28 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 32, type: !29, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!29 = !DISubroutineType(types: !30)
!30 = !{!7}
!31 = !DILocalVariable(name: "fd", scope: !28, file: !1, line: 33, type: !7)
!32 = !DILocation(line: 33, column: 9, scope: !28)
!33 = !DILocalVariable(name: "buffer", scope: !28, file: !1, line: 34, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!35 = !DILocation(line: 34, column: 11, scope: !28)
!36 = !DILocalVariable(name: "len", scope: !28, file: !1, line: 35, type: !7)
!37 = !DILocation(line: 35, column: 9, scope: !28)
!38 = !DILocalVariable(name: "ret", scope: !28, file: !1, line: 36, type: !7)
!39 = !DILocation(line: 36, column: 9, scope: !28)
!40 = !DILocation(line: 39, column: 24, scope: !28)
!41 = !DILocation(line: 39, column: 5, scope: !28)
!42 = !DILocation(line: 42, column: 17, scope: !28)
!43 = !DILocation(line: 42, column: 21, scope: !28)
!44 = !DILocation(line: 42, column: 5, scope: !28)
!45 = !DILocation(line: 45, column: 17, scope: !28)
!46 = !DILocation(line: 45, column: 21, scope: !28)
!47 = !DILocation(line: 45, column: 5, scope: !28)
!48 = !DILocation(line: 48, column: 21, scope: !28)
!49 = !DILocation(line: 48, column: 25, scope: !28)
!50 = !DILocation(line: 48, column: 14, scope: !28)
!51 = !DILocation(line: 48, column: 12, scope: !28)
!52 = !DILocation(line: 49, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !28, file: !1, line: 49, column: 9)
!54 = !DILocation(line: 49, column: 16, scope: !53)
!55 = !DILocation(line: 49, column: 9, scope: !28)
!56 = !DILocation(line: 50, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !53, file: !1, line: 49, column: 25)
!58 = !DILocation(line: 54, column: 24, scope: !28)
!59 = !DILocation(line: 54, column: 32, scope: !28)
!60 = !DILocation(line: 54, column: 36, scope: !28)
!61 = !DILocation(line: 54, column: 5, scope: !28)
!62 = !DILocation(line: 57, column: 8, scope: !28)
!63 = !DILocation(line: 60, column: 40, scope: !28)
!64 = !DILocation(line: 60, column: 29, scope: !28)
!65 = !DILocation(line: 60, column: 21, scope: !28)
!66 = !DILocation(line: 60, column: 44, scope: !28)
!67 = !DILocation(line: 60, column: 52, scope: !28)
!68 = !DILocation(line: 60, column: 11, scope: !28)
!69 = !DILocation(line: 60, column: 9, scope: !28)
!70 = !DILocation(line: 65, column: 5, scope: !28)
!71 = !DILocation(line: 68, column: 5, scope: !28)
!72 = !DILocation(line: 70, column: 10, scope: !28)
!73 = !DILocation(line: 70, column: 5, scope: !28)
!74 = !DILocation(line: 71, column: 5, scope: !28)
!75 = !DILocation(line: 72, column: 1, scope: !28)
!76 = distinct !DISubprogram(name: "xmlFdRead", scope: !1, file: !1, line: 17, type: !77, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !22)
!77 = !DISubroutineType(types: !78)
!78 = !{!7, !3, !34, !7}
!79 = !DILocalVariable(name: "context", arg: 1, scope: !76, file: !1, line: 17, type: !3)
!80 = !DILocation(line: 17, column: 28, scope: !76)
!81 = !DILocalVariable(name: "buffer", arg: 2, scope: !76, file: !1, line: 17, type: !34)
!82 = !DILocation(line: 17, column: 43, scope: !76)
!83 = !DILocalVariable(name: "len", arg: 3, scope: !76, file: !1, line: 17, type: !7)
!84 = !DILocation(line: 17, column: 55, scope: !76)
!85 = !DILocalVariable(name: "ret", scope: !76, file: !1, line: 18, type: !7)
!86 = !DILocation(line: 18, column: 9, scope: !76)
!87 = !DILocation(line: 20, column: 32, scope: !76)
!88 = !DILocation(line: 20, column: 21, scope: !76)
!89 = !DILocation(line: 20, column: 16, scope: !76)
!90 = !DILocation(line: 20, column: 42, scope: !76)
!91 = !DILocation(line: 20, column: 53, scope: !76)
!92 = !DILocation(line: 20, column: 11, scope: !76)
!93 = !DILocation(line: 20, column: 9, scope: !76)
!94 = !DILocation(line: 21, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !76, file: !1, line: 21, column: 9)
!96 = !DILocation(line: 21, column: 13, scope: !95)
!97 = !DILocation(line: 21, column: 9, scope: !76)
!98 = !DILocation(line: 21, column: 18, scope: !95)
!99 = !DILocation(line: 22, column: 12, scope: !76)
!100 = !DILocation(line: 22, column: 5, scope: !76)
