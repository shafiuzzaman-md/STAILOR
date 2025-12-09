; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/162_dict.c_588_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/162_dict.c_588_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/162_dict.c_588_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !17 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDict*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %2, metadata !22, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %3, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i8** %4, metadata !31, metadata !DIExpression()), !dbg !32
  %5 = call %struct._xmlDict* @xmlDictCreate(), !dbg !33
  store %struct._xmlDict* %5, %struct._xmlDict** %2, align 8, !dbg !34
  %6 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !35
  %7 = icmp eq %struct._xmlDict* %6, null, !dbg !37
  br i1 %7, label %8, label %9, !dbg !38

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !39
  br label %19, !dbg !39

9:                                                ; preds = %0
  %10 = bitcast i32* %3 to i8*, !dbg !41
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !42
  %11 = load i32, i32* %3, align 4, !dbg !43
  %12 = icmp sge i32 %11, 0, !dbg !44
  %13 = zext i1 %12 to i32, !dbg !44
  %14 = sext i32 %13 to i64, !dbg !43
  call void @klee_assume(i64 noundef %14), !dbg !45
  %15 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !46
  %16 = call i8* @xmlDictLookup(%struct._xmlDict* noundef %15, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef -1), !dbg !47
  store i8* %16, i8** %4, align 8, !dbg !48
  %17 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 26, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !49
  %18 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !50
  call void @xmlDictFree(%struct._xmlDict* noundef %18), !dbg !51
  store i32 0, i32* %1, align 4, !dbg !52
  br label %19, !dbg !52

19:                                               ; preds = %9, %8
  %20 = load i32, i32* %1, align 4, !dbg !53
  ret i32 %20, !dbg !53
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlDict* @xmlDictCreate() #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare i8* @xmlDictLookup(%struct._xmlDict* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlDictFree(%struct._xmlDict* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/162_dict.c_588_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "42031b04ebf77ad6cc5550950d9eb353")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !7, line: 28, baseType: !8)
!7 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !18, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{}
!22 = !DILocalVariable(name: "dict", scope: !17, file: !1, line: 6, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !24, line: 25, baseType: !25)
!24 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !24, line: 24, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !24, line: 24, flags: DIFlagFwdDecl)
!28 = !DILocation(line: 6, column: 16, scope: !17)
!29 = !DILocalVariable(name: "size", scope: !17, file: !1, line: 7, type: !20)
!30 = !DILocation(line: 7, column: 9, scope: !17)
!31 = !DILocalVariable(name: "ret", scope: !17, file: !1, line: 8, type: !4)
!32 = !DILocation(line: 8, column: 20, scope: !17)
!33 = !DILocation(line: 11, column: 12, scope: !17)
!34 = !DILocation(line: 11, column: 10, scope: !17)
!35 = !DILocation(line: 12, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !17, file: !1, line: 12, column: 9)
!37 = !DILocation(line: 12, column: 14, scope: !36)
!38 = !DILocation(line: 12, column: 9, scope: !17)
!39 = !DILocation(line: 13, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 12, column: 23)
!41 = !DILocation(line: 17, column: 24, scope: !17)
!42 = !DILocation(line: 17, column: 5, scope: !17)
!43 = !DILocation(line: 20, column: 17, scope: !17)
!44 = !DILocation(line: 20, column: 22, scope: !17)
!45 = !DILocation(line: 20, column: 5, scope: !17)
!46 = !DILocation(line: 23, column: 25, scope: !17)
!47 = !DILocation(line: 23, column: 11, scope: !17)
!48 = !DILocation(line: 23, column: 9, scope: !17)
!49 = !DILocation(line: 26, column: 5, scope: !17)
!50 = !DILocation(line: 29, column: 17, scope: !17)
!51 = !DILocation(line: 29, column: 5, scope: !17)
!52 = !DILocation(line: 30, column: 5, scope: !17)
!53 = !DILocation(line: 31, column: 1, scope: !17)
