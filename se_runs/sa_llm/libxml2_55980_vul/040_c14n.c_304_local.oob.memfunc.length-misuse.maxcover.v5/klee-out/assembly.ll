; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/040_c14n.c_304_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/040_c14n.c_304_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlC14NVisibleNsStack = type { %struct._xmlNs**, %struct._xmlNode**, i32, i32 }
%struct._xmlNs = type opaque
%struct._xmlNode = type opaque

@.str = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"nsMax\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"nodeTab\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"allocated_size\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"(stack->nsMax * sizeof(xmlNodePtr) <= allocated_size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/040_c14n.c_304_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NVisibleNsStackDestroy(%struct._xmlC14NVisibleNsStack* noundef %0) #0 !dbg !33 {
  %2 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  store %struct._xmlC14NVisibleNsStack* %0, %struct._xmlC14NVisibleNsStack** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %2, metadata !37, metadata !DIExpression()), !dbg !38
  %3 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !39
  %4 = icmp eq %struct._xmlC14NVisibleNsStack* %3, null, !dbg !41
  br i1 %4, label %5, label %6, !dbg !42

5:                                                ; preds = %1
  br label %52, !dbg !43

6:                                                ; preds = %1
  %7 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !45
  %8 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %7, i32 0, i32 0, !dbg !47
  %9 = load %struct._xmlNs**, %struct._xmlNs*** %8, align 8, !dbg !47
  %10 = icmp ne %struct._xmlNs** %9, null, !dbg !48
  br i1 %10, label %11, label %26, !dbg !49

11:                                               ; preds = %6
  %12 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !50
  %13 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %12, i32 0, i32 0, !dbg !52
  %14 = load %struct._xmlNs**, %struct._xmlNs*** %13, align 8, !dbg !52
  %15 = bitcast %struct._xmlNs** %14 to i8*, !dbg !53
  %16 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !54
  %17 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %16, i32 0, i32 2, !dbg !55
  %18 = load i32, i32* %17, align 8, !dbg !55
  %19 = sext i32 %18 to i64, !dbg !54
  %20 = mul i64 %19, 8, !dbg !56
  %21 = call i8* @memset(i8* %15, i32 0, i64 %20), !dbg !53
  %22 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !57
  %23 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %22, i32 0, i32 0, !dbg !58
  %24 = load %struct._xmlNs**, %struct._xmlNs*** %23, align 8, !dbg !58
  %25 = bitcast %struct._xmlNs** %24 to i8*, !dbg !57
  call void @free(i8* noundef %25) #7, !dbg !59
  br label %26, !dbg !60

26:                                               ; preds = %11, %6
  %27 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !61
  %28 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %27, i32 0, i32 1, !dbg !63
  %29 = load %struct._xmlNode**, %struct._xmlNode*** %28, align 8, !dbg !63
  %30 = icmp ne %struct._xmlNode** %29, null, !dbg !64
  br i1 %30, label %31, label %46, !dbg !65

31:                                               ; preds = %26
  %32 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !66
  %33 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %32, i32 0, i32 1, !dbg !68
  %34 = load %struct._xmlNode**, %struct._xmlNode*** %33, align 8, !dbg !68
  %35 = bitcast %struct._xmlNode** %34 to i8*, !dbg !69
  %36 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !70
  %37 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %36, i32 0, i32 2, !dbg !71
  %38 = load i32, i32* %37, align 8, !dbg !71
  %39 = sext i32 %38 to i64, !dbg !70
  %40 = mul i64 %39, 8, !dbg !72
  %41 = call i8* @memset(i8* %35, i32 0, i64 %40), !dbg !69
  %42 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !73
  %43 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %42, i32 0, i32 1, !dbg !74
  %44 = load %struct._xmlNode**, %struct._xmlNode*** %43, align 8, !dbg !74
  %45 = bitcast %struct._xmlNode** %44 to i8*, !dbg !73
  call void @free(i8* noundef %45) #7, !dbg !75
  br label %46, !dbg !76

46:                                               ; preds = %31, %26
  %47 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !77
  %48 = bitcast %struct._xmlC14NVisibleNsStack* %47 to i8*, !dbg !78
  %49 = call i8* @memset(i8* %48, i32 0, i64 24), !dbg !78
  %50 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !79
  %51 = bitcast %struct._xmlC14NVisibleNsStack* %50 to i8*, !dbg !79
  call void @free(i8* noundef %51) #7, !dbg !80
  br label %52, !dbg !81

52:                                               ; preds = %46, %5
  ret void, !dbg !81
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !82 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %2, metadata !85, metadata !DIExpression()), !dbg !86
  %4 = call noalias i8* @malloc(i64 noundef 24) #7, !dbg !87
  %5 = bitcast i8* %4 to %struct._xmlC14NVisibleNsStack*, !dbg !88
  store %struct._xmlC14NVisibleNsStack* %5, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !86
  %6 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !89
  %7 = bitcast %struct._xmlC14NVisibleNsStack* %6 to i8*, !dbg !89
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !90
  %8 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !91
  %9 = icmp ne %struct._xmlC14NVisibleNsStack* %8, null, !dbg !92
  %10 = zext i1 %9 to i32, !dbg !92
  %11 = sext i32 %10 to i64, !dbg !91
  call void @klee_assume(i64 noundef %11), !dbg !93
  %12 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !94
  %13 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %12, i32 0, i32 2, !dbg !95
  %14 = bitcast i32* %13 to i8*, !dbg !96
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !97
  %15 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !98
  %16 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %15, i32 0, i32 2, !dbg !99
  %17 = load i32, i32* %16, align 8, !dbg !99
  %18 = icmp sge i32 %17, 0, !dbg !100
  %19 = zext i1 %18 to i32, !dbg !100
  %20 = sext i32 %19 to i64, !dbg !98
  call void @klee_assume(i64 noundef %20), !dbg !101
  %21 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !102
  %22 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %21, i32 0, i32 1, !dbg !103
  %23 = bitcast %struct._xmlNode*** %22 to i8*, !dbg !104
  call void @klee_make_symbolic(i8* noundef %23, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !105
  %24 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !106
  %25 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %24, i32 0, i32 1, !dbg !107
  %26 = load %struct._xmlNode**, %struct._xmlNode*** %25, align 8, !dbg !107
  %27 = icmp ne %struct._xmlNode** %26, null, !dbg !108
  %28 = zext i1 %27 to i32, !dbg !108
  %29 = sext i32 %28 to i64, !dbg !106
  call void @klee_assume(i64 noundef %29), !dbg !109
  call void @llvm.dbg.declare(metadata i64* %3, metadata !110, metadata !DIExpression()), !dbg !114
  %30 = bitcast i64* %3 to i8*, !dbg !115
  call void @klee_make_symbolic(i8* noundef %30, i64 noundef 8, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)), !dbg !116
  %31 = load i64, i64* %3, align 8, !dbg !117
  %32 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !118
  %33 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %32, i32 0, i32 2, !dbg !119
  %34 = load i32, i32* %33, align 8, !dbg !119
  %35 = sext i32 %34 to i64, !dbg !118
  %36 = mul i64 %35, 8, !dbg !120
  %37 = icmp uge i64 %31, %36, !dbg !121
  %38 = zext i1 %37 to i32, !dbg !121
  %39 = sext i32 %38 to i64, !dbg !117
  call void @klee_assume(i64 noundef %39), !dbg !122
  %40 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !123
  %41 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %40, i32 0, i32 2, !dbg !123
  %42 = load i32, i32* %41, align 8, !dbg !123
  %43 = sext i32 %42 to i64, !dbg !123
  %44 = mul i64 %43, 8, !dbg !123
  %45 = load i64, i64* %3, align 8, !dbg !123
  %46 = icmp ule i64 %44, %45, !dbg !123
  br i1 %46, label %47, label %49, !dbg !123

47:                                               ; preds = %0
  br i1 true, label %48, label %49, !dbg !123

48:                                               ; preds = %47
  br label %51, !dbg !123

49:                                               ; preds = %47, %0
  %50 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !123
  br label %51, !dbg !123

51:                                               ; preds = %49, %48
  %52 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !124
  %53 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !125
  call void @xmlC14NVisibleNsStackDestroy(%struct._xmlC14NVisibleNsStack* noundef %53), !dbg !126
  ret i32 0, !dbg !127
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !128 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !132, metadata !DIExpression()), !dbg !133
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !134, metadata !DIExpression()), !dbg !135
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i8** %7, metadata !138, metadata !DIExpression()), !dbg !141
  %8 = load i8*, i8** %4, align 8, !dbg !142
  store i8* %8, i8** %7, align 8, !dbg !141
  br label %9, !dbg !143

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !144
  %11 = add i64 %10, -1, !dbg !144
  store i64 %11, i64* %6, align 8, !dbg !144
  %12 = icmp ugt i64 %10, 0, !dbg !145
  br i1 %12, label %13, label %18, !dbg !143

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !146
  %15 = trunc i32 %14 to i8, !dbg !146
  %16 = load i8*, i8** %7, align 8, !dbg !147
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !147
  store i8* %17, i8** %7, align 8, !dbg !147
  store i8 %15, i8* %16, align 1, !dbg !148
  br label %9, !dbg !143, !llvm.loop !149

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !151
  ret i8* %19, !dbg !152
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32, !32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/040_c14n.c_304_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "f7c5a758123f236f93c740bb13b70055")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NVisibleNsStack", file: !1, line: 22, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NVisibleNsStack", file: !1, line: 17, size: 192, elements: !7)
!7 = !{!8, !14, !20, !22}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab", scope: !6, file: !1, line: 18, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !1, line: 11, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 10, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 10, flags: DIFlagFwdDecl)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !6, file: !1, line: 19, baseType: !15, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 14, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 13, baseType: !19)
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 13, flags: DIFlagFwdDecl)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "nsMax", scope: !6, file: !1, line: 20, baseType: !21, size: 32, offset: 128)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "nsTop", scope: !6, file: !1, line: 21, baseType: !21, size: 32, offset: 160)
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
!33 = distinct !DISubprogram(name: "xmlC14NVisibleNsStackDestroy", scope: !1, file: !1, line: 28, type: !34, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !4}
!36 = !{}
!37 = !DILocalVariable(name: "cur", arg: 1, scope: !33, file: !1, line: 28, type: !4)
!38 = !DILocation(line: 28, column: 58, scope: !33)
!39 = !DILocation(line: 29, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !33, file: !1, line: 29, column: 9)
!41 = !DILocation(line: 29, column: 13, scope: !40)
!42 = !DILocation(line: 29, column: 9, scope: !33)
!43 = !DILocation(line: 30, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !40, file: !1, line: 29, column: 22)
!45 = !DILocation(line: 32, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !33, file: !1, line: 32, column: 9)
!47 = !DILocation(line: 32, column: 14, scope: !46)
!48 = !DILocation(line: 32, column: 20, scope: !46)
!49 = !DILocation(line: 32, column: 9, scope: !33)
!50 = !DILocation(line: 33, column: 16, scope: !51)
!51 = distinct !DILexicalBlock(scope: !46, file: !1, line: 32, column: 29)
!52 = !DILocation(line: 33, column: 21, scope: !51)
!53 = !DILocation(line: 33, column: 9, scope: !51)
!54 = !DILocation(line: 33, column: 31, scope: !51)
!55 = !DILocation(line: 33, column: 36, scope: !51)
!56 = !DILocation(line: 33, column: 42, scope: !51)
!57 = !DILocation(line: 34, column: 14, scope: !51)
!58 = !DILocation(line: 34, column: 19, scope: !51)
!59 = !DILocation(line: 34, column: 9, scope: !51)
!60 = !DILocation(line: 35, column: 5, scope: !51)
!61 = !DILocation(line: 36, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !33, file: !1, line: 36, column: 9)
!63 = !DILocation(line: 36, column: 14, scope: !62)
!64 = !DILocation(line: 36, column: 22, scope: !62)
!65 = !DILocation(line: 36, column: 9, scope: !33)
!66 = !DILocation(line: 38, column: 16, scope: !67)
!67 = distinct !DILexicalBlock(scope: !62, file: !1, line: 36, column: 31)
!68 = !DILocation(line: 38, column: 21, scope: !67)
!69 = !DILocation(line: 38, column: 9, scope: !67)
!70 = !DILocation(line: 38, column: 33, scope: !67)
!71 = !DILocation(line: 38, column: 38, scope: !67)
!72 = !DILocation(line: 38, column: 44, scope: !67)
!73 = !DILocation(line: 39, column: 14, scope: !67)
!74 = !DILocation(line: 39, column: 19, scope: !67)
!75 = !DILocation(line: 39, column: 9, scope: !67)
!76 = !DILocation(line: 40, column: 5, scope: !67)
!77 = !DILocation(line: 41, column: 12, scope: !33)
!78 = !DILocation(line: 41, column: 5, scope: !33)
!79 = !DILocation(line: 42, column: 10, scope: !33)
!80 = !DILocation(line: 42, column: 5, scope: !33)
!81 = !DILocation(line: 43, column: 1, scope: !33)
!82 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 45, type: !83, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!83 = !DISubroutineType(types: !84)
!84 = !{!21}
!85 = !DILocalVariable(name: "stack", scope: !82, file: !1, line: 47, type: !4)
!86 = !DILocation(line: 47, column: 28, scope: !82)
!87 = !DILocation(line: 47, column: 60, scope: !82)
!88 = !DILocation(line: 47, column: 36, scope: !82)
!89 = !DILocation(line: 48, column: 24, scope: !82)
!90 = !DILocation(line: 48, column: 5, scope: !82)
!91 = !DILocation(line: 51, column: 17, scope: !82)
!92 = !DILocation(line: 51, column: 23, scope: !82)
!93 = !DILocation(line: 51, column: 5, scope: !82)
!94 = !DILocation(line: 54, column: 25, scope: !82)
!95 = !DILocation(line: 54, column: 32, scope: !82)
!96 = !DILocation(line: 54, column: 24, scope: !82)
!97 = !DILocation(line: 54, column: 5, scope: !82)
!98 = !DILocation(line: 56, column: 17, scope: !82)
!99 = !DILocation(line: 56, column: 24, scope: !82)
!100 = !DILocation(line: 56, column: 30, scope: !82)
!101 = !DILocation(line: 56, column: 5, scope: !82)
!102 = !DILocation(line: 59, column: 25, scope: !82)
!103 = !DILocation(line: 59, column: 32, scope: !82)
!104 = !DILocation(line: 59, column: 24, scope: !82)
!105 = !DILocation(line: 59, column: 5, scope: !82)
!106 = !DILocation(line: 62, column: 17, scope: !82)
!107 = !DILocation(line: 62, column: 24, scope: !82)
!108 = !DILocation(line: 62, column: 32, scope: !82)
!109 = !DILocation(line: 62, column: 5, scope: !82)
!110 = !DILocalVariable(name: "allocated_size", scope: !82, file: !1, line: 70, type: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 46, baseType: !113)
!112 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!113 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!114 = !DILocation(line: 70, column: 12, scope: !82)
!115 = !DILocation(line: 71, column: 24, scope: !82)
!116 = !DILocation(line: 71, column: 5, scope: !82)
!117 = !DILocation(line: 72, column: 17, scope: !82)
!118 = !DILocation(line: 72, column: 35, scope: !82)
!119 = !DILocation(line: 72, column: 42, scope: !82)
!120 = !DILocation(line: 72, column: 48, scope: !82)
!121 = !DILocation(line: 72, column: 32, scope: !82)
!122 = !DILocation(line: 72, column: 5, scope: !82)
!123 = !DILocation(line: 75, column: 5, scope: !82)
!124 = !DILocation(line: 78, column: 5, scope: !82)
!125 = !DILocation(line: 82, column: 34, scope: !82)
!126 = !DILocation(line: 82, column: 5, scope: !82)
!127 = !DILocation(line: 84, column: 5, scope: !82)
!128 = distinct !DISubprogram(name: "memset", scope: !129, file: !129, line: 12, type: !130, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !36)
!129 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!130 = !DISubroutineType(types: !131)
!131 = !{!3, !3, !21, !111}
!132 = !DILocalVariable(name: "dst", arg: 1, scope: !128, file: !129, line: 12, type: !3)
!133 = !DILocation(line: 12, column: 20, scope: !128)
!134 = !DILocalVariable(name: "s", arg: 2, scope: !128, file: !129, line: 12, type: !21)
!135 = !DILocation(line: 12, column: 29, scope: !128)
!136 = !DILocalVariable(name: "count", arg: 3, scope: !128, file: !129, line: 12, type: !111)
!137 = !DILocation(line: 12, column: 39, scope: !128)
!138 = !DILocalVariable(name: "a", scope: !128, file: !129, line: 13, type: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!141 = !DILocation(line: 13, column: 9, scope: !128)
!142 = !DILocation(line: 13, column: 13, scope: !128)
!143 = !DILocation(line: 14, column: 3, scope: !128)
!144 = !DILocation(line: 14, column: 15, scope: !128)
!145 = !DILocation(line: 14, column: 18, scope: !128)
!146 = !DILocation(line: 15, column: 12, scope: !128)
!147 = !DILocation(line: 15, column: 7, scope: !128)
!148 = !DILocation(line: 15, column: 10, scope: !128)
!149 = distinct !{!149, !143, !146, !150}
!150 = !{!"llvm.loop.mustprogress"}
!151 = !DILocation(line: 16, column: 10, scope: !128)
!152 = !DILocation(line: 16, column: 3, scope: !128)
