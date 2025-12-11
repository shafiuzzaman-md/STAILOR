; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/234_xmlIO.c_1483_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/234_xmlIO.c_1483_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlZMemBuff = type { i64, i8* }

@.str = private unnamed_addr constant [24 x i8] c"creating buffer context\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"creating buffer\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"(buff->size <= 1024 * 1024 * 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/234_xmlIO.c_1483_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlIOErrMemory(i8* noundef %0) #0 !dbg !23 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !30, metadata !DIExpression()), !dbg !31
  ret void, !dbg !32
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFreeZMemBuff(%struct._xmlZMemBuff* noundef %0) #0 !dbg !33 {
  %2 = alloca %struct._xmlZMemBuff*, align 8
  store %struct._xmlZMemBuff* %0, %struct._xmlZMemBuff** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlZMemBuff** %2, metadata !36, metadata !DIExpression()), !dbg !37
  %3 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !38
  %4 = icmp ne %struct._xmlZMemBuff* %3, null, !dbg !38
  br i1 %4, label %5, label %14, !dbg !40

5:                                                ; preds = %1
  %6 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !41
  %7 = getelementptr inbounds %struct._xmlZMemBuff, %struct._xmlZMemBuff* %6, i32 0, i32 1, !dbg !42
  %8 = load i8*, i8** %7, align 8, !dbg !42
  %9 = icmp ne i8* %8, null, !dbg !41
  br i1 %9, label %10, label %14, !dbg !43

10:                                               ; preds = %5
  %11 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !44
  %12 = getelementptr inbounds %struct._xmlZMemBuff, %struct._xmlZMemBuff* %11, i32 0, i32 1, !dbg !46
  %13 = load i8*, i8** %12, align 8, !dbg !46
  call void @free(i8* noundef %13) #7, !dbg !47
  br label %14, !dbg !48

14:                                               ; preds = %10, %5, %1
  %15 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !49
  %16 = bitcast %struct._xmlZMemBuff* %15 to i8*, !dbg !49
  call void @free(i8* noundef %16) #7, !dbg !50
  ret void, !dbg !51
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !52 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !55, metadata !DIExpression()), !dbg !56
  %3 = load i64, i64* %2, align 8, !dbg !57
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !58
  ret i8* %4, !dbg !59
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlZMemBuff* @xmlCreateZMemBuff() #0 !dbg !60 {
  %1 = alloca %struct._xmlZMemBuff*, align 8
  %2 = alloca %struct._xmlZMemBuff*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlZMemBuff** %2, metadata !63, metadata !DIExpression()), !dbg !64
  %3 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !65
  %4 = bitcast i8* %3 to %struct._xmlZMemBuff*, !dbg !66
  store %struct._xmlZMemBuff* %4, %struct._xmlZMemBuff** %2, align 8, !dbg !67
  %5 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !68
  %6 = icmp eq %struct._xmlZMemBuff* %5, null, !dbg !70
  br i1 %6, label %7, label %8, !dbg !71

7:                                                ; preds = %0
  call void @xmlIOErrMemory(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)), !dbg !72
  store %struct._xmlZMemBuff* null, %struct._xmlZMemBuff** %1, align 8, !dbg !74
  br label %28, !dbg !74

8:                                                ; preds = %0
  %9 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !75
  %10 = bitcast %struct._xmlZMemBuff* %9 to i8*, !dbg !76
  %11 = call i8* @memset(i8* %10, i32 0, i64 16), !dbg !76
  %12 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !77
  %13 = getelementptr inbounds %struct._xmlZMemBuff, %struct._xmlZMemBuff* %12, i32 0, i32 0, !dbg !78
  store i64 32768, i64* %13, align 8, !dbg !79
  %14 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !80
  %15 = getelementptr inbounds %struct._xmlZMemBuff, %struct._xmlZMemBuff* %14, i32 0, i32 0, !dbg !81
  %16 = load i64, i64* %15, align 8, !dbg !81
  %17 = call i8* @xmlMalloc(i64 noundef %16), !dbg !82
  %18 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !83
  %19 = getelementptr inbounds %struct._xmlZMemBuff, %struct._xmlZMemBuff* %18, i32 0, i32 1, !dbg !84
  store i8* %17, i8** %19, align 8, !dbg !85
  %20 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !86
  %21 = getelementptr inbounds %struct._xmlZMemBuff, %struct._xmlZMemBuff* %20, i32 0, i32 1, !dbg !88
  %22 = load i8*, i8** %21, align 8, !dbg !88
  %23 = icmp eq i8* %22, null, !dbg !89
  br i1 %23, label %24, label %26, !dbg !90

24:                                               ; preds = %8
  %25 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !91
  call void @xmlFreeZMemBuff(%struct._xmlZMemBuff* noundef %25), !dbg !93
  call void @xmlIOErrMemory(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !94
  store %struct._xmlZMemBuff* null, %struct._xmlZMemBuff** %1, align 8, !dbg !95
  br label %28, !dbg !95

26:                                               ; preds = %8
  %27 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %2, align 8, !dbg !96
  store %struct._xmlZMemBuff* %27, %struct._xmlZMemBuff** %1, align 8, !dbg !97
  br label %28, !dbg !97

28:                                               ; preds = %26, %24, %7
  %29 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %1, align 8, !dbg !98
  ret %struct._xmlZMemBuff* %29, !dbg !98
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlFileOpen(i8* noundef %0) #0 !dbg !99 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !102, metadata !DIExpression()), !dbg !103
  %3 = call %struct._xmlZMemBuff* @xmlCreateZMemBuff(), !dbg !104
  %4 = bitcast %struct._xmlZMemBuff* %3 to i8*, !dbg !104
  ret i8* %4, !dbg !105
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !106 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlZMemBuff*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !110, metadata !DIExpression()), !dbg !114
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !115
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !116
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !117
  %7 = load i8, i8* %6, align 1, !dbg !117
  %8 = sext i8 %7 to i32, !dbg !117
  %9 = icmp eq i32 %8, 0, !dbg !118
  %10 = zext i1 %9 to i32, !dbg !118
  %11 = sext i32 %10 to i64, !dbg !117
  call void @klee_assume(i64 noundef %11), !dbg !119
  call void @llvm.dbg.declare(metadata i8** %3, metadata !120, metadata !DIExpression()), !dbg !121
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !122
  %13 = call i8* @xmlFileOpen(i8* noundef %12), !dbg !123
  store i8* %13, i8** %3, align 8, !dbg !121
  %14 = load i8*, i8** %3, align 8, !dbg !124
  %15 = icmp ne i8* %14, null, !dbg !126
  br i1 %15, label %16, label %30, !dbg !127

16:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata %struct._xmlZMemBuff** %4, metadata !128, metadata !DIExpression()), !dbg !130
  %17 = load i8*, i8** %3, align 8, !dbg !131
  %18 = bitcast i8* %17 to %struct._xmlZMemBuff*, !dbg !132
  store %struct._xmlZMemBuff* %18, %struct._xmlZMemBuff** %4, align 8, !dbg !130
  %19 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %4, align 8, !dbg !133
  %20 = getelementptr inbounds %struct._xmlZMemBuff, %struct._xmlZMemBuff* %19, i32 0, i32 0, !dbg !133
  %21 = load i64, i64* %20, align 8, !dbg !133
  %22 = icmp ule i64 %21, 1073741824, !dbg !133
  br i1 %22, label %23, label %25, !dbg !133

23:                                               ; preds = %16
  br i1 true, label %24, label %25, !dbg !133

24:                                               ; preds = %23
  br label %27, !dbg !133

25:                                               ; preds = %23, %16
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !133
  br label %27, !dbg !133

27:                                               ; preds = %25, %24
  %28 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !134
  %29 = load %struct._xmlZMemBuff*, %struct._xmlZMemBuff** %4, align 8, !dbg !135
  call void @xmlFreeZMemBuff(%struct._xmlZMemBuff* noundef %29), !dbg !136
  br label %30, !dbg !137

30:                                               ; preds = %27, %0
  ret i32 0, !dbg !138
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !139 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !143, metadata !DIExpression()), !dbg !144
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !145, metadata !DIExpression()), !dbg !146
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !147, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata i8** %7, metadata !149, metadata !DIExpression()), !dbg !151
  %8 = load i8*, i8** %4, align 8, !dbg !152
  store i8* %8, i8** %7, align 8, !dbg !151
  br label %9, !dbg !153

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !154
  %11 = add i64 %10, -1, !dbg !154
  store i64 %11, i64* %6, align 8, !dbg !154
  %12 = icmp ugt i64 %10, 0, !dbg !155
  br i1 %12, label %13, label %18, !dbg !153

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !156
  %15 = trunc i32 %14 to i8, !dbg !156
  %16 = load i8*, i8** %7, align 8, !dbg !157
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !157
  store i8* %17, i8** %7, align 8, !dbg !157
  store i8 %15, i8* %16, align 1, !dbg !158
  br label %9, !dbg !153, !llvm.loop !159

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !161
  ret i8* %19, !dbg !162
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/234_xmlIO.c_1483_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "7813aac1c44bd4853d6b486b0f2523f1")
!2 = !{!3, !12}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlZMemBuff", file: !1, line: 13, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlZMemBuff", file: !1, line: 10, size: 128, elements: !6)
!6 = !{!7, !11}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5, file: !1, line: 11, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !9, line: 46, baseType: !10)
!9 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!10 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "zbuff", scope: !5, file: !1, line: 12, baseType: !12, size: 64, offset: 64)
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
!23 = distinct !DISubprogram(name: "xmlIOErrMemory", scope: !1, file: !1, line: 17, type: !24, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !{}
!30 = !DILocalVariable(name: "msg", arg: 1, scope: !23, file: !1, line: 17, type: !26)
!31 = !DILocation(line: 17, column: 33, scope: !23)
!32 = !DILocation(line: 19, column: 1, scope: !23)
!33 = distinct !DISubprogram(name: "xmlFreeZMemBuff", scope: !1, file: !1, line: 21, type: !34, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !3}
!36 = !DILocalVariable(name: "buff", arg: 1, scope: !33, file: !1, line: 21, type: !3)
!37 = !DILocation(line: 21, column: 35, scope: !33)
!38 = !DILocation(line: 22, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !33, file: !1, line: 22, column: 9)
!40 = !DILocation(line: 22, column: 14, scope: !39)
!41 = !DILocation(line: 22, column: 17, scope: !39)
!42 = !DILocation(line: 22, column: 23, scope: !39)
!43 = !DILocation(line: 22, column: 9, scope: !33)
!44 = !DILocation(line: 23, column: 14, scope: !45)
!45 = distinct !DILexicalBlock(scope: !39, file: !1, line: 22, column: 30)
!46 = !DILocation(line: 23, column: 20, scope: !45)
!47 = !DILocation(line: 23, column: 9, scope: !45)
!48 = !DILocation(line: 24, column: 5, scope: !45)
!49 = !DILocation(line: 25, column: 10, scope: !33)
!50 = !DILocation(line: 25, column: 5, scope: !33)
!51 = !DILocation(line: 26, column: 1, scope: !33)
!52 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 28, type: !53, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!53 = !DISubroutineType(types: !54)
!54 = !{!12, !8}
!55 = !DILocalVariable(name: "size", arg: 1, scope: !52, file: !1, line: 28, type: !8)
!56 = !DILocation(line: 28, column: 24, scope: !52)
!57 = !DILocation(line: 29, column: 19, scope: !52)
!58 = !DILocation(line: 29, column: 12, scope: !52)
!59 = !DILocation(line: 29, column: 5, scope: !52)
!60 = distinct !DISubprogram(name: "xmlCreateZMemBuff", scope: !1, file: !1, line: 33, type: !61, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!61 = !DISubroutineType(types: !62)
!62 = !{!3}
!63 = !DILocalVariable(name: "buff", scope: !60, file: !1, line: 34, type: !3)
!64 = !DILocation(line: 34, column: 18, scope: !60)
!65 = !DILocation(line: 36, column: 26, scope: !60)
!66 = !DILocation(line: 36, column: 12, scope: !60)
!67 = !DILocation(line: 36, column: 10, scope: !60)
!68 = !DILocation(line: 37, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !60, file: !1, line: 37, column: 9)
!70 = !DILocation(line: 37, column: 14, scope: !69)
!71 = !DILocation(line: 37, column: 9, scope: !60)
!72 = !DILocation(line: 38, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 37, column: 23)
!74 = !DILocation(line: 39, column: 9, scope: !73)
!75 = !DILocation(line: 42, column: 18, scope: !60)
!76 = !DILocation(line: 42, column: 11, scope: !60)
!77 = !DILocation(line: 43, column: 5, scope: !60)
!78 = !DILocation(line: 43, column: 11, scope: !60)
!79 = !DILocation(line: 43, column: 16, scope: !60)
!80 = !DILocation(line: 44, column: 29, scope: !60)
!81 = !DILocation(line: 44, column: 35, scope: !60)
!82 = !DILocation(line: 44, column: 19, scope: !60)
!83 = !DILocation(line: 44, column: 5, scope: !60)
!84 = !DILocation(line: 44, column: 11, scope: !60)
!85 = !DILocation(line: 44, column: 17, scope: !60)
!86 = !DILocation(line: 45, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !60, file: !1, line: 45, column: 9)
!88 = !DILocation(line: 45, column: 15, scope: !87)
!89 = !DILocation(line: 45, column: 21, scope: !87)
!90 = !DILocation(line: 45, column: 9, scope: !60)
!91 = !DILocation(line: 46, column: 25, scope: !92)
!92 = distinct !DILexicalBlock(scope: !87, file: !1, line: 45, column: 30)
!93 = !DILocation(line: 46, column: 9, scope: !92)
!94 = !DILocation(line: 47, column: 9, scope: !92)
!95 = !DILocation(line: 48, column: 9, scope: !92)
!96 = !DILocation(line: 51, column: 12, scope: !60)
!97 = !DILocation(line: 51, column: 5, scope: !60)
!98 = !DILocation(line: 52, column: 1, scope: !60)
!99 = distinct !DISubprogram(name: "xmlFileOpen", scope: !1, file: !1, line: 55, type: !100, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!100 = !DISubroutineType(types: !101)
!101 = !{!12, !26}
!102 = !DILocalVariable(name: "filename", arg: 1, scope: !99, file: !1, line: 55, type: !26)
!103 = !DILocation(line: 55, column: 31, scope: !99)
!104 = !DILocation(line: 57, column: 12, scope: !99)
!105 = !DILocation(line: 57, column: 5, scope: !99)
!106 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 60, type: !107, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!107 = !DISubroutineType(types: !108)
!108 = !{!109}
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !DILocalVariable(name: "filename", scope: !106, file: !1, line: 62, type: !111)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 256)
!114 = !DILocation(line: 62, column: 10, scope: !106)
!115 = !DILocation(line: 63, column: 24, scope: !106)
!116 = !DILocation(line: 63, column: 5, scope: !106)
!117 = !DILocation(line: 66, column: 17, scope: !106)
!118 = !DILocation(line: 66, column: 31, scope: !106)
!119 = !DILocation(line: 66, column: 5, scope: !106)
!120 = !DILocalVariable(name: "result", scope: !106, file: !1, line: 69, type: !12)
!121 = !DILocation(line: 69, column: 11, scope: !106)
!122 = !DILocation(line: 69, column: 32, scope: !106)
!123 = !DILocation(line: 69, column: 20, scope: !106)
!124 = !DILocation(line: 77, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !106, file: !1, line: 77, column: 9)
!126 = !DILocation(line: 77, column: 16, scope: !125)
!127 = !DILocation(line: 77, column: 9, scope: !106)
!128 = !DILocalVariable(name: "buff", scope: !129, file: !1, line: 79, type: !3)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 77, column: 25)
!130 = !DILocation(line: 79, column: 22, scope: !129)
!131 = !DILocation(line: 79, column: 43, scope: !129)
!132 = !DILocation(line: 79, column: 29, scope: !129)
!133 = !DILocation(line: 82, column: 9, scope: !129)
!134 = !DILocation(line: 85, column: 9, scope: !129)
!135 = !DILocation(line: 88, column: 25, scope: !129)
!136 = !DILocation(line: 88, column: 9, scope: !129)
!137 = !DILocation(line: 89, column: 5, scope: !129)
!138 = !DILocation(line: 91, column: 5, scope: !106)
!139 = distinct !DISubprogram(name: "memset", scope: !140, file: !140, line: 12, type: !141, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !29)
!140 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!141 = !DISubroutineType(types: !142)
!142 = !{!12, !12, !109, !8}
!143 = !DILocalVariable(name: "dst", arg: 1, scope: !139, file: !140, line: 12, type: !12)
!144 = !DILocation(line: 12, column: 20, scope: !139)
!145 = !DILocalVariable(name: "s", arg: 2, scope: !139, file: !140, line: 12, type: !109)
!146 = !DILocation(line: 12, column: 29, scope: !139)
!147 = !DILocalVariable(name: "count", arg: 3, scope: !139, file: !140, line: 12, type: !8)
!148 = !DILocation(line: 12, column: 39, scope: !139)
!149 = !DILocalVariable(name: "a", scope: !139, file: !140, line: 13, type: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!151 = !DILocation(line: 13, column: 9, scope: !139)
!152 = !DILocation(line: 13, column: 13, scope: !139)
!153 = !DILocation(line: 14, column: 3, scope: !139)
!154 = !DILocation(line: 14, column: 15, scope: !139)
!155 = !DILocation(line: 14, column: 18, scope: !139)
!156 = !DILocation(line: 15, column: 12, scope: !139)
!157 = !DILocation(line: 15, column: 7, scope: !139)
!158 = !DILocation(line: 15, column: 10, scope: !139)
!159 = distinct !{!159, !153, !156, !160}
!160 = !{!"llvm.loop.mustprogress"}
!161 = !DILocation(line: 16, column: 10, scope: !139)
!162 = !DILocation(line: 16, column: 3, scope: !139)
