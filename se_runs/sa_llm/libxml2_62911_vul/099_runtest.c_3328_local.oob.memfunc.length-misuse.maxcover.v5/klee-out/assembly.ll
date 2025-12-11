; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/099_runtest.c_3328_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/099_runtest.c_3328_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uri_parser_context = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@context = internal global %struct.uri_parser_context* null, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [10 x i8] c"urip_rlen\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ptr_data\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"(len <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/099_runtest.c_3328_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.uri_parser_read = private unnamed_addr constant [55 x i8] c"int uri_parser_read(uri_parser_context *, char *, int)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_uri_parser_read() #0 !dbg !26 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !30, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %3, metadata !35, metadata !DIExpression()), !dbg !36
  %5 = bitcast i32* %3 to i8*, !dbg !37
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !38
  %6 = load i32, i32* %3, align 4, !dbg !39
  %7 = icmp sge i32 %6, 0, !dbg !40
  %8 = zext i1 %7 to i32, !dbg !40
  %9 = sext i32 %8 to i64, !dbg !39
  call void @klee_assume(i64 noundef %9), !dbg !41
  %10 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !42
  %11 = bitcast i8* %10 to %struct.uri_parser_context*, !dbg !43
  store %struct.uri_parser_context* %11, %struct.uri_parser_context** @context, align 8, !dbg !44
  %12 = load %struct.uri_parser_context*, %struct.uri_parser_context** @context, align 8, !dbg !45
  %13 = icmp ne %struct.uri_parser_context* %12, null, !dbg !45
  br i1 %13, label %15, label %14, !dbg !47

14:                                               ; preds = %0
  store i32 -1, i32* %1, align 4, !dbg !48
  br label %49, !dbg !48

15:                                               ; preds = %0
  %16 = load %struct.uri_parser_context*, %struct.uri_parser_context** @context, align 8, !dbg !49
  %17 = getelementptr inbounds %struct.uri_parser_context, %struct.uri_parser_context* %16, i32 0, i32 0, !dbg !50
  %18 = bitcast i32* %17 to i8*, !dbg !51
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)), !dbg !52
  %19 = load %struct.uri_parser_context*, %struct.uri_parser_context** @context, align 8, !dbg !53
  %20 = getelementptr inbounds %struct.uri_parser_context, %struct.uri_parser_context* %19, i32 0, i32 0, !dbg !54
  %21 = load i32, i32* %20, align 8, !dbg !54
  %22 = icmp sge i32 %21, 0, !dbg !55
  %23 = zext i1 %22 to i32, !dbg !55
  %24 = sext i32 %23 to i64, !dbg !53
  call void @klee_assume(i64 noundef %24), !dbg !56
  %25 = call noalias i8* @malloc(i64 noundef 1024) #7, !dbg !57
  %26 = load %struct.uri_parser_context*, %struct.uri_parser_context** @context, align 8, !dbg !58
  %27 = getelementptr inbounds %struct.uri_parser_context, %struct.uri_parser_context* %26, i32 0, i32 1, !dbg !59
  store i8* %25, i8** %27, align 8, !dbg !60
  %28 = load %struct.uri_parser_context*, %struct.uri_parser_context** @context, align 8, !dbg !61
  %29 = getelementptr inbounds %struct.uri_parser_context, %struct.uri_parser_context* %28, i32 0, i32 1, !dbg !63
  %30 = load i8*, i8** %29, align 8, !dbg !63
  %31 = icmp ne i8* %30, null, !dbg !61
  br i1 %31, label %35, label %32, !dbg !64

32:                                               ; preds = %15
  %33 = load %struct.uri_parser_context*, %struct.uri_parser_context** @context, align 8, !dbg !65
  %34 = bitcast %struct.uri_parser_context* %33 to i8*, !dbg !65
  call void @free(i8* noundef %34) #7, !dbg !67
  store i32 -1, i32* %1, align 4, !dbg !68
  br label %49, !dbg !68

35:                                               ; preds = %15
  %36 = load %struct.uri_parser_context*, %struct.uri_parser_context** @context, align 8, !dbg !69
  %37 = getelementptr inbounds %struct.uri_parser_context, %struct.uri_parser_context* %36, i32 0, i32 1, !dbg !70
  %38 = load i8*, i8** %37, align 8, !dbg !70
  call void @klee_make_symbolic(i8* noundef %38, i64 noundef 1024, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %4, metadata !72, metadata !DIExpression()), !dbg !73
  %39 = load %struct.uri_parser_context*, %struct.uri_parser_context** @context, align 8, !dbg !74
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !75
  %41 = load i32, i32* %3, align 4, !dbg !76
  %42 = call i32 @uri_parser_read(%struct.uri_parser_context* noundef %39, i8* noundef %40, i32 noundef %41), !dbg !77
  store i32 %42, i32* %4, align 4, !dbg !73
  %43 = load %struct.uri_parser_context*, %struct.uri_parser_context** @context, align 8, !dbg !78
  %44 = getelementptr inbounds %struct.uri_parser_context, %struct.uri_parser_context* %43, i32 0, i32 1, !dbg !79
  %45 = load i8*, i8** %44, align 8, !dbg !79
  call void @free(i8* noundef %45) #7, !dbg !80
  %46 = load %struct.uri_parser_context*, %struct.uri_parser_context** @context, align 8, !dbg !81
  %47 = bitcast %struct.uri_parser_context* %46 to i8*, !dbg !81
  call void @free(i8* noundef %47) #7, !dbg !82
  store %struct.uri_parser_context* null, %struct.uri_parser_context** @context, align 8, !dbg !83
  %48 = load i32, i32* %4, align 4, !dbg !84
  store i32 %48, i32* %1, align 4, !dbg !85
  br label %49, !dbg !85

49:                                               ; preds = %35, %32, %14
  %50 = load i32, i32* %1, align 4, !dbg !86
  ret i32 %50, !dbg !86
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
define internal i32 @uri_parser_read(%struct.uri_parser_context* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !87 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uri_parser_context*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.uri_parser_context* %0, %struct.uri_parser_context** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.uri_parser_context** %5, metadata !90, metadata !DIExpression()), !dbg !91
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !92, metadata !DIExpression()), !dbg !93
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %8, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata i8** %9, metadata !98, metadata !DIExpression()), !dbg !99
  %10 = load %struct.uri_parser_context*, %struct.uri_parser_context** %5, align 8, !dbg !100
  %11 = icmp eq %struct.uri_parser_context* %10, null, !dbg !102
  br i1 %11, label %18, label %12, !dbg !103

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8, !dbg !104
  %14 = icmp eq i8* %13, null, !dbg !105
  br i1 %14, label %18, label %15, !dbg !106

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4, !dbg !107
  %17 = icmp slt i32 %16, 0, !dbg !108
  br i1 %17, label %18, label %19, !dbg !109

18:                                               ; preds = %15, %12, %3
  store i32 -1, i32* %4, align 4, !dbg !110
  br label %49, !dbg !110

19:                                               ; preds = %15
  %20 = load %struct.uri_parser_context*, %struct.uri_parser_context** %5, align 8, !dbg !111
  %21 = getelementptr inbounds %struct.uri_parser_context, %struct.uri_parser_context* %20, i32 0, i32 0, !dbg !112
  %22 = load i32, i32* %21, align 8, !dbg !112
  store i32 %22, i32* %8, align 4, !dbg !113
  %23 = load %struct.uri_parser_context*, %struct.uri_parser_context** %5, align 8, !dbg !114
  %24 = getelementptr inbounds %struct.uri_parser_context, %struct.uri_parser_context* %23, i32 0, i32 1, !dbg !115
  %25 = load i8*, i8** %24, align 8, !dbg !115
  store i8* %25, i8** %9, align 8, !dbg !116
  %26 = load i32, i32* %7, align 4, !dbg !117
  %27 = load i32, i32* %8, align 4, !dbg !119
  %28 = icmp sgt i32 %26, %27, !dbg !120
  br i1 %28, label %29, label %31, !dbg !121

29:                                               ; preds = %19
  %30 = load i32, i32* %8, align 4, !dbg !122
  store i32 %30, i32* %7, align 4, !dbg !123
  br label %31, !dbg !124

31:                                               ; preds = %29, %19
  %32 = load i32, i32* %7, align 4, !dbg !125
  %33 = icmp sle i32 %32, 1024, !dbg !125
  br i1 %33, label %34, label %36, !dbg !125

34:                                               ; preds = %31
  br i1 true, label %35, label %36, !dbg !125

35:                                               ; preds = %34
  br label %38, !dbg !125

36:                                               ; preds = %34, %31
  %37 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.uri_parser_read, i64 0, i64 0)), !dbg !125
  br label %38, !dbg !125

38:                                               ; preds = %36, %35
  %39 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.uri_parser_read, i64 0, i64 0)), !dbg !126
  %40 = load i8*, i8** %6, align 8, !dbg !127
  %41 = load i8*, i8** %9, align 8, !dbg !128
  %42 = load i32, i32* %7, align 4, !dbg !129
  %43 = sext i32 %42 to i64, !dbg !129
  %44 = call i8* @memcpy(i8* %40, i8* %41, i64 %43), !dbg !130
  %45 = load i32, i32* %7, align 4, !dbg !131
  %46 = load i32, i32* %8, align 4, !dbg !132
  %47 = sub nsw i32 %46, %45, !dbg !132
  store i32 %47, i32* %8, align 4, !dbg !132
  %48 = load i32, i32* %7, align 4, !dbg !133
  store i32 %48, i32* %4, align 4, !dbg !134
  br label %49, !dbg !134

49:                                               ; preds = %38, %18
  %50 = load i32, i32* %4, align 4, !dbg !135
  ret i32 %50, !dbg !135
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !136 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @test_uri_parser_read(), !dbg !137
  ret i32 0, !dbg !138
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !139 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !148, metadata !DIExpression()), !dbg !149
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !150, metadata !DIExpression()), !dbg !151
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata i8** %7, metadata !154, metadata !DIExpression()), !dbg !155
  %9 = load i8*, i8** %4, align 8, !dbg !156
  store i8* %9, i8** %7, align 8, !dbg !155
  call void @llvm.dbg.declare(metadata i8** %8, metadata !157, metadata !DIExpression()), !dbg !160
  %10 = load i8*, i8** %5, align 8, !dbg !161
  store i8* %10, i8** %8, align 8, !dbg !160
  br label %11, !dbg !162

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !163
  %13 = add i64 %12, -1, !dbg !163
  store i64 %13, i64* %6, align 8, !dbg !163
  %14 = icmp ugt i64 %12, 0, !dbg !164
  br i1 %14, label %15, label %21, !dbg !162

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !165
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !165
  store i8* %17, i8** %8, align 8, !dbg !165
  %18 = load i8, i8* %16, align 1, !dbg !166
  %19 = load i8*, i8** %7, align 8, !dbg !167
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !167
  store i8* %20, i8** %7, align 8, !dbg !167
  store i8 %18, i8* %19, align 1, !dbg !168
  br label %11, !dbg !162, !llvm.loop !169

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !171
  ret i8* %22, !dbg !172
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25, !25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "context", scope: !2, file: !3, line: 16, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/099_runtest.c_3328_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "7412204fdc76ea87583745f20aa94fd6")
!4 = !{!5, !12, !14}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uri_parser_context", file: !3, line: 13, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 10, size: 128, elements: !8)
!8 = !{!9, !11}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "urip_rlen", scope: !7, file: !3, line: 11, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !7, file: !3, line: 12, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !{!0}
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!18 = !{i32 7, !"Dwarf Version", i32 5}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{i32 7, !"PIC Level", i32 2}
!22 = !{i32 7, !"PIE Level", i32 2}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"Ubuntu clang version 14.0.6"}
!26 = distinct !DISubprogram(name: "test_uri_parser_read", scope: !3, file: !3, line: 43, type: !27, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !29)
!27 = !DISubroutineType(types: !28)
!28 = !{!10}
!29 = !{}
!30 = !DILocalVariable(name: "buffer", scope: !26, file: !3, line: 44, type: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8192, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 1024)
!34 = !DILocation(line: 44, column: 10, scope: !26)
!35 = !DILocalVariable(name: "len", scope: !26, file: !3, line: 45, type: !10)
!36 = !DILocation(line: 45, column: 9, scope: !26)
!37 = !DILocation(line: 48, column: 24, scope: !26)
!38 = !DILocation(line: 48, column: 5, scope: !26)
!39 = !DILocation(line: 51, column: 17, scope: !26)
!40 = !DILocation(line: 51, column: 21, scope: !26)
!41 = !DILocation(line: 51, column: 5, scope: !26)
!42 = !DILocation(line: 54, column: 37, scope: !26)
!43 = !DILocation(line: 54, column: 15, scope: !26)
!44 = !DILocation(line: 54, column: 13, scope: !26)
!45 = !DILocation(line: 55, column: 10, scope: !46)
!46 = distinct !DILexicalBlock(scope: !26, file: !3, line: 55, column: 9)
!47 = !DILocation(line: 55, column: 9, scope: !26)
!48 = !DILocation(line: 55, column: 19, scope: !46)
!49 = !DILocation(line: 58, column: 25, scope: !26)
!50 = !DILocation(line: 58, column: 34, scope: !26)
!51 = !DILocation(line: 58, column: 24, scope: !26)
!52 = !DILocation(line: 58, column: 5, scope: !26)
!53 = !DILocation(line: 59, column: 17, scope: !26)
!54 = !DILocation(line: 59, column: 26, scope: !26)
!55 = !DILocation(line: 59, column: 36, scope: !26)
!56 = !DILocation(line: 59, column: 5, scope: !26)
!57 = !DILocation(line: 62, column: 28, scope: !26)
!58 = !DILocation(line: 62, column: 5, scope: !26)
!59 = !DILocation(line: 62, column: 14, scope: !26)
!60 = !DILocation(line: 62, column: 18, scope: !26)
!61 = !DILocation(line: 63, column: 10, scope: !62)
!62 = distinct !DILexicalBlock(scope: !26, file: !3, line: 63, column: 9)
!63 = !DILocation(line: 63, column: 19, scope: !62)
!64 = !DILocation(line: 63, column: 9, scope: !26)
!65 = !DILocation(line: 64, column: 14, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !3, line: 63, column: 24)
!67 = !DILocation(line: 64, column: 9, scope: !66)
!68 = !DILocation(line: 65, column: 9, scope: !66)
!69 = !DILocation(line: 69, column: 24, scope: !26)
!70 = !DILocation(line: 69, column: 33, scope: !26)
!71 = !DILocation(line: 69, column: 5, scope: !26)
!72 = !DILocalVariable(name: "result", scope: !26, file: !3, line: 72, type: !10)
!73 = !DILocation(line: 72, column: 9, scope: !26)
!74 = !DILocation(line: 72, column: 34, scope: !26)
!75 = !DILocation(line: 72, column: 43, scope: !26)
!76 = !DILocation(line: 72, column: 51, scope: !26)
!77 = !DILocation(line: 72, column: 18, scope: !26)
!78 = !DILocation(line: 75, column: 10, scope: !26)
!79 = !DILocation(line: 75, column: 19, scope: !26)
!80 = !DILocation(line: 75, column: 5, scope: !26)
!81 = !DILocation(line: 76, column: 10, scope: !26)
!82 = !DILocation(line: 76, column: 5, scope: !26)
!83 = !DILocation(line: 77, column: 13, scope: !26)
!84 = !DILocation(line: 79, column: 12, scope: !26)
!85 = !DILocation(line: 79, column: 5, scope: !26)
!86 = !DILocation(line: 80, column: 1, scope: !26)
!87 = distinct !DISubprogram(name: "uri_parser_read", scope: !3, file: !3, line: 19, type: !88, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !29)
!88 = !DISubroutineType(types: !89)
!89 = !{!10, !5, !12, !10}
!90 = !DILocalVariable(name: "context", arg: 1, scope: !87, file: !3, line: 19, type: !5)
!91 = !DILocation(line: 19, column: 48, scope: !87)
!92 = !DILocalVariable(name: "buffer", arg: 2, scope: !87, file: !3, line: 19, type: !12)
!93 = !DILocation(line: 19, column: 63, scope: !87)
!94 = !DILocalVariable(name: "len", arg: 3, scope: !87, file: !3, line: 19, type: !10)
!95 = !DILocation(line: 19, column: 75, scope: !87)
!96 = !DILocalVariable(name: "urip_rlen", scope: !87, file: !3, line: 20, type: !10)
!97 = !DILocation(line: 20, column: 9, scope: !87)
!98 = !DILocalVariable(name: "ptr", scope: !87, file: !3, line: 21, type: !12)
!99 = !DILocation(line: 21, column: 11, scope: !87)
!100 = !DILocation(line: 23, column: 10, scope: !101)
!101 = distinct !DILexicalBlock(scope: !87, file: !3, line: 23, column: 9)
!102 = !DILocation(line: 23, column: 18, scope: !101)
!103 = !DILocation(line: 23, column: 27, scope: !101)
!104 = !DILocation(line: 23, column: 31, scope: !101)
!105 = !DILocation(line: 23, column: 38, scope: !101)
!106 = !DILocation(line: 23, column: 47, scope: !101)
!107 = !DILocation(line: 23, column: 51, scope: !101)
!108 = !DILocation(line: 23, column: 55, scope: !101)
!109 = !DILocation(line: 23, column: 9, scope: !87)
!110 = !DILocation(line: 24, column: 9, scope: !101)
!111 = !DILocation(line: 27, column: 17, scope: !87)
!112 = !DILocation(line: 27, column: 26, scope: !87)
!113 = !DILocation(line: 27, column: 15, scope: !87)
!114 = !DILocation(line: 28, column: 11, scope: !87)
!115 = !DILocation(line: 28, column: 20, scope: !87)
!116 = !DILocation(line: 28, column: 9, scope: !87)
!117 = !DILocation(line: 30, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !87, file: !3, line: 30, column: 9)
!119 = !DILocation(line: 30, column: 15, scope: !118)
!120 = !DILocation(line: 30, column: 13, scope: !118)
!121 = !DILocation(line: 30, column: 9, scope: !87)
!122 = !DILocation(line: 30, column: 32, scope: !118)
!123 = !DILocation(line: 30, column: 30, scope: !118)
!124 = !DILocation(line: 30, column: 26, scope: !118)
!125 = !DILocation(line: 34, column: 5, scope: !87)
!126 = !DILocation(line: 35, column: 5, scope: !87)
!127 = !DILocation(line: 37, column: 12, scope: !87)
!128 = !DILocation(line: 37, column: 20, scope: !87)
!129 = !DILocation(line: 37, column: 25, scope: !87)
!130 = !DILocation(line: 37, column: 5, scope: !87)
!131 = !DILocation(line: 38, column: 18, scope: !87)
!132 = !DILocation(line: 38, column: 15, scope: !87)
!133 = !DILocation(line: 39, column: 12, scope: !87)
!134 = !DILocation(line: 39, column: 5, scope: !87)
!135 = !DILocation(line: 40, column: 1, scope: !87)
!136 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 82, type: !27, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !29)
!137 = !DILocation(line: 84, column: 5, scope: !136)
!138 = !DILocation(line: 85, column: 5, scope: !136)
!139 = distinct !DISubprogram(name: "memcpy", scope: !140, file: !140, line: 12, type: !141, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !29)
!140 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!141 = !DISubroutineType(types: !142)
!142 = !{!14, !14, !143, !145}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !146, line: 46, baseType: !147)
!146 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!147 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!148 = !DILocalVariable(name: "destaddr", arg: 1, scope: !139, file: !140, line: 12, type: !14)
!149 = !DILocation(line: 12, column: 20, scope: !139)
!150 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !139, file: !140, line: 12, type: !143)
!151 = !DILocation(line: 12, column: 42, scope: !139)
!152 = !DILocalVariable(name: "len", arg: 3, scope: !139, file: !140, line: 12, type: !145)
!153 = !DILocation(line: 12, column: 58, scope: !139)
!154 = !DILocalVariable(name: "dest", scope: !139, file: !140, line: 13, type: !12)
!155 = !DILocation(line: 13, column: 9, scope: !139)
!156 = !DILocation(line: 13, column: 16, scope: !139)
!157 = !DILocalVariable(name: "src", scope: !139, file: !140, line: 14, type: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!160 = !DILocation(line: 14, column: 15, scope: !139)
!161 = !DILocation(line: 14, column: 21, scope: !139)
!162 = !DILocation(line: 16, column: 3, scope: !139)
!163 = !DILocation(line: 16, column: 13, scope: !139)
!164 = !DILocation(line: 16, column: 16, scope: !139)
!165 = !DILocation(line: 17, column: 19, scope: !139)
!166 = !DILocation(line: 17, column: 15, scope: !139)
!167 = !DILocation(line: 17, column: 10, scope: !139)
!168 = !DILocation(line: 17, column: 13, scope: !139)
!169 = distinct !{!169, !162, !165, !170}
!170 = !{!"llvm.loop.mustprogress"}
!171 = !DILocation(line: 18, column: 10, scope: !139)
!172 = !DILocation(line: 18, column: 3, scope: !139)
