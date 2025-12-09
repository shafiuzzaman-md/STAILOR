; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/080_runtest.c_4299_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/080_runtest.c_4299_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"subdir\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/080_runtest.c_4299_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"result/c14n/%s/%s\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"test/c14n/%s/%s.xpath\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca [500 x i8], align 16
  %8 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !19, metadata !DIExpression()), !dbg !24
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !25
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !26
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !27
  store i8 0, i8* %10, align 1, !dbg !28
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !29, metadata !DIExpression()), !dbg !30
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !31
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !32
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !33
  store i8 0, i8* %12, align 1, !dbg !34
  call void @llvm.dbg.declare(metadata i8** %4, metadata !35, metadata !DIExpression()), !dbg !37
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !38
  %14 = call i8* @baseFilename(i8* noundef %13), !dbg !39
  store i8* %14, i8** %4, align 8, !dbg !37
  %15 = load i8*, i8** %4, align 8, !dbg !40
  %16 = icmp eq i8* %15, null, !dbg !42
  br i1 %16, label %17, label %18, !dbg !43

17:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !44
  br label %62, !dbg !44

18:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i64* %5, metadata !46, metadata !DIExpression()), !dbg !50
  %19 = load i8*, i8** %4, align 8, !dbg !51
  %20 = call i64 @strlen(i8* noundef %19) #8, !dbg !52
  store i64 %20, i64* %5, align 8, !dbg !50
  %21 = load i64, i64* %5, align 8, !dbg !53
  %22 = icmp ult i64 %21, 4, !dbg !55
  br i1 %22, label %23, label %24, !dbg !56

23:                                               ; preds = %18
  store i32 0, i32* %1, align 4, !dbg !57
  br label %62, !dbg !57

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8, !dbg !59
  %26 = sub i64 %25, 4, !dbg !59
  store i64 %26, i64* %5, align 8, !dbg !59
  call void @llvm.dbg.declare(metadata [256 x i8]* %6, metadata !60, metadata !DIExpression()), !dbg !61
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !62
  %28 = load i8*, i8** %4, align 8, !dbg !63
  %29 = load i64, i64* %5, align 8, !dbg !64
  %30 = call i8* @memcpy(i8* %27, i8* %28, i64 %29), !dbg !62
  %31 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !65
  %32 = load i64, i64* %5, align 8, !dbg !66
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 %32, !dbg !67
  store i8 0, i8* %33, align 1, !dbg !68
  call void @llvm.dbg.declare(metadata [500 x i8]* %7, metadata !69, metadata !DIExpression()), !dbg !73
  %34 = getelementptr inbounds [500 x i8], [500 x i8]* %7, i64 0, i64 0, !dbg !74
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !76
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !77
  %37 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %34, i64 noundef 499, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* noundef %35, i8* noundef %36) #9, !dbg !78
  %38 = icmp sge i32 %37, 499, !dbg !79
  br i1 %38, label %39, label %41, !dbg !80

39:                                               ; preds = %24
  %40 = getelementptr inbounds [500 x i8], [500 x i8]* %7, i64 0, i64 499, !dbg !81
  store i8 0, i8* %40, align 1, !dbg !82
  br label %41, !dbg !81

41:                                               ; preds = %39, %24
  call void @llvm.dbg.declare(metadata i8** %8, metadata !83, metadata !DIExpression()), !dbg !84
  %42 = getelementptr inbounds [500 x i8], [500 x i8]* %7, i64 0, i64 0, !dbg !85
  %43 = call noalias i8* @strdup(i8* noundef %42) #9, !dbg !86
  store i8* %43, i8** %8, align 8, !dbg !84
  %44 = load i8*, i8** %8, align 8, !dbg !87
  %45 = icmp ne i8* %44, null, !dbg !87
  br i1 %45, label %46, label %48, !dbg !89

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8, !dbg !90
  call void @free(i8* noundef %47) #9, !dbg !91
  br label %48, !dbg !91

48:                                               ; preds = %46, %41
  %49 = getelementptr inbounds [500 x i8], [500 x i8]* %7, i64 0, i64 0, !dbg !92
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !94
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !95
  %52 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %49, i64 noundef 499, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* noundef %50, i8* noundef %51) #9, !dbg !96
  %53 = icmp sge i32 %52, 499, !dbg !97
  br i1 %53, label %54, label %56, !dbg !98

54:                                               ; preds = %48
  %55 = getelementptr inbounds [500 x i8], [500 x i8]* %7, i64 0, i64 499, !dbg !99
  store i8 0, i8* %55, align 1, !dbg !100
  br label %56, !dbg !99

56:                                               ; preds = %54, %48
  %57 = getelementptr inbounds [500 x i8], [500 x i8]* %7, i64 0, i64 0, !dbg !101
  %58 = call i32 @checkTestFile(i8* noundef %57), !dbg !103
  %59 = icmp ne i32 %58, 0, !dbg !103
  br i1 %59, label %60, label %61, !dbg !104

60:                                               ; preds = %56
  store i32 0, i32* %1, align 4, !dbg !105
  br label %62, !dbg !105

61:                                               ; preds = %56
  store i32 0, i32* %1, align 4, !dbg !107
  br label %62, !dbg !107

62:                                               ; preds = %61, %60, %23, %17
  %63 = load i32, i32* %1, align 4, !dbg !108
  ret i32 %63, !dbg !108
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i8* @baseFilename(i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #6

; Function Attrs: nounwind
declare noalias i8* @strdup(i8* noundef) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #6

declare i32 @checkTestFile(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !109 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !115, metadata !DIExpression()), !dbg !116
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !117, metadata !DIExpression()), !dbg !118
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata i8** %7, metadata !121, metadata !DIExpression()), !dbg !122
  %9 = load i8*, i8** %4, align 8, !dbg !123
  store i8* %9, i8** %7, align 8, !dbg !122
  call void @llvm.dbg.declare(metadata i8** %8, metadata !124, metadata !DIExpression()), !dbg !127
  %10 = load i8*, i8** %5, align 8, !dbg !128
  store i8* %10, i8** %8, align 8, !dbg !127
  br label %11, !dbg !129

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !130
  %13 = add i64 %12, -1, !dbg !130
  store i64 %13, i64* %6, align 8, !dbg !130
  %14 = icmp ugt i64 %12, 0, !dbg !131
  br i1 %14, label %15, label %21, !dbg !129

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !132
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !132
  store i8* %17, i8** %8, align 8, !dbg !132
  %18 = load i8, i8* %16, align 1, !dbg !133
  %19 = load i8*, i8** %7, align 8, !dbg !134
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !134
  store i8* %20, i8** %7, align 8, !dbg !134
  store i8 %18, i8* %19, align 1, !dbg !135
  br label %11, !dbg !129, !llvm.loop !136

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !138
  ret i8* %22, !dbg !139
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/080_runtest.c_4299_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "5ccf337a5bff52407316b6c42fbc78f8")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !15, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{}
!19 = !DILocalVariable(name: "filename", scope: !14, file: !1, line: 10, type: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, elements: !22)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !{!23}
!23 = !DISubrange(count: 256)
!24 = !DILocation(line: 10, column: 10, scope: !14)
!25 = !DILocation(line: 11, column: 24, scope: !14)
!26 = !DILocation(line: 11, column: 5, scope: !14)
!27 = !DILocation(line: 12, column: 5, scope: !14)
!28 = !DILocation(line: 12, column: 34, scope: !14)
!29 = !DILocalVariable(name: "subdir", scope: !14, file: !1, line: 14, type: !20)
!30 = !DILocation(line: 14, column: 10, scope: !14)
!31 = !DILocation(line: 15, column: 24, scope: !14)
!32 = !DILocation(line: 15, column: 5, scope: !14)
!33 = !DILocation(line: 16, column: 5, scope: !14)
!34 = !DILocation(line: 16, column: 30, scope: !14)
!35 = !DILocalVariable(name: "base", scope: !14, file: !1, line: 18, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!37 = !DILocation(line: 18, column: 11, scope: !14)
!38 = !DILocation(line: 18, column: 31, scope: !14)
!39 = !DILocation(line: 18, column: 18, scope: !14)
!40 = !DILocation(line: 19, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !14, file: !1, line: 19, column: 9)
!42 = !DILocation(line: 19, column: 14, scope: !41)
!43 = !DILocation(line: 19, column: 9, scope: !14)
!44 = !DILocation(line: 20, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !1, line: 19, column: 23)
!46 = !DILocalVariable(name: "len", scope: !14, file: !1, line: 23, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!49 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!50 = !DILocation(line: 23, column: 12, scope: !14)
!51 = !DILocation(line: 23, column: 25, scope: !14)
!52 = !DILocation(line: 23, column: 18, scope: !14)
!53 = !DILocation(line: 24, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !14, file: !1, line: 24, column: 9)
!55 = !DILocation(line: 24, column: 13, scope: !54)
!56 = !DILocation(line: 24, column: 9, scope: !14)
!57 = !DILocation(line: 25, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 24, column: 18)
!59 = !DILocation(line: 27, column: 9, scope: !14)
!60 = !DILocalVariable(name: "prefix", scope: !14, file: !1, line: 29, type: !20)
!61 = !DILocation(line: 29, column: 10, scope: !14)
!62 = !DILocation(line: 30, column: 5, scope: !14)
!63 = !DILocation(line: 30, column: 20, scope: !14)
!64 = !DILocation(line: 30, column: 26, scope: !14)
!65 = !DILocation(line: 31, column: 5, scope: !14)
!66 = !DILocation(line: 33, column: 12, scope: !14)
!67 = !DILocation(line: 33, column: 5, scope: !14)
!68 = !DILocation(line: 33, column: 17, scope: !14)
!69 = !DILocalVariable(name: "buf", scope: !14, file: !1, line: 35, type: !70)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 4000, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 500)
!73 = !DILocation(line: 35, column: 10, scope: !14)
!74 = !DILocation(line: 36, column: 18, scope: !75)
!75 = distinct !DILexicalBlock(scope: !14, file: !1, line: 36, column: 9)
!76 = !DILocation(line: 36, column: 49, scope: !75)
!77 = !DILocation(line: 36, column: 57, scope: !75)
!78 = !DILocation(line: 36, column: 9, scope: !75)
!79 = !DILocation(line: 36, column: 65, scope: !75)
!80 = !DILocation(line: 36, column: 9, scope: !14)
!81 = !DILocation(line: 37, column: 9, scope: !75)
!82 = !DILocation(line: 37, column: 18, scope: !75)
!83 = !DILocalVariable(name: "result", scope: !14, file: !1, line: 38, type: !36)
!84 = !DILocation(line: 38, column: 11, scope: !14)
!85 = !DILocation(line: 38, column: 27, scope: !14)
!86 = !DILocation(line: 38, column: 20, scope: !14)
!87 = !DILocation(line: 39, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !14, file: !1, line: 39, column: 9)
!89 = !DILocation(line: 39, column: 9, scope: !14)
!90 = !DILocation(line: 39, column: 22, scope: !88)
!91 = !DILocation(line: 39, column: 17, scope: !88)
!92 = !DILocation(line: 41, column: 18, scope: !93)
!93 = distinct !DILexicalBlock(scope: !14, file: !1, line: 41, column: 9)
!94 = !DILocation(line: 41, column: 53, scope: !93)
!95 = !DILocation(line: 41, column: 61, scope: !93)
!96 = !DILocation(line: 41, column: 9, scope: !93)
!97 = !DILocation(line: 41, column: 69, scope: !93)
!98 = !DILocation(line: 41, column: 9, scope: !14)
!99 = !DILocation(line: 42, column: 9, scope: !93)
!100 = !DILocation(line: 42, column: 18, scope: !93)
!101 = !DILocation(line: 43, column: 23, scope: !102)
!102 = distinct !DILexicalBlock(scope: !14, file: !1, line: 43, column: 9)
!103 = !DILocation(line: 43, column: 9, scope: !102)
!104 = !DILocation(line: 43, column: 9, scope: !14)
!105 = !DILocation(line: 44, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 43, column: 29)
!107 = !DILocation(line: 47, column: 5, scope: !14)
!108 = !DILocation(line: 48, column: 1, scope: !14)
!109 = distinct !DISubprogram(name: "memcpy", scope: !110, file: !110, line: 12, type: !111, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !18)
!110 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!111 = !DISubroutineType(types: !112)
!112 = !{!3, !3, !113, !47}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!115 = !DILocalVariable(name: "destaddr", arg: 1, scope: !109, file: !110, line: 12, type: !3)
!116 = !DILocation(line: 12, column: 20, scope: !109)
!117 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !109, file: !110, line: 12, type: !113)
!118 = !DILocation(line: 12, column: 42, scope: !109)
!119 = !DILocalVariable(name: "len", arg: 3, scope: !109, file: !110, line: 12, type: !47)
!120 = !DILocation(line: 12, column: 58, scope: !109)
!121 = !DILocalVariable(name: "dest", scope: !109, file: !110, line: 13, type: !36)
!122 = !DILocation(line: 13, column: 9, scope: !109)
!123 = !DILocation(line: 13, column: 16, scope: !109)
!124 = !DILocalVariable(name: "src", scope: !109, file: !110, line: 14, type: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!127 = !DILocation(line: 14, column: 15, scope: !109)
!128 = !DILocation(line: 14, column: 21, scope: !109)
!129 = !DILocation(line: 16, column: 3, scope: !109)
!130 = !DILocation(line: 16, column: 13, scope: !109)
!131 = !DILocation(line: 16, column: 16, scope: !109)
!132 = !DILocation(line: 17, column: 19, scope: !109)
!133 = !DILocation(line: 17, column: 15, scope: !109)
!134 = !DILocation(line: 17, column: 10, scope: !109)
!135 = !DILocation(line: 17, column: 13, scope: !109)
!136 = distinct !{!136, !129, !132, !137}
!137 = !{!"llvm.loop.mustprogress"}
!138 = !DILocation(line: 18, column: 10, scope: !109)
!139 = !DILocation(line: 18, column: 3, scope: !109)
