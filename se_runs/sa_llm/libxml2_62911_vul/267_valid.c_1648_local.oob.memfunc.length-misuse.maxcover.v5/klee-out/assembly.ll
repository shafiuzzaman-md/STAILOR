; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/267_valid.c_1648_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/267_valid.c_1648_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlEnumeration = type { %struct._xmlEnumeration*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"name_buf\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/267_valid.c_1648_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct._xmlEnumeration*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !24
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !25
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !26
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !27
  store i8 0, i8* %5, align 1, !dbg !28
  call void @llvm.dbg.declare(metadata %struct._xmlEnumeration** %3, metadata !29, metadata !DIExpression()), !dbg !41
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !42
  %7 = call %struct._xmlEnumeration* @xmlCreateEnumeration(i8* noundef %6), !dbg !43
  store %struct._xmlEnumeration* %7, %struct._xmlEnumeration** %3, align 8, !dbg !41
  %8 = load %struct._xmlEnumeration*, %struct._xmlEnumeration** %3, align 8, !dbg !44
  %9 = icmp ne %struct._xmlEnumeration* %8, null, !dbg !46
  br i1 %9, label %10, label %13, !dbg !47

10:                                               ; preds = %0
  %11 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !48
  %12 = load %struct._xmlEnumeration*, %struct._xmlEnumeration** %3, align 8, !dbg !50
  call void @xmlFreeEnumeration(%struct._xmlEnumeration* noundef %12), !dbg !51
  br label %13, !dbg !52

13:                                               ; preds = %10, %0
  ret i32 0, !dbg !53
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlEnumeration* @xmlCreateEnumeration(i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlFreeEnumeration(%struct._xmlEnumeration* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/267_valid.c_1648_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "63590ccff99e308dac4a4b637a35dc50")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !13, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "name_buf", scope: !12, file: !1, line: 8, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !22)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !20, line: 28, baseType: !21)
!20 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !{!23}
!23 = !DISubrange(count: 256)
!24 = !DILocation(line: 8, column: 13, scope: !12)
!25 = !DILocation(line: 9, column: 24, scope: !12)
!26 = !DILocation(line: 9, column: 5, scope: !12)
!27 = !DILocation(line: 10, column: 5, scope: !12)
!28 = !DILocation(line: 10, column: 19, scope: !12)
!29 = !DILocalVariable(name: "ret", scope: !12, file: !1, line: 12, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumerationPtr", file: !31, line: 239, baseType: !32)
!31 = !DIFile(filename: "/usr/include/libxml2/libxml/tree.h", directory: "", checksumkind: CSK_MD5, checksum: "750bac4395c48684302094dba58dc4a1")
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumeration", file: !31, line: 238, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEnumeration", file: !31, line: 240, size: 128, elements: !35)
!35 = !{!36, !38}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !34, file: !31, line: 241, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !34, file: !31, line: 242, baseType: !39, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!41 = !DILocation(line: 12, column: 23, scope: !12)
!42 = !DILocation(line: 12, column: 50, scope: !12)
!43 = !DILocation(line: 12, column: 29, scope: !12)
!44 = !DILocation(line: 13, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !12, file: !1, line: 13, column: 9)
!46 = !DILocation(line: 13, column: 13, scope: !45)
!47 = !DILocation(line: 13, column: 9, scope: !12)
!48 = !DILocation(line: 14, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 13, column: 22)
!50 = !DILocation(line: 15, column: 28, scope: !49)
!51 = !DILocation(line: 15, column: 9, scope: !49)
!52 = !DILocation(line: 16, column: 5, scope: !49)
!53 = !DILocation(line: 17, column: 5, scope: !12)
