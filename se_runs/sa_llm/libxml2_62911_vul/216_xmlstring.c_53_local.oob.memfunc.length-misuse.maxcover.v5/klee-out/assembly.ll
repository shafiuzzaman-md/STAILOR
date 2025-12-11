; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/216_xmlstring.c_53_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/216_xmlstring.c_53_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"allocated_memory\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"(len <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/216_xmlstring.c_53_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

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
  store i8* null, i8** %3, align 8, !dbg !50
  br label %32, !dbg !50

21:                                               ; preds = %13
  %22 = load i8*, i8** %6, align 8, !dbg !52
  %23 = load i8*, i8** %4, align 8, !dbg !53
  %24 = load i32, i32* %5, align 4, !dbg !54
  %25 = sext i32 %24 to i64, !dbg !54
  %26 = call i8* @memcpy(i8* %22, i8* %23, i64 %25), !dbg !55
  %27 = load i8*, i8** %6, align 8, !dbg !56
  %28 = load i32, i32* %5, align 4, !dbg !57
  %29 = sext i32 %28 to i64, !dbg !56
  %30 = getelementptr inbounds i8, i8* %27, i64 %29, !dbg !56
  store i8 0, i8* %30, align 1, !dbg !58
  %31 = load i8*, i8** %6, align 8, !dbg !59
  store i8* %31, i8** %3, align 8, !dbg !60
  br label %32, !dbg !60

32:                                               ; preds = %21, %20, %12
  %33 = load i8*, i8** %3, align 8, !dbg !61
  ret i8* %33, !dbg !61
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMallocAtomic(i64 noundef %0) #0 !dbg !62 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !65, metadata !DIExpression()), !dbg !66
  %5 = load i64, i64* %3, align 8, !dbg !67
  %6 = icmp eq i64 %5, 0, !dbg !69
  br i1 %6, label %7, label %8, !dbg !70

7:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !71
  br label %18, !dbg !71

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %4, metadata !73, metadata !DIExpression()), !dbg !74
  %9 = load i64, i64* %3, align 8, !dbg !75
  %10 = call noalias i8* @malloc(i64 noundef %9) #7, !dbg !76
  store i8* %10, i8** %4, align 8, !dbg !74
  %11 = load i8*, i8** %4, align 8, !dbg !77
  %12 = icmp ne i8* %11, null, !dbg !77
  br i1 %12, label %13, label %16, !dbg !79

13:                                               ; preds = %8
  %14 = load i8*, i8** %4, align 8, !dbg !80
  %15 = load i64, i64* %3, align 8, !dbg !82
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef %15, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !83
  br label %16, !dbg !84

16:                                               ; preds = %13, %8
  %17 = load i8*, i8** %4, align 8, !dbg !85
  store i8* %17, i8** %2, align 8, !dbg !86
  br label %18, !dbg !86

18:                                               ; preds = %16, %7
  %19 = load i8*, i8** %2, align 8, !dbg !87
  ret i8* %19, !dbg !87
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !88 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !93, metadata !DIExpression()), !dbg !97
  %5 = bitcast i32* %2 to i8*, !dbg !98
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !99
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !100
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 1024, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !101
  %7 = load i32, i32* %2, align 4, !dbg !102
  %8 = icmp sge i32 %7, 0, !dbg !103
  %9 = zext i1 %8 to i32, !dbg !103
  %10 = sext i32 %9 to i64, !dbg !102
  call void @klee_assume(i64 noundef %10), !dbg !104
  %11 = load i32, i32* %2, align 4, !dbg !105
  %12 = icmp slt i32 %11, 1024, !dbg !106
  %13 = zext i1 %12 to i32, !dbg !106
  %14 = sext i32 %13 to i64, !dbg !105
  call void @klee_assume(i64 noundef %14), !dbg !107
  call void @llvm.dbg.declare(metadata i8** %4, metadata !108, metadata !DIExpression()), !dbg !109
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !110
  %16 = load i32, i32* %2, align 4, !dbg !111
  %17 = call i8* @xmlStrndup(i8* noundef %15, i32 noundef %16), !dbg !112
  store i8* %17, i8** %4, align 8, !dbg !109
  %18 = load i8*, i8** %4, align 8, !dbg !113
  %19 = icmp ne i8* %18, null, !dbg !115
  br i1 %19, label %20, label %29, !dbg !116

20:                                               ; preds = %0
  %21 = load i32, i32* %2, align 4, !dbg !117
  %22 = icmp sle i32 %21, 1024, !dbg !117
  br i1 %22, label %23, label %25, !dbg !117

23:                                               ; preds = %20
  br i1 true, label %24, label %25, !dbg !117

24:                                               ; preds = %23
  br label %27, !dbg !117

25:                                               ; preds = %23, %20
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !117
  br label %27, !dbg !117

27:                                               ; preds = %25, %24
  %28 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !119
  br label %29, !dbg !120

29:                                               ; preds = %27, %0
  %30 = load i8*, i8** %4, align 8, !dbg !121
  %31 = icmp ne i8* %30, null, !dbg !121
  br i1 %31, label %32, label %34, !dbg !123

32:                                               ; preds = %29
  %33 = load i8*, i8** %4, align 8, !dbg !124
  call void @free(i8* noundef %33) #7, !dbg !126
  br label %34, !dbg !127

34:                                               ; preds = %32, %29
  ret i32 0, !dbg !128
}

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !129 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !135, metadata !DIExpression()), !dbg !136
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !137, metadata !DIExpression()), !dbg !138
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata i8** %7, metadata !141, metadata !DIExpression()), !dbg !144
  %9 = load i8*, i8** %4, align 8, !dbg !145
  store i8* %9, i8** %7, align 8, !dbg !144
  call void @llvm.dbg.declare(metadata i8** %8, metadata !146, metadata !DIExpression()), !dbg !149
  %10 = load i8*, i8** %5, align 8, !dbg !150
  store i8* %10, i8** %8, align 8, !dbg !149
  br label %11, !dbg !151

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !152
  %13 = add i64 %12, -1, !dbg !152
  store i64 %13, i64* %6, align 8, !dbg !152
  %14 = icmp ugt i64 %12, 0, !dbg !153
  br i1 %14, label %15, label %21, !dbg !151

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !154
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !154
  store i8* %17, i8** %8, align 8, !dbg !154
  %18 = load i8, i8* %16, align 1, !dbg !155
  %19 = load i8*, i8** %7, align 8, !dbg !156
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !156
  store i8* %20, i8** %7, align 8, !dbg !156
  store i8 %18, i8* %19, align 1, !dbg !157
  br label %11, !dbg !151, !llvm.loop !158

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !160
  ret i8* %22, !dbg !161
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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/216_xmlstring.c_53_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "f8ed312aa6df52148aec218fe0a898ff")
!2 = !{!3, !4, !7}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
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
!20 = distinct !DISubprogram(name: "xmlStrndup", scope: !1, file: !1, line: 14, type: !21, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!21 = !DISubroutineType(types: !22)
!22 = !{!4, !23, !25}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !{}
!27 = !DILocalVariable(name: "cur", arg: 1, scope: !20, file: !1, line: 14, type: !23)
!28 = !DILocation(line: 14, column: 36, scope: !20)
!29 = !DILocalVariable(name: "len", arg: 2, scope: !20, file: !1, line: 14, type: !25)
!30 = !DILocation(line: 14, column: 45, scope: !20)
!31 = !DILocalVariable(name: "ret", scope: !20, file: !1, line: 15, type: !4)
!32 = !DILocation(line: 15, column: 14, scope: !20)
!33 = !DILocation(line: 17, column: 10, scope: !34)
!34 = distinct !DILexicalBlock(scope: !20, file: !1, line: 17, column: 9)
!35 = !DILocation(line: 17, column: 14, scope: !34)
!36 = !DILocation(line: 17, column: 23, scope: !34)
!37 = !DILocation(line: 17, column: 27, scope: !34)
!38 = !DILocation(line: 17, column: 31, scope: !34)
!39 = !DILocation(line: 17, column: 9, scope: !20)
!40 = !DILocation(line: 17, column: 37, scope: !34)
!41 = !DILocation(line: 18, column: 48, scope: !20)
!42 = !DILocation(line: 18, column: 39, scope: !20)
!43 = !DILocation(line: 18, column: 52, scope: !20)
!44 = !DILocation(line: 18, column: 23, scope: !20)
!45 = !DILocation(line: 18, column: 9, scope: !20)
!46 = !DILocation(line: 19, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !20, file: !1, line: 19, column: 9)
!48 = !DILocation(line: 19, column: 13, scope: !47)
!49 = !DILocation(line: 19, column: 9, scope: !20)
!50 = !DILocation(line: 20, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !1, line: 19, column: 22)
!52 = !DILocation(line: 22, column: 12, scope: !20)
!53 = !DILocation(line: 22, column: 17, scope: !20)
!54 = !DILocation(line: 22, column: 22, scope: !20)
!55 = !DILocation(line: 22, column: 5, scope: !20)
!56 = !DILocation(line: 23, column: 5, scope: !20)
!57 = !DILocation(line: 23, column: 9, scope: !20)
!58 = !DILocation(line: 23, column: 14, scope: !20)
!59 = !DILocation(line: 24, column: 12, scope: !20)
!60 = !DILocation(line: 24, column: 5, scope: !20)
!61 = !DILocation(line: 25, column: 1, scope: !20)
!62 = distinct !DISubprogram(name: "xmlMallocAtomic", scope: !1, file: !1, line: 28, type: !63, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!63 = !DISubroutineType(types: !64)
!64 = !{!3, !7}
!65 = !DILocalVariable(name: "size", arg: 1, scope: !62, file: !1, line: 28, type: !7)
!66 = !DILocation(line: 28, column: 30, scope: !62)
!67 = !DILocation(line: 29, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !62, file: !1, line: 29, column: 9)
!69 = !DILocation(line: 29, column: 14, scope: !68)
!70 = !DILocation(line: 29, column: 9, scope: !62)
!71 = !DILocation(line: 30, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !1, line: 29, column: 20)
!73 = !DILocalVariable(name: "ptr", scope: !62, file: !1, line: 32, type: !3)
!74 = !DILocation(line: 32, column: 11, scope: !62)
!75 = !DILocation(line: 32, column: 24, scope: !62)
!76 = !DILocation(line: 32, column: 17, scope: !62)
!77 = !DILocation(line: 33, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !62, file: !1, line: 33, column: 9)
!79 = !DILocation(line: 33, column: 9, scope: !62)
!80 = !DILocation(line: 34, column: 28, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 33, column: 14)
!82 = !DILocation(line: 34, column: 33, scope: !81)
!83 = !DILocation(line: 34, column: 9, scope: !81)
!84 = !DILocation(line: 35, column: 5, scope: !81)
!85 = !DILocation(line: 36, column: 12, scope: !62)
!86 = !DILocation(line: 36, column: 5, scope: !62)
!87 = !DILocation(line: 37, column: 1, scope: !62)
!88 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 39, type: !89, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!89 = !DISubroutineType(types: !90)
!90 = !{!25}
!91 = !DILocalVariable(name: "len", scope: !88, file: !1, line: 41, type: !25)
!92 = !DILocation(line: 41, column: 9, scope: !88)
!93 = !DILocalVariable(name: "cur", scope: !88, file: !1, line: 42, type: !94)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 8192, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 1024)
!97 = !DILocation(line: 42, column: 19, scope: !88)
!98 = !DILocation(line: 45, column: 24, scope: !88)
!99 = !DILocation(line: 45, column: 5, scope: !88)
!100 = !DILocation(line: 46, column: 24, scope: !88)
!101 = !DILocation(line: 46, column: 5, scope: !88)
!102 = !DILocation(line: 49, column: 17, scope: !88)
!103 = !DILocation(line: 49, column: 21, scope: !88)
!104 = !DILocation(line: 49, column: 5, scope: !88)
!105 = !DILocation(line: 50, column: 17, scope: !88)
!106 = !DILocation(line: 50, column: 21, scope: !88)
!107 = !DILocation(line: 50, column: 5, scope: !88)
!108 = !DILocalVariable(name: "result", scope: !88, file: !1, line: 56, type: !4)
!109 = !DILocation(line: 56, column: 14, scope: !88)
!110 = !DILocation(line: 56, column: 44, scope: !88)
!111 = !DILocation(line: 56, column: 49, scope: !88)
!112 = !DILocation(line: 56, column: 23, scope: !88)
!113 = !DILocation(line: 63, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !88, file: !1, line: 63, column: 9)
!115 = !DILocation(line: 63, column: 16, scope: !114)
!116 = !DILocation(line: 63, column: 9, scope: !88)
!117 = !DILocation(line: 64, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 63, column: 25)
!119 = !DILocation(line: 65, column: 9, scope: !118)
!120 = !DILocation(line: 66, column: 5, scope: !118)
!121 = !DILocation(line: 69, column: 9, scope: !122)
!122 = distinct !DILexicalBlock(scope: !88, file: !1, line: 69, column: 9)
!123 = !DILocation(line: 69, column: 9, scope: !88)
!124 = !DILocation(line: 70, column: 14, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !1, line: 69, column: 17)
!126 = !DILocation(line: 70, column: 9, scope: !125)
!127 = !DILocation(line: 71, column: 5, scope: !125)
!128 = !DILocation(line: 73, column: 5, scope: !88)
!129 = distinct !DISubprogram(name: "memcpy", scope: !130, file: !130, line: 12, type: !131, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !26)
!130 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!131 = !DISubroutineType(types: !132)
!132 = !{!3, !3, !133, !7}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!135 = !DILocalVariable(name: "destaddr", arg: 1, scope: !129, file: !130, line: 12, type: !3)
!136 = !DILocation(line: 12, column: 20, scope: !129)
!137 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !129, file: !130, line: 12, type: !133)
!138 = !DILocation(line: 12, column: 42, scope: !129)
!139 = !DILocalVariable(name: "len", arg: 3, scope: !129, file: !130, line: 12, type: !7)
!140 = !DILocation(line: 12, column: 58, scope: !129)
!141 = !DILocalVariable(name: "dest", scope: !129, file: !130, line: 13, type: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!144 = !DILocation(line: 13, column: 9, scope: !129)
!145 = !DILocation(line: 13, column: 16, scope: !129)
!146 = !DILocalVariable(name: "src", scope: !129, file: !130, line: 14, type: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!149 = !DILocation(line: 14, column: 15, scope: !129)
!150 = !DILocation(line: 14, column: 21, scope: !129)
!151 = !DILocation(line: 16, column: 3, scope: !129)
!152 = !DILocation(line: 16, column: 13, scope: !129)
!153 = !DILocation(line: 16, column: 16, scope: !129)
!154 = !DILocation(line: 17, column: 19, scope: !129)
!155 = !DILocation(line: 17, column: 15, scope: !129)
!156 = !DILocation(line: 17, column: 10, scope: !129)
!157 = !DILocation(line: 17, column: 13, scope: !129)
!158 = distinct !{!158, !151, !154, !159}
!159 = !{!"llvm.loop.mustprogress"}
!160 = !DILocation(line: 18, column: 10, scope: !129)
!161 = !DILocation(line: 18, column: 3, scope: !129)
