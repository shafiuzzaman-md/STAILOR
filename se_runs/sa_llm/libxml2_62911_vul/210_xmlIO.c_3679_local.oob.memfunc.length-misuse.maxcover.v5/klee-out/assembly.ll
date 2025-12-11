; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/210_xmlIO.c_3679_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/210_xmlIO.c_3679_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"(filename_len < 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/210_xmlIO.c_3679_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !15, metadata !DIExpression()), !dbg !20
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !21
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 1024, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !22
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 1023, !dbg !23
  store i8 0, i8* %6, align 1, !dbg !24
  call void @llvm.dbg.declare(metadata i64* %3, metadata !25, metadata !DIExpression()), !dbg !29
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !30
  %8 = call i64 @strlen(i8* noundef %7) #6, !dbg !31
  store i64 %8, i64* %3, align 8, !dbg !29
  %9 = load i64, i64* %3, align 8, !dbg !32
  %10 = icmp ult i64 %9, 1024, !dbg !33
  %11 = zext i1 %10 to i32, !dbg !33
  %12 = sext i32 %11 to i64, !dbg !32
  call void @klee_assume(i64 noundef %12), !dbg !34
  call void @llvm.dbg.declare(metadata i8** %4, metadata !35, metadata !DIExpression()), !dbg !37
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !38
  %14 = call i8* @xmlFileOpen(i8* noundef %13), !dbg !39
  store i8* %14, i8** %4, align 8, !dbg !37
  %15 = load i64, i64* %3, align 8, !dbg !40
  %16 = icmp ult i64 %15, 1024, !dbg !40
  br i1 %16, label %17, label %19, !dbg !40

17:                                               ; preds = %0
  br i1 true, label %18, label %19, !dbg !40

18:                                               ; preds = %17
  br label %21, !dbg !40

19:                                               ; preds = %17, %0
  %20 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !40
  br label %21, !dbg !40

21:                                               ; preds = %19, %18
  %22 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !41
  ret i32 0, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlFileOpen(i8* noundef %0) #0 !dbg !43 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i8** %4, metadata !52, metadata !DIExpression()), !dbg !53
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !54
  %6 = load i8*, i8** %2, align 8, !dbg !55
  %7 = call i8* @strncpy(i8* noundef %5, i8* noundef %6, i64 noundef 1023) #7, !dbg !56
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 1023, !dbg !57
  store i8 0, i8* %8, align 1, !dbg !58
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !59
  %10 = call i64 @strlen(i8* noundef %9) #6, !dbg !60
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %10, !dbg !61
  store i8* %11, i8** %4, align 8, !dbg !62
  br label %12, !dbg !63

12:                                               ; preds = %22, %1
  %13 = load i8*, i8** %4, align 8, !dbg !64
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !65
  %15 = icmp ugt i8* %13, %14, !dbg !66
  br i1 %15, label %16, label %25, !dbg !63

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8, !dbg !67
  %18 = load i8, i8* %17, align 1, !dbg !67
  %19 = sext i8 %18 to i32, !dbg !67
  %20 = icmp eq i32 %19, 47, !dbg !67
  br i1 %20, label %21, label %22, !dbg !70

21:                                               ; preds = %16
  br label %25, !dbg !71

22:                                               ; preds = %16
  %23 = load i8*, i8** %4, align 8, !dbg !72
  %24 = getelementptr inbounds i8, i8* %23, i32 -1, !dbg !72
  store i8* %24, i8** %4, align 8, !dbg !72
  br label %12, !dbg !63, !llvm.loop !73

25:                                               ; preds = %21, %12
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !76
  ret i8* %26, !dbg !77
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/210_xmlIO.c_3679_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ac5ca828764f016bbbe569dee2b2032e")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 33, type: !11, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "filename", scope: !10, file: !1, line: 35, type: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8192, elements: !18)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 1024)
!20 = !DILocation(line: 35, column: 10, scope: !10)
!21 = !DILocation(line: 36, column: 24, scope: !10)
!22 = !DILocation(line: 36, column: 5, scope: !10)
!23 = !DILocation(line: 39, column: 5, scope: !10)
!24 = !DILocation(line: 39, column: 37, scope: !10)
!25 = !DILocalVariable(name: "filename_len", scope: !10, file: !1, line: 42, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !DILocation(line: 42, column: 12, scope: !10)
!30 = !DILocation(line: 42, column: 34, scope: !10)
!31 = !DILocation(line: 42, column: 27, scope: !10)
!32 = !DILocation(line: 43, column: 17, scope: !10)
!33 = !DILocation(line: 43, column: 30, scope: !10)
!34 = !DILocation(line: 43, column: 5, scope: !10)
!35 = !DILocalVariable(name: "result", scope: !10, file: !1, line: 46, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!37 = !DILocation(line: 46, column: 11, scope: !10)
!38 = !DILocation(line: 46, column: 32, scope: !10)
!39 = !DILocation(line: 46, column: 20, scope: !10)
!40 = !DILocation(line: 53, column: 5, scope: !10)
!41 = !DILocation(line: 56, column: 5, scope: !10)
!42 = !DILocation(line: 58, column: 5, scope: !10)
!43 = distinct !DISubprogram(name: "xmlFileOpen", scope: !1, file: !1, line: 62, type: !44, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!44 = !DISubroutineType(types: !45)
!45 = !{!36, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!48 = !DILocalVariable(name: "filename", arg: 1, scope: !43, file: !1, line: 62, type: !46)
!49 = !DILocation(line: 62, column: 31, scope: !43)
!50 = !DILocalVariable(name: "dir", scope: !43, file: !1, line: 63, type: !16)
!51 = !DILocation(line: 63, column: 10, scope: !43)
!52 = !DILocalVariable(name: "cur", scope: !43, file: !1, line: 64, type: !36)
!53 = !DILocation(line: 64, column: 11, scope: !43)
!54 = !DILocation(line: 67, column: 13, scope: !43)
!55 = !DILocation(line: 67, column: 18, scope: !43)
!56 = !DILocation(line: 67, column: 5, scope: !43)
!57 = !DILocation(line: 68, column: 5, scope: !43)
!58 = !DILocation(line: 68, column: 15, scope: !43)
!59 = !DILocation(line: 71, column: 23, scope: !43)
!60 = !DILocation(line: 71, column: 16, scope: !43)
!61 = !DILocation(line: 71, column: 12, scope: !43)
!62 = !DILocation(line: 71, column: 9, scope: !43)
!63 = !DILocation(line: 74, column: 5, scope: !43)
!64 = !DILocation(line: 74, column: 12, scope: !43)
!65 = !DILocation(line: 74, column: 18, scope: !43)
!66 = !DILocation(line: 74, column: 16, scope: !43)
!67 = !DILocation(line: 75, column: 13, scope: !68)
!68 = distinct !DILexicalBlock(scope: !69, file: !1, line: 75, column: 13)
!69 = distinct !DILexicalBlock(scope: !43, file: !1, line: 74, column: 23)
!70 = !DILocation(line: 75, column: 13, scope: !69)
!71 = !DILocation(line: 75, column: 34, scope: !68)
!72 = !DILocation(line: 76, column: 12, scope: !69)
!73 = distinct !{!73, !63, !74, !75}
!74 = !DILocation(line: 77, column: 5, scope: !43)
!75 = !{!"llvm.loop.mustprogress"}
!76 = !DILocation(line: 80, column: 12, scope: !43)
!77 = !DILocation(line: 80, column: 5, scope: !43)
