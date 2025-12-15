; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/247_xmlIO.c_733_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/247_xmlIO.c_733_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"(len <= (int)sizeof(buffer)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/247_xmlIO.c_733_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
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
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !33, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %4, metadata !38, metadata !DIExpression()), !dbg !39
  %7 = bitcast i32* %2 to i8*, !dbg !40
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !41
  %8 = bitcast i32* %4 to i8*, !dbg !42
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !43
  %9 = load i32, i32* %2, align 4, !dbg !44
  %10 = icmp sge i32 %9, 0, !dbg !45
  %11 = zext i1 %10 to i32, !dbg !45
  %12 = sext i32 %11 to i64, !dbg !44
  call void @klee_assume(i64 noundef %12), !dbg !46
  %13 = load i32, i32* %4, align 4, !dbg !47
  %14 = icmp sge i32 %13, 0, !dbg !48
  %15 = zext i1 %14 to i32, !dbg !48
  %16 = sext i32 %15 to i64, !dbg !47
  call void @klee_assume(i64 noundef %16), !dbg !49
  %17 = load i32, i32* %4, align 4, !dbg !50
  %18 = icmp sle i32 %17, 2048, !dbg !51
  %19 = zext i1 %18 to i32, !dbg !51
  %20 = sext i32 %19 to i64, !dbg !50
  call void @klee_assume(i64 noundef %20), !dbg !52
  call void @llvm.dbg.declare(metadata i8** %5, metadata !53, metadata !DIExpression()), !dbg !54
  %21 = load i32, i32* %2, align 4, !dbg !55
  %22 = sext i32 %21 to i64, !dbg !56
  %23 = inttoptr i64 %22 to i8*, !dbg !57
  store i8* %23, i8** %5, align 8, !dbg !54
  call void @llvm.dbg.declare(metadata i32* %6, metadata !58, metadata !DIExpression()), !dbg !59
  %24 = load i8*, i8** %5, align 8, !dbg !60
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !61
  %26 = load i32, i32* %4, align 4, !dbg !62
  %27 = call i32 @xmlFdRead(i8* noundef %24, i8* noundef %25, i32 noundef %26), !dbg !63
  store i32 %27, i32* %6, align 4, !dbg !59
  %28 = load i32, i32* %4, align 4, !dbg !64
  %29 = icmp sle i32 %28, 1024, !dbg !64
  br i1 %29, label %30, label %32, !dbg !64

30:                                               ; preds = %0
  br i1 true, label %31, label %32, !dbg !64

31:                                               ; preds = %30
  br label %34, !dbg !64

32:                                               ; preds = %30, %0
  %33 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !64
  br label %34, !dbg !64

34:                                               ; preds = %32, %31
  %35 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !65
  ret i32 0, !dbg !66
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlFdRead(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !67 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !71, metadata !DIExpression()), !dbg !72
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !73, metadata !DIExpression()), !dbg !74
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %7, metadata !77, metadata !DIExpression()), !dbg !78
  %8 = load i8*, i8** %4, align 8, !dbg !79
  %9 = ptrtoint i8* %8 to i64, !dbg !80
  %10 = trunc i64 %9 to i32, !dbg !81
  %11 = load i8*, i8** %5, align 8, !dbg !82
  %12 = getelementptr inbounds i8, i8* %11, i64 0, !dbg !82
  %13 = load i32, i32* %6, align 4, !dbg !83
  %14 = sext i32 %13 to i64, !dbg !83
  %15 = call i64 @read(i32 noundef %10, i8* noundef %12, i64 noundef %14), !dbg !84
  %16 = trunc i64 %15 to i32, !dbg !84
  store i32 %16, i32* %7, align 4, !dbg !85
  %17 = load i32, i32* %7, align 4, !dbg !86
  %18 = icmp slt i32 %17, 0, !dbg !88
  br i1 %18, label %19, label %20, !dbg !89

19:                                               ; preds = %3
  call void @xmlIOErr(i32 noundef 0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !90
  br label %20, !dbg !90

20:                                               ; preds = %19, %3
  %21 = load i32, i32* %7, align 4, !dbg !91
  ret i32 %21, !dbg !92
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/247_xmlIO.c_733_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "1520021c09d1ac27f038c3e95a12c354")
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
!16 = distinct !DISubprogram(name: "xmlIOErr", scope: !1, file: !1, line: 13, type: !17, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !7, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !{}
!23 = !DILocalVariable(name: "domain", arg: 1, scope: !16, file: !1, line: 13, type: !7)
!24 = !DILocation(line: 13, column: 19, scope: !16)
!25 = !DILocalVariable(name: "msg", arg: 2, scope: !16, file: !1, line: 13, type: !19)
!26 = !DILocation(line: 13, column: 39, scope: !16)
!27 = !DILocation(line: 15, column: 1, scope: !16)
!28 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 17, type: !29, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!29 = !DISubroutineType(types: !30)
!30 = !{!7}
!31 = !DILocalVariable(name: "fd", scope: !28, file: !1, line: 19, type: !7)
!32 = !DILocation(line: 19, column: 9, scope: !28)
!33 = !DILocalVariable(name: "buffer", scope: !28, file: !1, line: 20, type: !34)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8192, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 1024)
!37 = !DILocation(line: 20, column: 10, scope: !28)
!38 = !DILocalVariable(name: "len", scope: !28, file: !1, line: 21, type: !7)
!39 = !DILocation(line: 21, column: 9, scope: !28)
!40 = !DILocation(line: 24, column: 24, scope: !28)
!41 = !DILocation(line: 24, column: 5, scope: !28)
!42 = !DILocation(line: 25, column: 24, scope: !28)
!43 = !DILocation(line: 25, column: 5, scope: !28)
!44 = !DILocation(line: 28, column: 17, scope: !28)
!45 = !DILocation(line: 28, column: 20, scope: !28)
!46 = !DILocation(line: 28, column: 5, scope: !28)
!47 = !DILocation(line: 31, column: 17, scope: !28)
!48 = !DILocation(line: 31, column: 21, scope: !28)
!49 = !DILocation(line: 31, column: 5, scope: !28)
!50 = !DILocation(line: 32, column: 17, scope: !28)
!51 = !DILocation(line: 32, column: 21, scope: !28)
!52 = !DILocation(line: 32, column: 5, scope: !28)
!53 = !DILocalVariable(name: "context", scope: !28, file: !1, line: 35, type: !3)
!54 = !DILocation(line: 35, column: 11, scope: !28)
!55 = !DILocation(line: 35, column: 39, scope: !28)
!56 = !DILocation(line: 35, column: 28, scope: !28)
!57 = !DILocation(line: 35, column: 21, scope: !28)
!58 = !DILocalVariable(name: "ret", scope: !28, file: !1, line: 38, type: !7)
!59 = !DILocation(line: 38, column: 9, scope: !28)
!60 = !DILocation(line: 38, column: 25, scope: !28)
!61 = !DILocation(line: 38, column: 34, scope: !28)
!62 = !DILocation(line: 38, column: 42, scope: !28)
!63 = !DILocation(line: 38, column: 15, scope: !28)
!64 = !DILocation(line: 41, column: 5, scope: !28)
!65 = !DILocation(line: 44, column: 5, scope: !28)
!66 = !DILocation(line: 46, column: 5, scope: !28)
!67 = distinct !DISubprogram(name: "xmlFdRead", scope: !1, file: !1, line: 50, type: !68, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !22)
!68 = !DISubroutineType(types: !69)
!69 = !{!7, !3, !70, !7}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!71 = !DILocalVariable(name: "context", arg: 1, scope: !67, file: !1, line: 50, type: !3)
!72 = !DILocation(line: 50, column: 28, scope: !67)
!73 = !DILocalVariable(name: "buffer", arg: 2, scope: !67, file: !1, line: 50, type: !70)
!74 = !DILocation(line: 50, column: 43, scope: !67)
!75 = !DILocalVariable(name: "len", arg: 3, scope: !67, file: !1, line: 50, type: !7)
!76 = !DILocation(line: 50, column: 55, scope: !67)
!77 = !DILocalVariable(name: "ret", scope: !67, file: !1, line: 51, type: !7)
!78 = !DILocation(line: 51, column: 9, scope: !67)
!79 = !DILocation(line: 54, column: 32, scope: !67)
!80 = !DILocation(line: 54, column: 21, scope: !67)
!81 = !DILocation(line: 54, column: 16, scope: !67)
!82 = !DILocation(line: 54, column: 42, scope: !67)
!83 = !DILocation(line: 54, column: 53, scope: !67)
!84 = !DILocation(line: 54, column: 11, scope: !67)
!85 = !DILocation(line: 54, column: 9, scope: !67)
!86 = !DILocation(line: 55, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !67, file: !1, line: 55, column: 9)
!88 = !DILocation(line: 55, column: 13, scope: !87)
!89 = !DILocation(line: 55, column: 9, scope: !67)
!90 = !DILocation(line: 55, column: 18, scope: !87)
!91 = !DILocation(line: 56, column: 12, scope: !67)
!92 = !DILocation(line: 56, column: 5, scope: !67)
