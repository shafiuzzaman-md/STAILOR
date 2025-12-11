; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/347_xpath.c_4734_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/347_xpath.c_4734_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlXPathObject = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"copying object\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"val_type\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/347_xpath.c_4734_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !21 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !28, metadata !DIExpression()), !dbg !29
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !30, metadata !DIExpression()), !dbg !31
  ret void, !dbg !32
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !33 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !39, metadata !DIExpression()), !dbg !40
  %3 = load i64, i64* %2, align 8, !dbg !41
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !42
  ret i8* %4, !dbg !43
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlXPathObject* @xmlXPathCmpNodesExt(%struct._xmlXPathObject* noundef %0) #0 !dbg !44 {
  %2 = alloca %struct._xmlXPathObject*, align 8
  %3 = alloca %struct._xmlXPathObject*, align 8
  %4 = alloca %struct._xmlXPathObject*, align 8
  store %struct._xmlXPathObject* %0, %struct._xmlXPathObject** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %3, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %4, metadata !49, metadata !DIExpression()), !dbg !50
  %5 = call i8* @xmlMalloc(i64 noundef 4), !dbg !51
  %6 = bitcast i8* %5 to %struct._xmlXPathObject*, !dbg !52
  store %struct._xmlXPathObject* %6, %struct._xmlXPathObject** %4, align 8, !dbg !53
  %7 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !54
  %8 = icmp eq %struct._xmlXPathObject* %7, null, !dbg !56
  br i1 %8, label %9, label %10, !dbg !57

9:                                                ; preds = %1
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !58
  store %struct._xmlXPathObject* null, %struct._xmlXPathObject** %2, align 8, !dbg !60
  br label %23, !dbg !60

10:                                               ; preds = %1
  %11 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !61
  %12 = bitcast %struct._xmlXPathObject* %11 to i8*, !dbg !62
  %13 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !63
  %14 = bitcast %struct._xmlXPathObject* %13 to i8*, !dbg !62
  %15 = call i8* @memcpy(i8* %12, i8* %14, i64 4), !dbg !62
  %16 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !64
  %17 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %16, i32 0, i32 0, !dbg !65
  %18 = load i32, i32* %17, align 4, !dbg !65
  switch i32 %18, label %20 [
    i32 1, label %19
    i32 2, label %19
  ], !dbg !66

19:                                               ; preds = %10, %10
  br label %21, !dbg !67

20:                                               ; preds = %10
  br label %21, !dbg !69

21:                                               ; preds = %20, %19
  %22 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !70
  store %struct._xmlXPathObject* %22, %struct._xmlXPathObject** %2, align 8, !dbg !71
  br label %23, !dbg !71

23:                                               ; preds = %21, %9
  %24 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !72
  ret %struct._xmlXPathObject* %24, !dbg !72
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !73 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlXPathObject, align 4
  %3 = alloca %struct._xmlXPathObject*, align 8
  %4 = alloca %struct._xmlXPathObject*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject* %2, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %3, metadata !78, metadata !DIExpression()), !dbg !79
  store %struct._xmlXPathObject* %2, %struct._xmlXPathObject** %3, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %4, metadata !80, metadata !DIExpression()), !dbg !81
  %5 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !82
  %6 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %5, i32 0, i32 0, !dbg !83
  %7 = bitcast i32* %6 to i8*, !dbg !84
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !85
  %8 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !86
  %9 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %8, i32 0, i32 0, !dbg !87
  %10 = load i32, i32* %9, align 4, !dbg !87
  %11 = icmp sge i32 %10, 0, !dbg !88
  %12 = zext i1 %11 to i32, !dbg !88
  %13 = sext i32 %12 to i64, !dbg !86
  call void @klee_assume(i64 noundef %13), !dbg !89
  %14 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !90
  %15 = call %struct._xmlXPathObject* @xmlXPathCmpNodesExt(%struct._xmlXPathObject* noundef %14), !dbg !91
  store %struct._xmlXPathObject* %15, %struct._xmlXPathObject** %4, align 8, !dbg !92
  %16 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !93
  %17 = icmp ne %struct._xmlXPathObject* %16, null, !dbg !95
  br i1 %17, label %18, label %22, !dbg !96

18:                                               ; preds = %0
  %19 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !97
  %20 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !99
  %21 = bitcast %struct._xmlXPathObject* %20 to i8*, !dbg !99
  call void @free(i8* noundef %21) #7, !dbg !100
  br label %22, !dbg !101

22:                                               ; preds = %18, %0
  ret i32 0, !dbg !102
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !103 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !109, metadata !DIExpression()), !dbg !110
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !111, metadata !DIExpression()), !dbg !112
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata i8** %7, metadata !115, metadata !DIExpression()), !dbg !117
  %9 = load i8*, i8** %4, align 8, !dbg !118
  store i8* %9, i8** %7, align 8, !dbg !117
  call void @llvm.dbg.declare(metadata i8** %8, metadata !119, metadata !DIExpression()), !dbg !120
  %10 = load i8*, i8** %5, align 8, !dbg !121
  store i8* %10, i8** %8, align 8, !dbg !120
  br label %11, !dbg !122

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !123
  %13 = add i64 %12, -1, !dbg !123
  store i64 %13, i64* %6, align 8, !dbg !123
  %14 = icmp ugt i64 %12, 0, !dbg !124
  br i1 %14, label %15, label %21, !dbg !122

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !125
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !125
  store i8* %17, i8** %8, align 8, !dbg !125
  %18 = load i8, i8* %16, align 1, !dbg !126
  %19 = load i8*, i8** %7, align 8, !dbg !127
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !127
  store i8* %20, i8** %7, align 8, !dbg !127
  store i8 %18, i8* %19, align 1, !dbg !128
  br label %11, !dbg !122, !llvm.loop !129

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !131
  ret i8* %22, !dbg !132
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20, !20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/347_xpath.c_4734_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d270f1819712013d0570fef0ae5e7eae")
!2 = !{!3, !10}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !1, line: 13, size: 32, elements: !7)
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6, file: !1, line: 14, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"Ubuntu clang version 14.0.6"}
!21 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 19, type: !22, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !10, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !{}
!28 = !DILocalVariable(name: "ctxt", arg: 1, scope: !21, file: !1, line: 19, type: !10)
!29 = !DILocation(line: 19, column: 30, scope: !21)
!30 = !DILocalVariable(name: "msg", arg: 2, scope: !21, file: !1, line: 19, type: !24)
!31 = !DILocation(line: 19, column: 48, scope: !21)
!32 = !DILocation(line: 21, column: 1, scope: !21)
!33 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 23, type: !34, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!34 = !DISubroutineType(types: !35)
!35 = !{!10, !36}
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocalVariable(name: "size", arg: 1, scope: !33, file: !1, line: 23, type: !36)
!40 = !DILocation(line: 23, column: 24, scope: !33)
!41 = !DILocation(line: 24, column: 19, scope: !33)
!42 = !DILocation(line: 24, column: 12, scope: !33)
!43 = !DILocation(line: 24, column: 5, scope: !33)
!44 = distinct !DISubprogram(name: "xmlXPathCmpNodesExt", scope: !1, file: !1, line: 31, type: !45, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!45 = !DISubroutineType(types: !46)
!46 = !{!3, !3}
!47 = !DILocalVariable(name: "val", arg: 1, scope: !44, file: !1, line: 31, type: !3)
!48 = !DILocation(line: 31, column: 57, scope: !44)
!49 = !DILocalVariable(name: "ret", scope: !44, file: !1, line: 32, type: !3)
!50 = !DILocation(line: 32, column: 23, scope: !44)
!51 = !DILocation(line: 34, column: 31, scope: !44)
!52 = !DILocation(line: 34, column: 11, scope: !44)
!53 = !DILocation(line: 34, column: 9, scope: !44)
!54 = !DILocation(line: 35, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !44, file: !1, line: 35, column: 9)
!56 = !DILocation(line: 35, column: 13, scope: !55)
!57 = !DILocation(line: 35, column: 9, scope: !44)
!58 = !DILocation(line: 36, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 35, column: 22)
!60 = !DILocation(line: 37, column: 9, scope: !59)
!61 = !DILocation(line: 41, column: 12, scope: !44)
!62 = !DILocation(line: 41, column: 5, scope: !44)
!63 = !DILocation(line: 41, column: 17, scope: !44)
!64 = !DILocation(line: 43, column: 13, scope: !44)
!65 = !DILocation(line: 43, column: 18, scope: !44)
!66 = !DILocation(line: 43, column: 5, scope: !44)
!67 = !DILocation(line: 47, column: 13, scope: !68)
!68 = distinct !DILexicalBlock(scope: !44, file: !1, line: 43, column: 24)
!69 = !DILocation(line: 50, column: 13, scope: !68)
!70 = !DILocation(line: 53, column: 12, scope: !44)
!71 = !DILocation(line: 53, column: 5, scope: !44)
!72 = !DILocation(line: 54, column: 1, scope: !44)
!73 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 56, type: !74, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!74 = !DISubroutineType(types: !75)
!75 = !{!9}
!76 = !DILocalVariable(name: "val_obj", scope: !73, file: !1, line: 58, type: !5)
!77 = !DILocation(line: 58, column: 20, scope: !73)
!78 = !DILocalVariable(name: "val", scope: !73, file: !1, line: 59, type: !3)
!79 = !DILocation(line: 59, column: 23, scope: !73)
!80 = !DILocalVariable(name: "result", scope: !73, file: !1, line: 60, type: !3)
!81 = !DILocation(line: 60, column: 23, scope: !73)
!82 = !DILocation(line: 63, column: 25, scope: !73)
!83 = !DILocation(line: 63, column: 30, scope: !73)
!84 = !DILocation(line: 63, column: 24, scope: !73)
!85 = !DILocation(line: 63, column: 5, scope: !73)
!86 = !DILocation(line: 66, column: 17, scope: !73)
!87 = !DILocation(line: 66, column: 22, scope: !73)
!88 = !DILocation(line: 66, column: 27, scope: !73)
!89 = !DILocation(line: 66, column: 5, scope: !73)
!90 = !DILocation(line: 69, column: 34, scope: !73)
!91 = !DILocation(line: 69, column: 14, scope: !73)
!92 = !DILocation(line: 69, column: 12, scope: !73)
!93 = !DILocation(line: 83, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !73, file: !1, line: 83, column: 9)
!95 = !DILocation(line: 83, column: 16, scope: !94)
!96 = !DILocation(line: 83, column: 9, scope: !73)
!97 = !DILocation(line: 90, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 83, column: 25)
!99 = !DILocation(line: 93, column: 14, scope: !98)
!100 = !DILocation(line: 93, column: 9, scope: !98)
!101 = !DILocation(line: 94, column: 5, scope: !98)
!102 = !DILocation(line: 96, column: 5, scope: !73)
!103 = distinct !DISubprogram(name: "memcpy", scope: !104, file: !104, line: 12, type: !105, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !27)
!104 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!105 = !DISubroutineType(types: !106)
!106 = !{!10, !10, !107, !36}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!109 = !DILocalVariable(name: "destaddr", arg: 1, scope: !103, file: !104, line: 12, type: !10)
!110 = !DILocation(line: 12, column: 20, scope: !103)
!111 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !103, file: !104, line: 12, type: !107)
!112 = !DILocation(line: 12, column: 42, scope: !103)
!113 = !DILocalVariable(name: "len", arg: 3, scope: !103, file: !104, line: 12, type: !36)
!114 = !DILocation(line: 12, column: 58, scope: !103)
!115 = !DILocalVariable(name: "dest", scope: !103, file: !104, line: 13, type: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!117 = !DILocation(line: 13, column: 9, scope: !103)
!118 = !DILocation(line: 13, column: 16, scope: !103)
!119 = !DILocalVariable(name: "src", scope: !103, file: !104, line: 14, type: !24)
!120 = !DILocation(line: 14, column: 15, scope: !103)
!121 = !DILocation(line: 14, column: 21, scope: !103)
!122 = !DILocation(line: 16, column: 3, scope: !103)
!123 = !DILocation(line: 16, column: 13, scope: !103)
!124 = !DILocation(line: 16, column: 16, scope: !103)
!125 = !DILocation(line: 17, column: 19, scope: !103)
!126 = !DILocation(line: 17, column: 15, scope: !103)
!127 = !DILocation(line: 17, column: 10, scope: !103)
!128 = !DILocation(line: 17, column: 13, scope: !103)
!129 = distinct !{!129, !122, !125, !130}
!130 = !{!"llvm.loop.mustprogress"}
!131 = !DILocation(line: 18, column: 10, scope: !103)
!132 = !DILocation(line: 18, column: 3, scope: !103)
