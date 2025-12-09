; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/098_testlimits.c_207_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/098_testlimits.c_207_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HugeTest = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@instate = internal global i32 0, align 4, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"instate\00", align 1
@curlen = internal global i32 0, align 4, !dbg !11
@.str.2 = private unnamed_addr constant [7 x i8] c"curlen\00", align 1
@maxlen = internal global i32 0, align 4, !dbg !14
@.str.3 = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1
@currentTest = internal global i32 0, align 4, !dbg !16
@.str.4 = private unnamed_addr constant [12 x i8] c"currentTest\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/098_testlimits.c_207_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@filling = internal global [4096 x i8] zeroinitializer, align 16, !dbg !5
@hugeTests = internal global [2 x %struct.HugeTest] [%struct.HugeTest { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0) }, %struct.HugeTest zeroinitializer], align 16, !dbg !18
@rlen = internal global i32 0, align 4, !dbg !30
@current = internal global i8* null, align 8, !dbg !32
@stderr = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"<root>\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"</root>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !44 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [8192 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata [8192 x i8]* %3, metadata !50, metadata !DIExpression()), !dbg !54
  %4 = bitcast i32* %2 to i8*, !dbg !55
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !56
  call void @klee_make_symbolic(i8* noundef bitcast (i32* @instate to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !57
  call void @klee_make_symbolic(i8* noundef bitcast (i32* @curlen to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !58
  call void @klee_make_symbolic(i8* noundef bitcast (i32* @maxlen to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !59
  call void @klee_make_symbolic(i8* noundef bitcast (i32* @currentTest to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)), !dbg !60
  %5 = load i32, i32* %2, align 4, !dbg !61
  %6 = icmp sge i32 %5, 0, !dbg !62
  %7 = zext i1 %6 to i32, !dbg !62
  %8 = sext i32 %7 to i64, !dbg !61
  call void @klee_assume(i64 noundef %8), !dbg !63
  %9 = load i32, i32* @curlen, align 4, !dbg !64
  %10 = icmp sge i32 %9, 0, !dbg !65
  %11 = zext i1 %10 to i32, !dbg !65
  %12 = sext i32 %11 to i64, !dbg !64
  call void @klee_assume(i64 noundef %12), !dbg !66
  %13 = load i32, i32* @maxlen, align 4, !dbg !67
  %14 = icmp sge i32 %13, 0, !dbg !68
  %15 = zext i1 %14 to i32, !dbg !68
  %16 = sext i32 %15 to i64, !dbg !67
  call void @klee_assume(i64 noundef %16), !dbg !69
  %17 = load i32, i32* @currentTest, align 4, !dbg !70
  %18 = icmp sge i32 %17, 0, !dbg !71
  br i1 %18, label %19, label %22, !dbg !72

19:                                               ; preds = %0
  %20 = load i32, i32* @currentTest, align 4, !dbg !73
  %21 = icmp slt i32 %20, 1, !dbg !74
  br label %22

22:                                               ; preds = %19, %0
  %23 = phi i1 [ false, %0 ], [ %21, %19 ], !dbg !75
  %24 = zext i1 %23 to i32, !dbg !72
  %25 = sext i32 %24 to i64, !dbg !70
  call void @klee_assume(i64 noundef %25), !dbg !76
  %26 = load i32, i32* @instate, align 4, !dbg !77
  %27 = icmp eq i32 %26, 1, !dbg !79
  br i1 %27, label %28, label %65, !dbg !80

28:                                               ; preds = %22
  %29 = load i32, i32* %2, align 4, !dbg !81
  %30 = icmp sgt i32 %29, 4096, !dbg !84
  br i1 %30, label %31, label %32, !dbg !85

31:                                               ; preds = %28
  store i32 4096, i32* %2, align 4, !dbg !86
  br label %32, !dbg !87

32:                                               ; preds = %31, %28
  %33 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !88
  %34 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0, !dbg !89
  %35 = load i32, i32* %2, align 4, !dbg !90
  %36 = sext i32 %35 to i64, !dbg !90
  %37 = call i8* @memcpy(i8* %34, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @filling, i64 0, i64 0), i64 %36), !dbg !89
  %38 = load i32, i32* %2, align 4, !dbg !91
  %39 = load i32, i32* @curlen, align 4, !dbg !92
  %40 = add nsw i32 %39, %38, !dbg !92
  store i32 %40, i32* @curlen, align 4, !dbg !92
  %41 = load i32, i32* @curlen, align 4, !dbg !93
  %42 = load i32, i32* @maxlen, align 4, !dbg !95
  %43 = icmp sge i32 %41, %42, !dbg !96
  br i1 %43, label %44, label %57, !dbg !97

44:                                               ; preds = %32
  %45 = load i32, i32* @currentTest, align 4, !dbg !98
  %46 = sext i32 %45 to i64, !dbg !100
  %47 = getelementptr inbounds [2 x %struct.HugeTest], [2 x %struct.HugeTest]* @hugeTests, i64 0, i64 %46, !dbg !100
  %48 = getelementptr inbounds %struct.HugeTest, %struct.HugeTest* %47, i32 0, i32 1, !dbg !101
  %49 = load i8*, i8** %48, align 8, !dbg !101
  %50 = call i64 @strlen(i8* noundef %49) #7, !dbg !102
  %51 = trunc i64 %50 to i32, !dbg !102
  store i32 %51, i32* @rlen, align 4, !dbg !103
  %52 = load i32, i32* @currentTest, align 4, !dbg !104
  %53 = sext i32 %52 to i64, !dbg !105
  %54 = getelementptr inbounds [2 x %struct.HugeTest], [2 x %struct.HugeTest]* @hugeTests, i64 0, i64 %53, !dbg !105
  %55 = getelementptr inbounds %struct.HugeTest, %struct.HugeTest* %54, i32 0, i32 1, !dbg !106
  %56 = load i8*, i8** %55, align 8, !dbg !106
  store i8* %56, i8** @current, align 8, !dbg !107
  store i32 2, i32* @instate, align 4, !dbg !108
  br label %64, !dbg !109

57:                                               ; preds = %32
  %58 = load i32, i32* @curlen, align 4, !dbg !110
  %59 = icmp sgt i32 %58, 0, !dbg !113
  br i1 %59, label %60, label %63, !dbg !114

60:                                               ; preds = %57
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !115
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)), !dbg !117
  br label %63, !dbg !118

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %44
  br label %65, !dbg !119

65:                                               ; preds = %64, %22
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

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

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

!llvm.dbg.cu = !{!2, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43, !43}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "instate", scope: !2, file: !3, line: 23, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/098_testlimits.c_207_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "9129cc74560c326855188e2c5112869c")
!4 = !{!5, !0, !11, !14, !16, !18, !30, !32}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "filling", scope: !2, file: !3, line: 19, type: !7, isLocal: true, isDefinition: true)
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32768, elements: !9)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !{!10}
!10 = !DISubrange(count: 4096)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "curlen", scope: !2, file: !3, line: 20, type: !13, isLocal: true, isDefinition: true)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "maxlen", scope: !2, file: !3, line: 21, type: !13, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "currentTest", scope: !2, file: !3, line: 22, type: !13, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "hugeTests", scope: !2, file: !3, line: 14, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !28)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "HugeTest", file: !3, line: 12, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 9, size: 128, elements: !23)
!23 = !{!24, !27}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !22, file: !3, line: 10, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !22, file: !3, line: 11, baseType: !25, size: 64, offset: 64)
!28 = !{!29}
!29 = !DISubrange(count: 2)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "rlen", scope: !2, file: !3, line: 24, type: !13, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "current", scope: !2, file: !3, line: 25, type: !25, isLocal: true, isDefinition: true)
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!36 = !{i32 7, !"Dwarf Version", i32 5}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 4}
!39 = !{i32 7, !"PIC Level", i32 2}
!40 = !{i32 7, !"PIE Level", i32 2}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"Ubuntu clang version 14.0.6"}
!44 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 27, type: !45, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !47)
!45 = !DISubroutineType(types: !46)
!46 = !{!13}
!47 = !{}
!48 = !DILocalVariable(name: "len", scope: !44, file: !3, line: 28, type: !13)
!49 = !DILocation(line: 28, column: 9, scope: !44)
!50 = !DILocalVariable(name: "buffer", scope: !44, file: !3, line: 29, type: !51)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 65536, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 8192)
!54 = !DILocation(line: 29, column: 10, scope: !44)
!55 = !DILocation(line: 31, column: 24, scope: !44)
!56 = !DILocation(line: 31, column: 5, scope: !44)
!57 = !DILocation(line: 32, column: 5, scope: !44)
!58 = !DILocation(line: 33, column: 5, scope: !44)
!59 = !DILocation(line: 34, column: 5, scope: !44)
!60 = !DILocation(line: 35, column: 5, scope: !44)
!61 = !DILocation(line: 37, column: 17, scope: !44)
!62 = !DILocation(line: 37, column: 21, scope: !44)
!63 = !DILocation(line: 37, column: 5, scope: !44)
!64 = !DILocation(line: 38, column: 17, scope: !44)
!65 = !DILocation(line: 38, column: 24, scope: !44)
!66 = !DILocation(line: 38, column: 5, scope: !44)
!67 = !DILocation(line: 39, column: 17, scope: !44)
!68 = !DILocation(line: 39, column: 24, scope: !44)
!69 = !DILocation(line: 39, column: 5, scope: !44)
!70 = !DILocation(line: 40, column: 17, scope: !44)
!71 = !DILocation(line: 40, column: 29, scope: !44)
!72 = !DILocation(line: 40, column: 34, scope: !44)
!73 = !DILocation(line: 40, column: 37, scope: !44)
!74 = !DILocation(line: 40, column: 49, scope: !44)
!75 = !DILocation(line: 0, scope: !44)
!76 = !DILocation(line: 40, column: 5, scope: !44)
!77 = !DILocation(line: 42, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !44, file: !3, line: 42, column: 9)
!79 = !DILocation(line: 42, column: 17, scope: !78)
!80 = !DILocation(line: 42, column: 9, scope: !44)
!81 = !DILocation(line: 43, column: 13, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !3, line: 43, column: 13)
!83 = distinct !DILexicalBlock(scope: !78, file: !3, line: 42, column: 23)
!84 = !DILocation(line: 43, column: 17, scope: !82)
!85 = !DILocation(line: 43, column: 13, scope: !83)
!86 = !DILocation(line: 43, column: 30, scope: !82)
!87 = !DILocation(line: 43, column: 26, scope: !82)
!88 = !DILocation(line: 44, column: 9, scope: !83)
!89 = !DILocation(line: 45, column: 9, scope: !83)
!90 = !DILocation(line: 45, column: 37, scope: !83)
!91 = !DILocation(line: 46, column: 19, scope: !83)
!92 = !DILocation(line: 46, column: 16, scope: !83)
!93 = !DILocation(line: 47, column: 13, scope: !94)
!94 = distinct !DILexicalBlock(scope: !83, file: !3, line: 47, column: 13)
!95 = !DILocation(line: 47, column: 23, scope: !94)
!96 = !DILocation(line: 47, column: 20, scope: !94)
!97 = !DILocation(line: 47, column: 13, scope: !83)
!98 = !DILocation(line: 48, column: 37, scope: !99)
!99 = distinct !DILexicalBlock(scope: !94, file: !3, line: 47, column: 31)
!100 = !DILocation(line: 48, column: 27, scope: !99)
!101 = !DILocation(line: 48, column: 50, scope: !99)
!102 = !DILocation(line: 48, column: 20, scope: !99)
!103 = !DILocation(line: 48, column: 18, scope: !99)
!104 = !DILocation(line: 49, column: 33, scope: !99)
!105 = !DILocation(line: 49, column: 23, scope: !99)
!106 = !DILocation(line: 49, column: 46, scope: !99)
!107 = !DILocation(line: 49, column: 21, scope: !99)
!108 = !DILocation(line: 50, column: 21, scope: !99)
!109 = !DILocation(line: 51, column: 9, scope: !99)
!110 = !DILocation(line: 52, column: 17, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !3, line: 52, column: 17)
!112 = distinct !DILexicalBlock(scope: !94, file: !3, line: 51, column: 16)
!113 = !DILocation(line: 52, column: 24, scope: !111)
!114 = !DILocation(line: 52, column: 17, scope: !112)
!115 = !DILocation(line: 53, column: 25, scope: !116)
!116 = distinct !DILexicalBlock(scope: !111, file: !3, line: 52, column: 29)
!117 = !DILocation(line: 53, column: 17, scope: !116)
!118 = !DILocation(line: 54, column: 13, scope: !116)
!119 = !DILocation(line: 56, column: 5, scope: !83)
!120 = !DILocation(line: 58, column: 5, scope: !44)
!121 = distinct !DISubprogram(name: "memcpy", scope: !122, file: !122, line: 12, type: !123, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !47)
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
!141 = !DILocalVariable(name: "src", scope: !121, file: !122, line: 14, type: !25)
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
