; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/176_xmlstring.c_54_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/176_xmlstring.c_54_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"(len >= 0 && (size_t)len < ((size_t)-1) - 1) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/176_xmlstring.c_54_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrndup(i8* noundef %0, i32 noundef %1) #0 !dbg !20 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !27, metadata !DIExpression()), !dbg !28
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i8** %6, metadata !31, metadata !DIExpression()), !dbg !32
  %7 = load i8*, i8** %4, align 8, !dbg !33
  %8 = icmp eq i8* %7, null, !dbg !35
  br i1 %8, label %12, label %9, !dbg !36

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4, !dbg !37
  %11 = icmp slt i32 %10, 0, !dbg !38
  br i1 %11, label %12, label %13, !dbg !39

12:                                               ; preds = %9, %2
  store i8* null, i8** %3, align 8, !dbg !40
  br label %32, !dbg !40

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !41
  %15 = sext i32 %14 to i64, !dbg !42
  %16 = add i64 %15, 1, !dbg !43
  %17 = call i8* @xmlMallocAtomic(i64 noundef %16), !dbg !44
  store i8* %17, i8** %6, align 8, !dbg !45
  %18 = load i8*, i8** %6, align 8, !dbg !46
  %19 = icmp eq i8* %18, null, !dbg !48
  br i1 %19, label %20, label %21, !dbg !49

20:                                               ; preds = %13
  call void @xmlErrMemory(i8* noundef null, i8* noundef null), !dbg !50
  store i8* null, i8** %3, align 8, !dbg !52
  br label %32, !dbg !52

21:                                               ; preds = %13
  %22 = load i8*, i8** %6, align 8, !dbg !53
  %23 = load i8*, i8** %4, align 8, !dbg !54
  %24 = load i32, i32* %5, align 4, !dbg !55
  %25 = sext i32 %24 to i64, !dbg !55
  %26 = call i8* @memcpy(i8* %22, i8* %23, i64 %25), !dbg !56
  %27 = load i8*, i8** %6, align 8, !dbg !57
  %28 = load i32, i32* %5, align 4, !dbg !58
  %29 = sext i32 %28 to i64, !dbg !57
  %30 = getelementptr inbounds i8, i8* %27, i64 %29, !dbg !57
  store i8 0, i8* %30, align 1, !dbg !59
  %31 = load i8*, i8** %6, align 8, !dbg !60
  store i8* %31, i8** %3, align 8, !dbg !61
  br label %32, !dbg !61

32:                                               ; preds = %21, %20, %12
  %33 = load i8*, i8** %3, align 8, !dbg !62
  ret i8* %33, !dbg !62
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMallocAtomic(i64 noundef %0) #0 !dbg !63 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !66, metadata !DIExpression()), !dbg !67
  %3 = load i64, i64* %2, align 8, !dbg !68
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !69
  ret i8* %4, !dbg !70
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !71 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !74, metadata !DIExpression()), !dbg !75
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !76, metadata !DIExpression()), !dbg !77
  ret void, !dbg !78
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !79 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata i8** %3, metadata !84, metadata !DIExpression()), !dbg !86
  %5 = bitcast i32* %2 to i8*, !dbg !87
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !88
  %6 = bitcast i8** %3 to i8*, !dbg !89
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !90
  %7 = load i8*, i8** %3, align 8, !dbg !91
  %8 = icmp ne i8* %7, null, !dbg !92
  %9 = zext i1 %8 to i32, !dbg !92
  %10 = sext i32 %9 to i64, !dbg !91
  call void @klee_assume(i64 noundef %10), !dbg !93
  %11 = load i32, i32* %2, align 4, !dbg !94
  %12 = icmp sge i32 %11, 0, !dbg !95
  %13 = zext i1 %12 to i32, !dbg !95
  %14 = sext i32 %13 to i64, !dbg !94
  call void @klee_assume(i64 noundef %14), !dbg !96
  %15 = load i32, i32* %2, align 4, !dbg !97
  %16 = sext i32 %15 to i64, !dbg !98
  %17 = add i64 %16, 1, !dbg !99
  %18 = icmp ugt i64 %17, 0, !dbg !100
  %19 = zext i1 %18 to i32, !dbg !100
  %20 = sext i32 %19 to i64, !dbg !98
  call void @klee_assume(i64 noundef %20), !dbg !101
  call void @llvm.dbg.declare(metadata i8** %4, metadata !102, metadata !DIExpression()), !dbg !103
  %21 = load i8*, i8** %3, align 8, !dbg !104
  %22 = load i32, i32* %2, align 4, !dbg !105
  %23 = call i8* @xmlStrndup(i8* noundef %21, i32 noundef %22), !dbg !106
  store i8* %23, i8** %4, align 8, !dbg !103
  %24 = load i32, i32* %2, align 4, !dbg !107
  %25 = icmp sge i32 %24, 0, !dbg !107
  br i1 %25, label %26, label %32, !dbg !107

26:                                               ; preds = %0
  %27 = load i32, i32* %2, align 4, !dbg !107
  %28 = sext i32 %27 to i64, !dbg !107
  %29 = icmp ult i64 %28, -2, !dbg !107
  br i1 %29, label %30, label %32, !dbg !107

30:                                               ; preds = %26
  br i1 true, label %31, label %32, !dbg !107

31:                                               ; preds = %30
  br label %34, !dbg !107

32:                                               ; preds = %30, %26, %0
  %33 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !107
  br label %34, !dbg !107

34:                                               ; preds = %32, %31
  %35 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !108
  %36 = load i8*, i8** %4, align 8, !dbg !109
  %37 = icmp ne i8* %36, null, !dbg !111
  br i1 %37, label %38, label %40, !dbg !112

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8, !dbg !113
  call void @free(i8* noundef %39) #7, !dbg !115
  br label %40, !dbg !116

40:                                               ; preds = %38, %34
  ret i32 0, !dbg !117
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !118 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !124, metadata !DIExpression()), !dbg !125
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !126, metadata !DIExpression()), !dbg !127
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata i8** %7, metadata !130, metadata !DIExpression()), !dbg !131
  %9 = load i8*, i8** %4, align 8, !dbg !132
  store i8* %9, i8** %7, align 8, !dbg !131
  call void @llvm.dbg.declare(metadata i8** %8, metadata !133, metadata !DIExpression()), !dbg !136
  %10 = load i8*, i8** %5, align 8, !dbg !137
  store i8* %10, i8** %8, align 8, !dbg !136
  br label %11, !dbg !138

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !139
  %13 = add i64 %12, -1, !dbg !139
  store i64 %13, i64* %6, align 8, !dbg !139
  %14 = icmp ugt i64 %12, 0, !dbg !140
  br i1 %14, label %15, label %21, !dbg !138

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !141
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !141
  store i8* %17, i8** %8, align 8, !dbg !141
  %18 = load i8, i8* %16, align 1, !dbg !142
  %19 = load i8*, i8** %7, align 8, !dbg !143
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !143
  store i8* %20, i8** %7, align 8, !dbg !143
  store i8 %18, i8* %19, align 1, !dbg !144
  br label %11, !dbg !138, !llvm.loop !145

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !147
  ret i8* %22, !dbg !148
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19, !19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/176_xmlstring.c_54_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3e2a4a2c321269618e4afdafe1d92b90")
!2 = !{!3, !4, !7}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !6)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !8, line: 46, baseType: !9)
!8 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!9 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 14.0.6"}
!20 = distinct !DISubprogram(name: "xmlStrndup", scope: !1, file: !1, line: 15, type: !21, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!21 = !DISubroutineType(types: !22)
!22 = !{!4, !23, !25}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !{}
!27 = !DILocalVariable(name: "cur", arg: 1, scope: !20, file: !1, line: 15, type: !23)
!28 = !DILocation(line: 15, column: 36, scope: !20)
!29 = !DILocalVariable(name: "len", arg: 2, scope: !20, file: !1, line: 15, type: !25)
!30 = !DILocation(line: 15, column: 45, scope: !20)
!31 = !DILocalVariable(name: "ret", scope: !20, file: !1, line: 16, type: !4)
!32 = !DILocation(line: 16, column: 14, scope: !20)
!33 = !DILocation(line: 18, column: 10, scope: !34)
!34 = distinct !DILexicalBlock(scope: !20, file: !1, line: 18, column: 9)
!35 = !DILocation(line: 18, column: 14, scope: !34)
!36 = !DILocation(line: 18, column: 23, scope: !34)
!37 = !DILocation(line: 18, column: 27, scope: !34)
!38 = !DILocation(line: 18, column: 31, scope: !34)
!39 = !DILocation(line: 18, column: 9, scope: !20)
!40 = !DILocation(line: 18, column: 37, scope: !34)
!41 = !DILocation(line: 19, column: 48, scope: !20)
!42 = !DILocation(line: 19, column: 39, scope: !20)
!43 = !DILocation(line: 19, column: 52, scope: !20)
!44 = !DILocation(line: 19, column: 23, scope: !20)
!45 = !DILocation(line: 19, column: 9, scope: !20)
!46 = !DILocation(line: 20, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !20, file: !1, line: 20, column: 9)
!48 = !DILocation(line: 20, column: 13, scope: !47)
!49 = !DILocation(line: 20, column: 9, scope: !20)
!50 = !DILocation(line: 21, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !1, line: 20, column: 22)
!52 = !DILocation(line: 22, column: 9, scope: !51)
!53 = !DILocation(line: 24, column: 12, scope: !20)
!54 = !DILocation(line: 24, column: 17, scope: !20)
!55 = !DILocation(line: 24, column: 22, scope: !20)
!56 = !DILocation(line: 24, column: 5, scope: !20)
!57 = !DILocation(line: 25, column: 5, scope: !20)
!58 = !DILocation(line: 25, column: 9, scope: !20)
!59 = !DILocation(line: 25, column: 14, scope: !20)
!60 = !DILocation(line: 26, column: 12, scope: !20)
!61 = !DILocation(line: 26, column: 5, scope: !20)
!62 = !DILocation(line: 27, column: 1, scope: !20)
!63 = distinct !DISubprogram(name: "xmlMallocAtomic", scope: !1, file: !1, line: 34, type: !64, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!64 = !DISubroutineType(types: !65)
!65 = !{!3, !7}
!66 = !DILocalVariable(name: "size", arg: 1, scope: !63, file: !1, line: 34, type: !7)
!67 = !DILocation(line: 34, column: 30, scope: !63)
!68 = !DILocation(line: 35, column: 19, scope: !63)
!69 = !DILocation(line: 35, column: 12, scope: !63)
!70 = !DILocation(line: 35, column: 5, scope: !63)
!71 = distinct !DISubprogram(name: "xmlErrMemory", scope: !1, file: !1, line: 30, type: !72, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !3, !3}
!74 = !DILocalVariable(name: "ctx", arg: 1, scope: !71, file: !1, line: 30, type: !3)
!75 = !DILocation(line: 30, column: 25, scope: !71)
!76 = !DILocalVariable(name: "extra", arg: 2, scope: !71, file: !1, line: 30, type: !3)
!77 = !DILocation(line: 30, column: 36, scope: !71)
!78 = !DILocation(line: 32, column: 1, scope: !71)
!79 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 38, type: !80, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!80 = !DISubroutineType(types: !81)
!81 = !{!25}
!82 = !DILocalVariable(name: "len", scope: !79, file: !1, line: 40, type: !25)
!83 = !DILocation(line: 40, column: 9, scope: !79)
!84 = !DILocalVariable(name: "cur", scope: !79, file: !1, line: 41, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!86 = !DILocation(line: 41, column: 11, scope: !79)
!87 = !DILocation(line: 44, column: 24, scope: !79)
!88 = !DILocation(line: 44, column: 5, scope: !79)
!89 = !DILocation(line: 45, column: 24, scope: !79)
!90 = !DILocation(line: 45, column: 5, scope: !79)
!91 = !DILocation(line: 48, column: 17, scope: !79)
!92 = !DILocation(line: 48, column: 21, scope: !79)
!93 = !DILocation(line: 48, column: 5, scope: !79)
!94 = !DILocation(line: 49, column: 17, scope: !79)
!95 = !DILocation(line: 49, column: 21, scope: !79)
!96 = !DILocation(line: 49, column: 5, scope: !79)
!97 = !DILocation(line: 52, column: 25, scope: !79)
!98 = !DILocation(line: 52, column: 17, scope: !79)
!99 = !DILocation(line: 52, column: 29, scope: !79)
!100 = !DILocation(line: 52, column: 33, scope: !79)
!101 = !DILocation(line: 52, column: 5, scope: !79)
!102 = !DILocalVariable(name: "result", scope: !79, file: !1, line: 55, type: !4)
!103 = !DILocation(line: 55, column: 14, scope: !79)
!104 = !DILocation(line: 55, column: 45, scope: !79)
!105 = !DILocation(line: 55, column: 50, scope: !79)
!106 = !DILocation(line: 55, column: 23, scope: !79)
!107 = !DILocation(line: 63, column: 5, scope: !79)
!108 = !DILocation(line: 66, column: 5, scope: !79)
!109 = !DILocation(line: 69, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !79, file: !1, line: 69, column: 9)
!111 = !DILocation(line: 69, column: 16, scope: !110)
!112 = !DILocation(line: 69, column: 9, scope: !79)
!113 = !DILocation(line: 70, column: 14, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !1, line: 69, column: 25)
!115 = !DILocation(line: 70, column: 9, scope: !114)
!116 = !DILocation(line: 71, column: 5, scope: !114)
!117 = !DILocation(line: 73, column: 5, scope: !79)
!118 = distinct !DISubprogram(name: "memcpy", scope: !119, file: !119, line: 12, type: !120, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !26)
!119 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!120 = !DISubroutineType(types: !121)
!121 = !{!3, !3, !122, !7}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!124 = !DILocalVariable(name: "destaddr", arg: 1, scope: !118, file: !119, line: 12, type: !3)
!125 = !DILocation(line: 12, column: 20, scope: !118)
!126 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !118, file: !119, line: 12, type: !122)
!127 = !DILocation(line: 12, column: 42, scope: !118)
!128 = !DILocalVariable(name: "len", arg: 3, scope: !118, file: !119, line: 12, type: !7)
!129 = !DILocation(line: 12, column: 58, scope: !118)
!130 = !DILocalVariable(name: "dest", scope: !118, file: !119, line: 13, type: !85)
!131 = !DILocation(line: 13, column: 9, scope: !118)
!132 = !DILocation(line: 13, column: 16, scope: !118)
!133 = !DILocalVariable(name: "src", scope: !118, file: !119, line: 14, type: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!136 = !DILocation(line: 14, column: 15, scope: !118)
!137 = !DILocation(line: 14, column: 21, scope: !118)
!138 = !DILocation(line: 16, column: 3, scope: !118)
!139 = !DILocation(line: 16, column: 13, scope: !118)
!140 = !DILocation(line: 16, column: 16, scope: !118)
!141 = !DILocation(line: 17, column: 19, scope: !118)
!142 = !DILocation(line: 17, column: 15, scope: !118)
!143 = !DILocation(line: 17, column: 10, scope: !118)
!144 = !DILocation(line: 17, column: 13, scope: !118)
!145 = distinct !{!145, !138, !141, !146}
!146 = !{!"llvm.loop.mustprogress"}
!147 = !DILocation(line: 18, column: 10, scope: !118)
!148 = !DILocation(line: 18, column: 3, scope: !118)
