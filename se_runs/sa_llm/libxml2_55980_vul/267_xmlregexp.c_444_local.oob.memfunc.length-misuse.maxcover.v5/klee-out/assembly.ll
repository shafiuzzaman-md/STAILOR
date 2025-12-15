; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/267_xmlregexp.c_444_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/267_xmlregexp.c_444_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"dim1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dim2\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"elemSize\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"(dim1 <= (18446744073709551615UL) / dim2 / elemSize) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_55980_vul/267_xmlregexp.c_444_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"/home/shafi/tools/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.8 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.9 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

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
define dso_local i8* @xmlRealloc(i8* noundef %0, i64 noundef %1) #0 !dbg !28 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !31, metadata !DIExpression()), !dbg !32
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !33, metadata !DIExpression()), !dbg !34
  %5 = load i8*, i8** %3, align 8, !dbg !35
  %6 = load i64, i64* %4, align 8, !dbg !36
  %7 = call i8* @realloc(i8* noundef %5, i64 noundef %6) #7, !dbg !37
  ret i8* %7, !dbg !38
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !39 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !42, metadata !DIExpression()), !dbg !43
  %3 = load i8*, i8** %2, align 8, !dbg !44
  call void @free(i8* noundef %3) #7, !dbg !45
  ret void, !dbg !46
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !47 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i64* %2, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i64* %3, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i64* %4, metadata !55, metadata !DIExpression()), !dbg !56
  %6 = bitcast i64* %2 to i8*, !dbg !57
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !58
  %7 = bitcast i64* %3 to i8*, !dbg !59
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !60
  %8 = bitcast i64* %4 to i8*, !dbg !61
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !62
  %9 = load i64, i64* %2, align 8, !dbg !63
  %10 = icmp ule i64 %9, 1024, !dbg !64
  %11 = zext i1 %10 to i32, !dbg !64
  %12 = sext i32 %11 to i64, !dbg !63
  call void @klee_assume(i64 noundef %12), !dbg !65
  %13 = load i64, i64* %3, align 8, !dbg !66
  %14 = icmp ule i64 %13, 1024, !dbg !67
  %15 = zext i1 %14 to i32, !dbg !67
  %16 = sext i32 %15 to i64, !dbg !66
  call void @klee_assume(i64 noundef %16), !dbg !68
  %17 = load i64, i64* %4, align 8, !dbg !69
  %18 = icmp ule i64 %17, 1024, !dbg !70
  %19 = zext i1 %18 to i32, !dbg !70
  %20 = sext i32 %19 to i64, !dbg !69
  call void @klee_assume(i64 noundef %20), !dbg !71
  %21 = load i64, i64* %4, align 8, !dbg !72
  %22 = icmp ugt i64 %21, 0, !dbg !73
  %23 = zext i1 %22 to i32, !dbg !73
  %24 = sext i32 %23 to i64, !dbg !72
  call void @klee_assume(i64 noundef %24), !dbg !74
  call void @llvm.dbg.declare(metadata i8** %5, metadata !75, metadata !DIExpression()), !dbg !76
  %25 = load i64, i64* %2, align 8, !dbg !77
  %26 = load i64, i64* %3, align 8, !dbg !78
  %27 = load i64, i64* %4, align 8, !dbg !79
  %28 = call i8* @xmlMalloc3(i64 noundef %25, i64 noundef %26, i64 noundef %27), !dbg !80
  store i8* %28, i8** %5, align 8, !dbg !76
  %29 = load i8*, i8** %5, align 8, !dbg !81
  %30 = icmp ne i8* %29, null, !dbg !83
  br i1 %30, label %31, label %44, !dbg !84

31:                                               ; preds = %0
  %32 = load i64, i64* %2, align 8, !dbg !85
  %33 = load i64, i64* %3, align 8, !dbg !85
  call void @klee_div_zero_check(i64 %33), !dbg !85
  %34 = udiv i64 -1, %33, !dbg !85, !klee.check.div !87
  %35 = load i64, i64* %4, align 8, !dbg !85
  call void @klee_div_zero_check(i64 %35), !dbg !85
  %36 = udiv i64 %34, %35, !dbg !85, !klee.check.div !87
  %37 = icmp ule i64 %32, %36, !dbg !85
  br i1 %37, label %38, label %40, !dbg !85

38:                                               ; preds = %31
  br i1 true, label %39, label %40, !dbg !85

39:                                               ; preds = %38
  br label %42, !dbg !85

40:                                               ; preds = %38, %31
  %41 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.5, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !85
  br label %42, !dbg !85

42:                                               ; preds = %40, %39
  %43 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.5, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !88
  br label %44, !dbg !89

44:                                               ; preds = %42, %0
  %45 = load i8*, i8** %5, align 8, !dbg !90
  %46 = icmp ne i8* %45, null, !dbg !92
  br i1 %46, label %47, label %49, !dbg !93

47:                                               ; preds = %44
  %48 = load i8*, i8** %5, align 8, !dbg !94
  call void @xmlFree(i8* noundef %48), !dbg !96
  br label %49, !dbg !97

49:                                               ; preds = %47, %44
  ret i32 0, !dbg !98
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xmlMalloc3(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 !dbg !99 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !102, metadata !DIExpression()), !dbg !103
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !104, metadata !DIExpression()), !dbg !105
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i64* %8, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i8** %9, metadata !110, metadata !DIExpression()), !dbg !111
  %10 = load i64, i64* %5, align 8, !dbg !112
  %11 = load i64, i64* %6, align 8, !dbg !114
  call void @klee_div_zero_check(i64 %11), !dbg !115
  %12 = udiv i64 -1, %11, !dbg !115, !klee.check.div !87
  %13 = load i64, i64* %7, align 8, !dbg !116
  call void @klee_div_zero_check(i64 %13), !dbg !117
  %14 = udiv i64 %12, %13, !dbg !117, !klee.check.div !87
  %15 = icmp ugt i64 %10, %14, !dbg !118
  br i1 %15, label %16, label %17, !dbg !119

16:                                               ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !120
  br label %33, !dbg !120

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8, !dbg !121
  %19 = load i64, i64* %6, align 8, !dbg !122
  %20 = mul i64 %18, %19, !dbg !123
  %21 = load i64, i64* %7, align 8, !dbg !124
  %22 = mul i64 %20, %21, !dbg !125
  store i64 %22, i64* %8, align 8, !dbg !126
  %23 = load i64, i64* %8, align 8, !dbg !127
  %24 = call i8* @xmlMalloc(i64 noundef %23), !dbg !128
  store i8* %24, i8** %9, align 8, !dbg !129
  %25 = load i8*, i8** %9, align 8, !dbg !130
  %26 = icmp ne i8* %25, null, !dbg !132
  br i1 %26, label %27, label %31, !dbg !133

27:                                               ; preds = %17
  %28 = load i8*, i8** %9, align 8, !dbg !134
  %29 = load i64, i64* %8, align 8, !dbg !135
  %30 = call i8* @memset(i8* %28, i32 0, i64 %29), !dbg !136
  br label %31, !dbg !136

31:                                               ; preds = %27, %17
  %32 = load i8*, i8** %9, align 8, !dbg !137
  store i8* %32, i8** %4, align 8, !dbg !138
  br label %33, !dbg !138

33:                                               ; preds = %31, %16
  %34 = load i8*, i8** %4, align 8, !dbg !139
  ret i8* %34, !dbg !139
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !140 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !144, metadata !DIExpression()), !dbg !145
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !146, metadata !DIExpression()), !dbg !147
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata i8** %7, metadata !150, metadata !DIExpression()), !dbg !153
  %8 = load i8*, i8** %4, align 8, !dbg !154
  store i8* %8, i8** %7, align 8, !dbg !153
  br label %9, !dbg !155

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !156
  %11 = add i64 %10, -1, !dbg !156
  store i64 %11, i64* %6, align 8, !dbg !156
  %12 = icmp ugt i64 %10, 0, !dbg !157
  br i1 %12, label %13, label %18, !dbg !155

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !158
  %15 = trunc i32 %14 to i8, !dbg !158
  %16 = load i8*, i8** %7, align 8, !dbg !159
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !159
  store i8* %17, i8** %7, align 8, !dbg !159
  store i8 %15, i8* %16, align 1, !dbg !160
  br label %9, !dbg !155, !llvm.loop !161

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !163
  ret i8* %19, !dbg !164
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 noundef %0) #6 !dbg !165 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !170, metadata !DIExpression()), !dbg !171
  %3 = load i64, i64* %2, align 8, !dbg !172
  %4 = icmp eq i64 %3, 0, !dbg !174
  br i1 %4, label %5, label %6, !dbg !175

5:                                                ; preds = %1
  call void @klee_report_error(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 noundef 14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.9, i64 0, i64 0)) #8, !dbg !176
  unreachable, !dbg !176

6:                                                ; preds = %1
  ret void, !dbg !177
}

; Function Attrs: noreturn
declare void @klee_report_error(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!0, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/267_xmlregexp.c_444_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "1495b6f0a99a9faeeb21ee171a2b4134")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!6 = distinct !DICompileUnit(language: DW_LANG_C89, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/shafi/tools/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 16, type: !17, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!17 = !DISubroutineType(types: !18)
!18 = !{!3, !19}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 46, baseType: !21)
!20 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !{}
!23 = !DILocalVariable(name: "size", arg: 1, scope: !16, file: !1, line: 16, type: !19)
!24 = !DILocation(line: 16, column: 24, scope: !16)
!25 = !DILocation(line: 17, column: 19, scope: !16)
!26 = !DILocation(line: 17, column: 12, scope: !16)
!27 = !DILocation(line: 17, column: 5, scope: !16)
!28 = distinct !DISubprogram(name: "xmlRealloc", scope: !1, file: !1, line: 20, type: !29, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!29 = !DISubroutineType(types: !30)
!30 = !{!3, !3, !19}
!31 = !DILocalVariable(name: "ptr", arg: 1, scope: !28, file: !1, line: 20, type: !3)
!32 = !DILocation(line: 20, column: 24, scope: !28)
!33 = !DILocalVariable(name: "size", arg: 2, scope: !28, file: !1, line: 20, type: !19)
!34 = !DILocation(line: 20, column: 36, scope: !28)
!35 = !DILocation(line: 21, column: 20, scope: !28)
!36 = !DILocation(line: 21, column: 25, scope: !28)
!37 = !DILocation(line: 21, column: 12, scope: !28)
!38 = !DILocation(line: 21, column: 5, scope: !28)
!39 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 24, type: !40, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !3}
!42 = !DILocalVariable(name: "ptr", arg: 1, scope: !39, file: !1, line: 24, type: !3)
!43 = !DILocation(line: 24, column: 20, scope: !39)
!44 = !DILocation(line: 25, column: 10, scope: !39)
!45 = !DILocation(line: 25, column: 5, scope: !39)
!46 = !DILocation(line: 26, column: 1, scope: !39)
!47 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 58, type: !48, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!48 = !DISubroutineType(types: !49)
!49 = !{!50}
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DILocalVariable(name: "dim1", scope: !47, file: !1, line: 59, type: !19)
!52 = !DILocation(line: 59, column: 12, scope: !47)
!53 = !DILocalVariable(name: "dim2", scope: !47, file: !1, line: 59, type: !19)
!54 = !DILocation(line: 59, column: 18, scope: !47)
!55 = !DILocalVariable(name: "elemSize", scope: !47, file: !1, line: 59, type: !19)
!56 = !DILocation(line: 59, column: 24, scope: !47)
!57 = !DILocation(line: 62, column: 24, scope: !47)
!58 = !DILocation(line: 62, column: 5, scope: !47)
!59 = !DILocation(line: 63, column: 24, scope: !47)
!60 = !DILocation(line: 63, column: 5, scope: !47)
!61 = !DILocation(line: 64, column: 24, scope: !47)
!62 = !DILocation(line: 64, column: 5, scope: !47)
!63 = !DILocation(line: 67, column: 17, scope: !47)
!64 = !DILocation(line: 67, column: 22, scope: !47)
!65 = !DILocation(line: 67, column: 5, scope: !47)
!66 = !DILocation(line: 68, column: 17, scope: !47)
!67 = !DILocation(line: 68, column: 22, scope: !47)
!68 = !DILocation(line: 68, column: 5, scope: !47)
!69 = !DILocation(line: 69, column: 17, scope: !47)
!70 = !DILocation(line: 69, column: 26, scope: !47)
!71 = !DILocation(line: 69, column: 5, scope: !47)
!72 = !DILocation(line: 70, column: 17, scope: !47)
!73 = !DILocation(line: 70, column: 26, scope: !47)
!74 = !DILocation(line: 70, column: 5, scope: !47)
!75 = !DILocalVariable(name: "result", scope: !47, file: !1, line: 73, type: !3)
!76 = !DILocation(line: 73, column: 11, scope: !47)
!77 = !DILocation(line: 73, column: 31, scope: !47)
!78 = !DILocation(line: 73, column: 37, scope: !47)
!79 = !DILocation(line: 73, column: 43, scope: !47)
!80 = !DILocation(line: 73, column: 20, scope: !47)
!81 = !DILocation(line: 80, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !47, file: !1, line: 80, column: 9)
!83 = !DILocation(line: 80, column: 16, scope: !82)
!84 = !DILocation(line: 80, column: 9, scope: !47)
!85 = !DILocation(line: 87, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 80, column: 25)
!87 = !{!"True"}
!88 = !DILocation(line: 90, column: 9, scope: !86)
!89 = !DILocation(line: 91, column: 5, scope: !86)
!90 = !DILocation(line: 94, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !47, file: !1, line: 94, column: 9)
!92 = !DILocation(line: 94, column: 16, scope: !91)
!93 = !DILocation(line: 94, column: 9, scope: !47)
!94 = !DILocation(line: 95, column: 17, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 94, column: 25)
!96 = !DILocation(line: 95, column: 9, scope: !95)
!97 = !DILocation(line: 96, column: 5, scope: !95)
!98 = !DILocation(line: 98, column: 5, scope: !47)
!99 = distinct !DISubprogram(name: "xmlMalloc3", scope: !1, file: !1, line: 44, type: !100, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !22)
!100 = !DISubroutineType(types: !101)
!101 = !{!3, !19, !19, !19}
!102 = !DILocalVariable(name: "dim1", arg: 1, scope: !99, file: !1, line: 44, type: !19)
!103 = !DILocation(line: 44, column: 32, scope: !99)
!104 = !DILocalVariable(name: "dim2", arg: 2, scope: !99, file: !1, line: 44, type: !19)
!105 = !DILocation(line: 44, column: 45, scope: !99)
!106 = !DILocalVariable(name: "elemSize", arg: 3, scope: !99, file: !1, line: 44, type: !19)
!107 = !DILocation(line: 44, column: 58, scope: !99)
!108 = !DILocalVariable(name: "totalSize", scope: !99, file: !1, line: 45, type: !19)
!109 = !DILocation(line: 45, column: 12, scope: !99)
!110 = !DILocalVariable(name: "ret", scope: !99, file: !1, line: 46, type: !3)
!111 = !DILocation(line: 46, column: 11, scope: !99)
!112 = !DILocation(line: 49, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !99, file: !1, line: 49, column: 9)
!114 = !DILocation(line: 49, column: 27, scope: !113)
!115 = !DILocation(line: 49, column: 25, scope: !113)
!116 = !DILocation(line: 49, column: 34, scope: !113)
!117 = !DILocation(line: 49, column: 32, scope: !113)
!118 = !DILocation(line: 49, column: 14, scope: !113)
!119 = !DILocation(line: 49, column: 9, scope: !99)
!120 = !DILocation(line: 50, column: 9, scope: !113)
!121 = !DILocation(line: 51, column: 17, scope: !99)
!122 = !DILocation(line: 51, column: 24, scope: !99)
!123 = !DILocation(line: 51, column: 22, scope: !99)
!124 = !DILocation(line: 51, column: 31, scope: !99)
!125 = !DILocation(line: 51, column: 29, scope: !99)
!126 = !DILocation(line: 51, column: 15, scope: !99)
!127 = !DILocation(line: 52, column: 21, scope: !99)
!128 = !DILocation(line: 52, column: 11, scope: !99)
!129 = !DILocation(line: 52, column: 9, scope: !99)
!130 = !DILocation(line: 53, column: 9, scope: !131)
!131 = distinct !DILexicalBlock(scope: !99, file: !1, line: 53, column: 9)
!132 = !DILocation(line: 53, column: 13, scope: !131)
!133 = !DILocation(line: 53, column: 9, scope: !99)
!134 = !DILocation(line: 54, column: 16, scope: !131)
!135 = !DILocation(line: 54, column: 24, scope: !131)
!136 = !DILocation(line: 54, column: 9, scope: !131)
!137 = !DILocation(line: 55, column: 13, scope: !99)
!138 = !DILocation(line: 55, column: 5, scope: !99)
!139 = !DILocation(line: 56, column: 1, scope: !99)
!140 = distinct !DISubprogram(name: "memset", scope: !141, file: !141, line: 12, type: !142, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !22)
!141 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!142 = !DISubroutineType(types: !143)
!143 = !{!3, !3, !50, !19}
!144 = !DILocalVariable(name: "dst", arg: 1, scope: !140, file: !141, line: 12, type: !3)
!145 = !DILocation(line: 12, column: 20, scope: !140)
!146 = !DILocalVariable(name: "s", arg: 2, scope: !140, file: !141, line: 12, type: !50)
!147 = !DILocation(line: 12, column: 29, scope: !140)
!148 = !DILocalVariable(name: "count", arg: 3, scope: !140, file: !141, line: 12, type: !19)
!149 = !DILocation(line: 12, column: 39, scope: !140)
!150 = !DILocalVariable(name: "a", scope: !140, file: !141, line: 13, type: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!153 = !DILocation(line: 13, column: 9, scope: !140)
!154 = !DILocation(line: 13, column: 13, scope: !140)
!155 = !DILocation(line: 14, column: 3, scope: !140)
!156 = !DILocation(line: 14, column: 15, scope: !140)
!157 = !DILocation(line: 14, column: 18, scope: !140)
!158 = !DILocation(line: 15, column: 12, scope: !140)
!159 = !DILocation(line: 15, column: 7, scope: !140)
!160 = !DILocation(line: 15, column: 10, scope: !140)
!161 = distinct !{!161, !155, !158, !162}
!162 = !{!"llvm.loop.mustprogress"}
!163 = !DILocation(line: 16, column: 10, scope: !140)
!164 = !DILocation(line: 16, column: 3, scope: !140)
!165 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !166, file: !166, line: 12, type: !167, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !22)
!166 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!167 = !DISubroutineType(types: !168)
!168 = !{null, !169}
!169 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!170 = !DILocalVariable(name: "z", arg: 1, scope: !165, file: !166, line: 12, type: !169)
!171 = !DILocation(line: 12, column: 36, scope: !165)
!172 = !DILocation(line: 13, column: 7, scope: !173)
!173 = distinct !DILexicalBlock(scope: !165, file: !166, line: 13, column: 7)
!174 = !DILocation(line: 13, column: 9, scope: !173)
!175 = !DILocation(line: 13, column: 7, scope: !165)
!176 = !DILocation(line: 14, column: 5, scope: !173)
!177 = !DILocation(line: 15, column: 1, scope: !165)
