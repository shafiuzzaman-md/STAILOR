; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/098_testlimits.c_207_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/098_testlimits.c_207_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HugeTest = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"instate\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"currentTest\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"curlen\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"test_end_string\00", align 1
@hugeTests = dso_local global [10 x %struct.HugeTest] zeroinitializer, align 16, !dbg !0
@.str.8 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"(len <= sizeof(buffer) && len <= sizeof(filling)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.10 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/098_testlimits.c_207_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@buffer = dso_local global [8192 x i8] zeroinitializer, align 16, !dbg !5
@filling = dso_local global [8192 x i8] zeroinitializer, align 16, !dbg !11
@.str.11 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !32 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %3, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %4, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %5, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %6, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %7, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i8** %8, metadata !49, metadata !DIExpression()), !dbg !50
  %9 = bitcast i32* %2 to i8*, !dbg !51
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !52
  %10 = bitcast i32* %3 to i8*, !dbg !53
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)), !dbg !54
  %11 = bitcast i32* %4 to i8*, !dbg !55
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !56
  %12 = bitcast i32* %5 to i8*, !dbg !57
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !58
  %13 = bitcast i32* %6 to i8*, !dbg !59
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !60
  %14 = bitcast i32* %7 to i8*, !dbg !61
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !62
  %15 = bitcast i8** %8 to i8*, !dbg !63
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)), !dbg !64
  %16 = load i32, i32* %2, align 4, !dbg !65
  %17 = icmp eq i32 %16, 1, !dbg !66
  %18 = zext i1 %17 to i32, !dbg !66
  %19 = sext i32 %18 to i64, !dbg !65
  call void @klee_assume(i64 noundef %19), !dbg !67
  %20 = load i32, i32* %3, align 4, !dbg !68
  %21 = icmp sge i32 %20, 0, !dbg !69
  br i1 %21, label %22, label %25, !dbg !70

22:                                               ; preds = %0
  %23 = load i32, i32* %3, align 4, !dbg !71
  %24 = icmp slt i32 %23, 10, !dbg !72
  br label %25

25:                                               ; preds = %22, %0
  %26 = phi i1 [ false, %0 ], [ %24, %22 ], !dbg !73
  %27 = zext i1 %26 to i32, !dbg !70
  %28 = sext i32 %27 to i64, !dbg !68
  call void @klee_assume(i64 noundef %28), !dbg !74
  %29 = load i32, i32* %4, align 4, !dbg !75
  %30 = icmp sge i32 %29, 0, !dbg !76
  %31 = zext i1 %30 to i32, !dbg !76
  %32 = sext i32 %31 to i64, !dbg !75
  call void @klee_assume(i64 noundef %32), !dbg !77
  %33 = load i32, i32* %5, align 4, !dbg !78
  %34 = icmp sge i32 %33, 0, !dbg !79
  %35 = zext i1 %34 to i32, !dbg !79
  %36 = sext i32 %35 to i64, !dbg !78
  call void @klee_assume(i64 noundef %36), !dbg !80
  %37 = load i32, i32* %6, align 4, !dbg !81
  %38 = icmp sge i32 %37, 0, !dbg !82
  %39 = zext i1 %38 to i32, !dbg !82
  %40 = sext i32 %39 to i64, !dbg !81
  call void @klee_assume(i64 noundef %40), !dbg !83
  %41 = load i32, i32* %7, align 4, !dbg !84
  %42 = icmp sge i32 %41, 0, !dbg !85
  %43 = zext i1 %42 to i32, !dbg !85
  %44 = sext i32 %43 to i64, !dbg !84
  call void @klee_assume(i64 noundef %44), !dbg !86
  %45 = load i32, i32* %3, align 4, !dbg !87
  %46 = sext i32 %45 to i64, !dbg !88
  %47 = getelementptr inbounds [10 x %struct.HugeTest], [10 x %struct.HugeTest]* @hugeTests, i64 0, i64 %46, !dbg !88
  %48 = getelementptr inbounds %struct.HugeTest, %struct.HugeTest* %47, i32 0, i32 0, !dbg !89
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8** %48, align 8, !dbg !90
  %49 = load i32, i32* %7, align 4, !dbg !91
  %50 = icmp sgt i32 %49, 4096, !dbg !93
  br i1 %50, label %51, label %52, !dbg !94

51:                                               ; preds = %25
  store i32 4096, i32* %7, align 4, !dbg !95
  br label %52, !dbg !96

52:                                               ; preds = %51, %25
  %53 = load i32, i32* %7, align 4, !dbg !97
  %54 = sext i32 %53 to i64, !dbg !97
  %55 = icmp ule i64 %54, 8192, !dbg !97
  br i1 %55, label %56, label %62, !dbg !97

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4, !dbg !97
  %58 = sext i32 %57 to i64, !dbg !97
  %59 = icmp ule i64 %58, 8192, !dbg !97
  br i1 %59, label %60, label %62, !dbg !97

60:                                               ; preds = %56
  br i1 true, label %61, label %62, !dbg !97

61:                                               ; preds = %60
  br label %64, !dbg !97

62:                                               ; preds = %60, %56, %52
  %63 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.10, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !97
  br label %64, !dbg !97

64:                                               ; preds = %62, %61
  %65 = load i32, i32* %7, align 4, !dbg !98
  %66 = sext i32 %65 to i64, !dbg !98
  %67 = call i8* @memcpy(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @buffer, i64 0, i64 0), i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @filling, i64 0, i64 0), i64 %66), !dbg !99
  %68 = load i32, i32* %7, align 4, !dbg !100
  %69 = load i32, i32* %4, align 4, !dbg !101
  %70 = add nsw i32 %69, %68, !dbg !101
  store i32 %70, i32* %4, align 4, !dbg !101
  %71 = load i32, i32* %4, align 4, !dbg !102
  %72 = load i32, i32* %5, align 4, !dbg !104
  %73 = icmp sge i32 %71, %72, !dbg !105
  br i1 %73, label %74, label %88, !dbg !106

74:                                               ; preds = %64
  %75 = load i32, i32* %3, align 4, !dbg !107
  %76 = sext i32 %75 to i64, !dbg !109
  %77 = getelementptr inbounds [10 x %struct.HugeTest], [10 x %struct.HugeTest]* @hugeTests, i64 0, i64 %76, !dbg !109
  %78 = getelementptr inbounds %struct.HugeTest, %struct.HugeTest* %77, i32 0, i32 0, !dbg !110
  %79 = load i8*, i8** %78, align 8, !dbg !110
  %80 = call i64 @strlen(i8* noundef %79) #7, !dbg !111
  %81 = trunc i64 %80 to i32, !dbg !111
  store i32 %81, i32* %6, align 4, !dbg !112
  %82 = load i32, i32* %3, align 4, !dbg !113
  %83 = sext i32 %82 to i64, !dbg !114
  %84 = getelementptr inbounds [10 x %struct.HugeTest], [10 x %struct.HugeTest]* @hugeTests, i64 0, i64 %83, !dbg !114
  %85 = getelementptr inbounds %struct.HugeTest, %struct.HugeTest* %84, i32 0, i32 0, !dbg !115
  %86 = load i8*, i8** %85, align 8, !dbg !115
  store i8* %86, i8** %8, align 8, !dbg !116
  store i32 2, i32* %2, align 4, !dbg !117
  %87 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.10, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !118
  br label %88, !dbg !119

88:                                               ; preds = %74, %64
  ret i32 0, !dbg !120
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !121 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !131, metadata !DIExpression()), !dbg !132
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !133, metadata !DIExpression()), !dbg !134
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i8** %7, metadata !137, metadata !DIExpression()), !dbg !139
  %9 = load i8*, i8** %4, align 8, !dbg !140
  store i8* %9, i8** %7, align 8, !dbg !139
  call void @llvm.dbg.declare(metadata i8** %8, metadata !141, metadata !DIExpression()), !dbg !142
  %10 = load i8*, i8** %5, align 8, !dbg !143
  store i8* %10, i8** %8, align 8, !dbg !142
  br label %11, !dbg !144

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !145
  %13 = add i64 %12, -1, !dbg !145
  store i64 %13, i64* %6, align 8, !dbg !145
  %14 = icmp ugt i64 %12, 0, !dbg !146
  br i1 %14, label %15, label %21, !dbg !144

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !147
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !147
  store i8* %17, i8** %8, align 8, !dbg !147
  %18 = load i8, i8* %16, align 1, !dbg !148
  %19 = load i8*, i8** %7, align 8, !dbg !149
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !149
  store i8* %20, i8** %7, align 8, !dbg !149
  store i8 %18, i8* %19, align 1, !dbg !150
  br label %11, !dbg !144, !llvm.loop !151

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !153
  ret i8* %22, !dbg !154
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31, !31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hugeTests", scope: !2, file: !3, line: 15, type: !13, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/098_testlimits.c_207_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "86e5e3615be8d9b17a5b09585ebed228")
!4 = !{!0, !5, !11}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "buffer", scope: !2, file: !3, line: 16, type: !7, isLocal: false, isDefinition: true)
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 65536, elements: !9)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !{!10}
!10 = !DISubrange(count: 8192)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "filling", scope: !2, file: !3, line: 17, type: !7, isLocal: false, isDefinition: true)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 640, elements: !20)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "HugeTest", file: !3, line: 13, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 11, size: 64, elements: !16)
!16 = !{!17}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !15, file: !3, line: 12, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!20 = !{!21}
!21 = !DISubrange(count: 10)
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 7, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"Ubuntu clang version 14.0.6"}
!32 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 19, type: !33, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !36)
!33 = !DISubroutineType(types: !34)
!34 = !{!35}
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !{}
!37 = !DILocalVariable(name: "instate", scope: !32, file: !3, line: 20, type: !35)
!38 = !DILocation(line: 20, column: 9, scope: !32)
!39 = !DILocalVariable(name: "currentTest", scope: !32, file: !3, line: 21, type: !35)
!40 = !DILocation(line: 21, column: 9, scope: !32)
!41 = !DILocalVariable(name: "curlen", scope: !32, file: !3, line: 22, type: !35)
!42 = !DILocation(line: 22, column: 9, scope: !32)
!43 = !DILocalVariable(name: "maxlen", scope: !32, file: !3, line: 23, type: !35)
!44 = !DILocation(line: 23, column: 9, scope: !32)
!45 = !DILocalVariable(name: "rlen", scope: !32, file: !3, line: 24, type: !35)
!46 = !DILocation(line: 24, column: 9, scope: !32)
!47 = !DILocalVariable(name: "len", scope: !32, file: !3, line: 25, type: !35)
!48 = !DILocation(line: 25, column: 9, scope: !32)
!49 = !DILocalVariable(name: "current", scope: !32, file: !3, line: 26, type: !18)
!50 = !DILocation(line: 26, column: 17, scope: !32)
!51 = !DILocation(line: 28, column: 24, scope: !32)
!52 = !DILocation(line: 28, column: 5, scope: !32)
!53 = !DILocation(line: 29, column: 24, scope: !32)
!54 = !DILocation(line: 29, column: 5, scope: !32)
!55 = !DILocation(line: 30, column: 24, scope: !32)
!56 = !DILocation(line: 30, column: 5, scope: !32)
!57 = !DILocation(line: 31, column: 24, scope: !32)
!58 = !DILocation(line: 31, column: 5, scope: !32)
!59 = !DILocation(line: 32, column: 24, scope: !32)
!60 = !DILocation(line: 32, column: 5, scope: !32)
!61 = !DILocation(line: 33, column: 24, scope: !32)
!62 = !DILocation(line: 33, column: 5, scope: !32)
!63 = !DILocation(line: 34, column: 24, scope: !32)
!64 = !DILocation(line: 34, column: 5, scope: !32)
!65 = !DILocation(line: 36, column: 17, scope: !32)
!66 = !DILocation(line: 36, column: 25, scope: !32)
!67 = !DILocation(line: 36, column: 5, scope: !32)
!68 = !DILocation(line: 37, column: 17, scope: !32)
!69 = !DILocation(line: 37, column: 29, scope: !32)
!70 = !DILocation(line: 37, column: 34, scope: !32)
!71 = !DILocation(line: 37, column: 37, scope: !32)
!72 = !DILocation(line: 37, column: 49, scope: !32)
!73 = !DILocation(line: 0, scope: !32)
!74 = !DILocation(line: 37, column: 5, scope: !32)
!75 = !DILocation(line: 38, column: 17, scope: !32)
!76 = !DILocation(line: 38, column: 24, scope: !32)
!77 = !DILocation(line: 38, column: 5, scope: !32)
!78 = !DILocation(line: 39, column: 17, scope: !32)
!79 = !DILocation(line: 39, column: 24, scope: !32)
!80 = !DILocation(line: 39, column: 5, scope: !32)
!81 = !DILocation(line: 40, column: 17, scope: !32)
!82 = !DILocation(line: 40, column: 22, scope: !32)
!83 = !DILocation(line: 40, column: 5, scope: !32)
!84 = !DILocation(line: 41, column: 17, scope: !32)
!85 = !DILocation(line: 41, column: 21, scope: !32)
!86 = !DILocation(line: 41, column: 5, scope: !32)
!87 = !DILocation(line: 43, column: 15, scope: !32)
!88 = !DILocation(line: 43, column: 5, scope: !32)
!89 = !DILocation(line: 43, column: 28, scope: !32)
!90 = !DILocation(line: 43, column: 32, scope: !32)
!91 = !DILocation(line: 45, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !32, file: !3, line: 45, column: 9)
!93 = !DILocation(line: 45, column: 13, scope: !92)
!94 = !DILocation(line: 45, column: 9, scope: !32)
!95 = !DILocation(line: 45, column: 26, scope: !92)
!96 = !DILocation(line: 45, column: 22, scope: !92)
!97 = !DILocation(line: 47, column: 5, scope: !32)
!98 = !DILocation(line: 49, column: 33, scope: !32)
!99 = !DILocation(line: 49, column: 5, scope: !32)
!100 = !DILocation(line: 50, column: 15, scope: !32)
!101 = !DILocation(line: 50, column: 12, scope: !32)
!102 = !DILocation(line: 51, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !32, file: !3, line: 51, column: 9)
!104 = !DILocation(line: 51, column: 19, scope: !103)
!105 = !DILocation(line: 51, column: 16, scope: !103)
!106 = !DILocation(line: 51, column: 9, scope: !32)
!107 = !DILocation(line: 52, column: 33, scope: !108)
!108 = distinct !DILexicalBlock(scope: !103, file: !3, line: 51, column: 27)
!109 = !DILocation(line: 52, column: 23, scope: !108)
!110 = !DILocation(line: 52, column: 46, scope: !108)
!111 = !DILocation(line: 52, column: 16, scope: !108)
!112 = !DILocation(line: 52, column: 14, scope: !108)
!113 = !DILocation(line: 53, column: 29, scope: !108)
!114 = !DILocation(line: 53, column: 19, scope: !108)
!115 = !DILocation(line: 53, column: 42, scope: !108)
!116 = !DILocation(line: 53, column: 17, scope: !108)
!117 = !DILocation(line: 54, column: 17, scope: !108)
!118 = !DILocation(line: 55, column: 9, scope: !108)
!119 = !DILocation(line: 56, column: 5, scope: !108)
!120 = !DILocation(line: 58, column: 5, scope: !32)
!121 = distinct !DISubprogram(name: "memcpy", scope: !122, file: !122, line: 12, type: !123, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !36)
!122 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!123 = !DISubroutineType(types: !124)
!124 = !{!125, !125, !126, !128}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !129, line: 46, baseType: !130)
!129 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!130 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!131 = !DILocalVariable(name: "destaddr", arg: 1, scope: !121, file: !122, line: 12, type: !125)
!132 = !DILocation(line: 12, column: 20, scope: !121)
!133 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !121, file: !122, line: 12, type: !126)
!134 = !DILocation(line: 12, column: 42, scope: !121)
!135 = !DILocalVariable(name: "len", arg: 3, scope: !121, file: !122, line: 12, type: !128)
!136 = !DILocation(line: 12, column: 58, scope: !121)
!137 = !DILocalVariable(name: "dest", scope: !121, file: !122, line: 13, type: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!139 = !DILocation(line: 13, column: 9, scope: !121)
!140 = !DILocation(line: 13, column: 16, scope: !121)
!141 = !DILocalVariable(name: "src", scope: !121, file: !122, line: 14, type: !18)
!142 = !DILocation(line: 14, column: 15, scope: !121)
!143 = !DILocation(line: 14, column: 21, scope: !121)
!144 = !DILocation(line: 16, column: 3, scope: !121)
!145 = !DILocation(line: 16, column: 13, scope: !121)
!146 = !DILocation(line: 16, column: 16, scope: !121)
!147 = !DILocation(line: 17, column: 19, scope: !121)
!148 = !DILocation(line: 17, column: 15, scope: !121)
!149 = !DILocation(line: 17, column: 10, scope: !121)
!150 = !DILocation(line: 17, column: 13, scope: !121)
!151 = distinct !{!151, !144, !147, !152}
!152 = !{!"llvm.loop.mustprogress"}
!153 = !DILocation(line: 18, column: 10, scope: !121)
!154 = !DILocation(line: 18, column: 3, scope: !121)
