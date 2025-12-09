; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/109_testrecurse.c_307_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/109_testrecurse.c_307_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hugeDocParts_t = type { i8*, i8* }

@len = internal global i64 0, align 8, !dbg !0
@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@rlen = internal global i64 0, align 8, !dbg !21
@.str.1 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@curseg = internal global i32 0, align 4, !dbg !26
@.str.2 = private unnamed_addr constant [7 x i8] c"curseg\00", align 1
@parts = internal global %struct.hugeDocParts_t zeroinitializer, align 8, !dbg !14
@.str.3 = private unnamed_addr constant [8 x i8] c"segment\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"finish\00", align 1
@current = internal global i8* null, align 8, !dbg !11
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/109_testrecurse.c_307_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@buffer = internal global [4096 x i8] zeroinitializer, align 16, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !39 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @klee_make_symbolic(i8* noundef bitcast (i64* @len to i8*), i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !43
  call void @klee_make_symbolic(i8* noundef bitcast (i64* @rlen to i8*), i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !44
  call void @klee_make_symbolic(i8* noundef bitcast (i32* @curseg to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !45
  %2 = load i64, i64* @len, align 8, !dbg !46
  %3 = icmp uge i64 %2, 0, !dbg !47
  %4 = zext i1 %3 to i32, !dbg !47
  %5 = sext i32 %4 to i64, !dbg !46
  call void @klee_assume(i64 noundef %5), !dbg !48
  %6 = load i64, i64* @rlen, align 8, !dbg !49
  %7 = icmp uge i64 %6, 0, !dbg !50
  %8 = zext i1 %7 to i32, !dbg !50
  %9 = sext i32 %8 to i64, !dbg !49
  call void @klee_assume(i64 noundef %9), !dbg !51
  %10 = load i32, i32* @curseg, align 4, !dbg !52
  %11 = icmp sge i32 %10, 0, !dbg !53
  %12 = zext i1 %11 to i32, !dbg !53
  %13 = sext i32 %12 to i64, !dbg !52
  call void @klee_assume(i64 noundef %13), !dbg !54
  %14 = call noalias i8* @malloc(i64 noundef 1024) #8, !dbg !55
  store i8* %14, i8** getelementptr inbounds (%struct.hugeDocParts_t, %struct.hugeDocParts_t* @parts, i32 0, i32 0), align 8, !dbg !56
  %15 = call noalias i8* @malloc(i64 noundef 1024) #8, !dbg !57
  store i8* %15, i8** getelementptr inbounds (%struct.hugeDocParts_t, %struct.hugeDocParts_t* @parts, i32 0, i32 1), align 8, !dbg !58
  %16 = load i8*, i8** getelementptr inbounds (%struct.hugeDocParts_t, %struct.hugeDocParts_t* @parts, i32 0, i32 0), align 8, !dbg !59
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 1024, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !60
  %17 = load i8*, i8** getelementptr inbounds (%struct.hugeDocParts_t, %struct.hugeDocParts_t* @parts, i32 0, i32 1), align 8, !dbg !61
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 1024, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)), !dbg !62
  %18 = load i8*, i8** getelementptr inbounds (%struct.hugeDocParts_t, %struct.hugeDocParts_t* @parts, i32 0, i32 0), align 8, !dbg !63
  store i8* %18, i8** @current, align 8, !dbg !64
  %19 = load i64, i64* @len, align 8, !dbg !65
  %20 = load i64, i64* @rlen, align 8, !dbg !67
  %21 = icmp uge i64 %19, %20, !dbg !68
  br i1 %21, label %22, label %43, !dbg !69

22:                                               ; preds = %0
  %23 = load i32, i32* @curseg, align 4, !dbg !70
  %24 = icmp sge i32 %23, 101, !dbg !73
  br i1 %24, label %25, label %26, !dbg !74

25:                                               ; preds = %22
  store i64 0, i64* @rlen, align 8, !dbg !75
  store i32 0, i32* %1, align 4, !dbg !77
  br label %46, !dbg !77

26:                                               ; preds = %22
  %27 = load i64, i64* @rlen, align 8, !dbg !78
  store i64 %27, i64* @len, align 8, !dbg !79
  store i64 0, i64* @rlen, align 8, !dbg !80
  %28 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.6, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !81
  %29 = load i8*, i8** @current, align 8, !dbg !82
  %30 = load i64, i64* @len, align 8, !dbg !83
  %31 = call i8* @memcpy(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @buffer, i64 0, i64 0), i8* %29, i64 %30), !dbg !84
  %32 = load i32, i32* @curseg, align 4, !dbg !85
  %33 = add nsw i32 %32, 1, !dbg !85
  store i32 %33, i32* @curseg, align 4, !dbg !85
  %34 = load i32, i32* @curseg, align 4, !dbg !86
  %35 = icmp eq i32 %34, 100, !dbg !88
  br i1 %35, label %36, label %38, !dbg !89

36:                                               ; preds = %26
  %37 = load i8*, i8** getelementptr inbounds (%struct.hugeDocParts_t, %struct.hugeDocParts_t* @parts, i32 0, i32 1), align 8, !dbg !90
  store i8* %37, i8** @current, align 8, !dbg !92
  br label %40, !dbg !93

38:                                               ; preds = %26
  %39 = load i8*, i8** getelementptr inbounds (%struct.hugeDocParts_t, %struct.hugeDocParts_t* @parts, i32 0, i32 0), align 8, !dbg !94
  store i8* %39, i8** @current, align 8, !dbg !96
  br label %40

40:                                               ; preds = %38, %36
  %41 = load i8*, i8** @current, align 8, !dbg !97
  %42 = call i64 @strlen(i8* noundef %41) #9, !dbg !98
  store i64 %42, i64* @rlen, align 8, !dbg !99
  br label %43, !dbg !100

43:                                               ; preds = %40, %0
  %44 = load i8*, i8** getelementptr inbounds (%struct.hugeDocParts_t, %struct.hugeDocParts_t* @parts, i32 0, i32 0), align 8, !dbg !101
  call void @free(i8* noundef %44) #8, !dbg !102
  %45 = load i8*, i8** getelementptr inbounds (%struct.hugeDocParts_t, %struct.hugeDocParts_t* @parts, i32 0, i32 1), align 8, !dbg !103
  call void @free(i8* noundef %45) #8, !dbg !104
  store i32 0, i32* %1, align 4, !dbg !105
  br label %46, !dbg !105

46:                                               ; preds = %43, %25
  %47 = load i32, i32* %1, align 4, !dbg !106
  ret i32 %47, !dbg !106
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #1

declare void @klee_assume(i64 noundef) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !107 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !114, metadata !DIExpression()), !dbg !115
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !116, metadata !DIExpression()), !dbg !117
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata i8** %7, metadata !120, metadata !DIExpression()), !dbg !121
  %9 = load i8*, i8** %4, align 8, !dbg !122
  store i8* %9, i8** %7, align 8, !dbg !121
  call void @llvm.dbg.declare(metadata i8** %8, metadata !123, metadata !DIExpression()), !dbg !126
  %10 = load i8*, i8** %5, align 8, !dbg !127
  store i8* %10, i8** %8, align 8, !dbg !126
  br label %11, !dbg !128

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !129
  %13 = add i64 %12, -1, !dbg !129
  store i64 %13, i64* %6, align 8, !dbg !129
  %14 = icmp ugt i64 %12, 0, !dbg !130
  br i1 %14, label %15, label %21, !dbg !128

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !131
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !131
  store i8* %17, i8** %8, align 8, !dbg !131
  %18 = load i8, i8* %16, align 1, !dbg !132
  %19 = load i8*, i8** %7, align 8, !dbg !133
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !133
  store i8* %20, i8** %7, align 8, !dbg !133
  store i8 %18, i8* %19, align 1, !dbg !134
  br label %11, !dbg !128, !llvm.loop !135

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !137
  ret i8* %22, !dbg !138
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38, !38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "len", scope: !2, file: !3, line: 18, type: !23, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/109_testrecurse.c_307_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "059e4a4b34187c66c1c29701b3b26654")
!4 = !{!5, !11, !14, !0, !21, !26}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "buffer", scope: !2, file: !3, line: 15, type: !7, isLocal: true, isDefinition: true)
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32768, elements: !9)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !{!10}
!10 = !DISubrange(count: 4096)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "current", scope: !2, file: !3, line: 16, type: !13, isLocal: true, isDefinition: true)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "parts", scope: !2, file: !3, line: 21, type: !16, isLocal: true, isDefinition: true)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "hugeDocParts_t", file: !3, line: 13, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 10, size: 128, elements: !18)
!18 = !{!19, !20}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !17, file: !3, line: 11, baseType: !13, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !17, file: !3, line: 12, baseType: !13, size: 64, offset: 64)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "rlen", scope: !2, file: !3, line: 19, type: !23, isLocal: true, isDefinition: true)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 46, baseType: !25)
!24 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!25 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "curseg", scope: !2, file: !3, line: 17, type: !28, isLocal: true, isDefinition: true)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = distinct !DICompileUnit(language: DW_LANG_C99, file: !30, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!30 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{i32 7, !"PIC Level", i32 2}
!35 = !{i32 7, !"PIE Level", i32 2}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"Ubuntu clang version 14.0.6"}
!39 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 23, type: !40, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !42)
!40 = !DISubroutineType(types: !41)
!41 = !{!28}
!42 = !{}
!43 = !DILocation(line: 24, column: 5, scope: !39)
!44 = !DILocation(line: 25, column: 5, scope: !39)
!45 = !DILocation(line: 26, column: 5, scope: !39)
!46 = !DILocation(line: 28, column: 17, scope: !39)
!47 = !DILocation(line: 28, column: 21, scope: !39)
!48 = !DILocation(line: 28, column: 5, scope: !39)
!49 = !DILocation(line: 29, column: 17, scope: !39)
!50 = !DILocation(line: 29, column: 22, scope: !39)
!51 = !DILocation(line: 29, column: 5, scope: !39)
!52 = !DILocation(line: 30, column: 17, scope: !39)
!53 = !DILocation(line: 30, column: 24, scope: !39)
!54 = !DILocation(line: 30, column: 5, scope: !39)
!55 = !DILocation(line: 32, column: 21, scope: !39)
!56 = !DILocation(line: 32, column: 19, scope: !39)
!57 = !DILocation(line: 33, column: 20, scope: !39)
!58 = !DILocation(line: 33, column: 18, scope: !39)
!59 = !DILocation(line: 34, column: 30, scope: !39)
!60 = !DILocation(line: 34, column: 5, scope: !39)
!61 = !DILocation(line: 35, column: 30, scope: !39)
!62 = !DILocation(line: 35, column: 5, scope: !39)
!63 = !DILocation(line: 37, column: 21, scope: !39)
!64 = !DILocation(line: 37, column: 13, scope: !39)
!65 = !DILocation(line: 39, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !39, file: !3, line: 39, column: 9)
!67 = !DILocation(line: 39, column: 16, scope: !66)
!68 = !DILocation(line: 39, column: 13, scope: !66)
!69 = !DILocation(line: 39, column: 9, scope: !39)
!70 = !DILocation(line: 40, column: 13, scope: !71)
!71 = distinct !DILexicalBlock(scope: !72, file: !3, line: 40, column: 13)
!72 = distinct !DILexicalBlock(scope: !66, file: !3, line: 39, column: 22)
!73 = !DILocation(line: 40, column: 20, scope: !71)
!74 = !DILocation(line: 40, column: 13, scope: !72)
!75 = !DILocation(line: 41, column: 18, scope: !76)
!76 = distinct !DILexicalBlock(scope: !71, file: !3, line: 40, column: 38)
!77 = !DILocation(line: 42, column: 13, scope: !76)
!78 = !DILocation(line: 44, column: 15, scope: !72)
!79 = !DILocation(line: 44, column: 13, scope: !72)
!80 = !DILocation(line: 45, column: 14, scope: !72)
!81 = !DILocation(line: 46, column: 9, scope: !72)
!82 = !DILocation(line: 47, column: 24, scope: !72)
!83 = !DILocation(line: 47, column: 33, scope: !72)
!84 = !DILocation(line: 47, column: 9, scope: !72)
!85 = !DILocation(line: 48, column: 15, scope: !72)
!86 = !DILocation(line: 49, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !72, file: !3, line: 49, column: 13)
!88 = !DILocation(line: 49, column: 20, scope: !87)
!89 = !DILocation(line: 49, column: 13, scope: !72)
!90 = !DILocation(line: 50, column: 29, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !3, line: 49, column: 34)
!92 = !DILocation(line: 50, column: 21, scope: !91)
!93 = !DILocation(line: 51, column: 9, scope: !91)
!94 = !DILocation(line: 52, column: 29, scope: !95)
!95 = distinct !DILexicalBlock(scope: !87, file: !3, line: 51, column: 16)
!96 = !DILocation(line: 52, column: 21, scope: !95)
!97 = !DILocation(line: 54, column: 23, scope: !72)
!98 = !DILocation(line: 54, column: 16, scope: !72)
!99 = !DILocation(line: 54, column: 14, scope: !72)
!100 = !DILocation(line: 55, column: 5, scope: !72)
!101 = !DILocation(line: 57, column: 16, scope: !39)
!102 = !DILocation(line: 57, column: 5, scope: !39)
!103 = !DILocation(line: 58, column: 16, scope: !39)
!104 = !DILocation(line: 58, column: 5, scope: !39)
!105 = !DILocation(line: 59, column: 5, scope: !39)
!106 = !DILocation(line: 60, column: 1, scope: !39)
!107 = distinct !DISubprogram(name: "memcpy", scope: !108, file: !108, line: 12, type: !109, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !29, retainedNodes: !42)
!108 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!109 = !DISubroutineType(types: !110)
!110 = !{!111, !111, !112, !23}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!114 = !DILocalVariable(name: "destaddr", arg: 1, scope: !107, file: !108, line: 12, type: !111)
!115 = !DILocation(line: 12, column: 20, scope: !107)
!116 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !107, file: !108, line: 12, type: !112)
!117 = !DILocation(line: 12, column: 42, scope: !107)
!118 = !DILocalVariable(name: "len", arg: 3, scope: !107, file: !108, line: 12, type: !23)
!119 = !DILocation(line: 12, column: 58, scope: !107)
!120 = !DILocalVariable(name: "dest", scope: !107, file: !108, line: 13, type: !13)
!121 = !DILocation(line: 13, column: 9, scope: !107)
!122 = !DILocation(line: 13, column: 16, scope: !107)
!123 = !DILocalVariable(name: "src", scope: !107, file: !108, line: 14, type: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!126 = !DILocation(line: 14, column: 15, scope: !107)
!127 = !DILocation(line: 14, column: 21, scope: !107)
!128 = !DILocation(line: 16, column: 3, scope: !107)
!129 = !DILocation(line: 16, column: 13, scope: !107)
!130 = !DILocation(line: 16, column: 16, scope: !107)
!131 = !DILocation(line: 17, column: 19, scope: !107)
!132 = !DILocation(line: 17, column: 15, scope: !107)
!133 = !DILocation(line: 17, column: 10, scope: !107)
!134 = !DILocation(line: 17, column: 13, scope: !107)
!135 = distinct !{!135, !128, !131, !136}
!136 = !{!"llvm.loop.mustprogress"}
!137 = !DILocation(line: 18, column: 10, scope: !107)
!138 = !DILocation(line: 18, column: 3, scope: !107)
