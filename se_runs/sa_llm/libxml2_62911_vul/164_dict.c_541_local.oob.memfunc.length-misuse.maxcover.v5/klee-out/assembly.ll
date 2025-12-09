; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/164_dict.c_541_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/164_dict.c_541_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/164_dict.c_541_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDict*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %2, metadata !17, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i8** %3, metadata !24, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata [100 x i8]* %4, metadata !31, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %5, metadata !36, metadata !DIExpression()), !dbg !37
  %6 = call %struct._xmlDict* @xmlDictCreate(), !dbg !38
  store %struct._xmlDict* %6, %struct._xmlDict** %2, align 8, !dbg !39
  %7 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !40
  %8 = icmp eq %struct._xmlDict* %7, null, !dbg !42
  br i1 %8, label %9, label %10, !dbg !43

9:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !44
  br label %31, !dbg !44

10:                                               ; preds = %0
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0, !dbg !45
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !46
  %12 = bitcast i32* %5 to i8*, !dbg !47
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !48
  %13 = load i32, i32* %5, align 4, !dbg !49
  %14 = icmp sge i32 %13, 0, !dbg !50
  %15 = zext i1 %14 to i32, !dbg !50
  %16 = sext i32 %15 to i64, !dbg !49
  call void @klee_assume(i64 noundef %16), !dbg !51
  %17 = load i32, i32* %5, align 4, !dbg !52
  %18 = icmp slt i32 %17, 100, !dbg !53
  %19 = zext i1 %18 to i32, !dbg !53
  %20 = sext i32 %19 to i64, !dbg !52
  call void @klee_assume(i64 noundef %20), !dbg !54
  %21 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !55
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0, !dbg !56
  %23 = load i32, i32* %5, align 4, !dbg !57
  %24 = call i8* @xmlDictLookup(%struct._xmlDict* noundef %21, i8* noundef %22, i32 noundef %23), !dbg !58
  store i8* %24, i8** %3, align 8, !dbg !59
  %25 = load i8*, i8** %3, align 8, !dbg !60
  %26 = icmp ne i8* %25, null, !dbg !62
  br i1 %26, label %27, label %29, !dbg !63

27:                                               ; preds = %10
  %28 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !64
  br label %29, !dbg !66

29:                                               ; preds = %27, %10
  %30 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !67
  call void @xmlDictFree(%struct._xmlDict* noundef %30), !dbg !68
  store i32 0, i32* %1, align 4, !dbg !69
  br label %31, !dbg !69

31:                                               ; preds = %29, %9
  %32 = load i32, i32* %1, align 4, !dbg !70
  ret i32 %32, !dbg !70
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
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/164_dict.c_541_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "16940709807a6e26b4c539522e3f9531")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !13, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "dict", scope: !12, file: !1, line: 7, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !19, line: 25, baseType: !20)
!19 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !19, line: 24, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !19, line: 24, flags: DIFlagFwdDecl)
!23 = !DILocation(line: 7, column: 16, scope: !12)
!24 = !DILocalVariable(name: "ret", scope: !12, file: !1, line: 8, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !28, line: 28, baseType: !29)
!28 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DILocation(line: 8, column: 20, scope: !12)
!31 = !DILocalVariable(name: "name", scope: !12, file: !1, line: 9, type: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 800, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 100)
!35 = !DILocation(line: 9, column: 13, scope: !12)
!36 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 10, type: !15)
!37 = !DILocation(line: 10, column: 9, scope: !12)
!38 = !DILocation(line: 12, column: 12, scope: !12)
!39 = !DILocation(line: 12, column: 10, scope: !12)
!40 = !DILocation(line: 13, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !12, file: !1, line: 13, column: 9)
!42 = !DILocation(line: 13, column: 14, scope: !41)
!43 = !DILocation(line: 13, column: 9, scope: !12)
!44 = !DILocation(line: 13, column: 23, scope: !41)
!45 = !DILocation(line: 15, column: 24, scope: !12)
!46 = !DILocation(line: 15, column: 5, scope: !12)
!47 = !DILocation(line: 16, column: 24, scope: !12)
!48 = !DILocation(line: 16, column: 5, scope: !12)
!49 = !DILocation(line: 17, column: 17, scope: !12)
!50 = !DILocation(line: 17, column: 21, scope: !12)
!51 = !DILocation(line: 17, column: 5, scope: !12)
!52 = !DILocation(line: 18, column: 17, scope: !12)
!53 = !DILocation(line: 18, column: 21, scope: !12)
!54 = !DILocation(line: 18, column: 5, scope: !12)
!55 = !DILocation(line: 20, column: 25, scope: !12)
!56 = !DILocation(line: 20, column: 31, scope: !12)
!57 = !DILocation(line: 20, column: 37, scope: !12)
!58 = !DILocation(line: 20, column: 11, scope: !12)
!59 = !DILocation(line: 20, column: 9, scope: !12)
!60 = !DILocation(line: 21, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !12, file: !1, line: 21, column: 9)
!62 = !DILocation(line: 21, column: 13, scope: !61)
!63 = !DILocation(line: 21, column: 9, scope: !12)
!64 = !DILocation(line: 22, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !1, line: 21, column: 22)
!66 = !DILocation(line: 23, column: 5, scope: !65)
!67 = !DILocation(line: 25, column: 17, scope: !12)
!68 = !DILocation(line: 25, column: 5, scope: !12)
!69 = !DILocation(line: 26, column: 5, scope: !12)
!70 = !DILocation(line: 27, column: 1, scope: !12)
