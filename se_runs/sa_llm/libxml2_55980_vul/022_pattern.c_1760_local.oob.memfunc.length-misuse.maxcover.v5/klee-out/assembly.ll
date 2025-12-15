; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/022_pattern.c_1760_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/022_pattern.c_1760_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlStreamCtxt = type { i32*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"xmlNewStreamCtxt: malloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/022_pattern.c_1760_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !23 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i8** %3, metadata !32, metadata !DIExpression()), !dbg !33
  %4 = load i64, i64* %2, align 8, !dbg !34
  %5 = call noalias i8* @malloc(i64 noundef %4) #6, !dbg !35
  store i8* %5, i8** %3, align 8, !dbg !33
  %6 = load i8*, i8** %3, align 8, !dbg !36
  ret i8* %6, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !38 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !41, metadata !DIExpression()), !dbg !42
  %3 = load i8*, i8** %2, align 8, !dbg !43
  call void @free(i8* noundef %3) #6, !dbg !44
  ret void, !dbg !45
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ERROR(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 !dbg !46 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !52, metadata !DIExpression()), !dbg !53
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !54, metadata !DIExpression()), !dbg !55
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !56, metadata !DIExpression()), !dbg !57
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !58, metadata !DIExpression()), !dbg !59
  ret void, !dbg !60
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlStreamCtxt* @xmlNewStreamCtxt() #0 !dbg !61 {
  %1 = alloca %struct._xmlStreamCtxt*, align 8
  %2 = alloca %struct._xmlStreamCtxt*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlStreamCtxt** %2, metadata !64, metadata !DIExpression()), !dbg !65
  %3 = call i8* @xmlMalloc(i64 noundef 16), !dbg !66
  %4 = bitcast i8* %3 to %struct._xmlStreamCtxt*, !dbg !67
  store %struct._xmlStreamCtxt* %4, %struct._xmlStreamCtxt** %2, align 8, !dbg !68
  %5 = load %struct._xmlStreamCtxt*, %struct._xmlStreamCtxt** %2, align 8, !dbg !69
  %6 = icmp eq %struct._xmlStreamCtxt* %5, null, !dbg !71
  br i1 %6, label %7, label %8, !dbg !72

7:                                                ; preds = %0
  call void @ERROR(i8* noundef null, i8* noundef null, i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)), !dbg !73
  store %struct._xmlStreamCtxt* null, %struct._xmlStreamCtxt** %1, align 8, !dbg !75
  br label %27, !dbg !75

8:                                                ; preds = %0
  %9 = load %struct._xmlStreamCtxt*, %struct._xmlStreamCtxt** %2, align 8, !dbg !76
  %10 = bitcast %struct._xmlStreamCtxt* %9 to i8*, !dbg !77
  %11 = call i8* @memset(i8* %10, i32 0, i64 16), !dbg !77
  %12 = call i8* @xmlMalloc(i64 noundef 32), !dbg !78
  %13 = bitcast i8* %12 to i32*, !dbg !79
  %14 = load %struct._xmlStreamCtxt*, %struct._xmlStreamCtxt** %2, align 8, !dbg !80
  %15 = getelementptr inbounds %struct._xmlStreamCtxt, %struct._xmlStreamCtxt* %14, i32 0, i32 0, !dbg !81
  store i32* %13, i32** %15, align 8, !dbg !82
  %16 = load %struct._xmlStreamCtxt*, %struct._xmlStreamCtxt** %2, align 8, !dbg !83
  %17 = getelementptr inbounds %struct._xmlStreamCtxt, %struct._xmlStreamCtxt* %16, i32 0, i32 0, !dbg !85
  %18 = load i32*, i32** %17, align 8, !dbg !85
  %19 = icmp eq i32* %18, null, !dbg !86
  br i1 %19, label %20, label %23, !dbg !87

20:                                               ; preds = %8
  %21 = load %struct._xmlStreamCtxt*, %struct._xmlStreamCtxt** %2, align 8, !dbg !88
  %22 = bitcast %struct._xmlStreamCtxt* %21 to i8*, !dbg !88
  call void @xmlFree(i8* noundef %22), !dbg !90
  call void @ERROR(i8* noundef null, i8* noundef null, i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)), !dbg !91
  store %struct._xmlStreamCtxt* null, %struct._xmlStreamCtxt** %1, align 8, !dbg !92
  br label %27, !dbg !92

23:                                               ; preds = %8
  %24 = load %struct._xmlStreamCtxt*, %struct._xmlStreamCtxt** %2, align 8, !dbg !93
  %25 = getelementptr inbounds %struct._xmlStreamCtxt, %struct._xmlStreamCtxt* %24, i32 0, i32 1, !dbg !94
  store i32 0, i32* %25, align 8, !dbg !95
  %26 = load %struct._xmlStreamCtxt*, %struct._xmlStreamCtxt** %2, align 8, !dbg !96
  store %struct._xmlStreamCtxt* %26, %struct._xmlStreamCtxt** %1, align 8, !dbg !97
  br label %27, !dbg !97

27:                                               ; preds = %23, %20, %7
  %28 = load %struct._xmlStreamCtxt*, %struct._xmlStreamCtxt** %1, align 8, !dbg !98
  ret %struct._xmlStreamCtxt* %28, !dbg !98
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !99 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlStreamCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlStreamCtxt** %2, metadata !102, metadata !DIExpression()), !dbg !103
  %3 = call %struct._xmlStreamCtxt* @xmlNewStreamCtxt(), !dbg !104
  store %struct._xmlStreamCtxt* %3, %struct._xmlStreamCtxt** %2, align 8, !dbg !103
  %4 = load %struct._xmlStreamCtxt*, %struct._xmlStreamCtxt** %2, align 8, !dbg !105
  %5 = icmp ne %struct._xmlStreamCtxt* %4, null, !dbg !107
  br i1 %5, label %6, label %20, !dbg !108

6:                                                ; preds = %0
  %7 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !109
  %8 = load %struct._xmlStreamCtxt*, %struct._xmlStreamCtxt** %2, align 8, !dbg !111
  %9 = getelementptr inbounds %struct._xmlStreamCtxt, %struct._xmlStreamCtxt* %8, i32 0, i32 0, !dbg !113
  %10 = load i32*, i32** %9, align 8, !dbg !113
  %11 = icmp ne i32* %10, null, !dbg !111
  br i1 %11, label %12, label %17, !dbg !114

12:                                               ; preds = %6
  %13 = load %struct._xmlStreamCtxt*, %struct._xmlStreamCtxt** %2, align 8, !dbg !115
  %14 = getelementptr inbounds %struct._xmlStreamCtxt, %struct._xmlStreamCtxt* %13, i32 0, i32 0, !dbg !117
  %15 = load i32*, i32** %14, align 8, !dbg !117
  %16 = bitcast i32* %15 to i8*, !dbg !115
  call void @xmlFree(i8* noundef %16), !dbg !118
  br label %17, !dbg !119

17:                                               ; preds = %12, %6
  %18 = load %struct._xmlStreamCtxt*, %struct._xmlStreamCtxt** %2, align 8, !dbg !120
  %19 = bitcast %struct._xmlStreamCtxt* %18 to i8*, !dbg !120
  call void @xmlFree(i8* noundef %19), !dbg !121
  br label %20, !dbg !122

20:                                               ; preds = %17, %0
  ret i32 0, !dbg !123
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !124 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !128, metadata !DIExpression()), !dbg !129
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !130, metadata !DIExpression()), !dbg !131
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata i8** %7, metadata !134, metadata !DIExpression()), !dbg !136
  %8 = load i8*, i8** %4, align 8, !dbg !137
  store i8* %8, i8** %7, align 8, !dbg !136
  br label %9, !dbg !138

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !139
  %11 = add i64 %10, -1, !dbg !139
  store i64 %11, i64* %6, align 8, !dbg !139
  %12 = icmp ugt i64 %10, 0, !dbg !140
  br i1 %12, label %13, label %18, !dbg !138

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !141
  %15 = trunc i32 %14 to i8, !dbg !141
  %16 = load i8*, i8** %7, align 8, !dbg !142
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !142
  store i8* %17, i8** %7, align 8, !dbg !142
  store i8 %15, i8* %16, align 1, !dbg !143
  br label %9, !dbg !138, !llvm.loop !144

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !146
  ret i8* %19, !dbg !147
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/022_pattern.c_1760_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b5a5109ba7e2a7b12c02b03585b586ae")
!2 = !{!3, !12, !9}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStreamCtxtPtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStreamCtxt", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlStreamCtxt", file: !1, line: 13, size: 128, elements: !7)
!7 = !{!8, !11}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !6, file: !1, line: 14, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "nbState", scope: !6, file: !1, line: 15, baseType: !10, size: 32, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"Ubuntu clang version 14.0.6"}
!23 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 20, type: !24, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!24 = !DISubroutineType(types: !25)
!25 = !{!12, !26}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !{}
!30 = !DILocalVariable(name: "size", arg: 1, scope: !23, file: !1, line: 20, type: !26)
!31 = !DILocation(line: 20, column: 24, scope: !23)
!32 = !DILocalVariable(name: "ptr", scope: !23, file: !1, line: 21, type: !12)
!33 = !DILocation(line: 21, column: 11, scope: !23)
!34 = !DILocation(line: 21, column: 24, scope: !23)
!35 = !DILocation(line: 21, column: 17, scope: !23)
!36 = !DILocation(line: 22, column: 12, scope: !23)
!37 = !DILocation(line: 22, column: 5, scope: !23)
!38 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 26, type: !39, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !12}
!41 = !DILocalVariable(name: "ptr", arg: 1, scope: !38, file: !1, line: 26, type: !12)
!42 = !DILocation(line: 26, column: 20, scope: !38)
!43 = !DILocation(line: 27, column: 10, scope: !38)
!44 = !DILocation(line: 27, column: 5, scope: !38)
!45 = !DILocation(line: 28, column: 1, scope: !38)
!46 = distinct !DISubprogram(name: "ERROR", scope: !1, file: !1, line: 31, type: !47, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !12, !12, !12, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!52 = !DILocalVariable(name: "a", arg: 1, scope: !46, file: !1, line: 31, type: !12)
!53 = !DILocation(line: 31, column: 18, scope: !46)
!54 = !DILocalVariable(name: "b", arg: 2, scope: !46, file: !1, line: 31, type: !12)
!55 = !DILocation(line: 31, column: 27, scope: !46)
!56 = !DILocalVariable(name: "c", arg: 3, scope: !46, file: !1, line: 31, type: !12)
!57 = !DILocation(line: 31, column: 36, scope: !46)
!58 = !DILocalVariable(name: "msg", arg: 4, scope: !46, file: !1, line: 31, type: !49)
!59 = !DILocation(line: 31, column: 51, scope: !46)
!60 = !DILocation(line: 33, column: 1, scope: !46)
!61 = distinct !DISubprogram(name: "xmlNewStreamCtxt", scope: !1, file: !1, line: 36, type: !62, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!62 = !DISubroutineType(types: !63)
!63 = !{!3}
!64 = !DILocalVariable(name: "cur", scope: !61, file: !1, line: 37, type: !3)
!65 = !DILocation(line: 37, column: 22, scope: !61)
!66 = !DILocation(line: 39, column: 30, scope: !61)
!67 = !DILocation(line: 39, column: 11, scope: !61)
!68 = !DILocation(line: 39, column: 9, scope: !61)
!69 = !DILocation(line: 40, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !61, file: !1, line: 40, column: 9)
!71 = !DILocation(line: 40, column: 13, scope: !70)
!72 = !DILocation(line: 40, column: 9, scope: !61)
!73 = !DILocation(line: 41, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 40, column: 22)
!75 = !DILocation(line: 43, column: 9, scope: !74)
!76 = !DILocation(line: 46, column: 12, scope: !61)
!77 = !DILocation(line: 46, column: 5, scope: !61)
!78 = !DILocation(line: 47, column: 27, scope: !61)
!79 = !DILocation(line: 47, column: 19, scope: !61)
!80 = !DILocation(line: 47, column: 5, scope: !61)
!81 = !DILocation(line: 47, column: 10, scope: !61)
!82 = !DILocation(line: 47, column: 17, scope: !61)
!83 = !DILocation(line: 48, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !61, file: !1, line: 48, column: 9)
!85 = !DILocation(line: 48, column: 14, scope: !84)
!86 = !DILocation(line: 48, column: 21, scope: !84)
!87 = !DILocation(line: 48, column: 9, scope: !61)
!88 = !DILocation(line: 49, column: 17, scope: !89)
!89 = distinct !DILexicalBlock(scope: !84, file: !1, line: 48, column: 30)
!90 = !DILocation(line: 49, column: 9, scope: !89)
!91 = !DILocation(line: 50, column: 9, scope: !89)
!92 = !DILocation(line: 52, column: 9, scope: !89)
!93 = !DILocation(line: 54, column: 5, scope: !61)
!94 = !DILocation(line: 54, column: 10, scope: !61)
!95 = !DILocation(line: 54, column: 18, scope: !61)
!96 = !DILocation(line: 55, column: 12, scope: !61)
!97 = !DILocation(line: 55, column: 5, scope: !61)
!98 = !DILocation(line: 56, column: 1, scope: !61)
!99 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 58, type: !100, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!100 = !DISubroutineType(types: !101)
!101 = !{!10}
!102 = !DILocalVariable(name: "ctxt", scope: !99, file: !1, line: 60, type: !3)
!103 = !DILocation(line: 60, column: 22, scope: !99)
!104 = !DILocation(line: 60, column: 29, scope: !99)
!105 = !DILocation(line: 67, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !99, file: !1, line: 67, column: 9)
!107 = !DILocation(line: 67, column: 14, scope: !106)
!108 = !DILocation(line: 67, column: 9, scope: !99)
!109 = !DILocation(line: 74, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !1, line: 67, column: 23)
!111 = !DILocation(line: 77, column: 13, scope: !112)
!112 = distinct !DILexicalBlock(scope: !110, file: !1, line: 77, column: 13)
!113 = !DILocation(line: 77, column: 19, scope: !112)
!114 = !DILocation(line: 77, column: 13, scope: !110)
!115 = !DILocation(line: 78, column: 21, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !1, line: 77, column: 27)
!117 = !DILocation(line: 78, column: 27, scope: !116)
!118 = !DILocation(line: 78, column: 13, scope: !116)
!119 = !DILocation(line: 79, column: 9, scope: !116)
!120 = !DILocation(line: 80, column: 17, scope: !110)
!121 = !DILocation(line: 80, column: 9, scope: !110)
!122 = !DILocation(line: 81, column: 5, scope: !110)
!123 = !DILocation(line: 83, column: 5, scope: !99)
!124 = distinct !DISubprogram(name: "memset", scope: !125, file: !125, line: 12, type: !126, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !29)
!125 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!126 = !DISubroutineType(types: !127)
!127 = !{!12, !12, !10, !26}
!128 = !DILocalVariable(name: "dst", arg: 1, scope: !124, file: !125, line: 12, type: !12)
!129 = !DILocation(line: 12, column: 20, scope: !124)
!130 = !DILocalVariable(name: "s", arg: 2, scope: !124, file: !125, line: 12, type: !10)
!131 = !DILocation(line: 12, column: 29, scope: !124)
!132 = !DILocalVariable(name: "count", arg: 3, scope: !124, file: !125, line: 12, type: !26)
!133 = !DILocation(line: 12, column: 39, scope: !124)
!134 = !DILocalVariable(name: "a", scope: !124, file: !125, line: 13, type: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!136 = !DILocation(line: 13, column: 9, scope: !124)
!137 = !DILocation(line: 13, column: 13, scope: !124)
!138 = !DILocation(line: 14, column: 3, scope: !124)
!139 = !DILocation(line: 14, column: 15, scope: !124)
!140 = !DILocation(line: 14, column: 18, scope: !124)
!141 = !DILocation(line: 15, column: 12, scope: !124)
!142 = !DILocation(line: 15, column: 7, scope: !124)
!143 = !DILocation(line: 15, column: 10, scope: !124)
!144 = distinct !{!144, !138, !141, !145}
!145 = !{!"llvm.loop.mustprogress"}
!146 = !DILocation(line: 16, column: 10, scope: !124)
!147 = !DILocation(line: 16, column: 3, scope: !124)
