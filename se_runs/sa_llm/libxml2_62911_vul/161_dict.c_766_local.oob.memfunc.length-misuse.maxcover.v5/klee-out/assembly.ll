; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/161_dict.c_766_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/161_dict.c_766_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"name_buf\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/161_dict.c_766_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !16 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDict*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [100 x i8], align 16
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %2, metadata !21, metadata !DIExpression()), !dbg !27
  %7 = call %struct._xmlDict* @xmlDictCreate(), !dbg !28
  store %struct._xmlDict* %7, %struct._xmlDict** %2, align 8, !dbg !27
  %8 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !29
  %9 = icmp ne %struct._xmlDict* %8, null, !dbg !29
  br i1 %9, label %11, label %10, !dbg !31

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !32
  br label %37, !dbg !32

11:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i8** %3, metadata !33, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %4, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata [100 x i8]* %5, metadata !40, metadata !DIExpression()), !dbg !44
  %12 = bitcast i32* %4 to i8*, !dbg !45
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !46
  %13 = load i32, i32* %4, align 4, !dbg !47
  %14 = icmp sge i32 %13, 0, !dbg !48
  br i1 %14, label %15, label %18, !dbg !49

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4, !dbg !50
  %17 = icmp slt i32 %16, 100, !dbg !51
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi i1 [ false, %11 ], [ %17, %15 ], !dbg !52
  %20 = zext i1 %19 to i32, !dbg !49
  %21 = sext i32 %20 to i64, !dbg !47
  call void @klee_assume(i64 noundef %21), !dbg !53
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0, !dbg !54
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef 100, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !55
  %23 = load i32, i32* %4, align 4, !dbg !56
  %24 = sext i32 %23 to i64, !dbg !57
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 %24, !dbg !57
  store i8 0, i8* %25, align 1, !dbg !58
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0, !dbg !59
  store i8* %26, i8** %3, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i8** %6, metadata !61, metadata !DIExpression()), !dbg !62
  %27 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !63
  %28 = load i8*, i8** %3, align 8, !dbg !64
  %29 = load i32, i32* %4, align 4, !dbg !65
  %30 = call i8* @xmlDictLookup(%struct._xmlDict* noundef %27, i8* noundef %28, i32 noundef %29), !dbg !66
  store i8* %30, i8** %6, align 8, !dbg !62
  %31 = load i8*, i8** %6, align 8, !dbg !67
  %32 = icmp ne i8* %31, null, !dbg !67
  br i1 %32, label %33, label %35, !dbg !69

33:                                               ; preds = %18
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 21, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !70
  br label %35, !dbg !72

35:                                               ; preds = %33, %18
  %36 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !73
  call void @xmlDictFree(%struct._xmlDict* noundef %36), !dbg !74
  store i32 0, i32* %1, align 4, !dbg !75
  br label %37, !dbg !75

37:                                               ; preds = %35, %10
  %38 = load i32, i32* %1, align 4, !dbg !76
  ret i32 %38, !dbg !76
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
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/161_dict.c_766_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "fb4c2e829cb2c0303e7fdf14a83a5b00")
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
!21 = !DILocalVariable(name: "dict", scope: !16, file: !1, line: 7, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !23, line: 25, baseType: !24)
!23 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !23, line: 24, baseType: !26)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !23, line: 24, flags: DIFlagFwdDecl)
!27 = !DILocation(line: 7, column: 16, scope: !16)
!28 = !DILocation(line: 7, column: 23, scope: !16)
!29 = !DILocation(line: 8, column: 10, scope: !30)
!30 = distinct !DILexicalBlock(scope: !16, file: !1, line: 8, column: 9)
!31 = !DILocation(line: 8, column: 9, scope: !16)
!32 = !DILocation(line: 8, column: 16, scope: !30)
!33 = !DILocalVariable(name: "name", scope: !16, file: !1, line: 10, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DILocation(line: 10, column: 17, scope: !16)
!38 = !DILocalVariable(name: "len", scope: !16, file: !1, line: 11, type: !19)
!39 = !DILocation(line: 11, column: 9, scope: !16)
!40 = !DILocalVariable(name: "name_buf", scope: !16, file: !1, line: 12, type: !41)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 800, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 100)
!44 = !DILocation(line: 12, column: 10, scope: !16)
!45 = !DILocation(line: 13, column: 24, scope: !16)
!46 = !DILocation(line: 13, column: 5, scope: !16)
!47 = !DILocation(line: 14, column: 17, scope: !16)
!48 = !DILocation(line: 14, column: 21, scope: !16)
!49 = !DILocation(line: 14, column: 26, scope: !16)
!50 = !DILocation(line: 14, column: 29, scope: !16)
!51 = !DILocation(line: 14, column: 33, scope: !16)
!52 = !DILocation(line: 0, scope: !16)
!53 = !DILocation(line: 14, column: 5, scope: !16)
!54 = !DILocation(line: 15, column: 24, scope: !16)
!55 = !DILocation(line: 15, column: 5, scope: !16)
!56 = !DILocation(line: 16, column: 14, scope: !16)
!57 = !DILocation(line: 16, column: 5, scope: !16)
!58 = !DILocation(line: 16, column: 19, scope: !16)
!59 = !DILocation(line: 17, column: 12, scope: !16)
!60 = !DILocation(line: 17, column: 10, scope: !16)
!61 = !DILocalVariable(name: "ret", scope: !16, file: !1, line: 19, type: !3)
!62 = !DILocation(line: 19, column: 20, scope: !16)
!63 = !DILocation(line: 19, column: 40, scope: !16)
!64 = !DILocation(line: 19, column: 63, scope: !16)
!65 = !DILocation(line: 19, column: 69, scope: !16)
!66 = !DILocation(line: 19, column: 26, scope: !16)
!67 = !DILocation(line: 20, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !16, file: !1, line: 20, column: 9)
!69 = !DILocation(line: 20, column: 9, scope: !16)
!70 = !DILocation(line: 21, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !1, line: 20, column: 14)
!72 = !DILocation(line: 22, column: 5, scope: !71)
!73 = !DILocation(line: 24, column: 17, scope: !16)
!74 = !DILocation(line: 24, column: 5, scope: !16)
!75 = !DILocation(line: 25, column: 5, scope: !16)
!76 = !DILocation(line: 26, column: 1, scope: !16)
