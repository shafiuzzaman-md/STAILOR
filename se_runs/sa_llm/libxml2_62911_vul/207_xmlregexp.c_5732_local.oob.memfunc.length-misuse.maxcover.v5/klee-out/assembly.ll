; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/207_xmlregexp.c_5732_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/207_xmlregexp.c_5732_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegexp = type opaque

@.str = private unnamed_addr constant [12 x i8] c"pattern_len\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"pattern_buf\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/207_xmlregexp.c_5732_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !16 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegexp*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [1025 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegexp** %2, metadata !21, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i8** %3, metadata !28, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i64* %4, metadata !33, metadata !DIExpression()), !dbg !37
  %6 = bitcast i64* %4 to i8*, !dbg !38
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !39
  %7 = load i64, i64* %4, align 8, !dbg !40
  %8 = icmp ugt i64 %7, 1024, !dbg !42
  br i1 %8, label %9, label %10, !dbg !43

9:                                                ; preds = %0
  store i64 1024, i64* %4, align 8, !dbg !44
  br label %10, !dbg !45

10:                                               ; preds = %9, %0
  call void @llvm.dbg.declare(metadata [1025 x i8]* %5, metadata !46, metadata !DIExpression()), !dbg !50
  %11 = getelementptr inbounds [1025 x i8], [1025 x i8]* %5, i64 0, i64 0, !dbg !51
  %12 = load i64, i64* %4, align 8, !dbg !52
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef %12, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)), !dbg !53
  %13 = load i64, i64* %4, align 8, !dbg !54
  %14 = getelementptr inbounds [1025 x i8], [1025 x i8]* %5, i64 0, i64 %13, !dbg !55
  store i8 0, i8* %14, align 1, !dbg !56
  %15 = getelementptr inbounds [1025 x i8], [1025 x i8]* %5, i64 0, i64 0, !dbg !57
  store i8* %15, i8** %3, align 8, !dbg !58
  %16 = load i8*, i8** %3, align 8, !dbg !59
  %17 = call %struct._xmlRegexp* @xmlRegexpCompile(i8* noundef %16), !dbg !60
  store %struct._xmlRegexp* %17, %struct._xmlRegexp** %2, align 8, !dbg !61
  %18 = load %struct._xmlRegexp*, %struct._xmlRegexp** %2, align 8, !dbg !62
  %19 = icmp ne %struct._xmlRegexp* %18, null, !dbg !62
  br i1 %19, label %20, label %22, !dbg !64

20:                                               ; preds = %10
  %21 = load %struct._xmlRegexp*, %struct._xmlRegexp** %2, align 8, !dbg !65
  call void @xmlRegFreeRegexp(%struct._xmlRegexp* noundef %21), !dbg !67
  br label %22, !dbg !68

22:                                               ; preds = %20, %10
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !69
  ret i32 0, !dbg !70
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlRegexp* @xmlRegexpCompile(i8* noundef) #2

declare void @xmlRegFreeRegexp(%struct._xmlRegexp* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/207_xmlregexp.c_5732_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "a48326b413a0e4dc06e6221ecfaeb0a7")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !6, line: 28, baseType: !7)
!6 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !17, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{}
!21 = !DILocalVariable(name: "regexp", scope: !16, file: !1, line: 7, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexpPtr", file: !23, line: 29, baseType: !24)
!23 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlregexp.h", directory: "", checksumkind: CSK_MD5, checksum: "fea3110c96e8cd9013900e1c8e5b6c0b")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexp", file: !23, line: 28, baseType: !26)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegexp", file: !23, line: 28, flags: DIFlagFwdDecl)
!27 = !DILocation(line: 7, column: 18, scope: !16)
!28 = !DILocalVariable(name: "pattern", scope: !16, file: !1, line: 8, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DILocation(line: 8, column: 17, scope: !16)
!33 = !DILocalVariable(name: "pattern_len", scope: !16, file: !1, line: 9, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!36 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 9, column: 12, scope: !16)
!38 = !DILocation(line: 11, column: 24, scope: !16)
!39 = !DILocation(line: 11, column: 5, scope: !16)
!40 = !DILocation(line: 12, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !16, file: !1, line: 12, column: 9)
!42 = !DILocation(line: 12, column: 21, scope: !41)
!43 = !DILocation(line: 12, column: 9, scope: !16)
!44 = !DILocation(line: 12, column: 41, scope: !41)
!45 = !DILocation(line: 12, column: 29, scope: !41)
!46 = !DILocalVariable(name: "pattern_buf", scope: !16, file: !1, line: 13, type: !47)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8200, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 1025)
!50 = !DILocation(line: 13, column: 10, scope: !16)
!51 = !DILocation(line: 14, column: 24, scope: !16)
!52 = !DILocation(line: 14, column: 37, scope: !16)
!53 = !DILocation(line: 14, column: 5, scope: !16)
!54 = !DILocation(line: 15, column: 17, scope: !16)
!55 = !DILocation(line: 15, column: 5, scope: !16)
!56 = !DILocation(line: 15, column: 30, scope: !16)
!57 = !DILocation(line: 16, column: 15, scope: !16)
!58 = !DILocation(line: 16, column: 13, scope: !16)
!59 = !DILocation(line: 18, column: 48, scope: !16)
!60 = !DILocation(line: 18, column: 14, scope: !16)
!61 = !DILocation(line: 18, column: 12, scope: !16)
!62 = !DILocation(line: 19, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !16, file: !1, line: 19, column: 9)
!64 = !DILocation(line: 19, column: 9, scope: !16)
!65 = !DILocation(line: 20, column: 26, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !1, line: 19, column: 17)
!67 = !DILocation(line: 20, column: 9, scope: !66)
!68 = !DILocation(line: 21, column: 5, scope: !66)
!69 = !DILocation(line: 23, column: 5, scope: !16)
!70 = !DILocation(line: 24, column: 5, scope: !16)
