; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/220_xmlIO.c_2845_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/220_xmlIO.c_2845_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlMemIOCtxt = type { i8*, i64 }

@.str = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"backing_memory\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ctxt_size\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"(symbolic_size <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/220_xmlIO.c_2845_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__xmlIOErr() #0 !dbg !25 {
  ret void, !dbg !29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !30 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [1024 x i8], align 16
  %4 = alloca %struct._xmlMemIOCtxt, align 8
  %5 = alloca [2048 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !35, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata %struct._xmlMemIOCtxt* %4, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata [2048 x i8]* %5, metadata !42, metadata !DIExpression()), !dbg !46
  %8 = bitcast i32* %2 to i8*, !dbg !47
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !48
  %9 = load i32, i32* %2, align 4, !dbg !49
  %10 = icmp sge i32 %9, 0, !dbg !50
  %11 = zext i1 %10 to i32, !dbg !50
  %12 = sext i32 %11 to i64, !dbg !49
  call void @klee_assume(i64 noundef %12), !dbg !51
  %13 = load i32, i32* %2, align 4, !dbg !52
  %14 = icmp sle i32 %13, 1024, !dbg !53
  %15 = zext i1 %14 to i32, !dbg !53
  %16 = sext i32 %15 to i64, !dbg !52
  call void @klee_assume(i64 noundef %16), !dbg !54
  %17 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0, !dbg !55
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 2048, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !56
  %18 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0, !dbg !57
  %19 = getelementptr inbounds %struct._xmlMemIOCtxt, %struct._xmlMemIOCtxt* %4, i32 0, i32 0, !dbg !58
  store i8* %18, i8** %19, align 8, !dbg !59
  call void @llvm.dbg.declare(metadata i64* %6, metadata !60, metadata !DIExpression()), !dbg !61
  %20 = bitcast i64* %6 to i8*, !dbg !62
  call void @klee_make_symbolic(i8* noundef %20, i64 noundef 8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)), !dbg !63
  %21 = load i64, i64* %6, align 8, !dbg !64
  %22 = icmp ule i64 %21, 2048, !dbg !65
  %23 = zext i1 %22 to i32, !dbg !65
  %24 = sext i32 %23 to i64, !dbg !64
  call void @klee_assume(i64 noundef %24), !dbg !66
  %25 = load i64, i64* %6, align 8, !dbg !67
  %26 = getelementptr inbounds %struct._xmlMemIOCtxt, %struct._xmlMemIOCtxt* %4, i32 0, i32 1, !dbg !68
  store i64 %25, i64* %26, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %7, metadata !70, metadata !DIExpression()), !dbg !71
  %27 = bitcast %struct._xmlMemIOCtxt* %4 to i8*, !dbg !72
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !73
  %29 = load i32, i32* %2, align 4, !dbg !74
  %30 = call i32 @xmlMemRead(i8* noundef %27, i8* noundef %28, i32 noundef %29), !dbg !75
  store i32 %30, i32* %7, align 4, !dbg !71
  %31 = load i32, i32* %2, align 4, !dbg !76
  %32 = icmp sle i32 %31, 1024, !dbg !76
  br i1 %32, label %33, label %35, !dbg !76

33:                                               ; preds = %0
  br i1 true, label %34, label %35, !dbg !76

34:                                               ; preds = %33
  br label %37, !dbg !76

35:                                               ; preds = %33, %0
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !76
  br label %37, !dbg !76

37:                                               ; preds = %35, %34
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !77
  ret i32 0, !dbg !78
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlMemRead(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !79 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlMemIOCtxt*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !83, metadata !DIExpression()), !dbg !84
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !85, metadata !DIExpression()), !dbg !86
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata %struct._xmlMemIOCtxt** %7, metadata !89, metadata !DIExpression()), !dbg !90
  %8 = load i8*, i8** %4, align 8, !dbg !91
  %9 = bitcast i8* %8 to %struct._xmlMemIOCtxt*, !dbg !92
  store %struct._xmlMemIOCtxt* %9, %struct._xmlMemIOCtxt** %7, align 8, !dbg !90
  %10 = load i32, i32* %6, align 4, !dbg !93
  %11 = sext i32 %10 to i64, !dbg !95
  %12 = load %struct._xmlMemIOCtxt*, %struct._xmlMemIOCtxt** %7, align 8, !dbg !96
  %13 = getelementptr inbounds %struct._xmlMemIOCtxt, %struct._xmlMemIOCtxt* %12, i32 0, i32 1, !dbg !97
  %14 = load i64, i64* %13, align 8, !dbg !97
  %15 = icmp ugt i64 %11, %14, !dbg !98
  br i1 %15, label %16, label %21, !dbg !99

16:                                               ; preds = %3
  %17 = load %struct._xmlMemIOCtxt*, %struct._xmlMemIOCtxt** %7, align 8, !dbg !100
  %18 = getelementptr inbounds %struct._xmlMemIOCtxt, %struct._xmlMemIOCtxt* %17, i32 0, i32 1, !dbg !101
  %19 = load i64, i64* %18, align 8, !dbg !101
  %20 = trunc i64 %19 to i32, !dbg !102
  store i32 %20, i32* %6, align 4, !dbg !103
  br label %21, !dbg !104

21:                                               ; preds = %16, %3
  %22 = load i8*, i8** %5, align 8, !dbg !105
  %23 = load %struct._xmlMemIOCtxt*, %struct._xmlMemIOCtxt** %7, align 8, !dbg !106
  %24 = getelementptr inbounds %struct._xmlMemIOCtxt, %struct._xmlMemIOCtxt* %23, i32 0, i32 0, !dbg !107
  %25 = load i8*, i8** %24, align 8, !dbg !107
  %26 = load i32, i32* %6, align 4, !dbg !108
  %27 = sext i32 %26 to i64, !dbg !108
  %28 = call i8* @memcpy(i8* %22, i8* %25, i64 %27), !dbg !109
  %29 = load i32, i32* %6, align 4, !dbg !110
  %30 = load %struct._xmlMemIOCtxt*, %struct._xmlMemIOCtxt** %7, align 8, !dbg !111
  %31 = getelementptr inbounds %struct._xmlMemIOCtxt, %struct._xmlMemIOCtxt* %30, i32 0, i32 0, !dbg !112
  %32 = load i8*, i8** %31, align 8, !dbg !113
  %33 = sext i32 %29 to i64, !dbg !113
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !113
  store i8* %34, i8** %31, align 8, !dbg !113
  %35 = load i32, i32* %6, align 4, !dbg !114
  %36 = sext i32 %35 to i64, !dbg !114
  %37 = load %struct._xmlMemIOCtxt*, %struct._xmlMemIOCtxt** %7, align 8, !dbg !115
  %38 = getelementptr inbounds %struct._xmlMemIOCtxt, %struct._xmlMemIOCtxt* %37, i32 0, i32 1, !dbg !116
  %39 = load i64, i64* %38, align 8, !dbg !117
  %40 = sub i64 %39, %36, !dbg !117
  store i64 %40, i64* %38, align 8, !dbg !117
  %41 = load i32, i32* %6, align 4, !dbg !118
  ret i32 %41, !dbg !119
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !120 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !126, metadata !DIExpression()), !dbg !127
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !128, metadata !DIExpression()), !dbg !129
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i8** %7, metadata !132, metadata !DIExpression()), !dbg !133
  %9 = load i8*, i8** %4, align 8, !dbg !134
  store i8* %9, i8** %7, align 8, !dbg !133
  call void @llvm.dbg.declare(metadata i8** %8, metadata !135, metadata !DIExpression()), !dbg !138
  %10 = load i8*, i8** %5, align 8, !dbg !139
  store i8* %10, i8** %8, align 8, !dbg !138
  br label %11, !dbg !140

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !141
  %13 = add i64 %12, -1, !dbg !141
  store i64 %13, i64* %6, align 8, !dbg !141
  %14 = icmp ugt i64 %12, 0, !dbg !142
  br i1 %14, label %15, label %21, !dbg !140

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !143
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !143
  store i8* %17, i8** %8, align 8, !dbg !143
  %18 = load i8, i8* %16, align 1, !dbg !144
  %19 = load i8*, i8** %7, align 8, !dbg !145
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !145
  store i8* %20, i8** %7, align 8, !dbg !145
  store i8 %18, i8* %19, align 1, !dbg !146
  br label %11, !dbg !140, !llvm.loop !147

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !149
  ret i8* %22, !dbg !150
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24, !24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/220_xmlIO.c_2845_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "503e70603419c740228ad20a88da5cec")
!2 = !{!3, !11, !14}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlMemIOCtxt", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlMemIOCtxt", file: !1, line: 11, size: 128, elements: !6)
!6 = !{!7, !10}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !5, file: !1, line: 12, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5, file: !1, line: 13, baseType: !11, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 46, baseType: !13)
!12 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!13 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"Ubuntu clang version 14.0.6"}
!25 = distinct !DISubprogram(name: "__xmlIOErr", scope: !1, file: !1, line: 17, type: !26, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{null}
!28 = !{}
!29 = !DILocation(line: 19, column: 1, scope: !25)
!30 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 37, type: !31, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!31 = !DISubroutineType(types: !32)
!32 = !{!14}
!33 = !DILocalVariable(name: "symbolic_size", scope: !30, file: !1, line: 39, type: !14)
!34 = !DILocation(line: 39, column: 9, scope: !30)
!35 = !DILocalVariable(name: "symbolic_buf", scope: !30, file: !1, line: 40, type: !36)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8192, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 1024)
!39 = !DILocation(line: 40, column: 10, scope: !30)
!40 = !DILocalVariable(name: "ctxt", scope: !30, file: !1, line: 41, type: !4)
!41 = !DILocation(line: 41, column: 18, scope: !30)
!42 = !DILocalVariable(name: "backing_memory", scope: !30, file: !1, line: 42, type: !43)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 16384, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 2048)
!46 = !DILocation(line: 42, column: 10, scope: !30)
!47 = !DILocation(line: 45, column: 24, scope: !30)
!48 = !DILocation(line: 45, column: 5, scope: !30)
!49 = !DILocation(line: 46, column: 17, scope: !30)
!50 = !DILocation(line: 46, column: 31, scope: !30)
!51 = !DILocation(line: 46, column: 5, scope: !30)
!52 = !DILocation(line: 47, column: 17, scope: !30)
!53 = !DILocation(line: 47, column: 31, scope: !30)
!54 = !DILocation(line: 47, column: 5, scope: !30)
!55 = !DILocation(line: 50, column: 24, scope: !30)
!56 = !DILocation(line: 50, column: 5, scope: !30)
!57 = !DILocation(line: 51, column: 16, scope: !30)
!58 = !DILocation(line: 51, column: 10, scope: !30)
!59 = !DILocation(line: 51, column: 14, scope: !30)
!60 = !DILocalVariable(name: "symbolic_ctxt_size", scope: !30, file: !1, line: 54, type: !11)
!61 = !DILocation(line: 54, column: 12, scope: !30)
!62 = !DILocation(line: 55, column: 24, scope: !30)
!63 = !DILocation(line: 55, column: 5, scope: !30)
!64 = !DILocation(line: 56, column: 17, scope: !30)
!65 = !DILocation(line: 56, column: 36, scope: !30)
!66 = !DILocation(line: 56, column: 5, scope: !30)
!67 = !DILocation(line: 57, column: 17, scope: !30)
!68 = !DILocation(line: 57, column: 10, scope: !30)
!69 = !DILocation(line: 57, column: 15, scope: !30)
!70 = !DILocalVariable(name: "result", scope: !30, file: !1, line: 60, type: !14)
!71 = !DILocation(line: 60, column: 9, scope: !30)
!72 = !DILocation(line: 60, column: 29, scope: !30)
!73 = !DILocation(line: 60, column: 36, scope: !30)
!74 = !DILocation(line: 60, column: 50, scope: !30)
!75 = !DILocation(line: 60, column: 18, scope: !30)
!76 = !DILocation(line: 63, column: 5, scope: !30)
!77 = !DILocation(line: 66, column: 5, scope: !30)
!78 = !DILocation(line: 68, column: 5, scope: !30)
!79 = distinct !DISubprogram(name: "xmlMemRead", scope: !1, file: !1, line: 22, type: !80, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !28)
!80 = !DISubroutineType(types: !81)
!81 = !{!14, !82, !8, !14}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!83 = !DILocalVariable(name: "vctxt", arg: 1, scope: !79, file: !1, line: 22, type: !82)
!84 = !DILocation(line: 22, column: 29, scope: !79)
!85 = !DILocalVariable(name: "buf", arg: 2, scope: !79, file: !1, line: 22, type: !8)
!86 = !DILocation(line: 22, column: 42, scope: !79)
!87 = !DILocalVariable(name: "size", arg: 3, scope: !79, file: !1, line: 22, type: !14)
!88 = !DILocation(line: 22, column: 51, scope: !79)
!89 = !DILocalVariable(name: "ctxt", scope: !79, file: !1, line: 23, type: !3)
!90 = !DILocation(line: 23, column: 19, scope: !79)
!91 = !DILocation(line: 23, column: 42, scope: !79)
!92 = !DILocation(line: 23, column: 26, scope: !79)
!93 = !DILocation(line: 25, column: 17, scope: !94)
!94 = distinct !DILexicalBlock(scope: !79, file: !1, line: 25, column: 9)
!95 = !DILocation(line: 25, column: 9, scope: !94)
!96 = !DILocation(line: 25, column: 24, scope: !94)
!97 = !DILocation(line: 25, column: 30, scope: !94)
!98 = !DILocation(line: 25, column: 22, scope: !94)
!99 = !DILocation(line: 25, column: 9, scope: !79)
!100 = !DILocation(line: 26, column: 21, scope: !94)
!101 = !DILocation(line: 26, column: 27, scope: !94)
!102 = !DILocation(line: 26, column: 16, scope: !94)
!103 = !DILocation(line: 26, column: 14, scope: !94)
!104 = !DILocation(line: 26, column: 9, scope: !94)
!105 = !DILocation(line: 29, column: 12, scope: !79)
!106 = !DILocation(line: 29, column: 17, scope: !79)
!107 = !DILocation(line: 29, column: 23, scope: !79)
!108 = !DILocation(line: 29, column: 28, scope: !79)
!109 = !DILocation(line: 29, column: 5, scope: !79)
!110 = !DILocation(line: 30, column: 18, scope: !79)
!111 = !DILocation(line: 30, column: 5, scope: !79)
!112 = !DILocation(line: 30, column: 11, scope: !79)
!113 = !DILocation(line: 30, column: 15, scope: !79)
!114 = !DILocation(line: 31, column: 19, scope: !79)
!115 = !DILocation(line: 31, column: 5, scope: !79)
!116 = !DILocation(line: 31, column: 11, scope: !79)
!117 = !DILocation(line: 31, column: 16, scope: !79)
!118 = !DILocation(line: 33, column: 12, scope: !79)
!119 = !DILocation(line: 33, column: 5, scope: !79)
!120 = distinct !DISubprogram(name: "memcpy", scope: !121, file: !121, line: 12, type: !122, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !28)
!121 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!122 = !DISubroutineType(types: !123)
!123 = !{!82, !82, !124, !11}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!126 = !DILocalVariable(name: "destaddr", arg: 1, scope: !120, file: !121, line: 12, type: !82)
!127 = !DILocation(line: 12, column: 20, scope: !120)
!128 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !120, file: !121, line: 12, type: !124)
!129 = !DILocation(line: 12, column: 42, scope: !120)
!130 = !DILocalVariable(name: "len", arg: 3, scope: !120, file: !121, line: 12, type: !11)
!131 = !DILocation(line: 12, column: 58, scope: !120)
!132 = !DILocalVariable(name: "dest", scope: !120, file: !121, line: 13, type: !8)
!133 = !DILocation(line: 13, column: 9, scope: !120)
!134 = !DILocation(line: 13, column: 16, scope: !120)
!135 = !DILocalVariable(name: "src", scope: !120, file: !121, line: 14, type: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!138 = !DILocation(line: 14, column: 15, scope: !120)
!139 = !DILocation(line: 14, column: 21, scope: !120)
!140 = !DILocation(line: 16, column: 3, scope: !120)
!141 = !DILocation(line: 16, column: 13, scope: !120)
!142 = !DILocation(line: 16, column: 16, scope: !120)
!143 = !DILocation(line: 17, column: 19, scope: !120)
!144 = !DILocation(line: 17, column: 15, scope: !120)
!145 = !DILocation(line: 17, column: 10, scope: !120)
!146 = !DILocation(line: 17, column: 13, scope: !120)
!147 = distinct !{!147, !140, !143, !148}
!148 = !{!"llvm.loop.mustprogress"}
!149 = !DILocation(line: 18, column: 10, scope: !120)
!150 = !DILocation(line: 18, column: 3, scope: !120)
