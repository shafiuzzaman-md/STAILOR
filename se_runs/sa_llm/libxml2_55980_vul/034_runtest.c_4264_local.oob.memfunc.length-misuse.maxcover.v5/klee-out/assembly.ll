; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/034_runtest.c_4264_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/034_runtest.c_4264_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@baseFilename.result = internal global [256 x i8] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [20 x i8] c"baseFilename_result\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"testdir\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"testfile.xml\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"(len < sizeof(prefix)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/034_runtest.c_4264_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"result/c14n/%s/%s\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"test/c14n/%s/%s.xpath\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @baseFilename(i8* noundef %0) #0 !dbg !2 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !26, metadata !DIExpression()), !dbg !27
  call void @klee_make_symbolic(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @baseFilename.result, i64 0, i64 0), i64 noundef 256, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0)), !dbg !28
  %4 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @baseFilename.result, i64 0, i64 0), align 16, !dbg !29
  %5 = sext i8 %4 to i32, !dbg !29
  %6 = icmp ne i32 %5, 0, !dbg !30
  %7 = zext i1 %6 to i32, !dbg !30
  %8 = sext i32 %7 to i64, !dbg !29
  call void @klee_assume(i64 noundef %8), !dbg !31
  call void @llvm.dbg.declare(metadata i64* %3, metadata !32, metadata !DIExpression()), !dbg !36
  %9 = call i64 @strlen(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @baseFilename.result, i64 0, i64 0)) #8, !dbg !37
  store i64 %9, i64* %3, align 8, !dbg !36
  %10 = load i64, i64* %3, align 8, !dbg !38
  %11 = icmp uge i64 %10, 4, !dbg !39
  %12 = zext i1 %11 to i32, !dbg !39
  %13 = sext i32 %12 to i64, !dbg !38
  call void @klee_assume(i64 noundef %13), !dbg !40
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @baseFilename.result, i64 0, i64 0), !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkTestFile(i8* noundef %0) #0 !dbg !42 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !46, metadata !DIExpression()), !dbg !47
  ret i32 0, !dbg !48
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !49 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [500 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata [500 x i8]* %3, metadata !54, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i8** %4, metadata !59, metadata !DIExpression()), !dbg !60
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i8** %5, metadata !61, metadata !DIExpression()), !dbg !62
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8, !dbg !62
  call void @llvm.dbg.declare(metadata i8** %6, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i64* %7, metadata !65, metadata !DIExpression()), !dbg !66
  %9 = load i8*, i8** %5, align 8, !dbg !67
  %10 = call i8* @baseFilename(i8* noundef %9), !dbg !68
  store i8* %10, i8** %6, align 8, !dbg !69
  %11 = load i8*, i8** %6, align 8, !dbg !70
  %12 = call i64 @strlen(i8* noundef %11) #8, !dbg !71
  store i64 %12, i64* %7, align 8, !dbg !72
  %13 = load i64, i64* %7, align 8, !dbg !73
  %14 = icmp uge i64 %13, 4, !dbg !74
  %15 = zext i1 %14 to i32, !dbg !74
  %16 = sext i32 %15 to i64, !dbg !73
  call void @klee_assume(i64 noundef %16), !dbg !75
  %17 = load i64, i64* %7, align 8, !dbg !76
  %18 = sub i64 %17, 4, !dbg !76
  store i64 %18, i64* %7, align 8, !dbg !76
  %19 = load i64, i64* %7, align 8, !dbg !77
  %20 = icmp ult i64 %19, 256, !dbg !77
  br i1 %20, label %21, label %23, !dbg !77

21:                                               ; preds = %0
  br i1 true, label %22, label %23, !dbg !77

22:                                               ; preds = %21
  br label %25, !dbg !77

23:                                               ; preds = %21, %0
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !77
  br label %25, !dbg !77

25:                                               ; preds = %23, %22
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !78
  %27 = load i8*, i8** %6, align 8, !dbg !79
  %28 = load i64, i64* %7, align 8, !dbg !80
  %29 = call i8* @memcpy(i8* %26, i8* %27, i64 %28), !dbg !78
  %30 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !81
  %31 = load i64, i64* %7, align 8, !dbg !82
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %31, !dbg !83
  store i8 0, i8* %32, align 1, !dbg !84
  %33 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 0, !dbg !85
  %34 = load i8*, i8** %4, align 8, !dbg !87
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !88
  %36 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %33, i64 noundef 499, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* noundef %34, i8* noundef %35), !dbg !89
  %37 = icmp sge i32 %36, 499, !dbg !90
  br i1 %37, label %38, label %40, !dbg !91

38:                                               ; preds = %25
  %39 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 499, !dbg !92
  store i8 0, i8* %39, align 1, !dbg !93
  br label %40, !dbg !92

40:                                               ; preds = %38, %25
  call void @llvm.dbg.declare(metadata i8** %8, metadata !94, metadata !DIExpression()), !dbg !95
  %41 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 0, !dbg !96
  %42 = call noalias i8* @strdup(i8* noundef %41) #9, !dbg !97
  store i8* %42, i8** %8, align 8, !dbg !95
  %43 = load i8*, i8** %8, align 8, !dbg !98
  call void @free(i8* noundef %43) #9, !dbg !99
  %44 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 0, !dbg !100
  %45 = load i8*, i8** %4, align 8, !dbg !102
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !103
  %47 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %44, i64 noundef 499, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* noundef %45, i8* noundef %46), !dbg !104
  %48 = icmp sge i32 %47, 499, !dbg !105
  br i1 %48, label %49, label %51, !dbg !106

49:                                               ; preds = %40
  %50 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 499, !dbg !107
  store i8 0, i8* %50, align 1, !dbg !108
  br label %51, !dbg !107

51:                                               ; preds = %49, %40
  %52 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 0, !dbg !109
  %53 = call i32 @checkTestFile(i8* noundef %52), !dbg !111
  %54 = icmp ne i32 %53, 0, !dbg !111
  br i1 %54, label %55, label %56, !dbg !112

55:                                               ; preds = %51
  br label %56, !dbg !113

56:                                               ; preds = %55, %51
  ret i32 0, !dbg !115
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare noalias i8* @strdup(i8* noundef) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !116 {
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
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!10, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25, !25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "result", scope: !2, file: !3, line: 10, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "baseFilename", scope: !3, file: !3, line: 9, type: !4, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !12)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/034_runtest.c_4264_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d6136ed62dcc724e33e780737bac76a3")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !11, splitDebugInlining: false, nameTableKind: None)
!11 = !{!0}
!12 = !{}
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 256)
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
!26 = !DILocalVariable(name: "filename", arg: 1, scope: !2, file: !3, line: 9, type: !8)
!27 = !DILocation(line: 9, column: 32, scope: !2)
!28 = !DILocation(line: 11, column: 5, scope: !2)
!29 = !DILocation(line: 13, column: 17, scope: !2)
!30 = !DILocation(line: 13, column: 27, scope: !2)
!31 = !DILocation(line: 13, column: 5, scope: !2)
!32 = !DILocalVariable(name: "len", scope: !2, file: !3, line: 15, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 15, column: 12, scope: !2)
!37 = !DILocation(line: 15, column: 18, scope: !2)
!38 = !DILocation(line: 16, column: 17, scope: !2)
!39 = !DILocation(line: 16, column: 21, scope: !2)
!40 = !DILocation(line: 16, column: 5, scope: !2)
!41 = !DILocation(line: 18, column: 5, scope: !2)
!42 = distinct !DISubprogram(name: "checkTestFile", scope: !3, file: !3, line: 21, type: !43, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !12)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !8}
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DILocalVariable(name: "buf", arg: 1, scope: !42, file: !3, line: 21, type: !8)
!47 = !DILocation(line: 21, column: 31, scope: !42)
!48 = !DILocation(line: 22, column: 5, scope: !42)
!49 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 25, type: !50, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !12)
!50 = !DISubroutineType(types: !51)
!51 = !{!45}
!52 = !DILocalVariable(name: "prefix", scope: !49, file: !3, line: 26, type: !13)
!53 = !DILocation(line: 26, column: 10, scope: !49)
!54 = !DILocalVariable(name: "buf", scope: !49, file: !3, line: 27, type: !55)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 4000, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 500)
!58 = !DILocation(line: 27, column: 10, scope: !49)
!59 = !DILocalVariable(name: "subdir", scope: !49, file: !3, line: 28, type: !8)
!60 = !DILocation(line: 28, column: 17, scope: !49)
!61 = !DILocalVariable(name: "filename", scope: !49, file: !3, line: 29, type: !8)
!62 = !DILocation(line: 29, column: 17, scope: !49)
!63 = !DILocalVariable(name: "base", scope: !49, file: !3, line: 31, type: !6)
!64 = !DILocation(line: 31, column: 11, scope: !49)
!65 = !DILocalVariable(name: "len", scope: !49, file: !3, line: 32, type: !33)
!66 = !DILocation(line: 32, column: 12, scope: !49)
!67 = !DILocation(line: 34, column: 25, scope: !49)
!68 = !DILocation(line: 34, column: 12, scope: !49)
!69 = !DILocation(line: 34, column: 10, scope: !49)
!70 = !DILocation(line: 35, column: 18, scope: !49)
!71 = !DILocation(line: 35, column: 11, scope: !49)
!72 = !DILocation(line: 35, column: 9, scope: !49)
!73 = !DILocation(line: 37, column: 17, scope: !49)
!74 = !DILocation(line: 37, column: 21, scope: !49)
!75 = !DILocation(line: 37, column: 5, scope: !49)
!76 = !DILocation(line: 38, column: 9, scope: !49)
!77 = !DILocation(line: 40, column: 5, scope: !49)
!78 = !DILocation(line: 42, column: 5, scope: !49)
!79 = !DILocation(line: 42, column: 20, scope: !49)
!80 = !DILocation(line: 42, column: 26, scope: !49)
!81 = !DILocation(line: 43, column: 5, scope: !49)
!82 = !DILocation(line: 45, column: 12, scope: !49)
!83 = !DILocation(line: 45, column: 5, scope: !49)
!84 = !DILocation(line: 45, column: 17, scope: !49)
!85 = !DILocation(line: 47, column: 18, scope: !86)
!86 = distinct !DILexicalBlock(scope: !49, file: !3, line: 47, column: 9)
!87 = !DILocation(line: 47, column: 49, scope: !86)
!88 = !DILocation(line: 47, column: 57, scope: !86)
!89 = !DILocation(line: 47, column: 9, scope: !86)
!90 = !DILocation(line: 47, column: 65, scope: !86)
!91 = !DILocation(line: 47, column: 9, scope: !49)
!92 = !DILocation(line: 48, column: 9, scope: !86)
!93 = !DILocation(line: 48, column: 18, scope: !86)
!94 = !DILocalVariable(name: "result", scope: !49, file: !3, line: 49, type: !6)
!95 = !DILocation(line: 49, column: 11, scope: !49)
!96 = !DILocation(line: 49, column: 27, scope: !49)
!97 = !DILocation(line: 49, column: 20, scope: !49)
!98 = !DILocation(line: 50, column: 10, scope: !49)
!99 = !DILocation(line: 50, column: 5, scope: !49)
!100 = !DILocation(line: 52, column: 18, scope: !101)
!101 = distinct !DILexicalBlock(scope: !49, file: !3, line: 52, column: 9)
!102 = !DILocation(line: 52, column: 53, scope: !101)
!103 = !DILocation(line: 52, column: 61, scope: !101)
!104 = !DILocation(line: 52, column: 9, scope: !101)
!105 = !DILocation(line: 52, column: 69, scope: !101)
!106 = !DILocation(line: 52, column: 9, scope: !49)
!107 = !DILocation(line: 53, column: 9, scope: !101)
!108 = !DILocation(line: 53, column: 18, scope: !101)
!109 = !DILocation(line: 54, column: 23, scope: !110)
!110 = distinct !DILexicalBlock(scope: !49, file: !3, line: 54, column: 9)
!111 = !DILocation(line: 54, column: 9, scope: !110)
!112 = !DILocation(line: 54, column: 9, scope: !49)
!113 = !DILocation(line: 55, column: 5, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !3, line: 54, column: 29)
!115 = !DILocation(line: 57, column: 5, scope: !49)
!116 = distinct !DISubprogram(name: "memcpy", scope: !117, file: !117, line: 12, type: !118, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !12)
!117 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!118 = !DISubroutineType(types: !119)
!119 = !{!120, !120, !121, !33}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!123 = !DILocalVariable(name: "destaddr", arg: 1, scope: !116, file: !117, line: 12, type: !120)
!124 = !DILocation(line: 12, column: 20, scope: !116)
!125 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !116, file: !117, line: 12, type: !121)
!126 = !DILocation(line: 12, column: 42, scope: !116)
!127 = !DILocalVariable(name: "len", arg: 3, scope: !116, file: !117, line: 12, type: !33)
!128 = !DILocation(line: 12, column: 58, scope: !116)
!129 = !DILocalVariable(name: "dest", scope: !116, file: !117, line: 13, type: !6)
!130 = !DILocation(line: 13, column: 9, scope: !116)
!131 = !DILocation(line: 13, column: 16, scope: !116)
!132 = !DILocalVariable(name: "src", scope: !116, file: !117, line: 14, type: !8)
!133 = !DILocation(line: 14, column: 15, scope: !116)
!134 = !DILocation(line: 14, column: 21, scope: !116)
!135 = !DILocation(line: 16, column: 3, scope: !116)
!136 = !DILocation(line: 16, column: 13, scope: !116)
!137 = !DILocation(line: 16, column: 16, scope: !116)
!138 = !DILocation(line: 17, column: 19, scope: !116)
!139 = !DILocation(line: 17, column: 15, scope: !116)
!140 = !DILocation(line: 17, column: 10, scope: !116)
!141 = !DILocation(line: 17, column: 13, scope: !116)
!142 = distinct !{!142, !135, !138, !143}
!143 = !{!"llvm.loop.mustprogress"}
!144 = !DILocation(line: 18, column: 10, scope: !116)
!145 = !DILocation(line: 18, column: 3, scope: !116)
