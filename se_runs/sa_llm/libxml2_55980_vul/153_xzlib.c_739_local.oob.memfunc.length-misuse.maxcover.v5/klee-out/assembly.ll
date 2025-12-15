; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/153_xzlib.c_739_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/153_xzlib.c_739_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xz_state = type { i8*, i32, i32 }
%struct.z_stream = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"strm\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"(n <= len) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/153_xzlib.c_739_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [76 x i8] c"void target_function(unsigned char *, unsigned int, xz_state *, z_stream *)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xz_state*, align 8
  %5 = alloca %struct.z_stream*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !19, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i8** %3, metadata !22, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata %struct.xz_state** %4, metadata !26, metadata !DIExpression()), !dbg !34
  %6 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !35
  %7 = bitcast i8* %6 to %struct.xz_state*, !dbg !35
  store %struct.xz_state* %7, %struct.xz_state** %4, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata %struct.z_stream** %5, metadata !36, metadata !DIExpression()), !dbg !42
  %8 = call noalias i8* @malloc(i64 noundef 4) #7, !dbg !43
  %9 = bitcast i8* %8 to %struct.z_stream*, !dbg !43
  store %struct.z_stream* %9, %struct.z_stream** %5, align 8, !dbg !42
  %10 = bitcast i32* %2 to i8*, !dbg !44
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !45
  %11 = bitcast i8** %3 to i8*, !dbg !46
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !47
  %12 = load %struct.xz_state*, %struct.xz_state** %4, align 8, !dbg !48
  %13 = bitcast %struct.xz_state* %12 to i8*, !dbg !48
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)), !dbg !49
  %14 = load %struct.z_stream*, %struct.z_stream** %5, align 8, !dbg !50
  %15 = bitcast %struct.z_stream* %14 to i8*, !dbg !50
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !51
  %16 = load %struct.xz_state*, %struct.xz_state** %4, align 8, !dbg !52
  %17 = icmp ne %struct.xz_state* %16, null, !dbg !53
  %18 = zext i1 %17 to i32, !dbg !53
  %19 = sext i32 %18 to i64, !dbg !52
  call void @klee_assume(i64 noundef %19), !dbg !54
  %20 = load %struct.z_stream*, %struct.z_stream** %5, align 8, !dbg !55
  %21 = icmp ne %struct.z_stream* %20, null, !dbg !56
  %22 = zext i1 %21 to i32, !dbg !56
  %23 = sext i32 %22 to i64, !dbg !55
  call void @klee_assume(i64 noundef %23), !dbg !57
  %24 = load i8*, i8** %3, align 8, !dbg !58
  %25 = icmp ne i8* %24, null, !dbg !59
  %26 = zext i1 %25 to i32, !dbg !59
  %27 = sext i32 %26 to i64, !dbg !58
  call void @klee_assume(i64 noundef %27), !dbg !60
  %28 = load %struct.xz_state*, %struct.xz_state** %4, align 8, !dbg !61
  %29 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %28, i32 0, i32 0, !dbg !62
  %30 = load i8*, i8** %29, align 8, !dbg !62
  %31 = icmp ne i8* %30, null, !dbg !63
  %32 = zext i1 %31 to i32, !dbg !63
  %33 = sext i32 %32 to i64, !dbg !61
  call void @klee_assume(i64 noundef %33), !dbg !64
  %34 = load %struct.xz_state*, %struct.xz_state** %4, align 8, !dbg !65
  %35 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %34, i32 0, i32 1, !dbg !66
  %36 = load i32, i32* %35, align 8, !dbg !66
  %37 = icmp ugt i32 %36, 0, !dbg !67
  %38 = zext i1 %37 to i32, !dbg !67
  %39 = sext i32 %38 to i64, !dbg !65
  call void @klee_assume(i64 noundef %39), !dbg !68
  %40 = load i8*, i8** %3, align 8, !dbg !69
  %41 = load i32, i32* %2, align 4, !dbg !70
  %42 = load %struct.xz_state*, %struct.xz_state** %4, align 8, !dbg !71
  %43 = load %struct.z_stream*, %struct.z_stream** %5, align 8, !dbg !72
  call void @target_function(i8* noundef %40, i32 noundef %41, %struct.xz_state* noundef %42, %struct.z_stream* noundef %43), !dbg !73
  %44 = load %struct.xz_state*, %struct.xz_state** %4, align 8, !dbg !74
  %45 = bitcast %struct.xz_state* %44 to i8*, !dbg !74
  call void @free(i8* noundef %45) #7, !dbg !75
  %46 = load %struct.z_stream*, %struct.z_stream** %5, align 8, !dbg !76
  %47 = bitcast %struct.z_stream* %46 to i8*, !dbg !76
  call void @free(i8* noundef %47) #7, !dbg !77
  ret i32 0, !dbg !78
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @target_function(i8* noundef %0, i32 noundef %1, %struct.xz_state* noundef %2, %struct.z_stream* noundef %3) #0 !dbg !79 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xz_state*, align 8
  %8 = alloca %struct.z_stream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !82, metadata !DIExpression()), !dbg !83
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !84, metadata !DIExpression()), !dbg !85
  store %struct.xz_state* %2, %struct.xz_state** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.xz_state** %7, metadata !86, metadata !DIExpression()), !dbg !87
  store %struct.z_stream* %3, %struct.z_stream** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream** %8, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata i32* %9, metadata !90, metadata !DIExpression()), !dbg !91
  store i32 0, i32* %9, align 4, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %10, metadata !92, metadata !DIExpression()), !dbg !93
  br label %11, !dbg !94

11:                                               ; preds = %4
  %12 = load %struct.xz_state*, %struct.xz_state** %7, align 8, !dbg !95
  %13 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %12, i32 0, i32 1, !dbg !98
  %14 = load i32, i32* %13, align 8, !dbg !98
  %15 = icmp ne i32 %14, 0, !dbg !95
  br i1 %15, label %16, label %57, !dbg !99

16:                                               ; preds = %11
  %17 = load %struct.xz_state*, %struct.xz_state** %7, align 8, !dbg !100
  %18 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %17, i32 0, i32 1, !dbg !102
  %19 = load i32, i32* %18, align 8, !dbg !102
  %20 = load i32, i32* %6, align 4, !dbg !103
  %21 = icmp ugt i32 %19, %20, !dbg !104
  br i1 %21, label %22, label %24, !dbg !100

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4, !dbg !105
  br label %28, !dbg !100

24:                                               ; preds = %16
  %25 = load %struct.xz_state*, %struct.xz_state** %7, align 8, !dbg !106
  %26 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %25, i32 0, i32 1, !dbg !107
  %27 = load i32, i32* %26, align 8, !dbg !107
  br label %28, !dbg !100

28:                                               ; preds = %24, %22
  %29 = phi i32 [ %23, %22 ], [ %27, %24 ], !dbg !100
  store i32 %29, i32* %10, align 4, !dbg !108
  %30 = load i8*, i8** %5, align 8, !dbg !109
  %31 = load %struct.xz_state*, %struct.xz_state** %7, align 8, !dbg !110
  %32 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %31, i32 0, i32 0, !dbg !111
  %33 = load i8*, i8** %32, align 8, !dbg !111
  %34 = load i32, i32* %10, align 4, !dbg !112
  %35 = zext i32 %34 to i64, !dbg !112
  %36 = call i8* @memcpy(i8* %30, i8* %33, i64 %35), !dbg !113
  %37 = load i32, i32* %10, align 4, !dbg !114
  %38 = load i32, i32* %6, align 4, !dbg !114
  %39 = icmp ule i32 %37, %38, !dbg !114
  br i1 %39, label %40, label %42, !dbg !114

40:                                               ; preds = %28
  br i1 true, label %41, label %42, !dbg !114

41:                                               ; preds = %40
  br label %44, !dbg !114

42:                                               ; preds = %40, %28
  %43 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !114
  br label %44, !dbg !114

44:                                               ; preds = %42, %41
  %45 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !115
  %46 = load i32, i32* %10, align 4, !dbg !116
  %47 = load %struct.xz_state*, %struct.xz_state** %7, align 8, !dbg !117
  %48 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %47, i32 0, i32 0, !dbg !118
  %49 = load i8*, i8** %48, align 8, !dbg !119
  %50 = zext i32 %46 to i64, !dbg !119
  %51 = getelementptr inbounds i8, i8* %49, i64 %50, !dbg !119
  store i8* %51, i8** %48, align 8, !dbg !119
  %52 = load i32, i32* %10, align 4, !dbg !120
  %53 = load %struct.xz_state*, %struct.xz_state** %7, align 8, !dbg !121
  %54 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %53, i32 0, i32 1, !dbg !122
  %55 = load i32, i32* %54, align 8, !dbg !123
  %56 = sub i32 %55, %52, !dbg !123
  store i32 %56, i32* %54, align 8, !dbg !123
  br label %69, !dbg !124

57:                                               ; preds = %11
  %58 = load %struct.xz_state*, %struct.xz_state** %7, align 8, !dbg !125
  %59 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %58, i32 0, i32 2, !dbg !127
  %60 = load i32, i32* %59, align 4, !dbg !127
  %61 = icmp ne i32 %60, 0, !dbg !125
  br i1 %61, label %62, label %68, !dbg !128

62:                                               ; preds = %57
  %63 = load %struct.z_stream*, %struct.z_stream** %8, align 8, !dbg !129
  %64 = getelementptr inbounds %struct.z_stream, %struct.z_stream* %63, i32 0, i32 0, !dbg !130
  %65 = load i32, i32* %64, align 4, !dbg !130
  %66 = icmp eq i32 %65, 0, !dbg !131
  br i1 %66, label %67, label %68, !dbg !132

67:                                               ; preds = %62
  br label %70, !dbg !133

68:                                               ; preds = %62, %57
  br label %69

69:                                               ; preds = %68, %44
  br label %70, !dbg !134

70:                                               ; preds = %69, %67
  ret void, !dbg !135
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !136 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !145, metadata !DIExpression()), !dbg !146
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !147, metadata !DIExpression()), !dbg !148
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata i8** %7, metadata !151, metadata !DIExpression()), !dbg !154
  %9 = load i8*, i8** %4, align 8, !dbg !155
  store i8* %9, i8** %7, align 8, !dbg !154
  call void @llvm.dbg.declare(metadata i8** %8, metadata !156, metadata !DIExpression()), !dbg !159
  %10 = load i8*, i8** %5, align 8, !dbg !160
  store i8* %10, i8** %8, align 8, !dbg !159
  br label %11, !dbg !161

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !162
  %13 = add i64 %12, -1, !dbg !162
  store i64 %13, i64* %6, align 8, !dbg !162
  %14 = icmp ugt i64 %12, 0, !dbg !163
  br i1 %14, label %15, label %21, !dbg !161

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !164
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !164
  store i8* %17, i8** %8, align 8, !dbg !164
  %18 = load i8, i8* %16, align 1, !dbg !165
  %19 = load i8*, i8** %7, align 8, !dbg !166
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !166
  store i8* %20, i8** %7, align 8, !dbg !166
  store i8 %18, i8* %19, align 1, !dbg !167
  br label %11, !dbg !161, !llvm.loop !168

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !170
  ret i8* %22, !dbg !171
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/153_xzlib.c_739_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "12197e7c56e6058d462792f5f7707787")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 49, type: !15, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{}
!19 = !DILocalVariable(name: "len", scope: !14, file: !1, line: 51, type: !20)
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !DILocation(line: 51, column: 18, scope: !14)
!22 = !DILocalVariable(name: "buf", scope: !14, file: !1, line: 52, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DILocation(line: 52, column: 20, scope: !14)
!26 = !DILocalVariable(name: "state", scope: !14, file: !1, line: 53, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xz_state", file: !1, line: 14, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 10, size: 128, elements: !30)
!30 = !{!31, !32, !33}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !29, file: !1, line: 11, baseType: !23, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "have", scope: !29, file: !1, line: 12, baseType: !20, size: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !29, file: !1, line: 13, baseType: !17, size: 32, offset: 96)
!34 = !DILocation(line: 53, column: 15, scope: !14)
!35 = !DILocation(line: 53, column: 23, scope: !14)
!36 = !DILocalVariable(name: "strm", scope: !14, file: !1, line: 54, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !1, line: 18, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 16, size: 32, elements: !40)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !39, file: !1, line: 17, baseType: !20, size: 32)
!42 = !DILocation(line: 54, column: 15, scope: !14)
!43 = !DILocation(line: 54, column: 22, scope: !14)
!44 = !DILocation(line: 57, column: 24, scope: !14)
!45 = !DILocation(line: 57, column: 5, scope: !14)
!46 = !DILocation(line: 58, column: 24, scope: !14)
!47 = !DILocation(line: 58, column: 5, scope: !14)
!48 = !DILocation(line: 59, column: 24, scope: !14)
!49 = !DILocation(line: 59, column: 5, scope: !14)
!50 = !DILocation(line: 60, column: 24, scope: !14)
!51 = !DILocation(line: 60, column: 5, scope: !14)
!52 = !DILocation(line: 63, column: 17, scope: !14)
!53 = !DILocation(line: 63, column: 23, scope: !14)
!54 = !DILocation(line: 63, column: 5, scope: !14)
!55 = !DILocation(line: 64, column: 17, scope: !14)
!56 = !DILocation(line: 64, column: 22, scope: !14)
!57 = !DILocation(line: 64, column: 5, scope: !14)
!58 = !DILocation(line: 65, column: 17, scope: !14)
!59 = !DILocation(line: 65, column: 21, scope: !14)
!60 = !DILocation(line: 65, column: 5, scope: !14)
!61 = !DILocation(line: 66, column: 17, scope: !14)
!62 = !DILocation(line: 66, column: 24, scope: !14)
!63 = !DILocation(line: 66, column: 29, scope: !14)
!64 = !DILocation(line: 66, column: 5, scope: !14)
!65 = !DILocation(line: 69, column: 17, scope: !14)
!66 = !DILocation(line: 69, column: 24, scope: !14)
!67 = !DILocation(line: 69, column: 29, scope: !14)
!68 = !DILocation(line: 69, column: 5, scope: !14)
!69 = !DILocation(line: 72, column: 21, scope: !14)
!70 = !DILocation(line: 72, column: 26, scope: !14)
!71 = !DILocation(line: 72, column: 31, scope: !14)
!72 = !DILocation(line: 72, column: 38, scope: !14)
!73 = !DILocation(line: 72, column: 5, scope: !14)
!74 = !DILocation(line: 75, column: 10, scope: !14)
!75 = !DILocation(line: 75, column: 5, scope: !14)
!76 = !DILocation(line: 76, column: 10, scope: !14)
!77 = !DILocation(line: 76, column: 5, scope: !14)
!78 = !DILocation(line: 78, column: 5, scope: !14)
!79 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 21, type: !80, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !18)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !23, !20, !27, !37}
!82 = !DILocalVariable(name: "buf", arg: 1, scope: !79, file: !1, line: 21, type: !23)
!83 = !DILocation(line: 21, column: 44, scope: !79)
!84 = !DILocalVariable(name: "len", arg: 2, scope: !79, file: !1, line: 21, type: !20)
!85 = !DILocation(line: 21, column: 62, scope: !79)
!86 = !DILocalVariable(name: "state", arg: 3, scope: !79, file: !1, line: 21, type: !27)
!87 = !DILocation(line: 21, column: 77, scope: !79)
!88 = !DILocalVariable(name: "strm", arg: 4, scope: !79, file: !1, line: 21, type: !37)
!89 = !DILocation(line: 21, column: 94, scope: !79)
!90 = !DILocalVariable(name: "got", scope: !79, file: !1, line: 22, type: !20)
!91 = !DILocation(line: 22, column: 18, scope: !79)
!92 = !DILocalVariable(name: "n", scope: !79, file: !1, line: 23, type: !20)
!93 = !DILocation(line: 23, column: 18, scope: !79)
!94 = !DILocation(line: 25, column: 5, scope: !79)
!95 = !DILocation(line: 27, column: 13, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 27, column: 13)
!97 = distinct !DILexicalBlock(scope: !79, file: !1, line: 25, column: 8)
!98 = !DILocation(line: 27, column: 20, scope: !96)
!99 = !DILocation(line: 27, column: 13, scope: !97)
!100 = !DILocation(line: 28, column: 17, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !1, line: 27, column: 26)
!102 = !DILocation(line: 28, column: 24, scope: !101)
!103 = !DILocation(line: 28, column: 31, scope: !101)
!104 = !DILocation(line: 28, column: 29, scope: !101)
!105 = !DILocation(line: 28, column: 37, scope: !101)
!106 = !DILocation(line: 28, column: 43, scope: !101)
!107 = !DILocation(line: 28, column: 50, scope: !101)
!108 = !DILocation(line: 28, column: 15, scope: !101)
!109 = !DILocation(line: 30, column: 20, scope: !101)
!110 = !DILocation(line: 30, column: 25, scope: !101)
!111 = !DILocation(line: 30, column: 32, scope: !101)
!112 = !DILocation(line: 30, column: 38, scope: !101)
!113 = !DILocation(line: 30, column: 13, scope: !101)
!114 = !DILocation(line: 33, column: 13, scope: !101)
!115 = !DILocation(line: 36, column: 13, scope: !101)
!116 = !DILocation(line: 38, column: 28, scope: !101)
!117 = !DILocation(line: 38, column: 13, scope: !101)
!118 = !DILocation(line: 38, column: 20, scope: !101)
!119 = !DILocation(line: 38, column: 25, scope: !101)
!120 = !DILocation(line: 39, column: 28, scope: !101)
!121 = !DILocation(line: 39, column: 13, scope: !101)
!122 = !DILocation(line: 39, column: 20, scope: !101)
!123 = !DILocation(line: 39, column: 25, scope: !101)
!124 = !DILocation(line: 40, column: 9, scope: !101)
!125 = !DILocation(line: 43, column: 18, scope: !126)
!126 = distinct !DILexicalBlock(scope: !96, file: !1, line: 43, column: 18)
!127 = !DILocation(line: 43, column: 25, scope: !126)
!128 = !DILocation(line: 43, column: 29, scope: !126)
!129 = !DILocation(line: 43, column: 32, scope: !126)
!130 = !DILocation(line: 43, column: 38, scope: !126)
!131 = !DILocation(line: 43, column: 47, scope: !126)
!132 = !DILocation(line: 43, column: 18, scope: !96)
!133 = !DILocation(line: 44, column: 13, scope: !126)
!134 = !DILocation(line: 46, column: 5, scope: !97)
!135 = !DILocation(line: 47, column: 1, scope: !79)
!136 = distinct !DISubprogram(name: "memcpy", scope: !137, file: !137, line: 12, type: !138, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !18)
!137 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!138 = !DISubroutineType(types: !139)
!139 = !{!3, !3, !140, !142}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !143, line: 46, baseType: !144)
!143 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!144 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!145 = !DILocalVariable(name: "destaddr", arg: 1, scope: !136, file: !137, line: 12, type: !3)
!146 = !DILocation(line: 12, column: 20, scope: !136)
!147 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !136, file: !137, line: 12, type: !140)
!148 = !DILocation(line: 12, column: 42, scope: !136)
!149 = !DILocalVariable(name: "len", arg: 3, scope: !136, file: !137, line: 12, type: !142)
!150 = !DILocation(line: 12, column: 58, scope: !136)
!151 = !DILocalVariable(name: "dest", scope: !136, file: !137, line: 13, type: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!154 = !DILocation(line: 13, column: 9, scope: !136)
!155 = !DILocation(line: 13, column: 16, scope: !136)
!156 = !DILocalVariable(name: "src", scope: !136, file: !137, line: 14, type: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!159 = !DILocation(line: 14, column: 15, scope: !136)
!160 = !DILocation(line: 14, column: 21, scope: !136)
!161 = !DILocation(line: 16, column: 3, scope: !136)
!162 = !DILocation(line: 16, column: 13, scope: !136)
!163 = !DILocation(line: 16, column: 16, scope: !136)
!164 = !DILocation(line: 17, column: 19, scope: !136)
!165 = !DILocation(line: 17, column: 15, scope: !136)
!166 = !DILocation(line: 17, column: 10, scope: !136)
!167 = !DILocation(line: 17, column: 13, scope: !136)
!168 = distinct !{!168, !161, !164, !169}
!169 = !{!"llvm.loop.mustprogress"}
!170 = !DILocation(line: 18, column: 10, scope: !136)
!171 = !DILocation(line: 18, column: 3, scope: !136)
