; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/123_uri.c_2569_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/123_uri.c_2569_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlURI = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"uri\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"has_backslash\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/123_uri.c_2569_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct._xmlURI*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !23
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !24
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !25
  store i8 0, i8* %6, align 1, !dbg !26
  call void @llvm.dbg.declare(metadata %struct._xmlURI** %3, metadata !27, metadata !DIExpression()), !dbg !46
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !47
  %8 = call %struct._xmlURI* @xmlParseURI(i8* noundef %7), !dbg !48
  store %struct._xmlURI* %8, %struct._xmlURI** %3, align 8, !dbg !46
  %9 = load %struct._xmlURI*, %struct._xmlURI** %3, align 8, !dbg !49
  %10 = icmp eq %struct._xmlURI* %9, null, !dbg !51
  br i1 %10, label %11, label %12, !dbg !52

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !53
  br label %20, !dbg !53

12:                                               ; preds = %0
  %13 = load %struct._xmlURI*, %struct._xmlURI** %3, align 8, !dbg !55
  call void @xmlFreeURI(%struct._xmlURI* noundef %13), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %4, metadata !57, metadata !DIExpression()), !dbg !58
  %14 = bitcast i32* %4 to i8*, !dbg !59
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)), !dbg !60
  %15 = load i32, i32* %4, align 4, !dbg !61
  %16 = icmp ne i32 %15, 0, !dbg !61
  br i1 %16, label %17, label %19, !dbg !63

17:                                               ; preds = %12
  %18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !64
  br label %19, !dbg !66

19:                                               ; preds = %17, %12
  store i32 0, i32* %1, align 4, !dbg !67
  br label %20, !dbg !67

20:                                               ; preds = %19, %11
  %21 = load i32, i32* %1, align 4, !dbg !68
  ret i32 %21, !dbg !68
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlURI* @xmlParseURI(i8* noundef) #2

declare void @xmlFreeURI(%struct._xmlURI* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/123_uri.c_2569_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "25724b4734bd2d33ea18e588801ba4b9")
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
!17 = !DILocalVariable(name: "uri", scope: !12, file: !1, line: 7, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 256)
!22 = !DILocation(line: 7, column: 10, scope: !12)
!23 = !DILocation(line: 8, column: 24, scope: !12)
!24 = !DILocation(line: 8, column: 5, scope: !12)
!25 = !DILocation(line: 10, column: 5, scope: !12)
!26 = !DILocation(line: 10, column: 14, scope: !12)
!27 = !DILocalVariable(name: "uri_struct", scope: !12, file: !1, line: 13, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlURIPtr", file: !29, line: 32, baseType: !30)
!29 = !DIFile(filename: "/usr/include/libxml2/libxml/uri.h", directory: "", checksumkind: CSK_MD5, checksum: "032d430e35153af35f2fe17a9e9c37bf")
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlURI", file: !29, line: 31, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlURI", file: !29, line: 33, size: 704, elements: !33)
!33 = !{!34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "scheme", scope: !32, file: !29, line: 34, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !32, file: !29, line: 35, baseType: !35, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "authority", scope: !32, file: !29, line: 36, baseType: !35, size: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !32, file: !29, line: 37, baseType: !35, size: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !32, file: !29, line: 38, baseType: !35, size: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !32, file: !29, line: 39, baseType: !15, size: 32, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !32, file: !29, line: 40, baseType: !35, size: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !32, file: !29, line: 41, baseType: !35, size: 64, offset: 448)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "fragment", scope: !32, file: !29, line: 42, baseType: !35, size: 64, offset: 512)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !32, file: !29, line: 43, baseType: !15, size: 32, offset: 576)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "query_raw", scope: !32, file: !29, line: 44, baseType: !35, size: 64, offset: 640)
!46 = !DILocation(line: 13, column: 15, scope: !12)
!47 = !DILocation(line: 13, column: 40, scope: !12)
!48 = !DILocation(line: 13, column: 28, scope: !12)
!49 = !DILocation(line: 14, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !12, file: !1, line: 14, column: 9)
!51 = !DILocation(line: 14, column: 20, scope: !50)
!52 = !DILocation(line: 14, column: 9, scope: !12)
!53 = !DILocation(line: 16, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 14, column: 29)
!55 = !DILocation(line: 39, column: 16, scope: !12)
!56 = !DILocation(line: 39, column: 5, scope: !12)
!57 = !DILocalVariable(name: "has_backslash", scope: !12, file: !1, line: 53, type: !15)
!58 = !DILocation(line: 53, column: 9, scope: !12)
!59 = !DILocation(line: 54, column: 24, scope: !12)
!60 = !DILocation(line: 54, column: 5, scope: !12)
!61 = !DILocation(line: 55, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !12, file: !1, line: 55, column: 9)
!63 = !DILocation(line: 55, column: 9, scope: !12)
!64 = !DILocation(line: 58, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !1, line: 55, column: 24)
!66 = !DILocation(line: 59, column: 5, scope: !65)
!67 = !DILocation(line: 61, column: 5, scope: !12)
!68 = !DILocation(line: 62, column: 1, scope: !12)
