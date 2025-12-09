; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/038_pattern.c_1699_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/038_pattern.c_1699_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlPattern = type opaque
%struct._xmlStreamCtxt = type opaque

@.str = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/038_pattern.c_1699_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlPattern*, align 8
  %3 = alloca %struct._xmlStreamCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlPattern** %2, metadata !17, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata %struct._xmlStreamCtxt** %3, metadata !24, metadata !DIExpression()), !dbg !29
  %4 = bitcast %struct._xmlPattern** %2 to i8*, !dbg !30
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !31
  %5 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !32
  %6 = icmp eq %struct._xmlPattern* %5, null, !dbg !34
  br i1 %6, label %7, label %8, !dbg !35

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !36
  br label %18, !dbg !36

8:                                                ; preds = %0
  %9 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !38
  %10 = call %struct._xmlStreamCtxt* @xmlPatternGetStreamCtxt(%struct._xmlPattern* noundef %9), !dbg !39
  store %struct._xmlStreamCtxt* %10, %struct._xmlStreamCtxt** %3, align 8, !dbg !40
  %11 = load %struct._xmlStreamCtxt*, %struct._xmlStreamCtxt** %3, align 8, !dbg !41
  %12 = icmp eq %struct._xmlStreamCtxt* %11, null, !dbg !43
  br i1 %12, label %13, label %14, !dbg !44

13:                                               ; preds = %8
  store i32 0, i32* %1, align 4, !dbg !45
  br label %18, !dbg !45

14:                                               ; preds = %8
  %15 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !47
  %16 = load %struct._xmlStreamCtxt*, %struct._xmlStreamCtxt** %3, align 8, !dbg !48
  call void @xmlFreeStreamCtxt(%struct._xmlStreamCtxt* noundef %16), !dbg !49
  %17 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !50
  call void @xmlFreePattern(%struct._xmlPattern* noundef %17), !dbg !51
  store i32 0, i32* %1, align 4, !dbg !52
  br label %18, !dbg !52

18:                                               ; preds = %14, %13, %7
  %19 = load i32, i32* %1, align 4, !dbg !53
  ret i32 %19, !dbg !53
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlStreamCtxt* @xmlPatternGetStreamCtxt(%struct._xmlPattern* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlFreeStreamCtxt(%struct._xmlStreamCtxt* noundef) #2

declare void @xmlFreePattern(%struct._xmlPattern* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/038_pattern.c_1699_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "ff8ab4c6172b185adb51df3512a71b21")
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
!17 = !DILocalVariable(name: "pattern", scope: !12, file: !1, line: 6, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlPatternPtr", file: !19, line: 30, baseType: !20)
!19 = !DIFile(filename: "/usr/include/libxml2/libxml/pattern.h", directory: "", checksumkind: CSK_MD5, checksum: "db123ed3ecc27ab31b3f808e96edb492")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlPattern", file: !19, line: 29, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlPattern", file: !19, line: 29, flags: DIFlagFwdDecl)
!23 = !DILocation(line: 6, column: 19, scope: !12)
!24 = !DILocalVariable(name: "streamCtxt", scope: !12, file: !1, line: 7, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStreamCtxtPtr", file: !19, line: 63, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStreamCtxt", file: !19, line: 62, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlStreamCtxt", file: !19, line: 62, flags: DIFlagFwdDecl)
!29 = !DILocation(line: 7, column: 22, scope: !12)
!30 = !DILocation(line: 10, column: 24, scope: !12)
!31 = !DILocation(line: 10, column: 5, scope: !12)
!32 = !DILocation(line: 14, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !12, file: !1, line: 14, column: 9)
!34 = !DILocation(line: 14, column: 17, scope: !33)
!35 = !DILocation(line: 14, column: 9, scope: !12)
!36 = !DILocation(line: 15, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !1, line: 14, column: 26)
!38 = !DILocation(line: 19, column: 42, scope: !12)
!39 = !DILocation(line: 19, column: 18, scope: !12)
!40 = !DILocation(line: 19, column: 16, scope: !12)
!41 = !DILocation(line: 20, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !12, file: !1, line: 20, column: 9)
!43 = !DILocation(line: 20, column: 20, scope: !42)
!44 = !DILocation(line: 20, column: 9, scope: !12)
!45 = !DILocation(line: 21, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !1, line: 20, column: 29)
!47 = !DILocation(line: 33, column: 5, scope: !12)
!48 = !DILocation(line: 36, column: 23, scope: !12)
!49 = !DILocation(line: 36, column: 5, scope: !12)
!50 = !DILocation(line: 37, column: 20, scope: !12)
!51 = !DILocation(line: 37, column: 5, scope: !12)
!52 = !DILocation(line: 39, column: 5, scope: !12)
!53 = !DILocation(line: 40, column: 1, scope: !12)
