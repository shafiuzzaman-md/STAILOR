; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/161_testThreads.c_115_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/161_testThreads.c_115_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.thread_param_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [13 x i8] c"test_catalog\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"num_threads\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [87 x i8] c"(sizeof(*tid) * num_threads <= sizeof(pthread_t) * num_threads) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_55980_vul/161_testThreads.c_115_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !24 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca %struct.thread_param_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !28, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i64** %3, metadata !31, metadata !DIExpression()), !dbg !32
  store i64* null, i64** %3, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata %struct.thread_param_t** %4, metadata !33, metadata !DIExpression()), !dbg !34
  store %struct.thread_param_t* null, %struct.thread_param_t** %4, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata i8** %5, metadata !35, metadata !DIExpression()), !dbg !39
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %5, align 8, !dbg !39
  %9 = bitcast i32* %2 to i8*, !dbg !40
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)), !dbg !41
  %10 = load i32, i32* %2, align 4, !dbg !42
  %11 = icmp ugt i32 %10, 0, !dbg !43
  %12 = zext i1 %11 to i32, !dbg !43
  %13 = sext i32 %12 to i64, !dbg !42
  call void @klee_assume(i64 noundef %13), !dbg !44
  %14 = load i32, i32* %2, align 4, !dbg !45
  %15 = icmp ule i32 %14, 100, !dbg !46
  %16 = zext i1 %15 to i32, !dbg !46
  %17 = sext i32 %16 to i64, !dbg !45
  call void @klee_assume(i64 noundef %17), !dbg !47
  %18 = load i32, i32* %2, align 4, !dbg !48
  %19 = zext i32 %18 to i64, !dbg !48
  %20 = mul i64 8, %19, !dbg !49
  %21 = call noalias i8* @malloc(i64 noundef %20) #7, !dbg !50
  %22 = bitcast i8* %21 to i64*, !dbg !51
  store i64* %22, i64** %3, align 8, !dbg !52
  %23 = load i64*, i64** %3, align 8, !dbg !53
  %24 = icmp ne i64* %23, null, !dbg !53
  br i1 %24, label %26, label %25, !dbg !55

25:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !56
  br label %112, !dbg !56

26:                                               ; preds = %0
  %27 = load i32, i32* %2, align 4, !dbg !57
  %28 = zext i32 %27 to i64, !dbg !57
  %29 = mul i64 4, %28, !dbg !58
  %30 = call noalias i8* @malloc(i64 noundef %29) #7, !dbg !59
  %31 = bitcast i8* %30 to %struct.thread_param_t*, !dbg !60
  store %struct.thread_param_t* %31, %struct.thread_param_t** %4, align 8, !dbg !61
  %32 = load %struct.thread_param_t*, %struct.thread_param_t** %4, align 8, !dbg !62
  %33 = icmp ne %struct.thread_param_t* %32, null, !dbg !62
  br i1 %33, label %37, label %34, !dbg !64

34:                                               ; preds = %26
  %35 = load i64*, i64** %3, align 8, !dbg !65
  %36 = bitcast i64* %35 to i8*, !dbg !65
  call void @free(i8* noundef %36) #7, !dbg !67
  store i32 1, i32* %1, align 4, !dbg !68
  br label %112, !dbg !68

37:                                               ; preds = %26
  call void @xmlInitParser(), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %6, metadata !70, metadata !DIExpression()), !dbg !71
  store i32 0, i32* %6, align 4, !dbg !72
  br label %38, !dbg !74

38:                                               ; preds = %104, %37
  %39 = load i32, i32* %6, align 4, !dbg !75
  %40 = icmp ult i32 %39, 1, !dbg !77
  br i1 %40, label %41, label %107, !dbg !78

41:                                               ; preds = %38
  %42 = load i8*, i8** %5, align 8, !dbg !79
  call void @xmlLoadCatalog(i8* noundef %42), !dbg !81
  %43 = load i32, i32* %2, align 4, !dbg !82
  %44 = zext i32 %43 to i64, !dbg !82
  %45 = mul i64 8, %44, !dbg !82
  %46 = load i32, i32* %2, align 4, !dbg !82
  %47 = zext i32 %46 to i64, !dbg !82
  %48 = mul i64 8, %47, !dbg !82
  %49 = icmp ule i64 %45, %48, !dbg !82
  br i1 %49, label %50, label %52, !dbg !82

50:                                               ; preds = %41
  br i1 true, label %51, label %52, !dbg !82

51:                                               ; preds = %50
  br label %54, !dbg !82

52:                                               ; preds = %50, %41
  %53 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !82
  br label %54, !dbg !82

54:                                               ; preds = %52, %51
  %55 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !83
  %56 = load i64*, i64** %3, align 8, !dbg !84
  %57 = bitcast i64* %56 to i8*, !dbg !85
  %58 = load i32, i32* %2, align 4, !dbg !86
  %59 = zext i32 %58 to i64, !dbg !86
  %60 = mul i64 8, %59, !dbg !87
  %61 = call i8* @memset(i8* %57, i32 255, i64 %60), !dbg !85
  call void @llvm.dbg.declare(metadata i32* %7, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata i32* %8, metadata !90, metadata !DIExpression()), !dbg !91
  store i32 0, i32* %7, align 4, !dbg !92
  br label %62, !dbg !94

62:                                               ; preds = %85, %54
  %63 = load i32, i32* %7, align 4, !dbg !95
  %64 = load i32, i32* %2, align 4, !dbg !97
  %65 = icmp ult i32 %63, %64, !dbg !98
  br i1 %65, label %66, label %88, !dbg !99

66:                                               ; preds = %62
  %67 = load i64*, i64** %3, align 8, !dbg !100
  %68 = load i32, i32* %7, align 4, !dbg !102
  %69 = zext i32 %68 to i64, !dbg !100
  %70 = getelementptr inbounds i64, i64* %67, i64 %69, !dbg !100
  %71 = load %struct.thread_param_t*, %struct.thread_param_t** %4, align 8, !dbg !103
  %72 = load i32, i32* %7, align 4, !dbg !104
  %73 = zext i32 %72 to i64, !dbg !103
  %74 = getelementptr inbounds %struct.thread_param_t, %struct.thread_param_t* %71, i64 %73, !dbg !103
  %75 = bitcast %struct.thread_param_t* %74 to i8*, !dbg !105
  %76 = call i32 @pthread_create(i64* noundef %70, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef @thread_specific_data, i8* noundef %75) #7, !dbg !106
  store i32 %76, i32* %8, align 4, !dbg !107
  %77 = load i32, i32* %8, align 4, !dbg !108
  %78 = icmp ne i32 %77, 0, !dbg !110
  br i1 %78, label %79, label %84, !dbg !111

79:                                               ; preds = %66
  %80 = load i64*, i64** %3, align 8, !dbg !112
  %81 = bitcast i64* %80 to i8*, !dbg !112
  call void @free(i8* noundef %81) #7, !dbg !114
  %82 = load %struct.thread_param_t*, %struct.thread_param_t** %4, align 8, !dbg !115
  %83 = bitcast %struct.thread_param_t* %82 to i8*, !dbg !115
  call void @free(i8* noundef %83) #7, !dbg !116
  store i32 1, i32* %1, align 4, !dbg !117
  br label %112, !dbg !117

84:                                               ; preds = %66
  br label %85, !dbg !118

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4, !dbg !119
  %87 = add i32 %86, 1, !dbg !119
  store i32 %87, i32* %7, align 4, !dbg !119
  br label %62, !dbg !120, !llvm.loop !121

88:                                               ; preds = %62
  store i32 0, i32* %7, align 4, !dbg !124
  br label %89, !dbg !126

89:                                               ; preds = %100, %88
  %90 = load i32, i32* %7, align 4, !dbg !127
  %91 = load i32, i32* %2, align 4, !dbg !129
  %92 = icmp ult i32 %90, %91, !dbg !130
  br i1 %92, label %93, label %103, !dbg !131

93:                                               ; preds = %89
  %94 = load i64*, i64** %3, align 8, !dbg !132
  %95 = load i32, i32* %7, align 4, !dbg !134
  %96 = zext i32 %95 to i64, !dbg !132
  %97 = getelementptr inbounds i64, i64* %94, i64 %96, !dbg !132
  %98 = load i64, i64* %97, align 8, !dbg !132
  %99 = call i32 @pthread_join(i64 noundef %98, i8** noundef null), !dbg !135
  br label %100, !dbg !136

100:                                              ; preds = %93
  %101 = load i32, i32* %7, align 4, !dbg !137
  %102 = add i32 %101, 1, !dbg !137
  store i32 %102, i32* %7, align 4, !dbg !137
  br label %89, !dbg !138, !llvm.loop !139

103:                                              ; preds = %89
  br label %104, !dbg !141

104:                                              ; preds = %103
  %105 = load i32, i32* %6, align 4, !dbg !142
  %106 = add i32 %105, 1, !dbg !142
  store i32 %106, i32* %6, align 4, !dbg !142
  br label %38, !dbg !143, !llvm.loop !144

107:                                              ; preds = %38
  %108 = load i64*, i64** %3, align 8, !dbg !146
  %109 = bitcast i64* %108 to i8*, !dbg !146
  call void @free(i8* noundef %109) #7, !dbg !147
  %110 = load %struct.thread_param_t*, %struct.thread_param_t** %4, align 8, !dbg !148
  %111 = bitcast %struct.thread_param_t* %110 to i8*, !dbg !148
  call void @free(i8* noundef %111) #7, !dbg !149
  store i32 0, i32* %1, align 4, !dbg !150
  br label %112, !dbg !150

112:                                              ; preds = %107, %79, %34, %25
  %113 = load i32, i32* %1, align 4, !dbg !151
  ret i32 %113, !dbg !151
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlInitParser() #0 !dbg !152 {
  ret void, !dbg !155
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlLoadCatalog(i8* noundef %0) #0 !dbg !156 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !159, metadata !DIExpression()), !dbg !160
  ret void, !dbg !161
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread_specific_data(i8* noundef %0) #0 !dbg !162 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !165, metadata !DIExpression()), !dbg !166
  ret i8* null, !dbg !167
}

declare i32 @pthread_join(i64 noundef, i8** noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !168 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !174, metadata !DIExpression()), !dbg !175
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !176, metadata !DIExpression()), !dbg !177
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i8** %7, metadata !180, metadata !DIExpression()), !dbg !182
  %8 = load i8*, i8** %4, align 8, !dbg !183
  store i8* %8, i8** %7, align 8, !dbg !182
  br label %9, !dbg !184

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !185
  %11 = add i64 %10, -1, !dbg !185
  store i64 %11, i64* %6, align 8, !dbg !185
  %12 = icmp ugt i64 %10, 0, !dbg !186
  br i1 %12, label %13, label %18, !dbg !184

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !187
  %15 = trunc i32 %14 to i8, !dbg !187
  %16 = load i8*, i8** %7, align 8, !dbg !188
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !188
  store i8* %17, i8** %7, align 8, !dbg !188
  store i8 %15, i8* %16, align 1, !dbg !189
  br label %9, !dbg !184, !llvm.loop !190

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !191
  ret i8* %19, !dbg !192
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23, !23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/161_testThreads.c_115_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "2f58691f69428f531ab3fd387bb0bcff")
!2 = !{!3, !7, !13}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !5, line: 27, baseType: !6)
!5 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "8a5acdbeec491eca11cf81cb1ef77ea7")
!6 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_param_t", file: !1, line: 14, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 12, size: 32, elements: !10)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !9, file: !1, line: 13, baseType: !12, size: 32)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"Ubuntu clang version 14.0.6"}
!24 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 29, type: !25, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{!12}
!27 = !{}
!28 = !DILocalVariable(name: "num_threads", scope: !24, file: !1, line: 30, type: !29)
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !DILocation(line: 30, column: 18, scope: !24)
!31 = !DILocalVariable(name: "tid", scope: !24, file: !1, line: 31, type: !3)
!32 = !DILocation(line: 31, column: 16, scope: !24)
!33 = !DILocalVariable(name: "threadParams", scope: !24, file: !1, line: 32, type: !7)
!34 = !DILocation(line: 32, column: 21, scope: !24)
!35 = !DILocalVariable(name: "catalog", scope: !24, file: !1, line: 33, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !DILocation(line: 33, column: 17, scope: !24)
!40 = !DILocation(line: 35, column: 24, scope: !24)
!41 = !DILocation(line: 35, column: 5, scope: !24)
!42 = !DILocation(line: 36, column: 17, scope: !24)
!43 = !DILocation(line: 36, column: 29, scope: !24)
!44 = !DILocation(line: 36, column: 5, scope: !24)
!45 = !DILocation(line: 37, column: 17, scope: !24)
!46 = !DILocation(line: 37, column: 29, scope: !24)
!47 = !DILocation(line: 37, column: 5, scope: !24)
!48 = !DILocation(line: 39, column: 51, scope: !24)
!49 = !DILocation(line: 39, column: 49, scope: !24)
!50 = !DILocation(line: 39, column: 24, scope: !24)
!51 = !DILocation(line: 39, column: 11, scope: !24)
!52 = !DILocation(line: 39, column: 9, scope: !24)
!53 = !DILocation(line: 40, column: 10, scope: !54)
!54 = distinct !DILexicalBlock(scope: !24, file: !1, line: 40, column: 9)
!55 = !DILocation(line: 40, column: 9, scope: !24)
!56 = !DILocation(line: 40, column: 15, scope: !54)
!57 = !DILocation(line: 42, column: 70, scope: !24)
!58 = !DILocation(line: 42, column: 68, scope: !24)
!59 = !DILocation(line: 42, column: 38, scope: !24)
!60 = !DILocation(line: 42, column: 20, scope: !24)
!61 = !DILocation(line: 42, column: 18, scope: !24)
!62 = !DILocation(line: 43, column: 10, scope: !63)
!63 = distinct !DILexicalBlock(scope: !24, file: !1, line: 43, column: 9)
!64 = !DILocation(line: 43, column: 9, scope: !24)
!65 = !DILocation(line: 44, column: 14, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !1, line: 43, column: 24)
!67 = !DILocation(line: 44, column: 9, scope: !66)
!68 = !DILocation(line: 45, column: 9, scope: !66)
!69 = !DILocation(line: 48, column: 5, scope: !24)
!70 = !DILocalVariable(name: "repeat", scope: !24, file: !1, line: 50, type: !29)
!71 = !DILocation(line: 50, column: 18, scope: !24)
!72 = !DILocation(line: 51, column: 17, scope: !73)
!73 = distinct !DILexicalBlock(scope: !24, file: !1, line: 51, column: 5)
!74 = !DILocation(line: 51, column: 10, scope: !73)
!75 = !DILocation(line: 51, column: 22, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !1, line: 51, column: 5)
!77 = !DILocation(line: 51, column: 29, scope: !76)
!78 = !DILocation(line: 51, column: 5, scope: !73)
!79 = !DILocation(line: 52, column: 24, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !1, line: 51, column: 60)
!81 = !DILocation(line: 52, column: 9, scope: !80)
!82 = !DILocation(line: 54, column: 9, scope: !80)
!83 = !DILocation(line: 55, column: 9, scope: !80)
!84 = !DILocation(line: 57, column: 16, scope: !80)
!85 = !DILocation(line: 57, column: 9, scope: !80)
!86 = !DILocation(line: 57, column: 42, scope: !80)
!87 = !DILocation(line: 57, column: 40, scope: !80)
!88 = !DILocalVariable(name: "i", scope: !80, file: !1, line: 59, type: !29)
!89 = !DILocation(line: 59, column: 22, scope: !80)
!90 = !DILocalVariable(name: "ret", scope: !80, file: !1, line: 60, type: !12)
!91 = !DILocation(line: 60, column: 13, scope: !80)
!92 = !DILocation(line: 61, column: 16, scope: !93)
!93 = distinct !DILexicalBlock(scope: !80, file: !1, line: 61, column: 9)
!94 = !DILocation(line: 61, column: 14, scope: !93)
!95 = !DILocation(line: 61, column: 21, scope: !96)
!96 = distinct !DILexicalBlock(scope: !93, file: !1, line: 61, column: 9)
!97 = !DILocation(line: 61, column: 25, scope: !96)
!98 = !DILocation(line: 61, column: 23, scope: !96)
!99 = !DILocation(line: 61, column: 9, scope: !93)
!100 = !DILocation(line: 62, column: 35, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !1, line: 61, column: 43)
!102 = !DILocation(line: 62, column: 39, scope: !101)
!103 = !DILocation(line: 63, column: 44, scope: !101)
!104 = !DILocation(line: 63, column: 57, scope: !101)
!105 = !DILocation(line: 63, column: 34, scope: !101)
!106 = !DILocation(line: 62, column: 19, scope: !101)
!107 = !DILocation(line: 62, column: 17, scope: !101)
!108 = !DILocation(line: 64, column: 17, scope: !109)
!109 = distinct !DILexicalBlock(scope: !101, file: !1, line: 64, column: 17)
!110 = !DILocation(line: 64, column: 21, scope: !109)
!111 = !DILocation(line: 64, column: 17, scope: !101)
!112 = !DILocation(line: 65, column: 22, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !1, line: 64, column: 27)
!114 = !DILocation(line: 65, column: 17, scope: !113)
!115 = !DILocation(line: 66, column: 22, scope: !113)
!116 = !DILocation(line: 66, column: 17, scope: !113)
!117 = !DILocation(line: 67, column: 17, scope: !113)
!118 = !DILocation(line: 69, column: 9, scope: !101)
!119 = !DILocation(line: 61, column: 39, scope: !96)
!120 = !DILocation(line: 61, column: 9, scope: !96)
!121 = distinct !{!121, !99, !122, !123}
!122 = !DILocation(line: 69, column: 9, scope: !93)
!123 = !{!"llvm.loop.mustprogress"}
!124 = !DILocation(line: 71, column: 16, scope: !125)
!125 = distinct !DILexicalBlock(scope: !80, file: !1, line: 71, column: 9)
!126 = !DILocation(line: 71, column: 14, scope: !125)
!127 = !DILocation(line: 71, column: 21, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !1, line: 71, column: 9)
!129 = !DILocation(line: 71, column: 25, scope: !128)
!130 = !DILocation(line: 71, column: 23, scope: !128)
!131 = !DILocation(line: 71, column: 9, scope: !125)
!132 = !DILocation(line: 72, column: 26, scope: !133)
!133 = distinct !DILexicalBlock(scope: !128, file: !1, line: 71, column: 43)
!134 = !DILocation(line: 72, column: 30, scope: !133)
!135 = !DILocation(line: 72, column: 13, scope: !133)
!136 = !DILocation(line: 73, column: 9, scope: !133)
!137 = !DILocation(line: 71, column: 39, scope: !128)
!138 = !DILocation(line: 71, column: 9, scope: !128)
!139 = distinct !{!139, !131, !140, !123}
!140 = !DILocation(line: 73, column: 9, scope: !125)
!141 = !DILocation(line: 74, column: 5, scope: !80)
!142 = !DILocation(line: 51, column: 56, scope: !76)
!143 = !DILocation(line: 51, column: 5, scope: !76)
!144 = distinct !{!144, !78, !145, !123}
!145 = !DILocation(line: 74, column: 5, scope: !73)
!146 = !DILocation(line: 76, column: 10, scope: !24)
!147 = !DILocation(line: 76, column: 5, scope: !24)
!148 = !DILocation(line: 77, column: 10, scope: !24)
!149 = !DILocation(line: 77, column: 5, scope: !24)
!150 = !DILocation(line: 78, column: 5, scope: !24)
!151 = !DILocation(line: 79, column: 1, scope: !24)
!152 = distinct !DISubprogram(name: "xmlInitParser", scope: !1, file: !1, line: 16, type: !153, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !27)
!153 = !DISubroutineType(types: !154)
!154 = !{null}
!155 = !DILocation(line: 18, column: 1, scope: !152)
!156 = distinct !DISubprogram(name: "xmlLoadCatalog", scope: !1, file: !1, line: 20, type: !157, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !27)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !36}
!159 = !DILocalVariable(name: "catalog", arg: 1, scope: !156, file: !1, line: 20, type: !36)
!160 = !DILocation(line: 20, column: 40, scope: !156)
!161 = !DILocation(line: 22, column: 1, scope: !156)
!162 = distinct !DISubprogram(name: "thread_specific_data", scope: !1, file: !1, line: 24, type: !163, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !27)
!163 = !DISubroutineType(types: !164)
!164 = !{!13, !13}
!165 = !DILocalVariable(name: "arg", arg: 1, scope: !162, file: !1, line: 24, type: !13)
!166 = !DILocation(line: 24, column: 41, scope: !162)
!167 = !DILocation(line: 26, column: 5, scope: !162)
!168 = distinct !DISubprogram(name: "memset", scope: !169, file: !169, line: 12, type: !170, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !27)
!169 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!170 = !DISubroutineType(types: !171)
!171 = !{!13, !13, !12, !172}
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !173, line: 46, baseType: !6)
!173 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!174 = !DILocalVariable(name: "dst", arg: 1, scope: !168, file: !169, line: 12, type: !13)
!175 = !DILocation(line: 12, column: 20, scope: !168)
!176 = !DILocalVariable(name: "s", arg: 2, scope: !168, file: !169, line: 12, type: !12)
!177 = !DILocation(line: 12, column: 29, scope: !168)
!178 = !DILocalVariable(name: "count", arg: 3, scope: !168, file: !169, line: 12, type: !172)
!179 = !DILocation(line: 12, column: 39, scope: !168)
!180 = !DILocalVariable(name: "a", scope: !168, file: !169, line: 13, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!182 = !DILocation(line: 13, column: 9, scope: !168)
!183 = !DILocation(line: 13, column: 13, scope: !168)
!184 = !DILocation(line: 14, column: 3, scope: !168)
!185 = !DILocation(line: 14, column: 15, scope: !168)
!186 = !DILocation(line: 14, column: 18, scope: !168)
!187 = !DILocation(line: 15, column: 12, scope: !168)
!188 = !DILocation(line: 15, column: 7, scope: !168)
!189 = !DILocation(line: 15, column: 10, scope: !168)
!190 = distinct !{!190, !184, !187, !123}
!191 = !DILocation(line: 16, column: 10, scope: !168)
!192 = !DILocation(line: 16, column: 3, scope: !168)
