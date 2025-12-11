; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/271_parser.c_3257_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/271_parser.c_3257_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"(len <= max) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/271_parser.c_3257_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlParserNsLookup = private unnamed_addr constant [62 x i8] c"xmlChar *xmlParserNsLookup(xmlParserCtxtPtr, const xmlChar *)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !17 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !25, metadata !DIExpression()), !dbg !26
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !27, metadata !DIExpression()), !dbg !28
  ret void, !dbg !29
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMallocAtomic(i64 noundef %0) #0 !dbg !30 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !36, metadata !DIExpression()), !dbg !37
  %3 = load i64, i64* %2, align 8, !dbg !38
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !39
  ret i8* %4, !dbg !40
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlParserNsLookup(i8* noundef %0, i8* noundef %1) #0 !dbg !41 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !46, metadata !DIExpression()), !dbg !47
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i8** %6, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i8** %7, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i8** %8, metadata !54, metadata !DIExpression()), !dbg !55
  %12 = load i8*, i8** %5, align 8, !dbg !56
  store i8* %12, i8** %8, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %9, metadata !57, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %10, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %11, metadata !62, metadata !DIExpression()), !dbg !63
  store i32 1, i32* %11, align 4, !dbg !63
  %13 = bitcast i32* %9 to i8*, !dbg !64
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !65
  %14 = bitcast i32* %10 to i8*, !dbg !66
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !67
  %15 = load i32, i32* %9, align 4, !dbg !68
  %16 = icmp sge i32 %15, 0, !dbg !69
  %17 = zext i1 %16 to i32, !dbg !69
  %18 = sext i32 %17 to i64, !dbg !68
  call void @klee_assume(i64 noundef %18), !dbg !70
  %19 = load i32, i32* %10, align 4, !dbg !71
  %20 = icmp sge i32 %19, 0, !dbg !72
  %21 = zext i1 %20 to i32, !dbg !72
  %22 = sext i32 %21 to i64, !dbg !71
  call void @klee_assume(i64 noundef %22), !dbg !73
  %23 = load i32, i32* %10, align 4, !dbg !74
  %24 = icmp sgt i32 %23, 0, !dbg !75
  %25 = zext i1 %24 to i32, !dbg !75
  %26 = sext i32 %25 to i64, !dbg !74
  call void @klee_assume(i64 noundef %26), !dbg !76
  %27 = load i32, i32* %10, align 4, !dbg !77
  %28 = sext i32 %27 to i64, !dbg !77
  %29 = call i8* @xmlMallocAtomic(i64 noundef %28), !dbg !78
  store i8* %29, i8** %6, align 8, !dbg !79
  %30 = load i8*, i8** %6, align 8, !dbg !80
  %31 = icmp eq i8* %30, null, !dbg !82
  br i1 %31, label %32, label %34, !dbg !83

32:                                               ; preds = %2
  %33 = load i8*, i8** %4, align 8, !dbg !84
  call void @xmlErrMemory(i8* noundef %33, i8* noundef null), !dbg !86
  store i8* null, i8** %3, align 8, !dbg !87
  br label %63, !dbg !87

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4, !dbg !88
  %36 = load i32, i32* %10, align 4, !dbg !88
  %37 = icmp sle i32 %35, %36, !dbg !88
  br i1 %37, label %38, label %40, !dbg !88

38:                                               ; preds = %34
  br i1 true, label %39, label %40, !dbg !88

39:                                               ; preds = %38
  br label %42, !dbg !88

40:                                               ; preds = %38, %34
  %41 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.xmlParserNsLookup, i64 0, i64 0)), !dbg !88
  br label %42, !dbg !88

42:                                               ; preds = %40, %39
  %43 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.xmlParserNsLookup, i64 0, i64 0)), !dbg !89
  %44 = load i8*, i8** %6, align 8, !dbg !90
  %45 = load i8*, i8** %8, align 8, !dbg !91
  %46 = load i32, i32* %9, align 4, !dbg !92
  %47 = sext i32 %46 to i64, !dbg !92
  %48 = call i8* @memcpy(i8* %44, i8* %45, i64 %47), !dbg !93
  br label %49, !dbg !94

49:                                               ; preds = %60, %42
  %50 = load i32, i32* %11, align 4, !dbg !95
  %51 = icmp ne i32 %50, 0, !dbg !96
  br i1 %51, label %52, label %61, !dbg !94

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4, !dbg !97
  %54 = add nsw i32 %53, 10, !dbg !100
  %55 = load i32, i32* %10, align 4, !dbg !101
  %56 = icmp sgt i32 %54, %55, !dbg !102
  br i1 %56, label %57, label %60, !dbg !103

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4, !dbg !104
  %59 = mul nsw i32 %58, 2, !dbg !104
  store i32 %59, i32* %10, align 4, !dbg !104
  br label %61, !dbg !106

60:                                               ; preds = %52
  store i32 0, i32* %11, align 4, !dbg !107
  br label %49, !dbg !94, !llvm.loop !108

61:                                               ; preds = %57, %49
  %62 = load i8*, i8** %6, align 8, !dbg !111
  call void @free(i8* noundef %62) #7, !dbg !112
  store i8* null, i8** %3, align 8, !dbg !113
  br label %63, !dbg !113

63:                                               ; preds = %61, %32
  %64 = load i8*, i8** %3, align 8, !dbg !114
  ret i8* %64, !dbg !114
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !115 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [100 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !118, metadata !DIExpression()), !dbg !119
  store i8* null, i8** %2, align 8, !dbg !119
  call void @llvm.dbg.declare(metadata [100 x i8]* %3, metadata !120, metadata !DIExpression()), !dbg !124
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !125
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 100, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !126
  %5 = load i8*, i8** %2, align 8, !dbg !127
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !128
  %7 = call i8* @xmlParserNsLookup(i8* noundef %5, i8* noundef %6), !dbg !129
  ret i32 0, !dbg !130
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !131 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !137, metadata !DIExpression()), !dbg !138
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !139, metadata !DIExpression()), !dbg !140
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i8** %7, metadata !143, metadata !DIExpression()), !dbg !145
  %9 = load i8*, i8** %4, align 8, !dbg !146
  store i8* %9, i8** %7, align 8, !dbg !145
  call void @llvm.dbg.declare(metadata i8** %8, metadata !147, metadata !DIExpression()), !dbg !148
  %10 = load i8*, i8** %5, align 8, !dbg !149
  store i8* %10, i8** %8, align 8, !dbg !148
  br label %11, !dbg !150

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !151
  %13 = add i64 %12, -1, !dbg !151
  store i64 %13, i64* %6, align 8, !dbg !151
  %14 = icmp ugt i64 %12, 0, !dbg !152
  br i1 %14, label %15, label %21, !dbg !150

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !153
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !153
  store i8* %17, i8** %8, align 8, !dbg !153
  %18 = load i8, i8* %16, align 1, !dbg !154
  %19 = load i8*, i8** %7, align 8, !dbg !155
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !155
  store i8* %20, i8** %7, align 8, !dbg !155
  store i8 %18, i8* %19, align 1, !dbg !156
  br label %11, !dbg !150, !llvm.loop !157

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !158
  ret i8* %22, !dbg !159
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/271_parser.c_3257_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3de3729931678ac61c8c8f885cd9745e")
!2 = !{!3, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !5)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "xmlErrMemory", scope: !1, file: !1, line: 13, type: !18, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !21}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPtr", file: !1, line: 11, baseType: !6)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !{}
!25 = !DILocalVariable(name: "ctxt", arg: 1, scope: !17, file: !1, line: 13, type: !20)
!26 = !DILocation(line: 13, column: 36, scope: !17)
!27 = !DILocalVariable(name: "extra", arg: 2, scope: !17, file: !1, line: 13, type: !21)
!28 = !DILocation(line: 13, column: 54, scope: !17)
!29 = !DILocation(line: 15, column: 1, scope: !17)
!30 = distinct !DISubprogram(name: "xmlMallocAtomic", scope: !1, file: !1, line: 17, type: !31, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!31 = !DISubroutineType(types: !32)
!32 = !{!6, !33}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocalVariable(name: "size", arg: 1, scope: !30, file: !1, line: 17, type: !33)
!37 = !DILocation(line: 17, column: 30, scope: !30)
!38 = !DILocation(line: 18, column: 19, scope: !30)
!39 = !DILocation(line: 18, column: 12, scope: !30)
!40 = !DILocation(line: 18, column: 5, scope: !30)
!41 = distinct !DISubprogram(name: "xmlParserNsLookup", scope: !1, file: !1, line: 22, type: !42, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!42 = !DISubroutineType(types: !43)
!43 = !{!3, !20, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!46 = !DILocalVariable(name: "ctxt", arg: 1, scope: !41, file: !1, line: 22, type: !20)
!47 = !DILocation(line: 22, column: 45, scope: !41)
!48 = !DILocalVariable(name: "prefix", arg: 2, scope: !41, file: !1, line: 22, type: !44)
!49 = !DILocation(line: 22, column: 66, scope: !41)
!50 = !DILocalVariable(name: "buffer", scope: !41, file: !1, line: 24, type: !3)
!51 = !DILocation(line: 24, column: 14, scope: !41)
!52 = !DILocalVariable(name: "tmp", scope: !41, file: !1, line: 25, type: !3)
!53 = !DILocation(line: 25, column: 14, scope: !41)
!54 = !DILocalVariable(name: "buf", scope: !41, file: !1, line: 26, type: !3)
!55 = !DILocation(line: 26, column: 14, scope: !41)
!56 = !DILocation(line: 26, column: 30, scope: !41)
!57 = !DILocalVariable(name: "len", scope: !41, file: !1, line: 27, type: !58)
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !DILocation(line: 27, column: 9, scope: !41)
!60 = !DILocalVariable(name: "max", scope: !41, file: !1, line: 28, type: !58)
!61 = !DILocation(line: 28, column: 9, scope: !41)
!62 = !DILocalVariable(name: "c", scope: !41, file: !1, line: 29, type: !58)
!63 = !DILocation(line: 29, column: 9, scope: !41)
!64 = !DILocation(line: 32, column: 24, scope: !41)
!65 = !DILocation(line: 32, column: 5, scope: !41)
!66 = !DILocation(line: 33, column: 24, scope: !41)
!67 = !DILocation(line: 33, column: 5, scope: !41)
!68 = !DILocation(line: 36, column: 17, scope: !41)
!69 = !DILocation(line: 36, column: 21, scope: !41)
!70 = !DILocation(line: 36, column: 5, scope: !41)
!71 = !DILocation(line: 37, column: 17, scope: !41)
!72 = !DILocation(line: 37, column: 21, scope: !41)
!73 = !DILocation(line: 37, column: 5, scope: !41)
!74 = !DILocation(line: 38, column: 17, scope: !41)
!75 = !DILocation(line: 38, column: 21, scope: !41)
!76 = !DILocation(line: 38, column: 5, scope: !41)
!77 = !DILocation(line: 41, column: 42, scope: !41)
!78 = !DILocation(line: 41, column: 26, scope: !41)
!79 = !DILocation(line: 41, column: 12, scope: !41)
!80 = !DILocation(line: 42, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !41, file: !1, line: 42, column: 9)
!82 = !DILocation(line: 42, column: 16, scope: !81)
!83 = !DILocation(line: 42, column: 9, scope: !41)
!84 = !DILocation(line: 43, column: 22, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !1, line: 42, column: 25)
!86 = !DILocation(line: 43, column: 9, scope: !85)
!87 = !DILocation(line: 44, column: 9, scope: !85)
!88 = !DILocation(line: 49, column: 5, scope: !41)
!89 = !DILocation(line: 51, column: 5, scope: !41)
!90 = !DILocation(line: 54, column: 12, scope: !41)
!91 = !DILocation(line: 54, column: 20, scope: !41)
!92 = !DILocation(line: 54, column: 25, scope: !41)
!93 = !DILocation(line: 54, column: 5, scope: !41)
!94 = !DILocation(line: 57, column: 5, scope: !41)
!95 = !DILocation(line: 57, column: 12, scope: !41)
!96 = !DILocation(line: 57, column: 14, scope: !41)
!97 = !DILocation(line: 58, column: 13, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !1, line: 58, column: 13)
!99 = distinct !DILexicalBlock(scope: !41, file: !1, line: 57, column: 20)
!100 = !DILocation(line: 58, column: 17, scope: !98)
!101 = !DILocation(line: 58, column: 24, scope: !98)
!102 = !DILocation(line: 58, column: 22, scope: !98)
!103 = !DILocation(line: 58, column: 13, scope: !99)
!104 = !DILocation(line: 59, column: 17, scope: !105)
!105 = distinct !DILexicalBlock(scope: !98, file: !1, line: 58, column: 29)
!106 = !DILocation(line: 61, column: 13, scope: !105)
!107 = !DILocation(line: 64, column: 11, scope: !99)
!108 = distinct !{!108, !94, !109, !110}
!109 = !DILocation(line: 65, column: 5, scope: !41)
!110 = !{!"llvm.loop.mustprogress"}
!111 = !DILocation(line: 67, column: 10, scope: !41)
!112 = !DILocation(line: 67, column: 5, scope: !41)
!113 = !DILocation(line: 68, column: 5, scope: !41)
!114 = !DILocation(line: 69, column: 1, scope: !41)
!115 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 71, type: !116, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!116 = !DISubroutineType(types: !117)
!117 = !{!58}
!118 = !DILocalVariable(name: "ctxt", scope: !115, file: !1, line: 72, type: !20)
!119 = !DILocation(line: 72, column: 22, scope: !115)
!120 = !DILocalVariable(name: "prefix", scope: !115, file: !1, line: 73, type: !121)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 800, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 100)
!124 = !DILocation(line: 73, column: 13, scope: !115)
!125 = !DILocation(line: 76, column: 24, scope: !115)
!126 = !DILocation(line: 76, column: 5, scope: !115)
!127 = !DILocation(line: 79, column: 23, scope: !115)
!128 = !DILocation(line: 79, column: 29, scope: !115)
!129 = !DILocation(line: 79, column: 5, scope: !115)
!130 = !DILocation(line: 80, column: 5, scope: !115)
!131 = distinct !DISubprogram(name: "memcpy", scope: !132, file: !132, line: 12, type: !133, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !24)
!132 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!133 = !DISubroutineType(types: !134)
!134 = !{!6, !6, !135, !33}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!137 = !DILocalVariable(name: "destaddr", arg: 1, scope: !131, file: !132, line: 12, type: !6)
!138 = !DILocation(line: 12, column: 20, scope: !131)
!139 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !131, file: !132, line: 12, type: !135)
!140 = !DILocation(line: 12, column: 42, scope: !131)
!141 = !DILocalVariable(name: "len", arg: 3, scope: !131, file: !132, line: 12, type: !33)
!142 = !DILocation(line: 12, column: 58, scope: !131)
!143 = !DILocalVariable(name: "dest", scope: !131, file: !132, line: 13, type: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!145 = !DILocation(line: 13, column: 9, scope: !131)
!146 = !DILocation(line: 13, column: 16, scope: !131)
!147 = !DILocalVariable(name: "src", scope: !131, file: !132, line: 14, type: !21)
!148 = !DILocation(line: 14, column: 15, scope: !131)
!149 = !DILocation(line: 14, column: 21, scope: !131)
!150 = !DILocation(line: 16, column: 3, scope: !131)
!151 = !DILocation(line: 16, column: 13, scope: !131)
!152 = !DILocation(line: 16, column: 16, scope: !131)
!153 = !DILocation(line: 17, column: 19, scope: !131)
!154 = !DILocation(line: 17, column: 15, scope: !131)
!155 = !DILocation(line: 17, column: 10, scope: !131)
!156 = !DILocation(line: 17, column: 13, scope: !131)
!157 = distinct !{!157, !150, !153, !110}
!158 = !DILocation(line: 18, column: 10, scope: !131)
!159 = !DILocation(line: 18, column: 3, scope: !131)
