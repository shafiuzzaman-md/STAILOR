; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/039_c14n.c_300_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/039_c14n.c_300_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlC14NVisibleNsStack = type { %struct._xmlNs**, %struct._xmlNode**, i32, i32 }
%struct._xmlNs = type opaque
%struct._xmlNode = type opaque

@.str = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"nsMax\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"nsTab\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"(stack->nsMax <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/039_c14n.c_300_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"destroying namespaces stack\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NErrParam(i8* noundef %0) #0 !dbg !33 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !40, metadata !DIExpression()), !dbg !41
  ret void, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !43 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !46, metadata !DIExpression()), !dbg !47
  %3 = load i8*, i8** %2, align 8, !dbg !48
  call void @free(i8* noundef %3) #7, !dbg !49
  ret void, !dbg !50
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !51 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %2, metadata !54, metadata !DIExpression()), !dbg !55
  %3 = call noalias i8* @malloc(i64 noundef 24) #7, !dbg !56
  %4 = bitcast i8* %3 to %struct._xmlC14NVisibleNsStack*, !dbg !57
  store %struct._xmlC14NVisibleNsStack* %4, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !55
  %5 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !58
  %6 = bitcast %struct._xmlC14NVisibleNsStack* %5 to i8*, !dbg !58
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !59
  %7 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !60
  %8 = icmp ne %struct._xmlC14NVisibleNsStack* %7, null, !dbg !61
  %9 = zext i1 %8 to i32, !dbg !61
  %10 = sext i32 %9 to i64, !dbg !60
  call void @klee_assume(i64 noundef %10), !dbg !62
  %11 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !63
  %12 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %11, i32 0, i32 2, !dbg !64
  %13 = bitcast i32* %12 to i8*, !dbg !65
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !66
  %14 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !67
  %15 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %14, i32 0, i32 2, !dbg !68
  %16 = load i32, i32* %15, align 8, !dbg !68
  %17 = icmp sge i32 %16, 0, !dbg !69
  %18 = zext i1 %17 to i32, !dbg !69
  %19 = sext i32 %18 to i64, !dbg !67
  call void @klee_assume(i64 noundef %19), !dbg !70
  %20 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !71
  %21 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %20, i32 0, i32 0, !dbg !72
  %22 = bitcast %struct._xmlNs*** %21 to i8*, !dbg !73
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)), !dbg !74
  %23 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !75
  %24 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %23, i32 0, i32 0, !dbg !76
  %25 = load %struct._xmlNs**, %struct._xmlNs*** %24, align 8, !dbg !76
  %26 = icmp ne %struct._xmlNs** %25, null, !dbg !77
  %27 = zext i1 %26 to i32, !dbg !77
  %28 = sext i32 %27 to i64, !dbg !75
  call void @klee_assume(i64 noundef %28), !dbg !78
  %29 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !79
  %30 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %29, i32 0, i32 2, !dbg !79
  %31 = load i32, i32* %30, align 8, !dbg !79
  %32 = icmp sle i32 %31, 1024, !dbg !79
  br i1 %32, label %33, label %35, !dbg !79

33:                                               ; preds = %0
  br i1 true, label %34, label %35, !dbg !79

34:                                               ; preds = %33
  br label %37, !dbg !79

35:                                               ; preds = %33, %0
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.5, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !79
  br label %37, !dbg !79

37:                                               ; preds = %35, %34
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.5, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !80
  %39 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !81
  call void @xmlC14NVisibleNsStackDestroy(%struct._xmlC14NVisibleNsStack* noundef %39), !dbg !82
  ret i32 0, !dbg !83
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlC14NVisibleNsStackDestroy(%struct._xmlC14NVisibleNsStack* noundef %0) #0 !dbg !84 {
  %2 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  store %struct._xmlC14NVisibleNsStack* %0, %struct._xmlC14NVisibleNsStack** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %2, metadata !87, metadata !DIExpression()), !dbg !88
  %3 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !89
  %4 = icmp eq %struct._xmlC14NVisibleNsStack* %3, null, !dbg !91
  br i1 %4, label %5, label %6, !dbg !92

5:                                                ; preds = %1
  call void @xmlC14NErrParam(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0)), !dbg !93
  br label %52, !dbg !95

6:                                                ; preds = %1
  %7 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !96
  %8 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %7, i32 0, i32 0, !dbg !98
  %9 = load %struct._xmlNs**, %struct._xmlNs*** %8, align 8, !dbg !98
  %10 = icmp ne %struct._xmlNs** %9, null, !dbg !99
  br i1 %10, label %11, label %26, !dbg !100

11:                                               ; preds = %6
  %12 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !101
  %13 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %12, i32 0, i32 0, !dbg !103
  %14 = load %struct._xmlNs**, %struct._xmlNs*** %13, align 8, !dbg !103
  %15 = bitcast %struct._xmlNs** %14 to i8*, !dbg !104
  %16 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !105
  %17 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %16, i32 0, i32 2, !dbg !106
  %18 = load i32, i32* %17, align 8, !dbg !106
  %19 = sext i32 %18 to i64, !dbg !105
  %20 = mul i64 %19, 8, !dbg !107
  %21 = call i8* @memset(i8* %15, i32 0, i64 %20), !dbg !104
  %22 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !108
  %23 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %22, i32 0, i32 0, !dbg !109
  %24 = load %struct._xmlNs**, %struct._xmlNs*** %23, align 8, !dbg !109
  %25 = bitcast %struct._xmlNs** %24 to i8*, !dbg !108
  call void @xmlFree(i8* noundef %25), !dbg !110
  br label %26, !dbg !111

26:                                               ; preds = %11, %6
  %27 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !112
  %28 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %27, i32 0, i32 1, !dbg !114
  %29 = load %struct._xmlNode**, %struct._xmlNode*** %28, align 8, !dbg !114
  %30 = icmp ne %struct._xmlNode** %29, null, !dbg !115
  br i1 %30, label %31, label %46, !dbg !116

31:                                               ; preds = %26
  %32 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !117
  %33 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %32, i32 0, i32 1, !dbg !119
  %34 = load %struct._xmlNode**, %struct._xmlNode*** %33, align 8, !dbg !119
  %35 = bitcast %struct._xmlNode** %34 to i8*, !dbg !120
  %36 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !121
  %37 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %36, i32 0, i32 2, !dbg !122
  %38 = load i32, i32* %37, align 8, !dbg !122
  %39 = sext i32 %38 to i64, !dbg !121
  %40 = mul i64 %39, 8, !dbg !123
  %41 = call i8* @memset(i8* %35, i32 0, i64 %40), !dbg !120
  %42 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !124
  %43 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %42, i32 0, i32 1, !dbg !125
  %44 = load %struct._xmlNode**, %struct._xmlNode*** %43, align 8, !dbg !125
  %45 = bitcast %struct._xmlNode** %44 to i8*, !dbg !124
  call void @xmlFree(i8* noundef %45), !dbg !126
  br label %46, !dbg !127

46:                                               ; preds = %31, %26
  %47 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !128
  %48 = bitcast %struct._xmlC14NVisibleNsStack* %47 to i8*, !dbg !129
  %49 = call i8* @memset(i8* %48, i32 0, i64 24), !dbg !129
  %50 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !130
  %51 = bitcast %struct._xmlC14NVisibleNsStack* %50 to i8*, !dbg !130
  call void @xmlFree(i8* noundef %51), !dbg !131
  br label %52, !dbg !132

52:                                               ; preds = %46, %5
  ret void, !dbg !132
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !133 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !140, metadata !DIExpression()), !dbg !141
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !142, metadata !DIExpression()), !dbg !143
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i8** %7, metadata !146, metadata !DIExpression()), !dbg !148
  %8 = load i8*, i8** %4, align 8, !dbg !149
  store i8* %8, i8** %7, align 8, !dbg !148
  br label %9, !dbg !150

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !151
  %11 = add i64 %10, -1, !dbg !151
  store i64 %11, i64* %6, align 8, !dbg !151
  %12 = icmp ugt i64 %10, 0, !dbg !152
  br i1 %12, label %13, label %18, !dbg !150

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !153
  %15 = trunc i32 %14 to i8, !dbg !153
  %16 = load i8*, i8** %7, align 8, !dbg !154
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !154
  store i8* %17, i8** %7, align 8, !dbg !154
  store i8 %15, i8* %16, align 1, !dbg !155
  br label %9, !dbg !150, !llvm.loop !156

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !158
  ret i8* %19, !dbg !159
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32, !32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/039_c14n.c_300_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3d5c69a5e5b61d47b3a6a2a203220e80")
!2 = !{!3, !22}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NVisibleNsStackPtr", file: !1, line: 21, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NVisibleNsStack", file: !1, line: 16, size: 192, elements: !6)
!6 = !{!7, !13, !19, !21}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab", scope: !5, file: !1, line: 17, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !1, line: 11, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 10, baseType: !12)
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 10, flags: DIFlagFwdDecl)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !5, file: !1, line: 18, baseType: !14, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 13, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 12, baseType: !18)
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 12, flags: DIFlagFwdDecl)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "nsMax", scope: !5, file: !1, line: 19, baseType: !20, size: 32, offset: 128)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "nsTop", scope: !5, file: !1, line: 20, baseType: !20, size: 32, offset: 160)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!25 = !{i32 7, !"Dwarf Version", i32 5}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{i32 7, !"PIC Level", i32 2}
!29 = !{i32 7, !"PIE Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"Ubuntu clang version 14.0.6"}
!33 = distinct !DISubprogram(name: "xmlC14NErrParam", scope: !1, file: !1, line: 24, type: !34, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !{}
!40 = !DILocalVariable(name: "msg", arg: 1, scope: !33, file: !1, line: 24, type: !36)
!41 = !DILocation(line: 24, column: 34, scope: !33)
!42 = !DILocation(line: 26, column: 1, scope: !33)
!43 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 29, type: !44, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !22}
!46 = !DILocalVariable(name: "ptr", arg: 1, scope: !43, file: !1, line: 29, type: !22)
!47 = !DILocation(line: 29, column: 20, scope: !43)
!48 = !DILocation(line: 30, column: 10, scope: !43)
!49 = !DILocation(line: 30, column: 5, scope: !43)
!50 = !DILocation(line: 31, column: 1, scope: !43)
!51 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !52, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!52 = !DISubroutineType(types: !53)
!53 = !{!20}
!54 = !DILocalVariable(name: "stack", scope: !51, file: !1, line: 54, type: !3)
!55 = !DILocation(line: 54, column: 30, scope: !51)
!56 = !DILocation(line: 54, column: 64, scope: !51)
!57 = !DILocation(line: 54, column: 38, scope: !51)
!58 = !DILocation(line: 55, column: 24, scope: !51)
!59 = !DILocation(line: 55, column: 5, scope: !51)
!60 = !DILocation(line: 58, column: 17, scope: !51)
!61 = !DILocation(line: 58, column: 23, scope: !51)
!62 = !DILocation(line: 58, column: 5, scope: !51)
!63 = !DILocation(line: 61, column: 25, scope: !51)
!64 = !DILocation(line: 61, column: 32, scope: !51)
!65 = !DILocation(line: 61, column: 24, scope: !51)
!66 = !DILocation(line: 61, column: 5, scope: !51)
!67 = !DILocation(line: 63, column: 17, scope: !51)
!68 = !DILocation(line: 63, column: 24, scope: !51)
!69 = !DILocation(line: 63, column: 30, scope: !51)
!70 = !DILocation(line: 63, column: 5, scope: !51)
!71 = !DILocation(line: 66, column: 25, scope: !51)
!72 = !DILocation(line: 66, column: 32, scope: !51)
!73 = !DILocation(line: 66, column: 24, scope: !51)
!74 = !DILocation(line: 66, column: 5, scope: !51)
!75 = !DILocation(line: 69, column: 17, scope: !51)
!76 = !DILocation(line: 69, column: 24, scope: !51)
!77 = !DILocation(line: 69, column: 30, scope: !51)
!78 = !DILocation(line: 69, column: 5, scope: !51)
!79 = !DILocation(line: 78, column: 5, scope: !51)
!80 = !DILocation(line: 81, column: 5, scope: !51)
!81 = !DILocation(line: 85, column: 34, scope: !51)
!82 = !DILocation(line: 85, column: 5, scope: !51)
!83 = !DILocation(line: 87, column: 5, scope: !51)
!84 = distinct !DISubprogram(name: "xmlC14NVisibleNsStackDestroy", scope: !1, file: !1, line: 34, type: !85, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !39)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !3}
!87 = !DILocalVariable(name: "cur", arg: 1, scope: !84, file: !1, line: 34, type: !3)
!88 = !DILocation(line: 34, column: 67, scope: !84)
!89 = !DILocation(line: 35, column: 8, scope: !90)
!90 = distinct !DILexicalBlock(scope: !84, file: !1, line: 35, column: 8)
!91 = !DILocation(line: 35, column: 12, scope: !90)
!92 = !DILocation(line: 35, column: 8, scope: !84)
!93 = !DILocation(line: 36, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 35, column: 21)
!95 = !DILocation(line: 37, column: 9, scope: !94)
!96 = !DILocation(line: 39, column: 8, scope: !97)
!97 = distinct !DILexicalBlock(scope: !84, file: !1, line: 39, column: 8)
!98 = !DILocation(line: 39, column: 13, scope: !97)
!99 = !DILocation(line: 39, column: 19, scope: !97)
!100 = !DILocation(line: 39, column: 8, scope: !84)
!101 = !DILocation(line: 41, column: 16, scope: !102)
!102 = distinct !DILexicalBlock(scope: !97, file: !1, line: 39, column: 28)
!103 = !DILocation(line: 41, column: 21, scope: !102)
!104 = !DILocation(line: 41, column: 9, scope: !102)
!105 = !DILocation(line: 41, column: 31, scope: !102)
!106 = !DILocation(line: 41, column: 36, scope: !102)
!107 = !DILocation(line: 41, column: 42, scope: !102)
!108 = !DILocation(line: 42, column: 17, scope: !102)
!109 = !DILocation(line: 42, column: 22, scope: !102)
!110 = !DILocation(line: 42, column: 9, scope: !102)
!111 = !DILocation(line: 43, column: 5, scope: !102)
!112 = !DILocation(line: 44, column: 8, scope: !113)
!113 = distinct !DILexicalBlock(scope: !84, file: !1, line: 44, column: 8)
!114 = !DILocation(line: 44, column: 13, scope: !113)
!115 = !DILocation(line: 44, column: 21, scope: !113)
!116 = !DILocation(line: 44, column: 8, scope: !84)
!117 = !DILocation(line: 45, column: 16, scope: !118)
!118 = distinct !DILexicalBlock(scope: !113, file: !1, line: 44, column: 30)
!119 = !DILocation(line: 45, column: 21, scope: !118)
!120 = !DILocation(line: 45, column: 9, scope: !118)
!121 = !DILocation(line: 45, column: 33, scope: !118)
!122 = !DILocation(line: 45, column: 38, scope: !118)
!123 = !DILocation(line: 45, column: 44, scope: !118)
!124 = !DILocation(line: 46, column: 17, scope: !118)
!125 = !DILocation(line: 46, column: 22, scope: !118)
!126 = !DILocation(line: 46, column: 9, scope: !118)
!127 = !DILocation(line: 47, column: 5, scope: !118)
!128 = !DILocation(line: 48, column: 12, scope: !84)
!129 = !DILocation(line: 48, column: 5, scope: !84)
!130 = !DILocation(line: 49, column: 13, scope: !84)
!131 = !DILocation(line: 49, column: 5, scope: !84)
!132 = !DILocation(line: 50, column: 1, scope: !84)
!133 = distinct !DISubprogram(name: "memset", scope: !134, file: !134, line: 12, type: !135, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !39)
!134 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!135 = !DISubroutineType(types: !136)
!136 = !{!22, !22, !20, !137}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 46, baseType: !139)
!138 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!139 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!140 = !DILocalVariable(name: "dst", arg: 1, scope: !133, file: !134, line: 12, type: !22)
!141 = !DILocation(line: 12, column: 20, scope: !133)
!142 = !DILocalVariable(name: "s", arg: 2, scope: !133, file: !134, line: 12, type: !20)
!143 = !DILocation(line: 12, column: 29, scope: !133)
!144 = !DILocalVariable(name: "count", arg: 3, scope: !133, file: !134, line: 12, type: !137)
!145 = !DILocation(line: 12, column: 39, scope: !133)
!146 = !DILocalVariable(name: "a", scope: !133, file: !134, line: 13, type: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!148 = !DILocation(line: 13, column: 9, scope: !133)
!149 = !DILocation(line: 13, column: 13, scope: !133)
!150 = !DILocation(line: 14, column: 3, scope: !133)
!151 = !DILocation(line: 14, column: 15, scope: !133)
!152 = !DILocation(line: 14, column: 18, scope: !133)
!153 = !DILocation(line: 15, column: 12, scope: !133)
!154 = !DILocation(line: 15, column: 7, scope: !133)
!155 = !DILocation(line: 15, column: 10, scope: !133)
!156 = distinct !{!156, !150, !153, !157}
!157 = !{!"llvm.loop.mustprogress"}
!158 = !DILocation(line: 16, column: 10, scope: !133)
!159 = !DILocation(line: 16, column: 3, scope: !133)
