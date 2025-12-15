; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/026_c14n.c_838_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/026_c14n.c_838_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNs = type { i8*, i8*, i8*, %struct._xmlNs* }
%struct._xmlC14NVisibleNsStack = type { %struct._xmlNs**, i32, i32 }
%struct._xmlC14NCtx = type { %struct._xmlC14NVisibleNsStack*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"ctx_visible\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ctx_has_empty_ns\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"ctx_has_empty_ns_in_inclusive_list\00", align 1
@main.ns_default = internal global %struct._xmlNs zeroinitializer, align 8, !dbg !0
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/026_c14n.c_838_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlExcC14NVisibleNsStackFind(%struct._xmlC14NVisibleNsStack* noundef %0, %struct._xmlNs* noundef %1, %struct._xmlC14NCtx* noundef %2) #0 !dbg !51 {
  %4 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  %5 = alloca %struct._xmlNs*, align 8
  %6 = alloca %struct._xmlC14NCtx*, align 8
  store %struct._xmlC14NVisibleNsStack* %0, %struct._xmlC14NVisibleNsStack** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %4, metadata !54, metadata !DIExpression()), !dbg !55
  store %struct._xmlNs* %1, %struct._xmlNs** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %5, metadata !56, metadata !DIExpression()), !dbg !57
  store %struct._xmlC14NCtx* %2, %struct._xmlC14NCtx** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %6, metadata !58, metadata !DIExpression()), !dbg !59
  ret i32 0, !dbg !60
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlC14NVisibleNsStackFind(%struct._xmlC14NVisibleNsStack* noundef %0, %struct._xmlNs* noundef %1) #0 !dbg !61 {
  %3 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  %4 = alloca %struct._xmlNs*, align 8
  store %struct._xmlC14NVisibleNsStack* %0, %struct._xmlC14NVisibleNsStack** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %3, metadata !64, metadata !DIExpression()), !dbg !65
  store %struct._xmlNs* %1, %struct._xmlNs** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %4, metadata !66, metadata !DIExpression()), !dbg !67
  ret i32 0, !dbg !68
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NPrintNamespaces(%struct._xmlNs* noundef %0, %struct._xmlC14NCtx* noundef %1) #0 !dbg !69 {
  %3 = alloca %struct._xmlNs*, align 8
  %4 = alloca %struct._xmlC14NCtx*, align 8
  store %struct._xmlNs* %0, %struct._xmlNs** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %3, metadata !72, metadata !DIExpression()), !dbg !73
  store %struct._xmlC14NCtx* %1, %struct._xmlC14NCtx** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %4, metadata !74, metadata !DIExpression()), !dbg !75
  ret void, !dbg !76
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !2 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlC14NCtx*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %2, metadata !77, metadata !DIExpression()), !dbg !78
  %3 = call noalias i8* @malloc(i64 noundef 24) #7, !dbg !79
  %4 = bitcast i8* %3 to %struct._xmlC14NCtx*, !dbg !80
  store %struct._xmlC14NCtx* %4, %struct._xmlC14NCtx** %2, align 8, !dbg !78
  %5 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !81
  %6 = icmp ne %struct._xmlC14NCtx* %5, null, !dbg !81
  br i1 %6, label %8, label %7, !dbg !83

7:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !84
  br label %76, !dbg !84

8:                                                ; preds = %0
  %9 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !85
  %10 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %9, i32 0, i32 2, !dbg !86
  %11 = bitcast i32* %10 to i8*, !dbg !87
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !88
  %12 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !89
  %13 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %12, i32 0, i32 3, !dbg !90
  %14 = bitcast i32* %13 to i8*, !dbg !91
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)), !dbg !92
  %15 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !93
  %16 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %15, i32 0, i32 4, !dbg !94
  %17 = bitcast i32* %16 to i8*, !dbg !95
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 4, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0)), !dbg !96
  %18 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !97
  %19 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %18, i32 0, i32 2, !dbg !98
  %20 = load i32, i32* %19, align 4, !dbg !98
  %21 = icmp ne i32 %20, 0, !dbg !99
  %22 = zext i1 %21 to i32, !dbg !99
  %23 = sext i32 %22 to i64, !dbg !97
  call void @klee_assume(i64 noundef %23), !dbg !100
  %24 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !101
  %25 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %24, i32 0, i32 3, !dbg !102
  %26 = load i32, i32* %25, align 8, !dbg !102
  %27 = icmp eq i32 %26, 0, !dbg !103
  %28 = zext i1 %27 to i32, !dbg !103
  %29 = sext i32 %28 to i64, !dbg !101
  call void @klee_assume(i64 noundef %29), !dbg !104
  %30 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !105
  %31 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %30, i32 0, i32 4, !dbg !106
  %32 = load i32, i32* %31, align 4, !dbg !106
  %33 = icmp ne i32 %32, 0, !dbg !107
  %34 = zext i1 %33 to i32, !dbg !107
  %35 = sext i32 %34 to i64, !dbg !105
  call void @klee_assume(i64 noundef %35), !dbg !108
  %36 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !109
  %37 = bitcast i8* %36 to %struct._xmlC14NVisibleNsStack*, !dbg !110
  %38 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !111
  %39 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %38, i32 0, i32 0, !dbg !112
  store %struct._xmlC14NVisibleNsStack* %37, %struct._xmlC14NVisibleNsStack** %39, align 8, !dbg !113
  %40 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !114
  %41 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %40, i32 0, i32 0, !dbg !116
  %42 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %41, align 8, !dbg !116
  %43 = icmp ne %struct._xmlC14NVisibleNsStack* %42, null, !dbg !114
  br i1 %43, label %47, label %44, !dbg !117

44:                                               ; preds = %8
  %45 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !118
  %46 = bitcast %struct._xmlC14NCtx* %45 to i8*, !dbg !118
  call void @free(i8* noundef %46) #7, !dbg !120
  store i32 1, i32* %1, align 4, !dbg !121
  br label %76, !dbg !121

47:                                               ; preds = %8
  %48 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !122
  %49 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %48, i32 0, i32 0, !dbg !123
  %50 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %49, align 8, !dbg !123
  %51 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %50, i32 0, i32 0, !dbg !124
  store %struct._xmlNs** null, %struct._xmlNs*** %51, align 8, !dbg !125
  %52 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !126
  %53 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %52, i32 0, i32 0, !dbg !127
  %54 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %53, align 8, !dbg !127
  %55 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %54, i32 0, i32 1, !dbg !128
  store i32 0, i32* %55, align 8, !dbg !129
  %56 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !130
  %57 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %56, i32 0, i32 0, !dbg !131
  %58 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %57, align 8, !dbg !131
  %59 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %58, i32 0, i32 2, !dbg !132
  store i32 0, i32* %59, align 4, !dbg !133
  %60 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !134
  %61 = call i8* @memset(i8* bitcast (%struct._xmlNs* @main.ns_default to i8*), i32 0, i64 32), !dbg !136
  %62 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !137
  %63 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %62, i32 0, i32 0, !dbg !139
  %64 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %63, align 8, !dbg !139
  %65 = call i32 @xmlC14NVisibleNsStackFind(%struct._xmlC14NVisibleNsStack* noundef %64, %struct._xmlNs* noundef @main.ns_default), !dbg !140
  %66 = icmp ne i32 %65, 0, !dbg !140
  br i1 %66, label %69, label %67, !dbg !141

67:                                               ; preds = %47
  %68 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !142
  call void @xmlC14NPrintNamespaces(%struct._xmlNs* noundef @main.ns_default, %struct._xmlC14NCtx* noundef %68), !dbg !144
  br label %69, !dbg !145

69:                                               ; preds = %67, %47
  %70 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !146
  %71 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %70, i32 0, i32 0, !dbg !147
  %72 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %71, align 8, !dbg !147
  %73 = bitcast %struct._xmlC14NVisibleNsStack* %72 to i8*, !dbg !146
  call void @free(i8* noundef %73) #7, !dbg !148
  %74 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !149
  %75 = bitcast %struct._xmlC14NCtx* %74 to i8*, !dbg !149
  call void @free(i8* noundef %75) #7, !dbg !150
  store i32 0, i32* %1, align 4, !dbg !151
  br label %76, !dbg !151

76:                                               ; preds = %69, %44, %7
  %77 = load i32, i32* %1, align 4, !dbg !152
  ret i32 %77, !dbg !152
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !153 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !160, metadata !DIExpression()), !dbg !161
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !162, metadata !DIExpression()), !dbg !163
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata i8** %7, metadata !166, metadata !DIExpression()), !dbg !169
  %8 = load i8*, i8** %4, align 8, !dbg !170
  store i8* %8, i8** %7, align 8, !dbg !169
  br label %9, !dbg !171

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !172
  %11 = add i64 %10, -1, !dbg !172
  store i64 %11, i64* %6, align 8, !dbg !172
  %12 = icmp ugt i64 %10, 0, !dbg !173
  br i1 %12, label %13, label %18, !dbg !171

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !174
  %15 = trunc i32 %14 to i8, !dbg !174
  %16 = load i8*, i8** %7, align 8, !dbg !175
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !175
  store i8* %17, i8** %7, align 8, !dbg !175
  store i8 %15, i8* %16, align 1, !dbg !176
  br label %9, !dbg !171, !llvm.loop !177

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !179
  ret i8* %19, !dbg !180
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!7, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50, !50}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ns_default", scope: !2, file: !3, line: 78, type: !21, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 49, type: !4, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !40)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/026_c14n.c_838_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "392d625a80477f4aa4e8c690e2670885")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !8, globals: !39, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9, !14}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NCtx", file: !3, line: 12, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NCtx", file: !3, line: 27, size: 192, elements: !12)
!12 = !{!13, !35, !36, !37, !38}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "ns_rendered", scope: !11, file: !3, line: 28, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NVisibleNsStack", file: !3, line: 11, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NVisibleNsStack", file: !3, line: 21, size: 128, elements: !17)
!17 = !{!18, !33, !34}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !16, file: !3, line: 22, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !3, line: 10, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !3, line: 14, size: 256, elements: !23)
!23 = !{!24, !28, !29, !31}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !22, file: !3, line: 15, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !22, file: !3, line: 16, baseType: !25, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !22, file: !3, line: 17, baseType: !30, size: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !22, file: !3, line: 18, baseType: !32, size: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !16, file: !3, line: 23, baseType: !6, size: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !16, file: !3, line: 24, baseType: !6, size: 32, offset: 96)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ns_rendered_count", scope: !11, file: !3, line: 29, baseType: !6, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !11, file: !3, line: 30, baseType: !6, size: 32, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "has_empty_ns", scope: !11, file: !3, line: 31, baseType: !6, size: 32, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "has_empty_ns_in_inclusive_list", scope: !11, file: !3, line: 32, baseType: !6, size: 32, offset: 160)
!39 = !{!0}
!40 = !{}
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!42 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!43 = !{i32 7, !"Dwarf Version", i32 5}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{i32 7, !"PIC Level", i32 2}
!47 = !{i32 7, !"PIE Level", i32 2}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"Ubuntu clang version 14.0.6"}
!51 = distinct !DISubprogram(name: "xmlExcC14NVisibleNsStackFind", scope: !3, file: !3, line: 36, type: !52, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !40)
!52 = !DISubroutineType(types: !53)
!53 = !{!6, !14, !20, !9}
!54 = !DILocalVariable(name: "stack", arg: 1, scope: !51, file: !3, line: 36, type: !14)
!55 = !DILocation(line: 36, column: 57, scope: !51)
!56 = !DILocalVariable(name: "ns", arg: 2, scope: !51, file: !3, line: 36, type: !20)
!57 = !DILocation(line: 36, column: 71, scope: !51)
!58 = !DILocalVariable(name: "ctx", arg: 3, scope: !51, file: !3, line: 36, type: !9)
!59 = !DILocation(line: 36, column: 87, scope: !51)
!60 = !DILocation(line: 37, column: 5, scope: !51)
!61 = distinct !DISubprogram(name: "xmlC14NVisibleNsStackFind", scope: !3, file: !3, line: 40, type: !62, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !40)
!62 = !DISubroutineType(types: !63)
!63 = !{!6, !14, !20}
!64 = !DILocalVariable(name: "stack", arg: 1, scope: !61, file: !3, line: 40, type: !14)
!65 = !DILocation(line: 40, column: 54, scope: !61)
!66 = !DILocalVariable(name: "ns", arg: 2, scope: !61, file: !3, line: 40, type: !20)
!67 = !DILocation(line: 40, column: 68, scope: !61)
!68 = !DILocation(line: 41, column: 5, scope: !61)
!69 = distinct !DISubprogram(name: "xmlC14NPrintNamespaces", scope: !3, file: !3, line: 44, type: !70, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !40)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !20, !9}
!72 = !DILocalVariable(name: "ns", arg: 1, scope: !69, file: !3, line: 44, type: !20)
!73 = !DILocation(line: 44, column: 36, scope: !69)
!74 = !DILocalVariable(name: "ctx", arg: 2, scope: !69, file: !3, line: 44, type: !9)
!75 = !DILocation(line: 44, column: 52, scope: !69)
!76 = !DILocation(line: 46, column: 1, scope: !69)
!77 = !DILocalVariable(name: "ctx", scope: !2, file: !3, line: 51, type: !9)
!78 = !DILocation(line: 51, column: 17, scope: !2)
!79 = !DILocation(line: 51, column: 36, scope: !2)
!80 = !DILocation(line: 51, column: 23, scope: !2)
!81 = !DILocation(line: 52, column: 10, scope: !82)
!82 = distinct !DILexicalBlock(scope: !2, file: !3, line: 52, column: 9)
!83 = !DILocation(line: 52, column: 9, scope: !2)
!84 = !DILocation(line: 52, column: 15, scope: !82)
!85 = !DILocation(line: 55, column: 25, scope: !2)
!86 = !DILocation(line: 55, column: 30, scope: !2)
!87 = !DILocation(line: 55, column: 24, scope: !2)
!88 = !DILocation(line: 55, column: 5, scope: !2)
!89 = !DILocation(line: 56, column: 25, scope: !2)
!90 = !DILocation(line: 56, column: 30, scope: !2)
!91 = !DILocation(line: 56, column: 24, scope: !2)
!92 = !DILocation(line: 56, column: 5, scope: !2)
!93 = !DILocation(line: 57, column: 25, scope: !2)
!94 = !DILocation(line: 57, column: 30, scope: !2)
!95 = !DILocation(line: 57, column: 24, scope: !2)
!96 = !DILocation(line: 57, column: 5, scope: !2)
!97 = !DILocation(line: 62, column: 17, scope: !2)
!98 = !DILocation(line: 62, column: 22, scope: !2)
!99 = !DILocation(line: 62, column: 30, scope: !2)
!100 = !DILocation(line: 62, column: 5, scope: !2)
!101 = !DILocation(line: 63, column: 17, scope: !2)
!102 = !DILocation(line: 63, column: 22, scope: !2)
!103 = !DILocation(line: 63, column: 35, scope: !2)
!104 = !DILocation(line: 63, column: 5, scope: !2)
!105 = !DILocation(line: 64, column: 17, scope: !2)
!106 = !DILocation(line: 64, column: 22, scope: !2)
!107 = !DILocation(line: 64, column: 53, scope: !2)
!108 = !DILocation(line: 64, column: 5, scope: !2)
!109 = !DILocation(line: 67, column: 48, scope: !2)
!110 = !DILocation(line: 67, column: 24, scope: !2)
!111 = !DILocation(line: 67, column: 5, scope: !2)
!112 = !DILocation(line: 67, column: 10, scope: !2)
!113 = !DILocation(line: 67, column: 22, scope: !2)
!114 = !DILocation(line: 68, column: 10, scope: !115)
!115 = distinct !DILexicalBlock(scope: !2, file: !3, line: 68, column: 9)
!116 = !DILocation(line: 68, column: 15, scope: !115)
!117 = !DILocation(line: 68, column: 9, scope: !2)
!118 = !DILocation(line: 69, column: 14, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !3, line: 68, column: 28)
!120 = !DILocation(line: 69, column: 9, scope: !119)
!121 = !DILocation(line: 70, column: 9, scope: !119)
!122 = !DILocation(line: 72, column: 5, scope: !2)
!123 = !DILocation(line: 72, column: 10, scope: !2)
!124 = !DILocation(line: 72, column: 23, scope: !2)
!125 = !DILocation(line: 72, column: 26, scope: !2)
!126 = !DILocation(line: 73, column: 5, scope: !2)
!127 = !DILocation(line: 73, column: 10, scope: !2)
!128 = !DILocation(line: 73, column: 23, scope: !2)
!129 = !DILocation(line: 73, column: 28, scope: !2)
!130 = !DILocation(line: 74, column: 5, scope: !2)
!131 = !DILocation(line: 74, column: 10, scope: !2)
!132 = !DILocation(line: 74, column: 23, scope: !2)
!133 = !DILocation(line: 74, column: 29, scope: !2)
!134 = !DILocation(line: 85, column: 9, scope: !135)
!135 = distinct !DILexicalBlock(scope: !2, file: !3, line: 77, column: 5)
!136 = !DILocation(line: 88, column: 9, scope: !135)
!137 = !DILocation(line: 91, column: 39, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !3, line: 91, column: 12)
!139 = !DILocation(line: 91, column: 44, scope: !138)
!140 = !DILocation(line: 91, column: 13, scope: !138)
!141 = !DILocation(line: 91, column: 12, scope: !135)
!142 = !DILocation(line: 92, column: 49, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !3, line: 91, column: 71)
!144 = !DILocation(line: 92, column: 13, scope: !143)
!145 = !DILocation(line: 93, column: 9, scope: !143)
!146 = !DILocation(line: 97, column: 10, scope: !2)
!147 = !DILocation(line: 97, column: 15, scope: !2)
!148 = !DILocation(line: 97, column: 5, scope: !2)
!149 = !DILocation(line: 98, column: 10, scope: !2)
!150 = !DILocation(line: 98, column: 5, scope: !2)
!151 = !DILocation(line: 100, column: 5, scope: !2)
!152 = !DILocation(line: 101, column: 1, scope: !2)
!153 = distinct !DISubprogram(name: "memset", scope: !154, file: !154, line: 12, type: !155, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !41, retainedNodes: !40)
!154 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!155 = !DISubroutineType(types: !156)
!156 = !{!30, !30, !6, !157}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 46, baseType: !159)
!158 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!159 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!160 = !DILocalVariable(name: "dst", arg: 1, scope: !153, file: !154, line: 12, type: !30)
!161 = !DILocation(line: 12, column: 20, scope: !153)
!162 = !DILocalVariable(name: "s", arg: 2, scope: !153, file: !154, line: 12, type: !6)
!163 = !DILocation(line: 12, column: 29, scope: !153)
!164 = !DILocalVariable(name: "count", arg: 3, scope: !153, file: !154, line: 12, type: !157)
!165 = !DILocation(line: 12, column: 39, scope: !153)
!166 = !DILocalVariable(name: "a", scope: !153, file: !154, line: 13, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!169 = !DILocation(line: 13, column: 9, scope: !153)
!170 = !DILocation(line: 13, column: 13, scope: !153)
!171 = !DILocation(line: 14, column: 3, scope: !153)
!172 = !DILocation(line: 14, column: 15, scope: !153)
!173 = !DILocation(line: 14, column: 18, scope: !153)
!174 = !DILocation(line: 15, column: 12, scope: !153)
!175 = !DILocation(line: 15, column: 7, scope: !153)
!176 = !DILocation(line: 15, column: 10, scope: !153)
!177 = distinct !{!177, !171, !174, !178}
!178 = !{!"llvm.loop.mustprogress"}
!179 = !DILocation(line: 16, column: 10, scope: !153)
!180 = !DILocation(line: 16, column: 3, scope: !153)
