; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/064_pattern.c_209_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/064_pattern.c_209_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlPattern = type opaque
%struct._xmlStreamCtxt = type opaque

@.str = private unnamed_addr constant [12 x i8] c"pattern_buf\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/064_pattern.c_209_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlPattern*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct._xmlStreamCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlPattern** %2, metadata !17, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !24, metadata !DIExpression()), !dbg !29
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !30
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !31
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !32
  store i8 0, i8* %6, align 1, !dbg !33
  call void @llvm.dbg.declare(metadata %struct._xmlStreamCtxt** %4, metadata !34, metadata !DIExpression()), !dbg !39
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !40
  %8 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @xmlStreamCompile to i32 (i8*, i8*, ...)*)(i8* noundef null, i8* noundef %7), !dbg !41
  %9 = sext i32 %8 to i64, !dbg !41
  %10 = inttoptr i64 %9 to %struct._xmlStreamCtxt*, !dbg !41
  store %struct._xmlStreamCtxt* %10, %struct._xmlStreamCtxt** %4, align 8, !dbg !39
  %11 = load %struct._xmlStreamCtxt*, %struct._xmlStreamCtxt** %4, align 8, !dbg !42
  %12 = icmp ne %struct._xmlStreamCtxt* %11, null, !dbg !44
  br i1 %12, label %13, label %16, !dbg !45

13:                                               ; preds = %0
  %14 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 24, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !46
  %15 = load %struct._xmlStreamCtxt*, %struct._xmlStreamCtxt** %4, align 8, !dbg !48
  call void @xmlFreeStreamCtxt(%struct._xmlStreamCtxt* noundef %15), !dbg !49
  br label %16, !dbg !50

16:                                               ; preds = %13, %0
  ret i32 0, !dbg !51
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i32 @xmlStreamCompile(...) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlFreeStreamCtxt(%struct._xmlStreamCtxt* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/064_pattern.c_209_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "90b3b7eaa112a235c0493296839609d3")
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
!24 = !DILocalVariable(name: "pattern_buf", scope: !12, file: !1, line: 13, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2048, elements: !27)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !{!28}
!28 = !DISubrange(count: 256)
!29 = !DILocation(line: 13, column: 10, scope: !12)
!30 = !DILocation(line: 14, column: 24, scope: !12)
!31 = !DILocation(line: 14, column: 5, scope: !12)
!32 = !DILocation(line: 16, column: 5, scope: !12)
!33 = !DILocation(line: 16, column: 40, scope: !12)
!34 = !DILocalVariable(name: "ctxt", scope: !12, file: !1, line: 19, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStreamCtxtPtr", file: !19, line: 63, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStreamCtxt", file: !19, line: 62, baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlStreamCtxt", file: !19, line: 62, flags: DIFlagFwdDecl)
!39 = !DILocation(line: 19, column: 22, scope: !12)
!40 = !DILocation(line: 19, column: 52, scope: !12)
!41 = !DILocation(line: 19, column: 29, scope: !12)
!42 = !DILocation(line: 20, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !12, file: !1, line: 20, column: 9)
!44 = !DILocation(line: 20, column: 14, scope: !43)
!45 = !DILocation(line: 20, column: 9, scope: !12)
!46 = !DILocation(line: 24, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 20, column: 23)
!48 = !DILocation(line: 25, column: 27, scope: !47)
!49 = !DILocation(line: 25, column: 9, scope: !47)
!50 = !DILocation(line: 26, column: 5, scope: !47)
!51 = !DILocation(line: 30, column: 5, scope: !12)
