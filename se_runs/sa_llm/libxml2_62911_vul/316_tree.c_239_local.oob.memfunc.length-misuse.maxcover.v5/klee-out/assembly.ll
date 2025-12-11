; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/316_tree.c_239_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/316_tree.c_239_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ncname\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"(strlen(ncname) < 256 && strlen(prefix) < 256) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/316_tree.c_239_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !16 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !21, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !26, metadata !DIExpression()), !dbg !27
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !28
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !29
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !30
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !31
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !32
  store i8 0, i8* %7, align 1, !dbg !33
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !34
  store i8 0, i8* %8, align 1, !dbg !35
  call void @llvm.dbg.declare(metadata i8** %4, metadata !36, metadata !DIExpression()), !dbg !37
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !38
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !39
  %11 = call i8* @xmlStringGetNodeList(i8* noundef %9, i8* noundef %10), !dbg !40
  store i8* %11, i8** %4, align 8, !dbg !37
  %12 = load i8*, i8** %4, align 8, !dbg !41
  %13 = icmp eq i8* %12, null, !dbg !43
  br i1 %13, label %14, label %15, !dbg !44

14:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !45
  br label %30, !dbg !45

15:                                               ; preds = %0
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !47
  %17 = call i64 @strlen(i8* noundef %16) #8, !dbg !47
  %18 = icmp ult i64 %17, 256, !dbg !47
  br i1 %18, label %19, label %25, !dbg !47

19:                                               ; preds = %15
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !47
  %21 = call i64 @strlen(i8* noundef %20) #8, !dbg !47
  %22 = icmp ult i64 %21, 256, !dbg !47
  br i1 %22, label %23, label %25, !dbg !47

23:                                               ; preds = %19
  br i1 true, label %24, label %25, !dbg !47

24:                                               ; preds = %23
  br label %27, !dbg !47

25:                                               ; preds = %23, %19, %15
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !47
  br label %27, !dbg !47

27:                                               ; preds = %25, %24
  %28 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !48
  %29 = load i8*, i8** %4, align 8, !dbg !49
  call void @free(i8* noundef %29) #9, !dbg !50
  store i32 0, i32* %1, align 4, !dbg !51
  br label %30, !dbg !51

30:                                               ; preds = %27, %14
  %31 = load i32, i32* %1, align 4, !dbg !52
  ret i32 %31, !dbg !52
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStringGetNodeList(i8* noundef %0, i8* noundef %1) #0 !dbg !53 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !58, metadata !DIExpression()), !dbg !59
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !60, metadata !DIExpression()), !dbg !61
  %9 = load i8*, i8** %4, align 8, !dbg !62
  %10 = icmp eq i8* %9, null, !dbg !64
  br i1 %10, label %14, label %11, !dbg !65

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8, !dbg !66
  %13 = icmp eq i8* %12, null, !dbg !67
  br i1 %13, label %14, label %15, !dbg !68

14:                                               ; preds = %11, %2
  store i8* null, i8** %3, align 8, !dbg !69
  br label %51, !dbg !69

15:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata i64* %6, metadata !71, metadata !DIExpression()), !dbg !75
  %16 = load i8*, i8** %4, align 8, !dbg !76
  %17 = call i64 @strlen(i8* noundef %16) #8, !dbg !77
  store i64 %17, i64* %6, align 8, !dbg !75
  call void @llvm.dbg.declare(metadata i64* %7, metadata !78, metadata !DIExpression()), !dbg !79
  %18 = load i8*, i8** %5, align 8, !dbg !80
  %19 = call i64 @strlen(i8* noundef %18) #8, !dbg !81
  store i64 %19, i64* %7, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata i8** %8, metadata !82, metadata !DIExpression()), !dbg !83
  %20 = load i64, i64* %6, align 8, !dbg !84
  %21 = load i64, i64* %7, align 8, !dbg !85
  %22 = add i64 %20, %21, !dbg !86
  %23 = add i64 %22, 2, !dbg !87
  %24 = call noalias i8* @malloc(i64 noundef %23) #9, !dbg !88
  store i8* %24, i8** %8, align 8, !dbg !83
  %25 = load i8*, i8** %8, align 8, !dbg !89
  %26 = icmp eq i8* %25, null, !dbg !91
  br i1 %26, label %27, label %28, !dbg !92

27:                                               ; preds = %15
  store i8* null, i8** %3, align 8, !dbg !93
  br label %51, !dbg !93

28:                                               ; preds = %15
  %29 = load i8*, i8** %8, align 8, !dbg !95
  %30 = getelementptr inbounds i8, i8* %29, i64 0, !dbg !95
  %31 = load i8*, i8** %4, align 8, !dbg !96
  %32 = load i64, i64* %6, align 8, !dbg !97
  %33 = call i8* @memcpy(i8* %30, i8* %31, i64 %32), !dbg !98
  %34 = load i8*, i8** %8, align 8, !dbg !99
  %35 = load i64, i64* %6, align 8, !dbg !100
  %36 = getelementptr inbounds i8, i8* %34, i64 %35, !dbg !99
  store i8 58, i8* %36, align 1, !dbg !101
  %37 = load i8*, i8** %8, align 8, !dbg !102
  %38 = load i64, i64* %6, align 8, !dbg !103
  %39 = add i64 %38, 1, !dbg !104
  %40 = getelementptr inbounds i8, i8* %37, i64 %39, !dbg !102
  %41 = load i8*, i8** %5, align 8, !dbg !105
  %42 = load i64, i64* %7, align 8, !dbg !106
  %43 = call i8* @memcpy(i8* %40, i8* %41, i64 %42), !dbg !107
  %44 = load i8*, i8** %8, align 8, !dbg !108
  %45 = load i64, i64* %7, align 8, !dbg !109
  %46 = load i64, i64* %6, align 8, !dbg !110
  %47 = add i64 %45, %46, !dbg !111
  %48 = add i64 %47, 1, !dbg !112
  %49 = getelementptr inbounds i8, i8* %44, i64 %48, !dbg !108
  store i8 0, i8* %49, align 1, !dbg !113
  %50 = load i8*, i8** %8, align 8, !dbg !114
  store i8* %50, i8** %3, align 8, !dbg !115
  br label %51, !dbg !115

51:                                               ; preds = %28, %27, %14
  %52 = load i8*, i8** %3, align 8, !dbg !116
  ret i8* %52, !dbg !116
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !117 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !123, metadata !DIExpression()), !dbg !124
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !125, metadata !DIExpression()), !dbg !126
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata i8** %7, metadata !129, metadata !DIExpression()), !dbg !130
  %9 = load i8*, i8** %4, align 8, !dbg !131
  store i8* %9, i8** %7, align 8, !dbg !130
  call void @llvm.dbg.declare(metadata i8** %8, metadata !132, metadata !DIExpression()), !dbg !133
  %10 = load i8*, i8** %5, align 8, !dbg !134
  store i8* %10, i8** %8, align 8, !dbg !133
  br label %11, !dbg !135

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !136
  %13 = add i64 %12, -1, !dbg !136
  store i64 %13, i64* %6, align 8, !dbg !136
  %14 = icmp ugt i64 %12, 0, !dbg !137
  br i1 %14, label %15, label %21, !dbg !135

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !138
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !138
  store i8* %17, i8** %8, align 8, !dbg !138
  %18 = load i8, i8* %16, align 1, !dbg !139
  %19 = load i8*, i8** %7, align 8, !dbg !140
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !140
  store i8* %20, i8** %7, align 8, !dbg !140
  store i8 %18, i8* %19, align 1, !dbg !141
  br label %11, !dbg !135, !llvm.loop !142

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !144
  ret i8* %22, !dbg !145
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/316_tree.c_239_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3ee79f6afc157c27ffde931251648df4")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !17, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{}
!21 = !DILocalVariable(name: "prefix", scope: !16, file: !1, line: 14, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 256)
!25 = !DILocation(line: 14, column: 10, scope: !16)
!26 = !DILocalVariable(name: "ncname", scope: !16, file: !1, line: 15, type: !22)
!27 = !DILocation(line: 15, column: 10, scope: !16)
!28 = !DILocation(line: 17, column: 24, scope: !16)
!29 = !DILocation(line: 17, column: 5, scope: !16)
!30 = !DILocation(line: 18, column: 24, scope: !16)
!31 = !DILocation(line: 18, column: 5, scope: !16)
!32 = !DILocation(line: 21, column: 5, scope: !16)
!33 = !DILocation(line: 21, column: 17, scope: !16)
!34 = !DILocation(line: 22, column: 5, scope: !16)
!35 = !DILocation(line: 22, column: 17, scope: !16)
!36 = !DILocalVariable(name: "result", scope: !16, file: !1, line: 25, type: !4)
!37 = !DILocation(line: 25, column: 11, scope: !16)
!38 = !DILocation(line: 25, column: 41, scope: !16)
!39 = !DILocation(line: 25, column: 49, scope: !16)
!40 = !DILocation(line: 25, column: 20, scope: !16)
!41 = !DILocation(line: 28, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !16, file: !1, line: 28, column: 9)
!43 = !DILocation(line: 28, column: 16, scope: !42)
!44 = !DILocation(line: 28, column: 9, scope: !16)
!45 = !DILocation(line: 29, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !1, line: 28, column: 25)
!47 = !DILocation(line: 72, column: 5, scope: !16)
!48 = !DILocation(line: 75, column: 5, scope: !16)
!49 = !DILocation(line: 77, column: 10, scope: !16)
!50 = !DILocation(line: 77, column: 5, scope: !16)
!51 = !DILocation(line: 78, column: 5, scope: !16)
!52 = !DILocation(line: 79, column: 1, scope: !16)
!53 = distinct !DISubprogram(name: "xmlStringGetNodeList", scope: !1, file: !1, line: 82, type: !54, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!54 = !DISubroutineType(types: !55)
!55 = !{!4, !56, !56}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!58 = !DILocalVariable(name: "prefix", arg: 1, scope: !53, file: !1, line: 82, type: !56)
!59 = !DILocation(line: 82, column: 40, scope: !53)
!60 = !DILocalVariable(name: "ncname", arg: 2, scope: !53, file: !1, line: 82, type: !56)
!61 = !DILocation(line: 82, column: 60, scope: !53)
!62 = !DILocation(line: 83, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !53, file: !1, line: 83, column: 9)
!64 = !DILocation(line: 83, column: 16, scope: !63)
!65 = !DILocation(line: 83, column: 24, scope: !63)
!66 = !DILocation(line: 83, column: 27, scope: !63)
!67 = !DILocation(line: 83, column: 34, scope: !63)
!68 = !DILocation(line: 83, column: 9, scope: !53)
!69 = !DILocation(line: 84, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !63, file: !1, line: 83, column: 43)
!71 = !DILocalVariable(name: "lenp", scope: !53, file: !1, line: 87, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !73, line: 46, baseType: !74)
!73 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!74 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!75 = !DILocation(line: 87, column: 12, scope: !53)
!76 = !DILocation(line: 87, column: 26, scope: !53)
!77 = !DILocation(line: 87, column: 19, scope: !53)
!78 = !DILocalVariable(name: "lenn", scope: !53, file: !1, line: 88, type: !72)
!79 = !DILocation(line: 88, column: 12, scope: !53)
!80 = !DILocation(line: 88, column: 26, scope: !53)
!81 = !DILocation(line: 88, column: 19, scope: !53)
!82 = !DILocalVariable(name: "ret", scope: !53, file: !1, line: 91, type: !4)
!83 = !DILocation(line: 91, column: 11, scope: !53)
!84 = !DILocation(line: 91, column: 31, scope: !53)
!85 = !DILocation(line: 91, column: 38, scope: !53)
!86 = !DILocation(line: 91, column: 36, scope: !53)
!87 = !DILocation(line: 91, column: 43, scope: !53)
!88 = !DILocation(line: 91, column: 24, scope: !53)
!89 = !DILocation(line: 92, column: 9, scope: !90)
!90 = distinct !DILexicalBlock(scope: !53, file: !1, line: 92, column: 9)
!91 = !DILocation(line: 92, column: 13, scope: !90)
!92 = !DILocation(line: 92, column: 9, scope: !53)
!93 = !DILocation(line: 93, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 92, column: 22)
!95 = !DILocation(line: 97, column: 13, scope: !53)
!96 = !DILocation(line: 97, column: 21, scope: !53)
!97 = !DILocation(line: 97, column: 29, scope: !53)
!98 = !DILocation(line: 97, column: 5, scope: !53)
!99 = !DILocation(line: 98, column: 5, scope: !53)
!100 = !DILocation(line: 98, column: 9, scope: !53)
!101 = !DILocation(line: 98, column: 15, scope: !53)
!102 = !DILocation(line: 101, column: 13, scope: !53)
!103 = !DILocation(line: 101, column: 17, scope: !53)
!104 = !DILocation(line: 101, column: 22, scope: !53)
!105 = !DILocation(line: 101, column: 28, scope: !53)
!106 = !DILocation(line: 101, column: 36, scope: !53)
!107 = !DILocation(line: 101, column: 5, scope: !53)
!108 = !DILocation(line: 103, column: 5, scope: !53)
!109 = !DILocation(line: 103, column: 9, scope: !53)
!110 = !DILocation(line: 103, column: 16, scope: !53)
!111 = !DILocation(line: 103, column: 14, scope: !53)
!112 = !DILocation(line: 103, column: 21, scope: !53)
!113 = !DILocation(line: 103, column: 26, scope: !53)
!114 = !DILocation(line: 104, column: 12, scope: !53)
!115 = !DILocation(line: 104, column: 5, scope: !53)
!116 = !DILocation(line: 105, column: 1, scope: !53)
!117 = distinct !DISubprogram(name: "memcpy", scope: !118, file: !118, line: 12, type: !119, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !20)
!118 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!119 = !DISubroutineType(types: !120)
!120 = !{!3, !3, !121, !72}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!123 = !DILocalVariable(name: "destaddr", arg: 1, scope: !117, file: !118, line: 12, type: !3)
!124 = !DILocation(line: 12, column: 20, scope: !117)
!125 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !117, file: !118, line: 12, type: !121)
!126 = !DILocation(line: 12, column: 42, scope: !117)
!127 = !DILocalVariable(name: "len", arg: 3, scope: !117, file: !118, line: 12, type: !72)
!128 = !DILocation(line: 12, column: 58, scope: !117)
!129 = !DILocalVariable(name: "dest", scope: !117, file: !118, line: 13, type: !4)
!130 = !DILocation(line: 13, column: 9, scope: !117)
!131 = !DILocation(line: 13, column: 16, scope: !117)
!132 = !DILocalVariable(name: "src", scope: !117, file: !118, line: 14, type: !56)
!133 = !DILocation(line: 14, column: 15, scope: !117)
!134 = !DILocation(line: 14, column: 21, scope: !117)
!135 = !DILocation(line: 16, column: 3, scope: !117)
!136 = !DILocation(line: 16, column: 13, scope: !117)
!137 = !DILocation(line: 16, column: 16, scope: !117)
!138 = !DILocation(line: 17, column: 19, scope: !117)
!139 = !DILocation(line: 17, column: 15, scope: !117)
!140 = !DILocation(line: 17, column: 10, scope: !117)
!141 = !DILocation(line: 17, column: 13, scope: !117)
!142 = distinct !{!142, !135, !138, !143}
!143 = !{!"llvm.loop.mustprogress"}
!144 = !DILocation(line: 18, column: 10, scope: !117)
!145 = !DILocation(line: 18, column: 3, scope: !117)
