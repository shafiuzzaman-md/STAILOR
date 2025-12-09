; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/158_uri.c_1035_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/158_uri.c_1035_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlURI = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, i8* }

@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/158_uri.c_1035_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlURI*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlURI** %2, metadata !17, metadata !DIExpression()), !dbg !37
  %3 = call %struct._xmlURI* @xmlCreateURI(), !dbg !38
  store %struct._xmlURI* %3, %struct._xmlURI** %2, align 8, !dbg !37
  %4 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !39
  %5 = icmp eq %struct._xmlURI* %4, null, !dbg !41
  br i1 %5, label %6, label %7, !dbg !42

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !43
  br label %10, !dbg !43

7:                                                ; preds = %0
  %8 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0), i32 noundef 11, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !45
  %9 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !46
  call void @xmlFreeURI(%struct._xmlURI* noundef %9), !dbg !47
  store i32 0, i32* %1, align 4, !dbg !48
  br label %10, !dbg !48

10:                                               ; preds = %7, %6
  %11 = load i32, i32* %1, align 4, !dbg !49
  ret i32 %11, !dbg !49
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlURI* @xmlCreateURI() #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlFreeURI(%struct._xmlURI* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/158_uri.c_1035_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "dbe0166bcd462eb314bef7e9a87bb300")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !13, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "uri", scope: !12, file: !1, line: 6, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlURIPtr", file: !19, line: 32, baseType: !20)
!19 = !DIFile(filename: "/usr/include/libxml2/libxml/uri.h", directory: "", checksumkind: CSK_MD5, checksum: "032d430e35153af35f2fe17a9e9c37bf")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlURI", file: !19, line: 31, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlURI", file: !19, line: 33, size: 704, elements: !23)
!23 = !{!24, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "scheme", scope: !22, file: !19, line: 34, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !22, file: !19, line: 35, baseType: !25, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "authority", scope: !22, file: !19, line: 36, baseType: !25, size: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !22, file: !19, line: 37, baseType: !25, size: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !22, file: !19, line: 38, baseType: !25, size: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !22, file: !19, line: 39, baseType: !15, size: 32, offset: 320)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !22, file: !19, line: 40, baseType: !25, size: 64, offset: 384)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !22, file: !19, line: 41, baseType: !25, size: 64, offset: 448)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "fragment", scope: !22, file: !19, line: 42, baseType: !25, size: 64, offset: 512)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !22, file: !19, line: 43, baseType: !15, size: 32, offset: 576)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "query_raw", scope: !22, file: !19, line: 44, baseType: !25, size: 64, offset: 640)
!37 = !DILocation(line: 6, column: 15, scope: !12)
!38 = !DILocation(line: 6, column: 21, scope: !12)
!39 = !DILocation(line: 7, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !12, file: !1, line: 7, column: 9)
!41 = !DILocation(line: 7, column: 13, scope: !40)
!42 = !DILocation(line: 7, column: 9, scope: !12)
!43 = !DILocation(line: 8, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !40, file: !1, line: 7, column: 22)
!45 = !DILocation(line: 11, column: 5, scope: !12)
!46 = !DILocation(line: 13, column: 16, scope: !12)
!47 = !DILocation(line: 13, column: 5, scope: !12)
!48 = !DILocation(line: 14, column: 5, scope: !12)
!49 = !DILocation(line: 15, column: 1, scope: !12)
