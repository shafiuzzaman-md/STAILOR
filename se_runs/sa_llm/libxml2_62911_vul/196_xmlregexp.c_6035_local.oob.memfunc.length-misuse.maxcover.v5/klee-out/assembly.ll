; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/196_xmlregexp.c_6035_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/196_xmlregexp.c_6035_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegexp = type opaque

@.str = private unnamed_addr constant [12 x i8] c"pattern_buf\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/196_xmlregexp.c_6035_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !17 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegexp*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegexp** %2, metadata !22, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8** %3, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !31, metadata !DIExpression()), !dbg !36
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !37
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !38
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 255, !dbg !39
  store i8 0, i8* %6, align 1, !dbg !40
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !41
  store i8* %7, i8** %3, align 8, !dbg !42
  %8 = load i8*, i8** %3, align 8, !dbg !43
  %9 = call %struct._xmlRegexp* @xmlRegexpCompile(i8* noundef %8), !dbg !44
  store %struct._xmlRegexp* %9, %struct._xmlRegexp** %2, align 8, !dbg !45
  %10 = load %struct._xmlRegexp*, %struct._xmlRegexp** %2, align 8, !dbg !46
  %11 = icmp ne %struct._xmlRegexp* %10, null, !dbg !48
  br i1 %11, label %12, label %14, !dbg !49

12:                                               ; preds = %0
  %13 = load %struct._xmlRegexp*, %struct._xmlRegexp** %2, align 8, !dbg !50
  call void @xmlRegFreeRegexp(%struct._xmlRegexp* noundef %13), !dbg !52
  br label %14, !dbg !53

14:                                               ; preds = %12, %0
  %15 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !54
  ret i32 0, !dbg !55
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
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/196_xmlregexp.c_6035_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "6419512537880555ec6bcdf4eeb8c2f0")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !6, line: 28, baseType: !7)
!6 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !18, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{}
!22 = !DILocalVariable(name: "comp", scope: !17, file: !1, line: 7, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexpPtr", file: !24, line: 29, baseType: !25)
!24 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlregexp.h", directory: "", checksumkind: CSK_MD5, checksum: "fea3110c96e8cd9013900e1c8e5b6c0b")
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexp", file: !24, line: 28, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegexp", file: !24, line: 28, flags: DIFlagFwdDecl)
!28 = !DILocation(line: 7, column: 18, scope: !17)
!29 = !DILocalVariable(name: "pattern", scope: !17, file: !1, line: 8, type: !3)
!30 = !DILocation(line: 8, column: 20, scope: !17)
!31 = !DILocalVariable(name: "pattern_buf", scope: !17, file: !1, line: 11, type: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2048, elements: !34)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !{!35}
!35 = !DISubrange(count: 256)
!36 = !DILocation(line: 11, column: 10, scope: !17)
!37 = !DILocation(line: 12, column: 24, scope: !17)
!38 = !DILocation(line: 12, column: 5, scope: !17)
!39 = !DILocation(line: 13, column: 5, scope: !17)
!40 = !DILocation(line: 13, column: 22, scope: !17)
!41 = !DILocation(line: 14, column: 31, scope: !17)
!42 = !DILocation(line: 14, column: 13, scope: !17)
!43 = !DILocation(line: 17, column: 29, scope: !17)
!44 = !DILocation(line: 17, column: 12, scope: !17)
!45 = !DILocation(line: 17, column: 10, scope: !17)
!46 = !DILocation(line: 18, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !17, file: !1, line: 18, column: 9)
!48 = !DILocation(line: 18, column: 14, scope: !47)
!49 = !DILocation(line: 18, column: 9, scope: !17)
!50 = !DILocation(line: 19, column: 26, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !1, line: 18, column: 23)
!52 = !DILocation(line: 19, column: 9, scope: !51)
!53 = !DILocation(line: 20, column: 5, scope: !51)
!54 = !DILocation(line: 27, column: 5, scope: !17)
!55 = !DILocation(line: 29, column: 5, scope: !17)
