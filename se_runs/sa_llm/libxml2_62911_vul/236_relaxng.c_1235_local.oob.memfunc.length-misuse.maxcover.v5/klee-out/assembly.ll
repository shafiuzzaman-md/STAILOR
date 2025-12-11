; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/236_relaxng.c_1235_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/236_relaxng.c_1235_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGDefine = type { %struct._xmlAttr**, i32, i32 }
%struct._xmlAttr = type opaque

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"(nbAttrs <= def->maxAttrs) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/236_relaxng.c_1235_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlRelaxNGFreeDefine = private unnamed_addr constant [47 x i8] c"void xmlRelaxNGFreeDefine(xmlRelaxNGDefinePtr)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"nbAttrs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRelaxNGFreeDefine(%struct._xmlRelaxNGDefine* noundef %0) #0 !dbg !12 {
  %2 = alloca %struct._xmlRelaxNGDefine*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlAttr**, align 8
  store %struct._xmlRelaxNGDefine* %0, %struct._xmlRelaxNGDefine** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGDefine** %2, metadata !30, metadata !DIExpression()), !dbg !31
  %5 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !32
  %6 = icmp eq %struct._xmlRelaxNGDefine* %5, null, !dbg !34
  br i1 %6, label %7, label %8, !dbg !35

7:                                                ; preds = %1
  br label %78, !dbg !36

8:                                                ; preds = %1
  %9 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !37
  %10 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %9, i32 0, i32 0, !dbg !39
  %11 = load %struct._xmlAttr**, %struct._xmlAttr*** %10, align 8, !dbg !39
  %12 = icmp ne %struct._xmlAttr** %11, null, !dbg !40
  br i1 %12, label %13, label %65, !dbg !41

13:                                               ; preds = %8
  %14 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !42
  %15 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %14, i32 0, i32 1, !dbg !43
  %16 = load i32, i32* %15, align 8, !dbg !43
  %17 = icmp sgt i32 %16, 0, !dbg !44
  br i1 %17, label %18, label %65, !dbg !45

18:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata i32* %3, metadata !46, metadata !DIExpression()), !dbg !48
  %19 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !49
  %20 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %19, i32 0, i32 1, !dbg !50
  %21 = load i32, i32* %20, align 8, !dbg !50
  store i32 %21, i32* %3, align 4, !dbg !48
  call void @llvm.dbg.declare(metadata %struct._xmlAttr*** %4, metadata !51, metadata !DIExpression()), !dbg !52
  %22 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !53
  %23 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %22, i32 0, i32 0, !dbg !54
  %24 = load %struct._xmlAttr**, %struct._xmlAttr*** %23, align 8, !dbg !54
  store %struct._xmlAttr** %24, %struct._xmlAttr*** %4, align 8, !dbg !52
  %25 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !55
  %26 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %25, i32 0, i32 2, !dbg !57
  %27 = load i32, i32* %26, align 4, !dbg !57
  %28 = load i32, i32* %3, align 4, !dbg !58
  %29 = icmp slt i32 %27, %28, !dbg !59
  br i1 %29, label %30, label %46, !dbg !60

30:                                               ; preds = %18
  %31 = load i32, i32* %3, align 4, !dbg !61
  %32 = sext i32 %31 to i64, !dbg !61
  %33 = mul i64 8, %32, !dbg !63
  %34 = call noalias i8* @malloc(i64 noundef %33) #5, !dbg !64
  %35 = bitcast i8* %34 to %struct._xmlAttr**, !dbg !64
  store %struct._xmlAttr** %35, %struct._xmlAttr*** %4, align 8, !dbg !65
  %36 = load %struct._xmlAttr**, %struct._xmlAttr*** %4, align 8, !dbg !66
  %37 = icmp ne %struct._xmlAttr** %36, null, !dbg !68
  br i1 %37, label %38, label %45, !dbg !69

38:                                               ; preds = %30
  %39 = load %struct._xmlAttr**, %struct._xmlAttr*** %4, align 8, !dbg !70
  %40 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !72
  %41 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %40, i32 0, i32 0, !dbg !73
  store %struct._xmlAttr** %39, %struct._xmlAttr*** %41, align 8, !dbg !74
  %42 = load i32, i32* %3, align 4, !dbg !75
  %43 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !76
  %44 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %43, i32 0, i32 2, !dbg !77
  store i32 %42, i32* %44, align 4, !dbg !78
  br label %45, !dbg !79

45:                                               ; preds = %38, %30
  br label %46, !dbg !80

46:                                               ; preds = %45, %18
  %47 = load i32, i32* %3, align 4, !dbg !81
  %48 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !82
  %49 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %48, i32 0, i32 1, !dbg !83
  store i32 %47, i32* %49, align 8, !dbg !84
  %50 = load i32, i32* %3, align 4, !dbg !85
  %51 = icmp slt i32 %50, 1000, !dbg !87
  br i1 %51, label %52, label %64, !dbg !88

52:                                               ; preds = %46
  %53 = load i32, i32* %3, align 4, !dbg !89
  %54 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !89
  %55 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %54, i32 0, i32 2, !dbg !89
  %56 = load i32, i32* %55, align 4, !dbg !89
  %57 = icmp sle i32 %53, %56, !dbg !89
  br i1 %57, label %58, label %60, !dbg !89

58:                                               ; preds = %52
  br i1 true, label %59, label %60, !dbg !89

59:                                               ; preds = %58
  br label %62, !dbg !89

60:                                               ; preds = %58, %52
  %61 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.xmlRelaxNGFreeDefine, i64 0, i64 0)), !dbg !89
  br label %62, !dbg !89

62:                                               ; preds = %60, %59
  %63 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.xmlRelaxNGFreeDefine, i64 0, i64 0)), !dbg !91
  br label %64, !dbg !92

64:                                               ; preds = %62, %46
  br label %65, !dbg !93

65:                                               ; preds = %64, %13, %8
  %66 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !94
  %67 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %66, i32 0, i32 0, !dbg !96
  %68 = load %struct._xmlAttr**, %struct._xmlAttr*** %67, align 8, !dbg !96
  %69 = icmp ne %struct._xmlAttr** %68, null, !dbg !97
  br i1 %69, label %70, label %75, !dbg !98

70:                                               ; preds = %65
  %71 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !99
  %72 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %71, i32 0, i32 0, !dbg !101
  %73 = load %struct._xmlAttr**, %struct._xmlAttr*** %72, align 8, !dbg !101
  %74 = bitcast %struct._xmlAttr** %73 to i8*, !dbg !99
  call void @free(i8* noundef %74) #5, !dbg !102
  br label %75, !dbg !103

75:                                               ; preds = %70, %65
  %76 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !104
  %77 = bitcast %struct._xmlRelaxNGDefine* %76 to i8*, !dbg !104
  call void @free(i8* noundef %77) #5, !dbg !105
  br label %78, !dbg !106

78:                                               ; preds = %75, %7
  ret void, !dbg !106
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !107 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNGDefine*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGDefine** %2, metadata !110, metadata !DIExpression()), !dbg !111
  %4 = call noalias i8* @malloc(i64 noundef 16) #5, !dbg !112
  %5 = bitcast i8* %4 to %struct._xmlRelaxNGDefine*, !dbg !112
  store %struct._xmlRelaxNGDefine* %5, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !111
  %6 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !113
  %7 = icmp eq %struct._xmlRelaxNGDefine* %6, null, !dbg !115
  br i1 %7, label %8, label %9, !dbg !116

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !117
  br label %68, !dbg !117

9:                                                ; preds = %0
  %10 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !118
  %11 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %10, i32 0, i32 0, !dbg !119
  store %struct._xmlAttr** null, %struct._xmlAttr*** %11, align 8, !dbg !120
  %12 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !121
  %13 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %12, i32 0, i32 2, !dbg !122
  store i32 0, i32* %13, align 4, !dbg !123
  %14 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !124
  %15 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %14, i32 0, i32 1, !dbg !125
  %16 = bitcast i32* %15 to i8*, !dbg !126
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !127
  %17 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !128
  %18 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %17, i32 0, i32 1, !dbg !129
  %19 = load i32, i32* %18, align 8, !dbg !129
  %20 = icmp sge i32 %19, 0, !dbg !130
  %21 = zext i1 %20 to i32, !dbg !130
  %22 = sext i32 %21 to i64, !dbg !128
  call void @klee_assume(i64 noundef %22), !dbg !131
  %23 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !132
  %24 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %23, i32 0, i32 1, !dbg !133
  %25 = load i32, i32* %24, align 8, !dbg !133
  %26 = icmp slt i32 %25, 2000, !dbg !134
  %27 = zext i1 %26 to i32, !dbg !134
  %28 = sext i32 %27 to i64, !dbg !132
  call void @klee_assume(i64 noundef %28), !dbg !135
  %29 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !136
  %30 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %29, i32 0, i32 1, !dbg !138
  %31 = load i32, i32* %30, align 8, !dbg !138
  %32 = icmp sgt i32 %31, 0, !dbg !139
  br i1 %32, label %33, label %66, !dbg !140

33:                                               ; preds = %9
  %34 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !141
  %35 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %34, i32 0, i32 1, !dbg !143
  %36 = load i32, i32* %35, align 8, !dbg !143
  %37 = sext i32 %36 to i64, !dbg !141
  %38 = mul i64 8, %37, !dbg !144
  %39 = call noalias i8* @malloc(i64 noundef %38) #5, !dbg !145
  %40 = bitcast i8* %39 to %struct._xmlAttr**, !dbg !145
  %41 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !146
  %42 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %41, i32 0, i32 0, !dbg !147
  store %struct._xmlAttr** %40, %struct._xmlAttr*** %42, align 8, !dbg !148
  %43 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !149
  %44 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %43, i32 0, i32 0, !dbg !151
  %45 = load %struct._xmlAttr**, %struct._xmlAttr*** %44, align 8, !dbg !151
  %46 = icmp ne %struct._xmlAttr** %45, null, !dbg !152
  br i1 %46, label %47, label %65, !dbg !153

47:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata i32* %3, metadata !154, metadata !DIExpression()), !dbg !157
  store i32 0, i32* %3, align 4, !dbg !157
  br label %48, !dbg !158

48:                                               ; preds = %61, %47
  %49 = load i32, i32* %3, align 4, !dbg !159
  %50 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !161
  %51 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %50, i32 0, i32 1, !dbg !162
  %52 = load i32, i32* %51, align 8, !dbg !162
  %53 = icmp slt i32 %49, %52, !dbg !163
  br i1 %53, label %54, label %64, !dbg !164

54:                                               ; preds = %48
  %55 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !165
  %56 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %55, i32 0, i32 0, !dbg !167
  %57 = load %struct._xmlAttr**, %struct._xmlAttr*** %56, align 8, !dbg !167
  %58 = load i32, i32* %3, align 4, !dbg !168
  %59 = sext i32 %58 to i64, !dbg !165
  %60 = getelementptr inbounds %struct._xmlAttr*, %struct._xmlAttr** %57, i64 %59, !dbg !165
  store %struct._xmlAttr* null, %struct._xmlAttr** %60, align 8, !dbg !169
  br label %61, !dbg !170

61:                                               ; preds = %54
  %62 = load i32, i32* %3, align 4, !dbg !171
  %63 = add nsw i32 %62, 1, !dbg !171
  store i32 %63, i32* %3, align 4, !dbg !171
  br label %48, !dbg !172, !llvm.loop !173

64:                                               ; preds = %48
  br label %65, !dbg !176

65:                                               ; preds = %64, %33
  br label %66, !dbg !177

66:                                               ; preds = %65, %9
  %67 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !178
  call void @xmlRelaxNGFreeDefine(%struct._xmlRelaxNGDefine* noundef %67), !dbg !179
  store i32 0, i32* %1, align 4, !dbg !180
  br label %68, !dbg !180

68:                                               ; preds = %66, %8
  %69 = load i32, i32* %1, align 4, !dbg !181
  ret i32 %69, !dbg !181
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/236_relaxng.c_1235_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "66e3db7ff6f70d1b61e75062307c1a8a")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "xmlRelaxNGFreeDefine", scope: !1, file: !1, line: 26, type: !13, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGDefinePtr", file: !1, line: 13, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGDefine", file: !1, line: 12, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGDefine", file: !1, line: 19, size: 128, elements: !19)
!19 = !{!20, !26, !28}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !18, file: !1, line: 20, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttrPtr", file: !1, line: 11, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttr", file: !1, line: 10, baseType: !25)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !1, line: 10, flags: DIFlagFwdDecl)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "nbAttrs", scope: !18, file: !1, line: 21, baseType: !27, size: 32, offset: 64)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "maxAttrs", scope: !18, file: !1, line: 22, baseType: !27, size: 32, offset: 96)
!29 = !{}
!30 = !DILocalVariable(name: "def", arg: 1, scope: !12, file: !1, line: 26, type: !15)
!31 = !DILocation(line: 26, column: 47, scope: !12)
!32 = !DILocation(line: 27, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !12, file: !1, line: 27, column: 9)
!34 = !DILocation(line: 27, column: 13, scope: !33)
!35 = !DILocation(line: 27, column: 9, scope: !12)
!36 = !DILocation(line: 27, column: 22, scope: !33)
!37 = !DILocation(line: 30, column: 9, scope: !38)
!38 = distinct !DILexicalBlock(scope: !12, file: !1, line: 30, column: 9)
!39 = !DILocation(line: 30, column: 14, scope: !38)
!40 = !DILocation(line: 30, column: 20, scope: !38)
!41 = !DILocation(line: 30, column: 28, scope: !38)
!42 = !DILocation(line: 30, column: 31, scope: !38)
!43 = !DILocation(line: 30, column: 36, scope: !38)
!44 = !DILocation(line: 30, column: 44, scope: !38)
!45 = !DILocation(line: 30, column: 9, scope: !12)
!46 = !DILocalVariable(name: "nbAttrs", scope: !47, file: !1, line: 31, type: !27)
!47 = distinct !DILexicalBlock(scope: !38, file: !1, line: 30, column: 49)
!48 = !DILocation(line: 31, column: 13, scope: !47)
!49 = !DILocation(line: 31, column: 23, scope: !47)
!50 = !DILocation(line: 31, column: 28, scope: !47)
!51 = !DILocalVariable(name: "tmp", scope: !47, file: !1, line: 32, type: !21)
!52 = !DILocation(line: 32, column: 21, scope: !47)
!53 = !DILocation(line: 32, column: 27, scope: !47)
!54 = !DILocation(line: 32, column: 32, scope: !47)
!55 = !DILocation(line: 35, column: 13, scope: !56)
!56 = distinct !DILexicalBlock(scope: !47, file: !1, line: 35, column: 13)
!57 = !DILocation(line: 35, column: 18, scope: !56)
!58 = !DILocation(line: 35, column: 29, scope: !56)
!59 = !DILocation(line: 35, column: 27, scope: !56)
!60 = !DILocation(line: 35, column: 13, scope: !47)
!61 = !DILocation(line: 36, column: 47, scope: !62)
!62 = distinct !DILexicalBlock(scope: !56, file: !1, line: 35, column: 38)
!63 = !DILocation(line: 36, column: 45, scope: !62)
!64 = !DILocation(line: 36, column: 19, scope: !62)
!65 = !DILocation(line: 36, column: 17, scope: !62)
!66 = !DILocation(line: 37, column: 17, scope: !67)
!67 = distinct !DILexicalBlock(scope: !62, file: !1, line: 37, column: 17)
!68 = !DILocation(line: 37, column: 21, scope: !67)
!69 = !DILocation(line: 37, column: 17, scope: !62)
!70 = !DILocation(line: 38, column: 30, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 37, column: 30)
!72 = !DILocation(line: 38, column: 17, scope: !71)
!73 = !DILocation(line: 38, column: 22, scope: !71)
!74 = !DILocation(line: 38, column: 28, scope: !71)
!75 = !DILocation(line: 39, column: 33, scope: !71)
!76 = !DILocation(line: 39, column: 17, scope: !71)
!77 = !DILocation(line: 39, column: 22, scope: !71)
!78 = !DILocation(line: 39, column: 31, scope: !71)
!79 = !DILocation(line: 40, column: 13, scope: !71)
!80 = !DILocation(line: 41, column: 9, scope: !62)
!81 = !DILocation(line: 43, column: 24, scope: !47)
!82 = !DILocation(line: 43, column: 9, scope: !47)
!83 = !DILocation(line: 43, column: 14, scope: !47)
!84 = !DILocation(line: 43, column: 22, scope: !47)
!85 = !DILocation(line: 46, column: 13, scope: !86)
!86 = distinct !DILexicalBlock(scope: !47, file: !1, line: 46, column: 13)
!87 = !DILocation(line: 46, column: 21, scope: !86)
!88 = !DILocation(line: 46, column: 13, scope: !47)
!89 = !DILocation(line: 48, column: 13, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 46, column: 33)
!91 = !DILocation(line: 51, column: 13, scope: !90)
!92 = !DILocation(line: 55, column: 9, scope: !90)
!93 = !DILocation(line: 56, column: 5, scope: !47)
!94 = !DILocation(line: 59, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !12, file: !1, line: 59, column: 9)
!96 = !DILocation(line: 59, column: 14, scope: !95)
!97 = !DILocation(line: 59, column: 20, scope: !95)
!98 = !DILocation(line: 59, column: 9, scope: !12)
!99 = !DILocation(line: 60, column: 14, scope: !100)
!100 = distinct !DILexicalBlock(scope: !95, file: !1, line: 59, column: 29)
!101 = !DILocation(line: 60, column: 19, scope: !100)
!102 = !DILocation(line: 60, column: 9, scope: !100)
!103 = !DILocation(line: 61, column: 5, scope: !100)
!104 = !DILocation(line: 62, column: 10, scope: !12)
!105 = !DILocation(line: 62, column: 5, scope: !12)
!106 = !DILocation(line: 63, column: 1, scope: !12)
!107 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 66, type: !108, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!108 = !DISubroutineType(types: !109)
!109 = !{!27}
!110 = !DILocalVariable(name: "def", scope: !107, file: !1, line: 68, type: !15)
!111 = !DILocation(line: 68, column: 25, scope: !107)
!112 = !DILocation(line: 68, column: 31, scope: !107)
!113 = !DILocation(line: 69, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !107, file: !1, line: 69, column: 9)
!115 = !DILocation(line: 69, column: 13, scope: !114)
!116 = !DILocation(line: 69, column: 9, scope: !107)
!117 = !DILocation(line: 69, column: 22, scope: !114)
!118 = !DILocation(line: 72, column: 5, scope: !107)
!119 = !DILocation(line: 72, column: 10, scope: !107)
!120 = !DILocation(line: 72, column: 16, scope: !107)
!121 = !DILocation(line: 73, column: 5, scope: !107)
!122 = !DILocation(line: 73, column: 10, scope: !107)
!123 = !DILocation(line: 73, column: 19, scope: !107)
!124 = !DILocation(line: 76, column: 25, scope: !107)
!125 = !DILocation(line: 76, column: 30, scope: !107)
!126 = !DILocation(line: 76, column: 24, scope: !107)
!127 = !DILocation(line: 76, column: 5, scope: !107)
!128 = !DILocation(line: 79, column: 17, scope: !107)
!129 = !DILocation(line: 79, column: 22, scope: !107)
!130 = !DILocation(line: 79, column: 30, scope: !107)
!131 = !DILocation(line: 79, column: 5, scope: !107)
!132 = !DILocation(line: 80, column: 17, scope: !107)
!133 = !DILocation(line: 80, column: 22, scope: !107)
!134 = !DILocation(line: 80, column: 30, scope: !107)
!135 = !DILocation(line: 80, column: 5, scope: !107)
!136 = !DILocation(line: 83, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !107, file: !1, line: 83, column: 9)
!138 = !DILocation(line: 83, column: 14, scope: !137)
!139 = !DILocation(line: 83, column: 22, scope: !137)
!140 = !DILocation(line: 83, column: 9, scope: !107)
!141 = !DILocation(line: 84, column: 50, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !1, line: 83, column: 27)
!143 = !DILocation(line: 84, column: 55, scope: !142)
!144 = !DILocation(line: 84, column: 48, scope: !142)
!145 = !DILocation(line: 84, column: 22, scope: !142)
!146 = !DILocation(line: 84, column: 9, scope: !142)
!147 = !DILocation(line: 84, column: 14, scope: !142)
!148 = !DILocation(line: 84, column: 20, scope: !142)
!149 = !DILocation(line: 85, column: 13, scope: !150)
!150 = distinct !DILexicalBlock(scope: !142, file: !1, line: 85, column: 13)
!151 = !DILocation(line: 85, column: 18, scope: !150)
!152 = !DILocation(line: 85, column: 24, scope: !150)
!153 = !DILocation(line: 85, column: 13, scope: !142)
!154 = !DILocalVariable(name: "i", scope: !155, file: !1, line: 87, type: !27)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 87, column: 13)
!156 = distinct !DILexicalBlock(scope: !150, file: !1, line: 85, column: 33)
!157 = !DILocation(line: 87, column: 22, scope: !155)
!158 = !DILocation(line: 87, column: 18, scope: !155)
!159 = !DILocation(line: 87, column: 29, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !1, line: 87, column: 13)
!161 = !DILocation(line: 87, column: 33, scope: !160)
!162 = !DILocation(line: 87, column: 38, scope: !160)
!163 = !DILocation(line: 87, column: 31, scope: !160)
!164 = !DILocation(line: 87, column: 13, scope: !155)
!165 = !DILocation(line: 88, column: 17, scope: !166)
!166 = distinct !DILexicalBlock(scope: !160, file: !1, line: 87, column: 52)
!167 = !DILocation(line: 88, column: 22, scope: !166)
!168 = !DILocation(line: 88, column: 28, scope: !166)
!169 = !DILocation(line: 88, column: 31, scope: !166)
!170 = !DILocation(line: 89, column: 13, scope: !166)
!171 = !DILocation(line: 87, column: 48, scope: !160)
!172 = !DILocation(line: 87, column: 13, scope: !160)
!173 = distinct !{!173, !164, !174, !175}
!174 = !DILocation(line: 89, column: 13, scope: !155)
!175 = !{!"llvm.loop.mustprogress"}
!176 = !DILocation(line: 90, column: 9, scope: !156)
!177 = !DILocation(line: 91, column: 5, scope: !142)
!178 = !DILocation(line: 94, column: 26, scope: !107)
!179 = !DILocation(line: 94, column: 5, scope: !107)
!180 = !DILocation(line: 96, column: 5, scope: !107)
!181 = !DILocation(line: 97, column: 1, scope: !107)
