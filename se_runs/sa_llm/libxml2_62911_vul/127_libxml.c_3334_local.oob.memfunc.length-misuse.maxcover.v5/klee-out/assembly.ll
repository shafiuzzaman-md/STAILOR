; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/127_libxml.c_3334_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/127_libxml.c_3334_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"count\00", align 1
@xmlMalloc = external global i8* (i64)*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/127_libxml.c_3334_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@xmlFree = external global void (i8*)*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !19 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !24, metadata !DIExpression()), !dbg !25
  %4 = bitcast i32* %2 to i8*, !dbg !26
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !27
  %5 = load i32, i32* %2, align 4, !dbg !28
  %6 = icmp sle i32 %5, 0, !dbg !30
  br i1 %6, label %7, label %8, !dbg !31

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !32
  br label %29, !dbg !32

8:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !34, metadata !DIExpression()), !dbg !35
  %9 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !36
  %10 = load i32, i32* %2, align 4, !dbg !37
  %11 = sext i32 %10 to i64, !dbg !37
  %12 = mul i64 8, %11, !dbg !38
  %13 = call i8* %9(i64 noundef %12), !dbg !36
  %14 = bitcast i8* %13 to i8**, !dbg !39
  store i8** %14, i8*** %3, align 8, !dbg !35
  %15 = load i8**, i8*** %3, align 8, !dbg !40
  %16 = icmp eq i8** %15, null, !dbg !42
  br i1 %16, label %17, label %18, !dbg !43

17:                                               ; preds = %8
  store i32 0, i32* %1, align 4, !dbg !44
  br label %29, !dbg !44

18:                                               ; preds = %8
  %19 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !46
  %20 = load i8**, i8*** %3, align 8, !dbg !47
  %21 = bitcast i8** %20 to i8*, !dbg !48
  %22 = load i32, i32* %2, align 4, !dbg !49
  %23 = sext i32 %22 to i64, !dbg !49
  %24 = mul i64 8, %23, !dbg !50
  %25 = call i8* @memset(i8* %21, i32 0, i64 %24), !dbg !48
  %26 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !51
  %27 = load i8**, i8*** %3, align 8, !dbg !52
  %28 = bitcast i8** %27 to i8*, !dbg !52
  call void %26(i8* noundef %28), !dbg !51
  store i32 0, i32* %1, align 4, !dbg !53
  br label %29, !dbg !53

29:                                               ; preds = %18, %17, %7
  %30 = load i32, i32* %1, align 4, !dbg !54
  ret i32 %30, !dbg !54
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !55 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !62, metadata !DIExpression()), !dbg !63
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !64, metadata !DIExpression()), !dbg !65
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata i8** %7, metadata !68, metadata !DIExpression()), !dbg !71
  %8 = load i8*, i8** %4, align 8, !dbg !72
  store i8* %8, i8** %7, align 8, !dbg !71
  br label %9, !dbg !73

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !74
  %11 = add i64 %10, -1, !dbg !74
  store i64 %11, i64* %6, align 8, !dbg !74
  %12 = icmp ugt i64 %10, 0, !dbg !75
  br i1 %12, label %13, label %18, !dbg !73

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !76
  %15 = trunc i32 %14 to i8, !dbg !76
  %16 = load i8*, i8** %7, align 8, !dbg !77
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !77
  store i8* %17, i8** %7, align 8, !dbg !77
  store i8 %15, i8* %16, align 1, !dbg !78
  br label %9, !dbg !73, !llvm.loop !79

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !81
  ret i8* %19, !dbg !82
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18, !18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/127_libxml.c_3334_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "406b4761d140cc909567384eb2206d42")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !6, line: 28, baseType: !7)
!6 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"Ubuntu clang version 14.0.6"}
!19 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !20, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!20 = !DISubroutineType(types: !21)
!21 = !{!22}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{}
!24 = !DILocalVariable(name: "count", scope: !19, file: !1, line: 10, type: !22)
!25 = !DILocation(line: 10, column: 9, scope: !19)
!26 = !DILocation(line: 11, column: 24, scope: !19)
!27 = !DILocation(line: 11, column: 5, scope: !19)
!28 = !DILocation(line: 13, column: 9, scope: !29)
!29 = distinct !DILexicalBlock(scope: !19, file: !1, line: 13, column: 9)
!30 = !DILocation(line: 13, column: 15, scope: !29)
!31 = !DILocation(line: 13, column: 9, scope: !19)
!32 = !DILocation(line: 14, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !29, file: !1, line: 13, column: 21)
!34 = !DILocalVariable(name: "strings", scope: !19, file: !1, line: 17, type: !3)
!35 = !DILocation(line: 17, column: 15, scope: !19)
!36 = !DILocation(line: 17, column: 38, scope: !19)
!37 = !DILocation(line: 17, column: 68, scope: !19)
!38 = !DILocation(line: 17, column: 66, scope: !19)
!39 = !DILocation(line: 17, column: 25, scope: !19)
!40 = !DILocation(line: 18, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !19, file: !1, line: 18, column: 9)
!42 = !DILocation(line: 18, column: 17, scope: !41)
!43 = !DILocation(line: 18, column: 9, scope: !19)
!44 = !DILocation(line: 19, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !1, line: 18, column: 26)
!46 = !DILocation(line: 22, column: 5, scope: !19)
!47 = !DILocation(line: 23, column: 12, scope: !19)
!48 = !DILocation(line: 23, column: 5, scope: !19)
!49 = !DILocation(line: 23, column: 44, scope: !19)
!50 = !DILocation(line: 23, column: 42, scope: !19)
!51 = !DILocation(line: 25, column: 5, scope: !19)
!52 = !DILocation(line: 25, column: 13, scope: !19)
!53 = !DILocation(line: 26, column: 5, scope: !19)
!54 = !DILocation(line: 27, column: 1, scope: !19)
!55 = distinct !DISubprogram(name: "memset", scope: !56, file: !56, line: 12, type: !57, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !23)
!56 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!57 = !DISubroutineType(types: !58)
!58 = !{!8, !8, !22, !59}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !60, line: 46, baseType: !61)
!60 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!61 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!62 = !DILocalVariable(name: "dst", arg: 1, scope: !55, file: !56, line: 12, type: !8)
!63 = !DILocation(line: 12, column: 20, scope: !55)
!64 = !DILocalVariable(name: "s", arg: 2, scope: !55, file: !56, line: 12, type: !22)
!65 = !DILocation(line: 12, column: 29, scope: !55)
!66 = !DILocalVariable(name: "count", arg: 3, scope: !55, file: !56, line: 12, type: !59)
!67 = !DILocation(line: 12, column: 39, scope: !55)
!68 = !DILocalVariable(name: "a", scope: !55, file: !56, line: 13, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DILocation(line: 13, column: 9, scope: !55)
!72 = !DILocation(line: 13, column: 13, scope: !55)
!73 = !DILocation(line: 14, column: 3, scope: !55)
!74 = !DILocation(line: 14, column: 15, scope: !55)
!75 = !DILocation(line: 14, column: 18, scope: !55)
!76 = !DILocation(line: 15, column: 12, scope: !55)
!77 = !DILocation(line: 15, column: 7, scope: !55)
!78 = !DILocation(line: 15, column: 10, scope: !55)
!79 = distinct !{!79, !73, !76, !80}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !DILocation(line: 16, column: 10, scope: !55)
!82 = !DILocation(line: 16, column: 3, scope: !55)
