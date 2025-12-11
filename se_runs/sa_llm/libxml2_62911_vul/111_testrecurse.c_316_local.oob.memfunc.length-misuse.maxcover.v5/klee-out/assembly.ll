; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/111_testrecurse.c_316_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/111_testrecurse.c_316_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HugeDocParts = type { i8* }

@hugeDocParts = dso_local global %struct.HugeDocParts* null, align 8, !dbg !0
@current = dso_local global i8* null, align 8, !dbg !13
@rlen = dso_local global i32 0, align 4, !dbg !19
@buffer = dso_local global [1024 x i8] zeroinitializer, align 16, !dbg !7
@len = dso_local global i32 0, align 4, !dbg !16
@.str = private unnamed_addr constant [12 x i8] c"segment_buf\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"(len <= sizeof(buffer)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/111_testrecurse.c_316_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_function() #0 !dbg !36 {
  %1 = load %struct.HugeDocParts*, %struct.HugeDocParts** @hugeDocParts, align 8, !dbg !40
  %2 = icmp ne %struct.HugeDocParts* %1, null, !dbg !42
  br i1 %2, label %3, label %15, !dbg !43

3:                                                ; preds = %0
  %4 = load %struct.HugeDocParts*, %struct.HugeDocParts** @hugeDocParts, align 8, !dbg !44
  %5 = getelementptr inbounds %struct.HugeDocParts, %struct.HugeDocParts* %4, i32 0, i32 0, !dbg !45
  %6 = load i8*, i8** %5, align 8, !dbg !45
  %7 = icmp ne i8* %6, null, !dbg !46
  br i1 %7, label %8, label %15, !dbg !47

8:                                                ; preds = %3
  %9 = load %struct.HugeDocParts*, %struct.HugeDocParts** @hugeDocParts, align 8, !dbg !48
  %10 = getelementptr inbounds %struct.HugeDocParts, %struct.HugeDocParts* %9, i32 0, i32 0, !dbg !50
  %11 = load i8*, i8** %10, align 8, !dbg !50
  store i8* %11, i8** @current, align 8, !dbg !51
  %12 = load i8*, i8** @current, align 8, !dbg !52
  %13 = call i64 @strlen(i8* noundef %12) #8, !dbg !53
  %14 = trunc i64 %13 to i32, !dbg !53
  store i32 %14, i32* @rlen, align 4, !dbg !54
  br label %27, !dbg !55

15:                                               ; preds = %3, %0
  %16 = load i8*, i8** @current, align 8, !dbg !56
  %17 = load i32, i32* @len, align 4, !dbg !58
  %18 = sext i32 %17 to i64, !dbg !58
  %19 = call i8* @memcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* %16, i64 %18), !dbg !59
  %20 = load i32, i32* @len, align 4, !dbg !60
  %21 = load i32, i32* @rlen, align 4, !dbg !61
  %22 = sub nsw i32 %21, %20, !dbg !61
  store i32 %22, i32* @rlen, align 4, !dbg !61
  %23 = load i32, i32* @len, align 4, !dbg !62
  %24 = load i8*, i8** @current, align 8, !dbg !63
  %25 = sext i32 %23 to i64, !dbg !63
  %26 = getelementptr inbounds i8, i8* %24, i64 %25, !dbg !63
  store i8* %26, i8** @current, align 8, !dbg !63
  br label %27

27:                                               ; preds = %15, %8
  ret void, !dbg !64
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !65 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  store i32 0, i32* %1, align 4
  %3 = call noalias i8* @malloc(i64 noundef 8) #9, !dbg !68
  %4 = bitcast i8* %3 to %struct.HugeDocParts*, !dbg !68
  store %struct.HugeDocParts* %4, %struct.HugeDocParts** @hugeDocParts, align 8, !dbg !69
  %5 = load %struct.HugeDocParts*, %struct.HugeDocParts** @hugeDocParts, align 8, !dbg !70
  %6 = icmp eq %struct.HugeDocParts* %5, null, !dbg !72
  br i1 %6, label %7, label %8, !dbg !73

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !74
  br label %44, !dbg !74

8:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !75, metadata !DIExpression()), !dbg !76
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !77
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 1024, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !78
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 1023, !dbg !79
  %11 = load i8, i8* %10, align 1, !dbg !79
  %12 = sext i8 %11 to i32, !dbg !79
  %13 = icmp eq i32 %12, 0, !dbg !80
  %14 = zext i1 %13 to i32, !dbg !80
  %15 = sext i32 %14 to i64, !dbg !79
  call void @klee_assume(i64 noundef %15), !dbg !81
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !82
  %17 = load %struct.HugeDocParts*, %struct.HugeDocParts** @hugeDocParts, align 8, !dbg !83
  %18 = getelementptr inbounds %struct.HugeDocParts, %struct.HugeDocParts* %17, i32 0, i32 0, !dbg !84
  store i8* %16, i8** %18, align 8, !dbg !85
  call void @klee_make_symbolic(i8* noundef bitcast (i32* @len to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !86
  %19 = load i32, i32* @len, align 4, !dbg !87
  %20 = icmp sge i32 %19, 0, !dbg !88
  %21 = zext i1 %20 to i32, !dbg !88
  %22 = sext i32 %21 to i64, !dbg !87
  call void @klee_assume(i64 noundef %22), !dbg !89
  %23 = load i32, i32* @len, align 4, !dbg !90
  %24 = sext i32 %23 to i64, !dbg !90
  %25 = icmp ult i64 %24, 1024, !dbg !91
  %26 = zext i1 %25 to i32, !dbg !91
  %27 = sext i32 %26 to i64, !dbg !90
  call void @klee_assume(i64 noundef %27), !dbg !92
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !93
  store i8* %28, i8** @current, align 8, !dbg !94
  call void @klee_make_symbolic(i8* noundef bitcast (i32* @rlen to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !95
  %29 = load i32, i32* @rlen, align 4, !dbg !96
  %30 = icmp sge i32 %29, 0, !dbg !97
  %31 = zext i1 %30 to i32, !dbg !97
  %32 = sext i32 %31 to i64, !dbg !96
  call void @klee_assume(i64 noundef %32), !dbg !98
  call void @target_function(), !dbg !99
  %33 = load i32, i32* @len, align 4, !dbg !100
  %34 = sext i32 %33 to i64, !dbg !100
  %35 = icmp ule i64 %34, 1024, !dbg !100
  br i1 %35, label %36, label %38, !dbg !100

36:                                               ; preds = %8
  br i1 true, label %37, label %38, !dbg !100

37:                                               ; preds = %36
  br label %40, !dbg !100

38:                                               ; preds = %36, %8
  %39 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.5, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !100
  br label %40, !dbg !100

40:                                               ; preds = %38, %37
  %41 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.5, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !101
  %42 = load %struct.HugeDocParts*, %struct.HugeDocParts** @hugeDocParts, align 8, !dbg !102
  %43 = bitcast %struct.HugeDocParts* %42 to i8*, !dbg !102
  call void @free(i8* noundef %43) #9, !dbg !103
  store i32 0, i32* %1, align 4, !dbg !104
  br label %44, !dbg !104

44:                                               ; preds = %40, %7
  %45 = load i32, i32* %1, align 4, !dbg !105
  ret i32 %45, !dbg !105
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !106 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !115, metadata !DIExpression()), !dbg !116
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !117, metadata !DIExpression()), !dbg !118
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata i8** %7, metadata !121, metadata !DIExpression()), !dbg !122
  %9 = load i8*, i8** %4, align 8, !dbg !123
  store i8* %9, i8** %7, align 8, !dbg !122
  call void @llvm.dbg.declare(metadata i8** %8, metadata !124, metadata !DIExpression()), !dbg !127
  %10 = load i8*, i8** %5, align 8, !dbg !128
  store i8* %10, i8** %8, align 8, !dbg !127
  br label %11, !dbg !129

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !130
  %13 = add i64 %12, -1, !dbg !130
  store i64 %13, i64* %6, align 8, !dbg !130
  %14 = icmp ugt i64 %12, 0, !dbg !131
  br i1 %14, label %15, label %21, !dbg !129

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !132
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !132
  store i8* %17, i8** %8, align 8, !dbg !132
  %18 = load i8, i8* %16, align 1, !dbg !133
  %19 = load i8*, i8** %7, align 8, !dbg !134
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !134
  store i8* %20, i8** %7, align 8, !dbg !134
  store i8 %18, i8* %19, align 1, !dbg !135
  br label %11, !dbg !129, !llvm.loop !136

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !138
  ret i8* %22, !dbg !139
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35, !35}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hugeDocParts", scope: !2, file: !3, line: 17, type: !21, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/111_testrecurse.c_316_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9be4d3a5127cd1fddcb38dcd83d54629")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!7, !13, !16, !19, !0}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "buffer", scope: !2, file: !3, line: 13, type: !9, isLocal: false, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8192, elements: !11)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !{!12}
!12 = !DISubrange(count: 1024)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "current", scope: !2, file: !3, line: 14, type: !15, isLocal: false, isDefinition: true)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "len", scope: !2, file: !3, line: 15, type: !18, isLocal: false, isDefinition: true)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "rlen", scope: !2, file: !3, line: 16, type: !18, isLocal: false, isDefinition: true)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "HugeDocParts", file: !3, line: 11, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 9, size: 64, elements: !24)
!24 = !{!25}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !23, file: !3, line: 10, baseType: !15, size: 64)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!28 = !{i32 7, !"Dwarf Version", i32 5}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{i32 7, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"Ubuntu clang version 14.0.6"}
!36 = distinct !DISubprogram(name: "target_function", scope: !3, file: !3, line: 19, type: !37, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!37 = !DISubroutineType(types: !38)
!38 = !{null}
!39 = !{}
!40 = !DILocation(line: 20, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !36, file: !3, line: 20, column: 9)
!42 = !DILocation(line: 20, column: 22, scope: !41)
!43 = !DILocation(line: 20, column: 30, scope: !41)
!44 = !DILocation(line: 20, column: 33, scope: !41)
!45 = !DILocation(line: 20, column: 47, scope: !41)
!46 = !DILocation(line: 20, column: 55, scope: !41)
!47 = !DILocation(line: 20, column: 9, scope: !36)
!48 = !DILocation(line: 21, column: 19, scope: !49)
!49 = distinct !DILexicalBlock(scope: !41, file: !3, line: 20, column: 64)
!50 = !DILocation(line: 21, column: 33, scope: !49)
!51 = !DILocation(line: 21, column: 17, scope: !49)
!52 = !DILocation(line: 22, column: 23, scope: !49)
!53 = !DILocation(line: 22, column: 16, scope: !49)
!54 = !DILocation(line: 22, column: 14, scope: !49)
!55 = !DILocation(line: 23, column: 5, scope: !49)
!56 = !DILocation(line: 24, column: 24, scope: !57)
!57 = distinct !DILexicalBlock(scope: !41, file: !3, line: 23, column: 12)
!58 = !DILocation(line: 24, column: 33, scope: !57)
!59 = !DILocation(line: 24, column: 9, scope: !57)
!60 = !DILocation(line: 25, column: 17, scope: !57)
!61 = !DILocation(line: 25, column: 14, scope: !57)
!62 = !DILocation(line: 26, column: 20, scope: !57)
!63 = !DILocation(line: 26, column: 17, scope: !57)
!64 = !DILocation(line: 28, column: 1, scope: !36)
!65 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 30, type: !66, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!66 = !DISubroutineType(types: !67)
!67 = !{!18}
!68 = !DILocation(line: 31, column: 20, scope: !65)
!69 = !DILocation(line: 31, column: 18, scope: !65)
!70 = !DILocation(line: 32, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !65, file: !3, line: 32, column: 9)
!72 = !DILocation(line: 32, column: 22, scope: !71)
!73 = !DILocation(line: 32, column: 9, scope: !65)
!74 = !DILocation(line: 32, column: 31, scope: !71)
!75 = !DILocalVariable(name: "segment_buf", scope: !65, file: !3, line: 34, type: !9)
!76 = !DILocation(line: 34, column: 10, scope: !65)
!77 = !DILocation(line: 35, column: 24, scope: !65)
!78 = !DILocation(line: 35, column: 5, scope: !65)
!79 = !DILocation(line: 36, column: 17, scope: !65)
!80 = !DILocation(line: 36, column: 52, scope: !65)
!81 = !DILocation(line: 36, column: 5, scope: !65)
!82 = !DILocation(line: 38, column: 29, scope: !65)
!83 = !DILocation(line: 38, column: 5, scope: !65)
!84 = !DILocation(line: 38, column: 19, scope: !65)
!85 = !DILocation(line: 38, column: 27, scope: !65)
!86 = !DILocation(line: 40, column: 5, scope: !65)
!87 = !DILocation(line: 41, column: 17, scope: !65)
!88 = !DILocation(line: 41, column: 21, scope: !65)
!89 = !DILocation(line: 41, column: 5, scope: !65)
!90 = !DILocation(line: 42, column: 17, scope: !65)
!91 = !DILocation(line: 42, column: 21, scope: !65)
!92 = !DILocation(line: 42, column: 5, scope: !65)
!93 = !DILocation(line: 44, column: 15, scope: !65)
!94 = !DILocation(line: 44, column: 13, scope: !65)
!95 = !DILocation(line: 45, column: 5, scope: !65)
!96 = !DILocation(line: 46, column: 17, scope: !65)
!97 = !DILocation(line: 46, column: 22, scope: !65)
!98 = !DILocation(line: 46, column: 5, scope: !65)
!99 = !DILocation(line: 48, column: 5, scope: !65)
!100 = !DILocation(line: 50, column: 5, scope: !65)
!101 = !DILocation(line: 51, column: 5, scope: !65)
!102 = !DILocation(line: 53, column: 10, scope: !65)
!103 = !DILocation(line: 53, column: 5, scope: !65)
!104 = !DILocation(line: 54, column: 5, scope: !65)
!105 = !DILocation(line: 55, column: 1, scope: !65)
!106 = distinct !DISubprogram(name: "memcpy", scope: !107, file: !107, line: 12, type: !108, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !39)
!107 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!108 = !DISubroutineType(types: !109)
!109 = !{!5, !5, !110, !112}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 46, baseType: !114)
!113 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!114 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!115 = !DILocalVariable(name: "destaddr", arg: 1, scope: !106, file: !107, line: 12, type: !5)
!116 = !DILocation(line: 12, column: 20, scope: !106)
!117 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !106, file: !107, line: 12, type: !110)
!118 = !DILocation(line: 12, column: 42, scope: !106)
!119 = !DILocalVariable(name: "len", arg: 3, scope: !106, file: !107, line: 12, type: !112)
!120 = !DILocation(line: 12, column: 58, scope: !106)
!121 = !DILocalVariable(name: "dest", scope: !106, file: !107, line: 13, type: !15)
!122 = !DILocation(line: 13, column: 9, scope: !106)
!123 = !DILocation(line: 13, column: 16, scope: !106)
!124 = !DILocalVariable(name: "src", scope: !106, file: !107, line: 14, type: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!127 = !DILocation(line: 14, column: 15, scope: !106)
!128 = !DILocation(line: 14, column: 21, scope: !106)
!129 = !DILocation(line: 16, column: 3, scope: !106)
!130 = !DILocation(line: 16, column: 13, scope: !106)
!131 = !DILocation(line: 16, column: 16, scope: !106)
!132 = !DILocation(line: 17, column: 19, scope: !106)
!133 = !DILocation(line: 17, column: 15, scope: !106)
!134 = !DILocation(line: 17, column: 10, scope: !106)
!135 = !DILocation(line: 17, column: 13, scope: !106)
!136 = distinct !{!136, !129, !132, !137}
!137 = !{!"llvm.loop.mustprogress"}
!138 = !DILocation(line: 18, column: 10, scope: !106)
!139 = !DILocation(line: 18, column: 3, scope: !106)
