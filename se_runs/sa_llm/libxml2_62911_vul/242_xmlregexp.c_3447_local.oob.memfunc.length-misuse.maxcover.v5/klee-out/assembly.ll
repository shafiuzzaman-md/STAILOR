; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/242_xmlregexp.c_3447_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/242_xmlregexp.c_3447_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegExecCtxt = type { i8*, i32, i32, i32, i32 }
%struct._xmlRegexp = type opaque

@.str = private unnamed_addr constant [27 x i8] c"creating execution context\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"regexp\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/242_xmlregexp.c_3447_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !25 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !32, metadata !DIExpression()), !dbg !33
  %3 = load i64, i64* %2, align 8, !dbg !34
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !35
  ret i8* %4, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegexpErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !37 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !43, metadata !DIExpression()), !dbg !44
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !45, metadata !DIExpression()), !dbg !46
  ret void, !dbg !47
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRegExecCtxt* @xmlRegNewExecCtxt(%struct._xmlRegexp* noundef %0) #0 !dbg !48 {
  %2 = alloca %struct._xmlRegExecCtxt*, align 8
  %3 = alloca %struct._xmlRegexp*, align 8
  %4 = alloca %struct._xmlRegExecCtxt*, align 8
  store %struct._xmlRegexp* %0, %struct._xmlRegexp** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegexp** %3, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %4, metadata !57, metadata !DIExpression()), !dbg !58
  %5 = call i8* @xmlMalloc(i64 noundef 24), !dbg !59
  %6 = bitcast i8* %5 to %struct._xmlRegExecCtxt*, !dbg !60
  store %struct._xmlRegExecCtxt* %6, %struct._xmlRegExecCtxt** %4, align 8, !dbg !61
  %7 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !62
  %8 = icmp eq %struct._xmlRegExecCtxt* %7, null, !dbg !64
  br i1 %8, label %9, label %10, !dbg !65

9:                                                ; preds = %1
  call void @xmlRegexpErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)), !dbg !66
  store %struct._xmlRegExecCtxt* null, %struct._xmlRegExecCtxt** %2, align 8, !dbg !68
  br label %25, !dbg !68

10:                                               ; preds = %1
  %11 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !69
  %12 = bitcast %struct._xmlRegExecCtxt* %11 to i8*, !dbg !70
  %13 = call i8* @memset(i8* %12, i32 0, i64 24), !dbg !70
  %14 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !71
  %15 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %14, i32 0, i32 0, !dbg !72
  store i8* null, i8** %15, align 8, !dbg !73
  %16 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !74
  %17 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %16, i32 0, i32 1, !dbg !75
  store i32 0, i32* %17, align 8, !dbg !76
  %18 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !77
  %19 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %18, i32 0, i32 2, !dbg !78
  store i32 1, i32* %19, align 4, !dbg !79
  %20 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !80
  %21 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %20, i32 0, i32 3, !dbg !81
  store i32 0, i32* %21, align 8, !dbg !82
  %22 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !83
  %23 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %22, i32 0, i32 4, !dbg !84
  store i32 0, i32* %23, align 4, !dbg !85
  %24 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !86
  store %struct._xmlRegExecCtxt* %24, %struct._xmlRegExecCtxt** %2, align 8, !dbg !87
  br label %25, !dbg !87

25:                                               ; preds = %10, %9
  %26 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !88
  ret %struct._xmlRegExecCtxt* %26, !dbg !88
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !89 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegexp*, align 8
  %3 = alloca %struct._xmlRegExecCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegexp** %2, metadata !92, metadata !DIExpression()), !dbg !93
  %4 = bitcast %struct._xmlRegexp** %2 to i8*, !dbg !94
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !95
  %5 = load %struct._xmlRegexp*, %struct._xmlRegexp** %2, align 8, !dbg !96
  %6 = icmp ne %struct._xmlRegexp* %5, null, !dbg !97
  %7 = zext i1 %6 to i32, !dbg !97
  %8 = sext i32 %7 to i64, !dbg !96
  call void @klee_assume(i64 noundef %8), !dbg !98
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %3, metadata !99, metadata !DIExpression()), !dbg !100
  %9 = load %struct._xmlRegexp*, %struct._xmlRegexp** %2, align 8, !dbg !101
  %10 = call %struct._xmlRegExecCtxt* @xmlRegNewExecCtxt(%struct._xmlRegexp* noundef %9), !dbg !102
  store %struct._xmlRegExecCtxt* %10, %struct._xmlRegExecCtxt** %3, align 8, !dbg !100
  %11 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !103
  %12 = icmp ne %struct._xmlRegExecCtxt* %11, null, !dbg !105
  br i1 %12, label %13, label %17, !dbg !106

13:                                               ; preds = %0
  %14 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !107
  %15 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !109
  %16 = bitcast %struct._xmlRegExecCtxt* %15 to i8*, !dbg !109
  call void @free(i8* noundef %16) #7, !dbg !110
  br label %17, !dbg !111

17:                                               ; preds = %13, %0
  ret i32 0, !dbg !112
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !113 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !117, metadata !DIExpression()), !dbg !118
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !119, metadata !DIExpression()), !dbg !120
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata i8** %7, metadata !123, metadata !DIExpression()), !dbg !125
  %8 = load i8*, i8** %4, align 8, !dbg !126
  store i8* %8, i8** %7, align 8, !dbg !125
  br label %9, !dbg !127

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !128
  %11 = add i64 %10, -1, !dbg !128
  store i64 %11, i64* %6, align 8, !dbg !128
  %12 = icmp ugt i64 %10, 0, !dbg !129
  br i1 %12, label %13, label %18, !dbg !127

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !130
  %15 = trunc i32 %14 to i8, !dbg !130
  %16 = load i8*, i8** %7, align 8, !dbg !131
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !131
  store i8* %17, i8** %7, align 8, !dbg !131
  store i8 %15, i8* %16, align 1, !dbg !132
  br label %9, !dbg !127, !llvm.loop !133

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !135
  ret i8* %19, !dbg !136
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24, !24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/242_xmlregexp.c_3447_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "583281e815f009eb0179ca19417b4a0f")
!2 = !{!3, !9}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxtPtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxt", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegExecCtxt", file: !1, line: 26, size: 192, elements: !7)
!7 = !{!8, !10, !12, !13, !14}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "inputString", scope: !6, file: !1, line: 27, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !6, file: !1, line: 28, baseType: !11, size: 32, offset: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "determinist", scope: !6, file: !1, line: 29, baseType: !11, size: 32, offset: 96)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "maxRollbacks", scope: !6, file: !1, line: 30, baseType: !11, size: 32, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "nbRollbacks", scope: !6, file: !1, line: 31, baseType: !11, size: 32, offset: 160)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"Ubuntu clang version 14.0.6"}
!25 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 17, type: !26, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!26 = !DISubroutineType(types: !27)
!27 = !{!9, !28}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !{}
!32 = !DILocalVariable(name: "size", arg: 1, scope: !25, file: !1, line: 17, type: !28)
!33 = !DILocation(line: 17, column: 24, scope: !25)
!34 = !DILocation(line: 18, column: 19, scope: !25)
!35 = !DILocation(line: 18, column: 12, scope: !25)
!36 = !DILocation(line: 18, column: 5, scope: !25)
!37 = distinct !DISubprogram(name: "xmlRegexpErrMemory", scope: !1, file: !1, line: 21, type: !38, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !9, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!43 = !DILocalVariable(name: "ctx", arg: 1, scope: !37, file: !1, line: 21, type: !9)
!44 = !DILocation(line: 21, column: 31, scope: !37)
!45 = !DILocalVariable(name: "msg", arg: 2, scope: !37, file: !1, line: 21, type: !40)
!46 = !DILocation(line: 21, column: 48, scope: !37)
!47 = !DILocation(line: 23, column: 1, scope: !37)
!48 = distinct !DISubprogram(name: "xmlRegNewExecCtxt", scope: !1, file: !1, line: 36, type: !49, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!49 = !DISubroutineType(types: !50)
!50 = !{!3, !51}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexpPtr", file: !1, line: 14, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexp", file: !1, line: 13, baseType: !54)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegexp", file: !1, line: 13, flags: DIFlagFwdDecl)
!55 = !DILocalVariable(name: "comp", arg: 1, scope: !48, file: !1, line: 36, type: !51)
!56 = !DILocation(line: 36, column: 50, scope: !48)
!57 = !DILocalVariable(name: "exec", scope: !48, file: !1, line: 37, type: !3)
!58 = !DILocation(line: 37, column: 23, scope: !48)
!59 = !DILocation(line: 39, column: 32, scope: !48)
!60 = !DILocation(line: 39, column: 12, scope: !48)
!61 = !DILocation(line: 39, column: 10, scope: !48)
!62 = !DILocation(line: 40, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !48, file: !1, line: 40, column: 9)
!64 = !DILocation(line: 40, column: 14, scope: !63)
!65 = !DILocation(line: 40, column: 9, scope: !48)
!66 = !DILocation(line: 41, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 40, column: 23)
!68 = !DILocation(line: 42, column: 9, scope: !67)
!69 = !DILocation(line: 46, column: 12, scope: !48)
!70 = !DILocation(line: 46, column: 5, scope: !48)
!71 = !DILocation(line: 48, column: 5, scope: !48)
!72 = !DILocation(line: 48, column: 11, scope: !48)
!73 = !DILocation(line: 48, column: 23, scope: !48)
!74 = !DILocation(line: 49, column: 5, scope: !48)
!75 = !DILocation(line: 49, column: 11, scope: !48)
!76 = !DILocation(line: 49, column: 17, scope: !48)
!77 = !DILocation(line: 50, column: 5, scope: !48)
!78 = !DILocation(line: 50, column: 11, scope: !48)
!79 = !DILocation(line: 50, column: 23, scope: !48)
!80 = !DILocation(line: 51, column: 5, scope: !48)
!81 = !DILocation(line: 51, column: 11, scope: !48)
!82 = !DILocation(line: 51, column: 24, scope: !48)
!83 = !DILocation(line: 52, column: 5, scope: !48)
!84 = !DILocation(line: 52, column: 11, scope: !48)
!85 = !DILocation(line: 52, column: 23, scope: !48)
!86 = !DILocation(line: 54, column: 12, scope: !48)
!87 = !DILocation(line: 54, column: 5, scope: !48)
!88 = !DILocation(line: 55, column: 1, scope: !48)
!89 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 58, type: !90, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!90 = !DISubroutineType(types: !91)
!91 = !{!11}
!92 = !DILocalVariable(name: "regexp", scope: !89, file: !1, line: 59, type: !51)
!93 = !DILocation(line: 59, column: 18, scope: !89)
!94 = !DILocation(line: 62, column: 24, scope: !89)
!95 = !DILocation(line: 62, column: 5, scope: !89)
!96 = !DILocation(line: 65, column: 17, scope: !89)
!97 = !DILocation(line: 65, column: 24, scope: !89)
!98 = !DILocation(line: 65, column: 5, scope: !89)
!99 = !DILocalVariable(name: "exec", scope: !89, file: !1, line: 68, type: !3)
!100 = !DILocation(line: 68, column: 23, scope: !89)
!101 = !DILocation(line: 68, column: 48, scope: !89)
!102 = !DILocation(line: 68, column: 30, scope: !89)
!103 = !DILocation(line: 70, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !89, file: !1, line: 70, column: 9)
!105 = !DILocation(line: 70, column: 14, scope: !104)
!106 = !DILocation(line: 70, column: 9, scope: !89)
!107 = !DILocation(line: 80, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 70, column: 23)
!109 = !DILocation(line: 82, column: 14, scope: !108)
!110 = !DILocation(line: 82, column: 9, scope: !108)
!111 = !DILocation(line: 83, column: 5, scope: !108)
!112 = !DILocation(line: 85, column: 5, scope: !89)
!113 = distinct !DISubprogram(name: "memset", scope: !114, file: !114, line: 12, type: !115, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !31)
!114 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!115 = !DISubroutineType(types: !116)
!116 = !{!9, !9, !11, !28}
!117 = !DILocalVariable(name: "dst", arg: 1, scope: !113, file: !114, line: 12, type: !9)
!118 = !DILocation(line: 12, column: 20, scope: !113)
!119 = !DILocalVariable(name: "s", arg: 2, scope: !113, file: !114, line: 12, type: !11)
!120 = !DILocation(line: 12, column: 29, scope: !113)
!121 = !DILocalVariable(name: "count", arg: 3, scope: !113, file: !114, line: 12, type: !28)
!122 = !DILocation(line: 12, column: 39, scope: !113)
!123 = !DILocalVariable(name: "a", scope: !113, file: !114, line: 13, type: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!125 = !DILocation(line: 13, column: 9, scope: !113)
!126 = !DILocation(line: 13, column: 13, scope: !113)
!127 = !DILocation(line: 14, column: 3, scope: !113)
!128 = !DILocation(line: 14, column: 15, scope: !113)
!129 = !DILocation(line: 14, column: 18, scope: !113)
!130 = !DILocation(line: 15, column: 12, scope: !113)
!131 = !DILocation(line: 15, column: 7, scope: !113)
!132 = !DILocation(line: 15, column: 10, scope: !113)
!133 = distinct !{!133, !127, !130, !134}
!134 = !{!"llvm.loop.mustprogress"}
!135 = !DILocation(line: 16, column: 10, scope: !113)
!136 = !DILocation(line: 16, column: 3, scope: !113)
