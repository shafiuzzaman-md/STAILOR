; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/209_xmlregexp.c_3284_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/209_xmlregexp.c_3284_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegexp = type { i32 }
%struct._xmlRegExecCtxt = type { i32*, i32, i8*, i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"nbCounters\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"exec_status\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"exec_index\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"inputString\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"exec_state\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"running regexp\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.7 = private unnamed_addr constant [108 x i8] c"(comp.nbCounters > 0 && comp.nbCounters <= ((18446744073709551615UL) / sizeof(int))) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/209_xmlregexp.c_3284_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !16 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !23, metadata !DIExpression()), !dbg !24
  %3 = load i64, i64* %2, align 8, !dbg !25
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !26
  ret i8* %4, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegexpErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !28 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !34, metadata !DIExpression()), !dbg !35
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !36, metadata !DIExpression()), !dbg !37
  ret void, !dbg !38
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !39 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i8], align 1
  %6 = alloca i8*, align 8
  %7 = alloca %struct._xmlRegexp, align 4
  %8 = alloca %struct._xmlRegExecCtxt, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %3, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %4, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata [2 x i8]* %5, metadata !48, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i8** %6, metadata !53, metadata !DIExpression()), !dbg !54
  %9 = bitcast i32* %2 to i8*, !dbg !55
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !56
  %10 = bitcast i32* %3 to i8*, !dbg !57
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)), !dbg !58
  %11 = bitcast i32* %4 to i8*, !dbg !59
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)), !dbg !60
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0, !dbg !61
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)), !dbg !62
  %13 = bitcast i8** %6 to i8*, !dbg !63
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)), !dbg !64
  %14 = load i32, i32* %2, align 4, !dbg !65
  %15 = icmp sgt i32 %14, 0, !dbg !66
  %16 = zext i1 %15 to i32, !dbg !66
  %17 = sext i32 %16 to i64, !dbg !65
  call void @klee_assume(i64 noundef %17), !dbg !67
  %18 = load i32, i32* %3, align 4, !dbg !68
  %19 = icmp eq i32 %18, 0, !dbg !69
  %20 = zext i1 %19 to i32, !dbg !69
  %21 = sext i32 %20 to i64, !dbg !68
  call void @klee_assume(i64 noundef %21), !dbg !70
  %22 = load i8*, i8** %6, align 8, !dbg !71
  %23 = icmp ne i8* %22, null, !dbg !72
  %24 = zext i1 %23 to i32, !dbg !72
  %25 = sext i32 %24 to i64, !dbg !71
  call void @klee_assume(i64 noundef %25), !dbg !73
  %26 = load i32, i32* %4, align 4, !dbg !74
  %27 = icmp eq i32 %26, 0, !dbg !75
  %28 = zext i1 %27 to i32, !dbg !75
  %29 = sext i32 %28 to i64, !dbg !74
  call void @klee_assume(i64 noundef %29), !dbg !76
  %30 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0, !dbg !77
  %31 = load i8, i8* %30, align 1, !dbg !77
  %32 = sext i8 %31 to i32, !dbg !77
  %33 = icmp ne i32 %32, 0, !dbg !78
  %34 = zext i1 %33 to i32, !dbg !78
  %35 = sext i32 %34 to i64, !dbg !77
  call void @klee_assume(i64 noundef %35), !dbg !79
  call void @llvm.dbg.declare(metadata %struct._xmlRegexp* %7, metadata !80, metadata !DIExpression()), !dbg !85
  %36 = load i32, i32* %2, align 4, !dbg !86
  %37 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %7, i32 0, i32 0, !dbg !87
  store i32 %36, i32* %37, align 4, !dbg !88
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt* %8, metadata !89, metadata !DIExpression()), !dbg !101
  %38 = load i32, i32* %3, align 4, !dbg !102
  %39 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %8, i32 0, i32 1, !dbg !103
  store i32 %38, i32* %39, align 8, !dbg !104
  %40 = load i8*, i8** %6, align 8, !dbg !105
  %41 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %8, i32 0, i32 2, !dbg !106
  store i8* %40, i8** %41, align 8, !dbg !107
  %42 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0, !dbg !108
  %43 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %8, i32 0, i32 3, !dbg !109
  store i8* %42, i8** %43, align 8, !dbg !110
  %44 = load i32, i32* %4, align 4, !dbg !111
  %45 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %8, i32 0, i32 4, !dbg !112
  store i32 %44, i32* %45, align 8, !dbg !113
  %46 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %8, i32 0, i32 5, !dbg !114
  store i8* null, i8** %46, align 8, !dbg !115
  %47 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %8, i32 0, i32 6, !dbg !116
  store i32 0, i32* %47, align 8, !dbg !117
  %48 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %7, i32 0, i32 0, !dbg !118
  %49 = load i32, i32* %48, align 4, !dbg !118
  %50 = icmp sgt i32 %49, 0, !dbg !120
  br i1 %50, label %51, label %86, !dbg !121

51:                                               ; preds = %0
  %52 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %7, i32 0, i32 0, !dbg !122
  %53 = load i32, i32* %52, align 4, !dbg !122
  %54 = sext i32 %53 to i64, !dbg !124
  %55 = mul i64 %54, 4, !dbg !125
  %56 = call i8* @xmlMalloc(i64 noundef %55), !dbg !126
  %57 = bitcast i8* %56 to i32*, !dbg !127
  %58 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %8, i32 0, i32 0, !dbg !128
  store i32* %57, i32** %58, align 8, !dbg !129
  %59 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %8, i32 0, i32 0, !dbg !130
  %60 = load i32*, i32** %59, align 8, !dbg !130
  %61 = icmp eq i32* %60, null, !dbg !132
  br i1 %61, label %62, label %63, !dbg !133

62:                                               ; preds = %51
  call void @xmlRegexpErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0)), !dbg !134
  store i32 -1, i32* %1, align 4, !dbg !136
  br label %97, !dbg !136

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %7, i32 0, i32 0, !dbg !137
  %65 = load i32, i32* %64, align 4, !dbg !137
  %66 = icmp sgt i32 %65, 0, !dbg !137
  br i1 %66, label %67, label %74, !dbg !137

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %7, i32 0, i32 0, !dbg !137
  %69 = load i32, i32* %68, align 4, !dbg !137
  %70 = sext i32 %69 to i64, !dbg !137
  %71 = icmp ule i64 %70, 4611686018427387903, !dbg !137
  br i1 %71, label %72, label %74, !dbg !137

72:                                               ; preds = %67
  br i1 true, label %73, label %74, !dbg !137

73:                                               ; preds = %72
  br label %76, !dbg !137

74:                                               ; preds = %72, %67, %63
  %75 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.8, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !137
  br label %76, !dbg !137

76:                                               ; preds = %74, %73
  %77 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.8, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !138
  %78 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %8, i32 0, i32 0, !dbg !139
  %79 = load i32*, i32** %78, align 8, !dbg !139
  %80 = bitcast i32* %79 to i8*, !dbg !140
  %81 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %7, i32 0, i32 0, !dbg !141
  %82 = load i32, i32* %81, align 4, !dbg !141
  %83 = sext i32 %82 to i64, !dbg !142
  %84 = mul i64 %83, 4, !dbg !143
  %85 = call i8* @memset(i8* %80, i32 0, i64 %84), !dbg !140
  br label %88, !dbg !144

86:                                               ; preds = %0
  %87 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %8, i32 0, i32 0, !dbg !145
  store i32* null, i32** %87, align 8, !dbg !147
  br label %88

88:                                               ; preds = %86, %76
  %89 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %8, i32 0, i32 0, !dbg !148
  %90 = load i32*, i32** %89, align 8, !dbg !148
  %91 = icmp ne i32* %90, null, !dbg !150
  br i1 %91, label %92, label %96, !dbg !151

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %8, i32 0, i32 0, !dbg !152
  %94 = load i32*, i32** %93, align 8, !dbg !152
  %95 = bitcast i32* %94 to i8*, !dbg !154
  call void @free(i8* noundef %95) #7, !dbg !155
  br label %96, !dbg !156

96:                                               ; preds = %92, %88
  store i32 0, i32* %1, align 4, !dbg !157
  br label %97, !dbg !157

97:                                               ; preds = %96, %62
  %98 = load i32, i32* %1, align 4, !dbg !158
  ret i32 %98, !dbg !158
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !159 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !163, metadata !DIExpression()), !dbg !164
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !165, metadata !DIExpression()), !dbg !166
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !167, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata i8** %7, metadata !169, metadata !DIExpression()), !dbg !170
  %8 = load i8*, i8** %4, align 8, !dbg !171
  store i8* %8, i8** %7, align 8, !dbg !170
  br label %9, !dbg !172

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !173
  %11 = add i64 %10, -1, !dbg !173
  store i64 %11, i64* %6, align 8, !dbg !173
  %12 = icmp ugt i64 %10, 0, !dbg !174
  br i1 %12, label %13, label %18, !dbg !172

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !175
  %15 = trunc i32 %14 to i8, !dbg !175
  %16 = load i8*, i8** %7, align 8, !dbg !176
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !176
  store i8* %17, i8** %7, align 8, !dbg !176
  store i8 %15, i8* %16, align 1, !dbg !177
  br label %9, !dbg !172, !llvm.loop !178

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !180
  ret i8* %19, !dbg !181
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/209_xmlregexp.c_3284_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "abcc93dd57321d193d7b27d74c07e5cb")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 30, type: !17, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!17 = !DISubroutineType(types: !18)
!18 = !{!3, !19}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 46, baseType: !21)
!20 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !{}
!23 = !DILocalVariable(name: "size", arg: 1, scope: !16, file: !1, line: 30, type: !19)
!24 = !DILocation(line: 30, column: 24, scope: !16)
!25 = !DILocation(line: 31, column: 19, scope: !16)
!26 = !DILocation(line: 31, column: 12, scope: !16)
!27 = !DILocation(line: 31, column: 5, scope: !16)
!28 = distinct !DISubprogram(name: "xmlRegexpErrMemory", scope: !1, file: !1, line: 34, type: !29, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !3, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !DILocalVariable(name: "ctxt", arg: 1, scope: !28, file: !1, line: 34, type: !3)
!35 = !DILocation(line: 34, column: 31, scope: !28)
!36 = !DILocalVariable(name: "msg", arg: 2, scope: !28, file: !1, line: 34, type: !31)
!37 = !DILocation(line: 34, column: 49, scope: !28)
!38 = !DILocation(line: 36, column: 1, scope: !28)
!39 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 41, type: !40, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!40 = !DISubroutineType(types: !41)
!41 = !{!5}
!42 = !DILocalVariable(name: "nbCounters", scope: !39, file: !1, line: 43, type: !5)
!43 = !DILocation(line: 43, column: 9, scope: !39)
!44 = !DILocalVariable(name: "exec_status", scope: !39, file: !1, line: 44, type: !5)
!45 = !DILocation(line: 44, column: 9, scope: !39)
!46 = !DILocalVariable(name: "exec_index", scope: !39, file: !1, line: 45, type: !5)
!47 = !DILocation(line: 45, column: 9, scope: !39)
!48 = !DILocalVariable(name: "inputString", scope: !39, file: !1, line: 46, type: !49)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 16, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 2)
!52 = !DILocation(line: 46, column: 10, scope: !39)
!53 = !DILocalVariable(name: "exec_state", scope: !39, file: !1, line: 47, type: !3)
!54 = !DILocation(line: 47, column: 11, scope: !39)
!55 = !DILocation(line: 50, column: 24, scope: !39)
!56 = !DILocation(line: 50, column: 5, scope: !39)
!57 = !DILocation(line: 51, column: 24, scope: !39)
!58 = !DILocation(line: 51, column: 5, scope: !39)
!59 = !DILocation(line: 52, column: 24, scope: !39)
!60 = !DILocation(line: 52, column: 5, scope: !39)
!61 = !DILocation(line: 53, column: 24, scope: !39)
!62 = !DILocation(line: 53, column: 5, scope: !39)
!63 = !DILocation(line: 54, column: 24, scope: !39)
!64 = !DILocation(line: 54, column: 5, scope: !39)
!65 = !DILocation(line: 57, column: 17, scope: !39)
!66 = !DILocation(line: 57, column: 28, scope: !39)
!67 = !DILocation(line: 57, column: 5, scope: !39)
!68 = !DILocation(line: 58, column: 17, scope: !39)
!69 = !DILocation(line: 58, column: 29, scope: !39)
!70 = !DILocation(line: 58, column: 5, scope: !39)
!71 = !DILocation(line: 59, column: 17, scope: !39)
!72 = !DILocation(line: 59, column: 28, scope: !39)
!73 = !DILocation(line: 59, column: 5, scope: !39)
!74 = !DILocation(line: 60, column: 17, scope: !39)
!75 = !DILocation(line: 60, column: 28, scope: !39)
!76 = !DILocation(line: 60, column: 5, scope: !39)
!77 = !DILocation(line: 61, column: 17, scope: !39)
!78 = !DILocation(line: 61, column: 32, scope: !39)
!79 = !DILocation(line: 61, column: 5, scope: !39)
!80 = !DILocalVariable(name: "comp", scope: !39, file: !1, line: 64, type: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexp", file: !1, line: 13, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegexp", file: !1, line: 16, size: 32, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "nbCounters", scope: !82, file: !1, line: 17, baseType: !5, size: 32)
!85 = !DILocation(line: 64, column: 15, scope: !39)
!86 = !DILocation(line: 65, column: 23, scope: !39)
!87 = !DILocation(line: 65, column: 10, scope: !39)
!88 = !DILocation(line: 65, column: 21, scope: !39)
!89 = !DILocalVariable(name: "exec", scope: !39, file: !1, line: 68, type: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxt", file: !1, line: 10, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegExecCtxt", file: !1, line: 20, size: 448, elements: !92)
!92 = !{!93, !94, !95, !96, !98, !99, !100}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !91, file: !1, line: 21, baseType: !4, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !91, file: !1, line: 22, baseType: !5, size: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !91, file: !1, line: 23, baseType: !3, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "inputString", scope: !91, file: !1, line: 24, baseType: !97, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !91, file: !1, line: 25, baseType: !5, size: 32, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "inputStack", scope: !91, file: !1, line: 26, baseType: !3, size: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "inputStackMax", scope: !91, file: !1, line: 27, baseType: !5, size: 32, offset: 384)
!101 = !DILocation(line: 68, column: 20, scope: !39)
!102 = !DILocation(line: 69, column: 19, scope: !39)
!103 = !DILocation(line: 69, column: 10, scope: !39)
!104 = !DILocation(line: 69, column: 17, scope: !39)
!105 = !DILocation(line: 70, column: 18, scope: !39)
!106 = !DILocation(line: 70, column: 10, scope: !39)
!107 = !DILocation(line: 70, column: 16, scope: !39)
!108 = !DILocation(line: 71, column: 24, scope: !39)
!109 = !DILocation(line: 71, column: 10, scope: !39)
!110 = !DILocation(line: 71, column: 22, scope: !39)
!111 = !DILocation(line: 72, column: 18, scope: !39)
!112 = !DILocation(line: 72, column: 10, scope: !39)
!113 = !DILocation(line: 72, column: 16, scope: !39)
!114 = !DILocation(line: 73, column: 10, scope: !39)
!115 = !DILocation(line: 73, column: 21, scope: !39)
!116 = !DILocation(line: 74, column: 10, scope: !39)
!117 = !DILocation(line: 74, column: 24, scope: !39)
!118 = !DILocation(line: 77, column: 14, scope: !119)
!119 = distinct !DILexicalBlock(scope: !39, file: !1, line: 77, column: 9)
!120 = !DILocation(line: 77, column: 25, scope: !119)
!121 = !DILocation(line: 77, column: 9, scope: !39)
!122 = !DILocation(line: 78, column: 45, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 77, column: 30)
!124 = !DILocation(line: 78, column: 40, scope: !123)
!125 = !DILocation(line: 78, column: 56, scope: !123)
!126 = !DILocation(line: 78, column: 30, scope: !123)
!127 = !DILocation(line: 78, column: 23, scope: !123)
!128 = !DILocation(line: 78, column: 14, scope: !123)
!129 = !DILocation(line: 78, column: 21, scope: !123)
!130 = !DILocation(line: 79, column: 18, scope: !131)
!131 = distinct !DILexicalBlock(scope: !123, file: !1, line: 79, column: 13)
!132 = !DILocation(line: 79, column: 25, scope: !131)
!133 = !DILocation(line: 79, column: 13, scope: !123)
!134 = !DILocation(line: 80, column: 13, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !1, line: 79, column: 34)
!136 = !DILocation(line: 81, column: 13, scope: !135)
!137 = !DILocation(line: 86, column: 9, scope: !123)
!138 = !DILocation(line: 89, column: 9, scope: !123)
!139 = !DILocation(line: 92, column: 21, scope: !123)
!140 = !DILocation(line: 92, column: 9, scope: !123)
!141 = !DILocation(line: 92, column: 37, scope: !123)
!142 = !DILocation(line: 92, column: 32, scope: !123)
!143 = !DILocation(line: 92, column: 48, scope: !123)
!144 = !DILocation(line: 93, column: 5, scope: !123)
!145 = !DILocation(line: 94, column: 14, scope: !146)
!146 = distinct !DILexicalBlock(scope: !119, file: !1, line: 93, column: 12)
!147 = !DILocation(line: 94, column: 21, scope: !146)
!148 = !DILocation(line: 98, column: 14, scope: !149)
!149 = distinct !DILexicalBlock(scope: !39, file: !1, line: 98, column: 9)
!150 = !DILocation(line: 98, column: 9, scope: !149)
!151 = !DILocation(line: 98, column: 9, scope: !39)
!152 = !DILocation(line: 99, column: 19, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !1, line: 98, column: 22)
!154 = !DILocation(line: 99, column: 14, scope: !153)
!155 = !DILocation(line: 99, column: 9, scope: !153)
!156 = !DILocation(line: 100, column: 5, scope: !153)
!157 = !DILocation(line: 102, column: 5, scope: !39)
!158 = !DILocation(line: 103, column: 1, scope: !39)
!159 = distinct !DISubprogram(name: "memset", scope: !160, file: !160, line: 12, type: !161, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !22)
!160 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!161 = !DISubroutineType(types: !162)
!162 = !{!3, !3, !5, !19}
!163 = !DILocalVariable(name: "dst", arg: 1, scope: !159, file: !160, line: 12, type: !3)
!164 = !DILocation(line: 12, column: 20, scope: !159)
!165 = !DILocalVariable(name: "s", arg: 2, scope: !159, file: !160, line: 12, type: !5)
!166 = !DILocation(line: 12, column: 29, scope: !159)
!167 = !DILocalVariable(name: "count", arg: 3, scope: !159, file: !160, line: 12, type: !19)
!168 = !DILocation(line: 12, column: 39, scope: !159)
!169 = !DILocalVariable(name: "a", scope: !159, file: !160, line: 13, type: !97)
!170 = !DILocation(line: 13, column: 9, scope: !159)
!171 = !DILocation(line: 13, column: 13, scope: !159)
!172 = !DILocation(line: 14, column: 3, scope: !159)
!173 = !DILocation(line: 14, column: 15, scope: !159)
!174 = !DILocation(line: 14, column: 18, scope: !159)
!175 = !DILocation(line: 15, column: 12, scope: !159)
!176 = !DILocation(line: 15, column: 7, scope: !159)
!177 = !DILocation(line: 15, column: 10, scope: !159)
!178 = distinct !{!178, !172, !175, !179}
!179 = !{!"llvm.loop.mustprogress"}
!180 = !DILocation(line: 16, column: 10, scope: !159)
!181 = !DILocation(line: 16, column: 3, scope: !159)
