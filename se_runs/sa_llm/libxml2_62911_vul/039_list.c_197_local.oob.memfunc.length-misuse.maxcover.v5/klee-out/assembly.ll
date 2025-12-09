; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/039_list.c_197_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/039_list.c_197_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlList = type opaque
%struct._xmlLink = type opaque

@.str = private unnamed_addr constant [14 x i8] c"symbolic_size\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/039_list.c_197_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlList*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !17, metadata !DIExpression()), !dbg !18
  %4 = bitcast i32* %2 to i8*, !dbg !19
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !20
  %5 = load i32, i32* %2, align 4, !dbg !21
  %6 = icmp sge i32 %5, 0, !dbg !22
  %7 = zext i1 %6 to i32, !dbg !22
  %8 = sext i32 %7 to i64, !dbg !21
  call void @klee_assume(i64 noundef %8), !dbg !23
  %9 = load i32, i32* %2, align 4, !dbg !24
  %10 = icmp sle i32 %9, 1024, !dbg !25
  %11 = zext i1 %10 to i32, !dbg !25
  %12 = sext i32 %11 to i64, !dbg !24
  call void @klee_assume(i64 noundef %12), !dbg !26
  call void @llvm.dbg.declare(metadata %struct._xmlList** %3, metadata !27, metadata !DIExpression()), !dbg !33
  %13 = call %struct._xmlList* @xmlListCreate(void (%struct._xmlLink*)* noundef null, i32 (i8*, i8*)* noundef null), !dbg !34
  store %struct._xmlList* %13, %struct._xmlList** %3, align 8, !dbg !33
  %14 = load %struct._xmlList*, %struct._xmlList** %3, align 8, !dbg !35
  %15 = icmp ne %struct._xmlList* %14, null, !dbg !37
  br i1 %15, label %16, label %19, !dbg !38

16:                                               ; preds = %0
  %17 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i32 noundef 19, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !39
  %18 = load %struct._xmlList*, %struct._xmlList** %3, align 8, !dbg !41
  call void @xmlListDelete(%struct._xmlList* noundef %18), !dbg !42
  br label %19, !dbg !43

19:                                               ; preds = %16, %0
  ret i32 0, !dbg !44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare %struct._xmlList* @xmlListCreate(void (%struct._xmlLink*)* noundef, i32 (i8*, i8*)* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlListDelete(%struct._xmlList* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/039_list.c_197_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "8212b04261e422a50dc789ef7ab8b451")
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
!17 = !DILocalVariable(name: "symbolic_size", scope: !12, file: !1, line: 7, type: !15)
!18 = !DILocation(line: 7, column: 9, scope: !12)
!19 = !DILocation(line: 8, column: 24, scope: !12)
!20 = !DILocation(line: 8, column: 5, scope: !12)
!21 = !DILocation(line: 9, column: 17, scope: !12)
!22 = !DILocation(line: 9, column: 31, scope: !12)
!23 = !DILocation(line: 9, column: 5, scope: !12)
!24 = !DILocation(line: 10, column: 17, scope: !12)
!25 = !DILocation(line: 10, column: 31, scope: !12)
!26 = !DILocation(line: 10, column: 5, scope: !12)
!27 = !DILocalVariable(name: "list", scope: !12, file: !1, line: 14, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlListPtr", file: !29, line: 24, baseType: !30)
!29 = !DIFile(filename: "/usr/include/libxml2/libxml/list.h", directory: "", checksumkind: CSK_MD5, checksum: "7600108b9a637797d97d3f47ed045287")
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlList", file: !29, line: 23, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlList", file: !29, line: 23, flags: DIFlagFwdDecl)
!33 = !DILocation(line: 14, column: 16, scope: !12)
!34 = !DILocation(line: 14, column: 23, scope: !12)
!35 = !DILocation(line: 17, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !12, file: !1, line: 17, column: 9)
!37 = !DILocation(line: 17, column: 14, scope: !36)
!38 = !DILocation(line: 17, column: 9, scope: !12)
!39 = !DILocation(line: 19, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 17, column: 23)
!41 = !DILocation(line: 21, column: 23, scope: !40)
!42 = !DILocation(line: 21, column: 9, scope: !40)
!43 = !DILocation(line: 22, column: 5, scope: !40)
!44 = !DILocation(line: 24, column: 5, scope: !12)
