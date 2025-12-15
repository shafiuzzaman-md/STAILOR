; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/082_dict.c_290_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/082_dict.c_290_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type { %struct._xmlDictStrings* }
%struct._xmlDictStrings = type { %struct._xmlDictStrings*, i8*, i8*, i32, i32, [1 x i8] }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"namelen\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"(pool.free + namelen + 1 <= pool.end) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/082_dict.c_290_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlDict, align 8
  %5 = alloca %struct._xmlDictStrings, align 8
  %6 = alloca [512 x i8], align 16
  %7 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %3, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata %struct._xmlDict* %4, metadata !25, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata %struct._xmlDictStrings* %5, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata [512 x i8]* %6, metadata !47, metadata !DIExpression()), !dbg !51
  %8 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %4, i32 0, i32 0, !dbg !52
  store %struct._xmlDictStrings* %5, %struct._xmlDictStrings** %8, align 8, !dbg !53
  %9 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %5, i32 0, i32 0, !dbg !54
  store %struct._xmlDictStrings* null, %struct._xmlDictStrings** %9, align 8, !dbg !55
  %10 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0, !dbg !56
  %11 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %5, i32 0, i32 1, !dbg !57
  store i8* %10, i8** %11, align 8, !dbg !58
  %12 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0, !dbg !59
  %13 = getelementptr inbounds i8, i8* %12, i64 512, !dbg !60
  %14 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %5, i32 0, i32 2, !dbg !61
  store i8* %13, i8** %14, align 8, !dbg !62
  %15 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %5, i32 0, i32 3, !dbg !63
  store i32 512, i32* %15, align 8, !dbg !64
  %16 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %5, i32 0, i32 4, !dbg !65
  store i32 0, i32* %16, align 4, !dbg !66
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !67
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !68
  %18 = bitcast i32* %3 to i8*, !dbg !69
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !70
  %19 = load i32, i32* %3, align 4, !dbg !71
  %20 = icmp sge i32 %19, 0, !dbg !72
  br i1 %20, label %21, label %24, !dbg !73

21:                                               ; preds = %0
  %22 = load i32, i32* %3, align 4, !dbg !74
  %23 = icmp slt i32 %22, 256, !dbg !75
  br label %24

24:                                               ; preds = %21, %0
  %25 = phi i1 [ false, %0 ], [ %23, %21 ], !dbg !76
  %26 = zext i1 %25 to i32, !dbg !73
  %27 = sext i32 %26 to i64, !dbg !71
  call void @klee_assume(i64 noundef %27), !dbg !77
  %28 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %5, i32 0, i32 1, !dbg !78
  %29 = load i8*, i8** %28, align 8, !dbg !78
  %30 = load i32, i32* %3, align 4, !dbg !79
  %31 = sext i32 %30 to i64, !dbg !80
  %32 = getelementptr inbounds i8, i8* %29, i64 %31, !dbg !80
  %33 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !81
  %34 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %5, i32 0, i32 2, !dbg !82
  %35 = load i8*, i8** %34, align 8, !dbg !82
  %36 = icmp ule i8* %33, %35, !dbg !83
  %37 = zext i1 %36 to i32, !dbg !83
  %38 = sext i32 %37 to i64, !dbg !84
  call void @klee_assume(i64 noundef %38), !dbg !85
  call void @llvm.dbg.declare(metadata i8** %7, metadata !86, metadata !DIExpression()), !dbg !89
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !90
  %40 = load i32, i32* %3, align 4, !dbg !91
  %41 = call i8* @xmlDictAddString(%struct._xmlDict* noundef %4, i8* noundef %39, i32 noundef %40), !dbg !92
  store i8* %41, i8** %7, align 8, !dbg !89
  %42 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %5, i32 0, i32 1, !dbg !93
  %43 = load i8*, i8** %42, align 8, !dbg !93
  %44 = load i32, i32* %3, align 4, !dbg !93
  %45 = sext i32 %44 to i64, !dbg !93
  %46 = getelementptr inbounds i8, i8* %43, i64 %45, !dbg !93
  %47 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !93
  %48 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %5, i32 0, i32 2, !dbg !93
  %49 = load i8*, i8** %48, align 8, !dbg !93
  %50 = icmp ule i8* %47, %49, !dbg !93
  br i1 %50, label %51, label %53, !dbg !93

51:                                               ; preds = %24
  br i1 true, label %52, label %53, !dbg !93

52:                                               ; preds = %51
  br label %55, !dbg !93

53:                                               ; preds = %51, %24
  %54 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !93
  br label %55, !dbg !93

55:                                               ; preds = %53, %52
  %56 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !94
  ret i32 0, !dbg !95
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlDictAddString(%struct._xmlDict* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !96 {
  %4 = alloca %struct._xmlDict*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlDictStrings*, align 8
  %8 = alloca i8*, align 8
  store %struct._xmlDict* %0, %struct._xmlDict** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %4, metadata !100, metadata !DIExpression()), !dbg !101
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !102, metadata !DIExpression()), !dbg !103
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata %struct._xmlDictStrings** %7, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i8** %8, metadata !108, metadata !DIExpression()), !dbg !109
  %9 = load %struct._xmlDict*, %struct._xmlDict** %4, align 8, !dbg !110
  %10 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %9, i32 0, i32 0, !dbg !111
  %11 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %10, align 8, !dbg !111
  store %struct._xmlDictStrings* %11, %struct._xmlDictStrings** %7, align 8, !dbg !112
  br label %12, !dbg !113

12:                                               ; preds = %3
  call void @llvm.dbg.label(metadata !114), !dbg !115
  %13 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !116
  %14 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %13, i32 0, i32 1, !dbg !117
  %15 = load i8*, i8** %14, align 8, !dbg !117
  store i8* %15, i8** %8, align 8, !dbg !118
  %16 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !119
  %17 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %16, i32 0, i32 1, !dbg !120
  %18 = load i8*, i8** %17, align 8, !dbg !120
  %19 = load i8*, i8** %5, align 8, !dbg !121
  %20 = load i32, i32* %6, align 4, !dbg !122
  %21 = sext i32 %20 to i64, !dbg !122
  %22 = call i8* @memcpy(i8* %18, i8* %19, i64 %21), !dbg !123
  %23 = load i32, i32* %6, align 4, !dbg !124
  %24 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !125
  %25 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %24, i32 0, i32 1, !dbg !126
  %26 = load i8*, i8** %25, align 8, !dbg !127
  %27 = sext i32 %23 to i64, !dbg !127
  %28 = getelementptr inbounds i8, i8* %26, i64 %27, !dbg !127
  store i8* %28, i8** %25, align 8, !dbg !127
  %29 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !128
  %30 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %29, i32 0, i32 1, !dbg !129
  %31 = load i8*, i8** %30, align 8, !dbg !130
  %32 = getelementptr inbounds i8, i8* %31, i32 1, !dbg !130
  store i8* %32, i8** %30, align 8, !dbg !130
  store i8 0, i8* %31, align 1, !dbg !131
  %33 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !132
  %34 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %33, i32 0, i32 4, !dbg !133
  %35 = load i32, i32* %34, align 4, !dbg !134
  %36 = add nsw i32 %35, 1, !dbg !134
  store i32 %36, i32* %34, align 4, !dbg !134
  %37 = load i8*, i8** %8, align 8, !dbg !135
  ret i8* %37, !dbg !136
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !137 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !147, metadata !DIExpression()), !dbg !148
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !149, metadata !DIExpression()), !dbg !150
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata i8** %7, metadata !153, metadata !DIExpression()), !dbg !154
  %9 = load i8*, i8** %4, align 8, !dbg !155
  store i8* %9, i8** %7, align 8, !dbg !154
  call void @llvm.dbg.declare(metadata i8** %8, metadata !156, metadata !DIExpression()), !dbg !157
  %10 = load i8*, i8** %5, align 8, !dbg !158
  store i8* %10, i8** %8, align 8, !dbg !157
  br label %11, !dbg !159

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !160
  %13 = add i64 %12, -1, !dbg !160
  store i64 %13, i64* %6, align 8, !dbg !160
  %14 = icmp ugt i64 %12, 0, !dbg !161
  br i1 %14, label %15, label %21, !dbg !159

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !162
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !162
  store i8* %17, i8** %8, align 8, !dbg !162
  %18 = load i8, i8* %16, align 1, !dbg !163
  %19 = load i8*, i8** %7, align 8, !dbg !164
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !164
  store i8* %20, i8** %7, align 8, !dbg !164
  store i8 %18, i8* %19, align 1, !dbg !165
  br label %11, !dbg !159, !llvm.loop !166

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !168
  ret i8* %22, !dbg !169
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/082_dict.c_290_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3063aa0bb2cbefda5b3b3f1341235b97")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 30, type: !13, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "name", scope: !12, file: !1, line: 32, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 256)
!22 = !DILocation(line: 32, column: 10, scope: !12)
!23 = !DILocalVariable(name: "namelen", scope: !12, file: !1, line: 33, type: !15)
!24 = !DILocation(line: 33, column: 9, scope: !12)
!25 = !DILocalVariable(name: "dict", scope: !12, file: !1, line: 34, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !1, line: 10, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !1, line: 22, size: 64, elements: !28)
!28 = !{!29}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "strings", scope: !27, file: !1, line: 23, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictStrings", file: !1, line: 11, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDictStrings", file: !1, line: 13, size: 320, elements: !33)
!33 = !{!34, !35, !37, !38, !39, !40}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !32, file: !1, line: 14, baseType: !30, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !32, file: !1, line: 15, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !32, file: !1, line: 16, baseType: !36, size: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !32, file: !1, line: 17, baseType: !15, size: 32, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "nbStrings", scope: !32, file: !1, line: 18, baseType: !15, size: 32, offset: 224)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !32, file: !1, line: 19, baseType: !41, size: 8, offset: 256)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 1)
!44 = !DILocation(line: 34, column: 13, scope: !12)
!45 = !DILocalVariable(name: "pool", scope: !12, file: !1, line: 35, type: !31)
!46 = !DILocation(line: 35, column: 20, scope: !12)
!47 = !DILocalVariable(name: "pool_array", scope: !12, file: !1, line: 36, type: !48)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 4096, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 512)
!51 = !DILocation(line: 36, column: 10, scope: !12)
!52 = !DILocation(line: 39, column: 10, scope: !12)
!53 = !DILocation(line: 39, column: 18, scope: !12)
!54 = !DILocation(line: 42, column: 10, scope: !12)
!55 = !DILocation(line: 42, column: 15, scope: !12)
!56 = !DILocation(line: 43, column: 17, scope: !12)
!57 = !DILocation(line: 43, column: 10, scope: !12)
!58 = !DILocation(line: 43, column: 15, scope: !12)
!59 = !DILocation(line: 44, column: 16, scope: !12)
!60 = !DILocation(line: 44, column: 27, scope: !12)
!61 = !DILocation(line: 44, column: 10, scope: !12)
!62 = !DILocation(line: 44, column: 14, scope: !12)
!63 = !DILocation(line: 45, column: 10, scope: !12)
!64 = !DILocation(line: 45, column: 15, scope: !12)
!65 = !DILocation(line: 46, column: 10, scope: !12)
!66 = !DILocation(line: 46, column: 20, scope: !12)
!67 = !DILocation(line: 49, column: 24, scope: !12)
!68 = !DILocation(line: 49, column: 5, scope: !12)
!69 = !DILocation(line: 50, column: 24, scope: !12)
!70 = !DILocation(line: 50, column: 5, scope: !12)
!71 = !DILocation(line: 53, column: 17, scope: !12)
!72 = !DILocation(line: 53, column: 25, scope: !12)
!73 = !DILocation(line: 53, column: 30, scope: !12)
!74 = !DILocation(line: 53, column: 33, scope: !12)
!75 = !DILocation(line: 53, column: 41, scope: !12)
!76 = !DILocation(line: 0, scope: !12)
!77 = !DILocation(line: 53, column: 5, scope: !12)
!78 = !DILocation(line: 57, column: 22, scope: !12)
!79 = !DILocation(line: 57, column: 29, scope: !12)
!80 = !DILocation(line: 57, column: 27, scope: !12)
!81 = !DILocation(line: 57, column: 37, scope: !12)
!82 = !DILocation(line: 57, column: 49, scope: !12)
!83 = !DILocation(line: 57, column: 41, scope: !12)
!84 = !DILocation(line: 57, column: 17, scope: !12)
!85 = !DILocation(line: 57, column: 5, scope: !12)
!86 = !DILocalVariable(name: "result", scope: !12, file: !1, line: 60, type: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!89 = !DILocation(line: 60, column: 17, scope: !12)
!90 = !DILocation(line: 60, column: 50, scope: !12)
!91 = !DILocation(line: 60, column: 56, scope: !12)
!92 = !DILocation(line: 60, column: 26, scope: !12)
!93 = !DILocation(line: 64, column: 5, scope: !12)
!94 = !DILocation(line: 67, column: 5, scope: !12)
!95 = !DILocation(line: 69, column: 5, scope: !12)
!96 = distinct !DISubprogram(name: "xmlDictAddString", scope: !1, file: !1, line: 73, type: !97, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!97 = !DISubroutineType(types: !98)
!98 = !{!87, !99, !87, !15}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!100 = !DILocalVariable(name: "dict", arg: 1, scope: !96, file: !1, line: 73, type: !99)
!101 = !DILocation(line: 73, column: 39, scope: !96)
!102 = !DILocalVariable(name: "name", arg: 2, scope: !96, file: !1, line: 73, type: !87)
!103 = !DILocation(line: 73, column: 57, scope: !96)
!104 = !DILocalVariable(name: "namelen", arg: 3, scope: !96, file: !1, line: 73, type: !15)
!105 = !DILocation(line: 73, column: 67, scope: !96)
!106 = !DILocalVariable(name: "pool", scope: !96, file: !1, line: 74, type: !30)
!107 = !DILocation(line: 74, column: 21, scope: !96)
!108 = !DILocalVariable(name: "ret", scope: !96, file: !1, line: 75, type: !87)
!109 = !DILocation(line: 75, column: 17, scope: !96)
!110 = !DILocation(line: 77, column: 12, scope: !96)
!111 = !DILocation(line: 77, column: 18, scope: !96)
!112 = !DILocation(line: 77, column: 10, scope: !96)
!113 = !DILocation(line: 80, column: 5, scope: !96)
!114 = !DILabel(scope: !96, name: "found_pool", file: !1, line: 82)
!115 = !DILocation(line: 82, column: 1, scope: !96)
!116 = !DILocation(line: 83, column: 11, scope: !96)
!117 = !DILocation(line: 83, column: 17, scope: !96)
!118 = !DILocation(line: 83, column: 9, scope: !96)
!119 = !DILocation(line: 85, column: 12, scope: !96)
!120 = !DILocation(line: 85, column: 18, scope: !96)
!121 = !DILocation(line: 85, column: 24, scope: !96)
!122 = !DILocation(line: 85, column: 30, scope: !96)
!123 = !DILocation(line: 85, column: 5, scope: !96)
!124 = !DILocation(line: 86, column: 19, scope: !96)
!125 = !DILocation(line: 86, column: 5, scope: !96)
!126 = !DILocation(line: 86, column: 11, scope: !96)
!127 = !DILocation(line: 86, column: 16, scope: !96)
!128 = !DILocation(line: 87, column: 7, scope: !96)
!129 = !DILocation(line: 87, column: 13, scope: !96)
!130 = !DILocation(line: 87, column: 17, scope: !96)
!131 = !DILocation(line: 87, column: 21, scope: !96)
!132 = !DILocation(line: 88, column: 5, scope: !96)
!133 = !DILocation(line: 88, column: 11, scope: !96)
!134 = !DILocation(line: 88, column: 20, scope: !96)
!135 = !DILocation(line: 89, column: 12, scope: !96)
!136 = !DILocation(line: 89, column: 5, scope: !96)
!137 = distinct !DISubprogram(name: "memcpy", scope: !138, file: !138, line: 12, type: !139, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!138 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!139 = !DISubroutineType(types: !140)
!140 = !{!141, !141, !142, !144}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !145, line: 46, baseType: !146)
!145 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!146 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!147 = !DILocalVariable(name: "destaddr", arg: 1, scope: !137, file: !138, line: 12, type: !141)
!148 = !DILocation(line: 12, column: 20, scope: !137)
!149 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !137, file: !138, line: 12, type: !142)
!150 = !DILocation(line: 12, column: 42, scope: !137)
!151 = !DILocalVariable(name: "len", arg: 3, scope: !137, file: !138, line: 12, type: !144)
!152 = !DILocation(line: 12, column: 58, scope: !137)
!153 = !DILocalVariable(name: "dest", scope: !137, file: !138, line: 13, type: !36)
!154 = !DILocation(line: 13, column: 9, scope: !137)
!155 = !DILocation(line: 13, column: 16, scope: !137)
!156 = !DILocalVariable(name: "src", scope: !137, file: !138, line: 14, type: !87)
!157 = !DILocation(line: 14, column: 15, scope: !137)
!158 = !DILocation(line: 14, column: 21, scope: !137)
!159 = !DILocation(line: 16, column: 3, scope: !137)
!160 = !DILocation(line: 16, column: 13, scope: !137)
!161 = !DILocation(line: 16, column: 16, scope: !137)
!162 = !DILocation(line: 17, column: 19, scope: !137)
!163 = !DILocation(line: 17, column: 15, scope: !137)
!164 = !DILocation(line: 17, column: 10, scope: !137)
!165 = !DILocation(line: 17, column: 13, scope: !137)
!166 = distinct !{!166, !159, !162, !167}
!167 = !{!"llvm.loop.mustprogress"}
!168 = !DILocation(line: 18, column: 10, scope: !137)
!169 = !DILocation(line: 18, column: 3, scope: !137)
