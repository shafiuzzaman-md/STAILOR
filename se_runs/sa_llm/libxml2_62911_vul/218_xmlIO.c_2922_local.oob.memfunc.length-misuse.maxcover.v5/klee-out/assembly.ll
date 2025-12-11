; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/218_xmlIO.c_2922_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/218_xmlIO.c_2922_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlStringIOCtxt = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"(size >= 0 && (size_t)size <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/218_xmlIO.c_2922_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlStringRead = private unnamed_addr constant [39 x i8] c"int xmlStringRead(void *, char *, int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"str_buffer\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"buf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlStringRead(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !24 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlStringIOCtxt*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !31, metadata !DIExpression()), !dbg !32
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !33, metadata !DIExpression()), !dbg !34
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata %struct._xmlStringIOCtxt** %7, metadata !37, metadata !DIExpression()), !dbg !38
  %10 = load i8*, i8** %4, align 8, !dbg !39
  %11 = bitcast i8* %10 to %struct._xmlStringIOCtxt*, !dbg !40
  store %struct._xmlStringIOCtxt* %11, %struct._xmlStringIOCtxt** %7, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata i8** %8, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i64* %9, metadata !43, metadata !DIExpression()), !dbg !44
  %12 = load %struct._xmlStringIOCtxt*, %struct._xmlStringIOCtxt** %7, align 8, !dbg !45
  %13 = getelementptr inbounds %struct._xmlStringIOCtxt, %struct._xmlStringIOCtxt* %12, i32 0, i32 0, !dbg !46
  %14 = load i8*, i8** %13, align 8, !dbg !46
  %15 = load i32, i32* %6, align 4, !dbg !47
  %16 = sext i32 %15 to i64, !dbg !47
  %17 = call i8* @memchr(i8* noundef %14, i32 noundef 0, i64 noundef %16) #8, !dbg !48
  store i8* %17, i8** %8, align 8, !dbg !49
  %18 = load i8*, i8** %8, align 8, !dbg !50
  %19 = icmp ne i8* %18, null, !dbg !50
  br i1 %19, label %20, label %28, !dbg !50

20:                                               ; preds = %3
  %21 = load i8*, i8** %8, align 8, !dbg !51
  %22 = load %struct._xmlStringIOCtxt*, %struct._xmlStringIOCtxt** %7, align 8, !dbg !52
  %23 = getelementptr inbounds %struct._xmlStringIOCtxt, %struct._xmlStringIOCtxt* %22, i32 0, i32 0, !dbg !53
  %24 = load i8*, i8** %23, align 8, !dbg !53
  %25 = ptrtoint i8* %21 to i64, !dbg !54
  %26 = ptrtoint i8* %24 to i64, !dbg !54
  %27 = sub i64 %25, %26, !dbg !54
  br label %31, !dbg !50

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4, !dbg !55
  %30 = sext i32 %29 to i64, !dbg !55
  br label %31, !dbg !50

31:                                               ; preds = %28, %20
  %32 = phi i64 [ %27, %20 ], [ %30, %28 ], !dbg !50
  store i64 %32, i64* %9, align 8, !dbg !56
  %33 = load i32, i32* %6, align 4, !dbg !57
  %34 = icmp sge i32 %33, 0, !dbg !57
  br i1 %34, label %35, label %41, !dbg !57

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4, !dbg !57
  %37 = sext i32 %36 to i64, !dbg !57
  %38 = icmp ule i64 %37, 1024, !dbg !57
  br i1 %38, label %39, label %41, !dbg !57

39:                                               ; preds = %35
  br i1 true, label %40, label %41, !dbg !57

40:                                               ; preds = %39
  br label %43, !dbg !57

41:                                               ; preds = %39, %35, %31
  %42 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.xmlStringRead, i64 0, i64 0)), !dbg !57
  br label %43, !dbg !57

43:                                               ; preds = %41, %40
  %44 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.xmlStringRead, i64 0, i64 0)), !dbg !58
  %45 = load i8*, i8** %5, align 8, !dbg !59
  %46 = load %struct._xmlStringIOCtxt*, %struct._xmlStringIOCtxt** %7, align 8, !dbg !60
  %47 = getelementptr inbounds %struct._xmlStringIOCtxt, %struct._xmlStringIOCtxt* %46, i32 0, i32 0, !dbg !61
  %48 = load i8*, i8** %47, align 8, !dbg !61
  %49 = load i64, i64* %9, align 8, !dbg !62
  %50 = call i8* @memcpy(i8* %45, i8* %48, i64 %49), !dbg !63
  %51 = load i64, i64* %9, align 8, !dbg !64
  %52 = load %struct._xmlStringIOCtxt*, %struct._xmlStringIOCtxt** %7, align 8, !dbg !65
  %53 = getelementptr inbounds %struct._xmlStringIOCtxt, %struct._xmlStringIOCtxt* %52, i32 0, i32 0, !dbg !66
  %54 = load i8*, i8** %53, align 8, !dbg !67
  %55 = getelementptr inbounds i8, i8* %54, i64 %51, !dbg !67
  store i8* %55, i8** %53, align 8, !dbg !67
  %56 = load i64, i64* %9, align 8, !dbg !68
  %57 = trunc i64 %56 to i32, !dbg !68
  ret i32 %57, !dbg !69
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare i8* @memchr(i8* noundef, i32 noundef, i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlFileOpen(i8* noundef %0, i8* noundef %1) #0 !dbg !70 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !73, metadata !DIExpression()), !dbg !74
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !75, metadata !DIExpression()), !dbg !76
  %5 = call noalias i8* @malloc(i64 noundef 8) #9, !dbg !77
  ret i8* %5, !dbg !78
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !79 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlStringIOCtxt*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlStringIOCtxt** %2, metadata !82, metadata !DIExpression()), !dbg !83
  %6 = call noalias i8* @malloc(i64 noundef 8) #9, !dbg !84
  %7 = bitcast i8* %6 to %struct._xmlStringIOCtxt*, !dbg !84
  store %struct._xmlStringIOCtxt* %7, %struct._xmlStringIOCtxt** %2, align 8, !dbg !83
  %8 = load %struct._xmlStringIOCtxt*, %struct._xmlStringIOCtxt** %2, align 8, !dbg !85
  %9 = icmp ne %struct._xmlStringIOCtxt* %8, null, !dbg !85
  br i1 %9, label %11, label %10, !dbg !87

10:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !88
  br label %39, !dbg !88

11:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !89, metadata !DIExpression()), !dbg !93
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !94
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 1024, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)), !dbg !95
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 1023, !dbg !96
  %14 = load i8, i8* %13, align 1, !dbg !96
  %15 = sext i8 %14 to i32, !dbg !96
  %16 = icmp eq i32 %15, 0, !dbg !97
  %17 = zext i1 %16 to i32, !dbg !97
  %18 = sext i32 %17 to i64, !dbg !96
  call void @klee_assume(i64 noundef %18), !dbg !98
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !99
  %20 = load %struct._xmlStringIOCtxt*, %struct._xmlStringIOCtxt** %2, align 8, !dbg !100
  %21 = getelementptr inbounds %struct._xmlStringIOCtxt, %struct._xmlStringIOCtxt* %20, i32 0, i32 0, !dbg !101
  store i8* %19, i8** %21, align 8, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %4, metadata !103, metadata !DIExpression()), !dbg !104
  %22 = bitcast i32* %4 to i8*, !dbg !105
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !106
  %23 = load i32, i32* %4, align 4, !dbg !107
  %24 = icmp sge i32 %23, 0, !dbg !108
  %25 = zext i1 %24 to i32, !dbg !108
  %26 = sext i32 %25 to i64, !dbg !107
  call void @klee_assume(i64 noundef %26), !dbg !109
  %27 = load i32, i32* %4, align 4, !dbg !110
  %28 = icmp sle i32 %27, 1024, !dbg !111
  %29 = zext i1 %28 to i32, !dbg !111
  %30 = sext i32 %29 to i64, !dbg !110
  call void @klee_assume(i64 noundef %30), !dbg !112
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !113, metadata !DIExpression()), !dbg !114
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !115
  call void @klee_make_symbolic(i8* noundef %31, i64 noundef 1024, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !116
  %32 = load %struct._xmlStringIOCtxt*, %struct._xmlStringIOCtxt** %2, align 8, !dbg !117
  %33 = bitcast %struct._xmlStringIOCtxt* %32 to i8*, !dbg !117
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !118
  %35 = load i32, i32* %4, align 4, !dbg !119
  %36 = call i32 @xmlStringRead(i8* noundef %33, i8* noundef %34, i32 noundef %35), !dbg !120
  %37 = load %struct._xmlStringIOCtxt*, %struct._xmlStringIOCtxt** %2, align 8, !dbg !121
  %38 = bitcast %struct._xmlStringIOCtxt* %37 to i8*, !dbg !121
  call void @free(i8* noundef %38) #9, !dbg !122
  store i32 0, i32* %1, align 4, !dbg !123
  br label %39, !dbg !123

39:                                               ; preds = %11, %10
  %40 = load i32, i32* %1, align 4, !dbg !124
  ret i32 %40, !dbg !124
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !125 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !131, metadata !DIExpression()), !dbg !132
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !133, metadata !DIExpression()), !dbg !134
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i8** %7, metadata !137, metadata !DIExpression()), !dbg !138
  %9 = load i8*, i8** %4, align 8, !dbg !139
  store i8* %9, i8** %7, align 8, !dbg !138
  call void @llvm.dbg.declare(metadata i8** %8, metadata !140, metadata !DIExpression()), !dbg !141
  %10 = load i8*, i8** %5, align 8, !dbg !142
  store i8* %10, i8** %8, align 8, !dbg !141
  br label %11, !dbg !143

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !144
  %13 = add i64 %12, -1, !dbg !144
  store i64 %13, i64* %6, align 8, !dbg !144
  %14 = icmp ugt i64 %12, 0, !dbg !145
  br i1 %14, label %15, label %21, !dbg !143

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !146
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !146
  store i8* %17, i8** %8, align 8, !dbg !146
  %18 = load i8, i8* %16, align 1, !dbg !147
  %19 = load i8*, i8** %7, align 8, !dbg !148
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !148
  store i8* %20, i8** %7, align 8, !dbg !148
  store i8 %18, i8* %19, align 1, !dbg !149
  br label %11, !dbg !143, !llvm.loop !150

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !152
  ret i8* %22, !dbg !153
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23, !23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/218_xmlIO.c_2922_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "95e1ea4b026233e88950bf3ae4055212")
!2 = !{!3, !11}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStringIOCtxt", file: !1, line: 12, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlStringIOCtxt", file: !1, line: 10, size: 64, elements: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5, file: !1, line: 11, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 46, baseType: !13)
!12 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!13 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"Ubuntu clang version 14.0.6"}
!24 = distinct !DISubprogram(name: "xmlStringRead", scope: !1, file: !1, line: 15, type: !25, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !28, !29, !27}
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!30 = !{}
!31 = !DILocalVariable(name: "vctxt", arg: 1, scope: !24, file: !1, line: 15, type: !28)
!32 = !DILocation(line: 15, column: 25, scope: !24)
!33 = !DILocalVariable(name: "buf", arg: 2, scope: !24, file: !1, line: 15, type: !29)
!34 = !DILocation(line: 15, column: 38, scope: !24)
!35 = !DILocalVariable(name: "size", arg: 3, scope: !24, file: !1, line: 15, type: !27)
!36 = !DILocation(line: 15, column: 47, scope: !24)
!37 = !DILocalVariable(name: "ctxt", scope: !24, file: !1, line: 16, type: !3)
!38 = !DILocation(line: 16, column: 22, scope: !24)
!39 = !DILocation(line: 16, column: 48, scope: !24)
!40 = !DILocation(line: 16, column: 29, scope: !24)
!41 = !DILocalVariable(name: "zero", scope: !24, file: !1, line: 17, type: !8)
!42 = !DILocation(line: 17, column: 17, scope: !24)
!43 = !DILocalVariable(name: "len", scope: !24, file: !1, line: 18, type: !11)
!44 = !DILocation(line: 18, column: 12, scope: !24)
!45 = !DILocation(line: 21, column: 19, scope: !24)
!46 = !DILocation(line: 21, column: 25, scope: !24)
!47 = !DILocation(line: 21, column: 33, scope: !24)
!48 = !DILocation(line: 21, column: 12, scope: !24)
!49 = !DILocation(line: 21, column: 10, scope: !24)
!50 = !DILocation(line: 22, column: 11, scope: !24)
!51 = !DILocation(line: 22, column: 18, scope: !24)
!52 = !DILocation(line: 22, column: 25, scope: !24)
!53 = !DILocation(line: 22, column: 31, scope: !24)
!54 = !DILocation(line: 22, column: 23, scope: !24)
!55 = !DILocation(line: 22, column: 37, scope: !24)
!56 = !DILocation(line: 22, column: 9, scope: !24)
!57 = !DILocation(line: 25, column: 5, scope: !24)
!58 = !DILocation(line: 28, column: 5, scope: !24)
!59 = !DILocation(line: 30, column: 12, scope: !24)
!60 = !DILocation(line: 30, column: 17, scope: !24)
!61 = !DILocation(line: 30, column: 23, scope: !24)
!62 = !DILocation(line: 30, column: 28, scope: !24)
!63 = !DILocation(line: 30, column: 5, scope: !24)
!64 = !DILocation(line: 31, column: 18, scope: !24)
!65 = !DILocation(line: 31, column: 5, scope: !24)
!66 = !DILocation(line: 31, column: 11, scope: !24)
!67 = !DILocation(line: 31, column: 15, scope: !24)
!68 = !DILocation(line: 32, column: 12, scope: !24)
!69 = !DILocation(line: 32, column: 5, scope: !24)
!70 = distinct !DISubprogram(name: "xmlFileOpen", scope: !1, file: !1, line: 36, type: !71, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!71 = !DISubroutineType(types: !72)
!72 = !{!28, !8, !8}
!73 = !DILocalVariable(name: "filename", arg: 1, scope: !70, file: !1, line: 36, type: !8)
!74 = !DILocation(line: 36, column: 31, scope: !70)
!75 = !DILocalVariable(name: "encoding", arg: 2, scope: !70, file: !1, line: 36, type: !8)
!76 = !DILocation(line: 36, column: 53, scope: !70)
!77 = !DILocation(line: 38, column: 12, scope: !70)
!78 = !DILocation(line: 38, column: 5, scope: !70)
!79 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 41, type: !80, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!80 = !DISubroutineType(types: !81)
!81 = !{!27}
!82 = !DILocalVariable(name: "ctxt", scope: !79, file: !1, line: 43, type: !3)
!83 = !DILocation(line: 43, column: 22, scope: !79)
!84 = !DILocation(line: 43, column: 29, scope: !79)
!85 = !DILocation(line: 44, column: 10, scope: !86)
!86 = distinct !DILexicalBlock(scope: !79, file: !1, line: 44, column: 9)
!87 = !DILocation(line: 44, column: 9, scope: !79)
!88 = !DILocation(line: 44, column: 16, scope: !86)
!89 = !DILocalVariable(name: "str_buffer", scope: !79, file: !1, line: 47, type: !90)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8192, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1024)
!93 = !DILocation(line: 47, column: 10, scope: !79)
!94 = !DILocation(line: 48, column: 24, scope: !79)
!95 = !DILocation(line: 48, column: 5, scope: !79)
!96 = !DILocation(line: 49, column: 17, scope: !79)
!97 = !DILocation(line: 49, column: 50, scope: !79)
!98 = !DILocation(line: 49, column: 5, scope: !79)
!99 = !DILocation(line: 50, column: 17, scope: !79)
!100 = !DILocation(line: 50, column: 5, scope: !79)
!101 = !DILocation(line: 50, column: 11, scope: !79)
!102 = !DILocation(line: 50, column: 15, scope: !79)
!103 = !DILocalVariable(name: "size", scope: !79, file: !1, line: 53, type: !27)
!104 = !DILocation(line: 53, column: 9, scope: !79)
!105 = !DILocation(line: 54, column: 24, scope: !79)
!106 = !DILocation(line: 54, column: 5, scope: !79)
!107 = !DILocation(line: 55, column: 17, scope: !79)
!108 = !DILocation(line: 55, column: 22, scope: !79)
!109 = !DILocation(line: 55, column: 5, scope: !79)
!110 = !DILocation(line: 56, column: 17, scope: !79)
!111 = !DILocation(line: 56, column: 22, scope: !79)
!112 = !DILocation(line: 56, column: 5, scope: !79)
!113 = !DILocalVariable(name: "buf", scope: !79, file: !1, line: 59, type: !90)
!114 = !DILocation(line: 59, column: 10, scope: !79)
!115 = !DILocation(line: 60, column: 24, scope: !79)
!116 = !DILocation(line: 60, column: 5, scope: !79)
!117 = !DILocation(line: 63, column: 19, scope: !79)
!118 = !DILocation(line: 63, column: 25, scope: !79)
!119 = !DILocation(line: 63, column: 30, scope: !79)
!120 = !DILocation(line: 63, column: 5, scope: !79)
!121 = !DILocation(line: 65, column: 10, scope: !79)
!122 = !DILocation(line: 65, column: 5, scope: !79)
!123 = !DILocation(line: 66, column: 5, scope: !79)
!124 = !DILocation(line: 67, column: 1, scope: !79)
!125 = distinct !DISubprogram(name: "memcpy", scope: !126, file: !126, line: 12, type: !127, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !30)
!126 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!127 = !DISubroutineType(types: !128)
!128 = !{!28, !28, !129, !11}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!131 = !DILocalVariable(name: "destaddr", arg: 1, scope: !125, file: !126, line: 12, type: !28)
!132 = !DILocation(line: 12, column: 20, scope: !125)
!133 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !125, file: !126, line: 12, type: !129)
!134 = !DILocation(line: 12, column: 42, scope: !125)
!135 = !DILocalVariable(name: "len", arg: 3, scope: !125, file: !126, line: 12, type: !11)
!136 = !DILocation(line: 12, column: 58, scope: !125)
!137 = !DILocalVariable(name: "dest", scope: !125, file: !126, line: 13, type: !29)
!138 = !DILocation(line: 13, column: 9, scope: !125)
!139 = !DILocation(line: 13, column: 16, scope: !125)
!140 = !DILocalVariable(name: "src", scope: !125, file: !126, line: 14, type: !8)
!141 = !DILocation(line: 14, column: 15, scope: !125)
!142 = !DILocation(line: 14, column: 21, scope: !125)
!143 = !DILocation(line: 16, column: 3, scope: !125)
!144 = !DILocation(line: 16, column: 13, scope: !125)
!145 = !DILocation(line: 16, column: 16, scope: !125)
!146 = !DILocation(line: 17, column: 19, scope: !125)
!147 = !DILocation(line: 17, column: 15, scope: !125)
!148 = !DILocation(line: 17, column: 10, scope: !125)
!149 = !DILocation(line: 17, column: 13, scope: !125)
!150 = distinct !{!150, !143, !146, !151}
!151 = !{!"llvm.loop.mustprogress"}
!152 = !DILocation(line: 18, column: 10, scope: !125)
!153 = !DILocation(line: 18, column: 3, scope: !125)
