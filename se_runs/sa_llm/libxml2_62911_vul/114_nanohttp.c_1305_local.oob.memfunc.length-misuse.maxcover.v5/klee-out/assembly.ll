; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/114_nanohttp.c_1305_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/114_nanohttp.c_1305_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"env_sym\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"no_proxy\00", align 1
@xmlMalloc = external global i8* (i64)*, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/114_nanohttp.c_1305_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@xmlFree = external global void (i8*)*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !32 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !36, metadata !DIExpression()), !dbg !41
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !42
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 1024, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !43
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 1023, !dbg !44
  %8 = load i8, i8* %7, align 1, !dbg !44
  %9 = sext i8 %8 to i32, !dbg !44
  %10 = icmp eq i32 %9, 0, !dbg !45
  %11 = zext i1 %10 to i32, !dbg !45
  %12 = sext i32 %11 to i64, !dbg !44
  call void @klee_assume(i64 noundef %12), !dbg !46
  call void @llvm.dbg.declare(metadata i8** %3, metadata !47, metadata !DIExpression()), !dbg !49
  %13 = call i8* @getenv(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !50
  store i8* %13, i8** %3, align 8, !dbg !49
  %14 = load i8*, i8** %3, align 8, !dbg !51
  %15 = icmp ne i8* %14, null, !dbg !51
  br i1 %15, label %17, label %16, !dbg !53

16:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !54
  br label %60, !dbg !54

17:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i64* %4, metadata !56, metadata !DIExpression()), !dbg !60
  %18 = load i8*, i8** %3, align 8, !dbg !61
  %19 = call i64 @strlen(i8* noundef %18) #10, !dbg !62
  %20 = add i64 %19, 1, !dbg !63
  store i64 %20, i64* %4, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i8** %5, metadata !64, metadata !DIExpression()), !dbg !65
  %21 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !66
  %22 = load i64, i64* %4, align 8, !dbg !67
  %23 = call i8* %21(i64 noundef %22), !dbg !66
  store i8* %23, i8** %5, align 8, !dbg !65
  %24 = load i8*, i8** %5, align 8, !dbg !68
  %25 = icmp ne i8* %24, null, !dbg !68
  br i1 %25, label %27, label %26, !dbg !70

26:                                               ; preds = %17
  store i32 0, i32* %1, align 4, !dbg !71
  br label %60, !dbg !71

27:                                               ; preds = %17
  %28 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0), i32 noundef 24, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !73
  %29 = load i8*, i8** %5, align 8, !dbg !74
  %30 = load i8*, i8** %3, align 8, !dbg !75
  %31 = load i64, i64* %4, align 8, !dbg !76
  %32 = call i8* @memcpy(i8* %29, i8* %30, i64 %31), !dbg !77
  %33 = load i8*, i8** %5, align 8, !dbg !78
  store i8* %33, i8** %3, align 8, !dbg !79
  br label %34, !dbg !80

34:                                               ; preds = %46, %27
  %35 = call i16** @__ctype_b_loc() #11, !dbg !81
  %36 = load i16*, i16** %35, align 8, !dbg !81
  %37 = load i8*, i8** %3, align 8, !dbg !81
  %38 = load i8, i8* %37, align 1, !dbg !81
  %39 = sext i8 %38 to i32, !dbg !81
  %40 = sext i32 %39 to i64, !dbg !81
  %41 = getelementptr inbounds i16, i16* %36, i64 %40, !dbg !81
  %42 = load i16, i16* %41, align 2, !dbg !81
  %43 = zext i16 %42 to i32, !dbg !81
  %44 = and i32 %43, 8192, !dbg !81
  %45 = icmp ne i32 %44, 0, !dbg !80
  br i1 %45, label %46, label %49, !dbg !80

46:                                               ; preds = %34
  %47 = load i8*, i8** %3, align 8, !dbg !82
  %48 = getelementptr inbounds i8, i8* %47, i32 1, !dbg !82
  store i8* %48, i8** %3, align 8, !dbg !82
  br label %34, !dbg !80, !llvm.loop !84

49:                                               ; preds = %34
  %50 = load i8*, i8** %3, align 8, !dbg !87
  %51 = load i8, i8* %50, align 1, !dbg !89
  %52 = sext i8 %51 to i32, !dbg !89
  %53 = icmp eq i32 %52, 0, !dbg !90
  br i1 %53, label %54, label %57, !dbg !91

54:                                               ; preds = %49
  %55 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !92
  %56 = load i8*, i8** %5, align 8, !dbg !94
  call void %55(i8* noundef %56), !dbg !92
  store i32 0, i32* %1, align 4, !dbg !95
  br label %60, !dbg !95

57:                                               ; preds = %49
  %58 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !96
  %59 = load i8*, i8** %5, align 8, !dbg !97
  call void %58(i8* noundef %59), !dbg !96
  store i32 0, i32* %1, align 4, !dbg !98
  br label %60, !dbg !98

60:                                               ; preds = %57, %54, %26, %16
  %61 = load i32, i32* %1, align 4, !dbg !99
  ret i32 %61, !dbg !99
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare i8* @getenv(i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() #7

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !100 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !107, metadata !DIExpression()), !dbg !108
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !109, metadata !DIExpression()), !dbg !110
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i8** %7, metadata !113, metadata !DIExpression()), !dbg !114
  %9 = load i8*, i8** %4, align 8, !dbg !115
  store i8* %9, i8** %7, align 8, !dbg !114
  call void @llvm.dbg.declare(metadata i8** %8, metadata !116, metadata !DIExpression()), !dbg !119
  %10 = load i8*, i8** %5, align 8, !dbg !120
  store i8* %10, i8** %8, align 8, !dbg !119
  br label %11, !dbg !121

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !122
  %13 = add i64 %12, -1, !dbg !122
  store i64 %13, i64* %6, align 8, !dbg !122
  %14 = icmp ugt i64 %12, 0, !dbg !123
  br i1 %14, label %15, label %21, !dbg !121

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !124
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !124
  store i8* %17, i8** %8, align 8, !dbg !124
  %18 = load i8, i8* %16, align 1, !dbg !125
  %19 = load i8*, i8** %7, align 8, !dbg !126
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !126
  store i8* %20, i8** %7, align 8, !dbg !126
  store i8 %18, i8* %19, align 1, !dbg !127
  br label %11, !dbg !121, !llvm.loop !128

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !129
  ret i8* %22, !dbg !130
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31, !31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/114_nanohttp.c_1305_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "af7e3b9baa249818a5b4e490c207f019")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 46, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "43fd45dcf96e8fb7d8f14700096497c7")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!7 = !DIEnumerator(name: "_ISupper", value: 256)
!8 = !DIEnumerator(name: "_ISlower", value: 512)
!9 = !DIEnumerator(name: "_ISalpha", value: 1024)
!10 = !DIEnumerator(name: "_ISdigit", value: 2048)
!11 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!12 = !DIEnumerator(name: "_ISspace", value: 8192)
!13 = !DIEnumerator(name: "_ISprint", value: 16384)
!14 = !DIEnumerator(name: "_ISgraph", value: 32768)
!15 = !DIEnumerator(name: "_ISblank", value: 1)
!16 = !DIEnumerator(name: "_IScntrl", value: 2)
!17 = !DIEnumerator(name: "_ISpunct", value: 4)
!18 = !DIEnumerator(name: "_ISalnum", value: 8)
!19 = !{!20, !21}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 7, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"Ubuntu clang version 14.0.6"}
!32 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !33, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{!20}
!35 = !{}
!36 = !DILocalVariable(name: "env_sym", scope: !32, file: !1, line: 9, type: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 8192, elements: !39)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !{!40}
!40 = !DISubrange(count: 1024)
!41 = !DILocation(line: 9, column: 10, scope: !32)
!42 = !DILocation(line: 10, column: 24, scope: !32)
!43 = !DILocation(line: 10, column: 5, scope: !32)
!44 = !DILocation(line: 11, column: 17, scope: !32)
!45 = !DILocation(line: 11, column: 46, scope: !32)
!46 = !DILocation(line: 11, column: 5, scope: !32)
!47 = !DILocalVariable(name: "env", scope: !32, file: !1, line: 13, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!49 = !DILocation(line: 13, column: 11, scope: !32)
!50 = !DILocation(line: 13, column: 17, scope: !32)
!51 = !DILocation(line: 14, column: 10, scope: !52)
!52 = distinct !DILexicalBlock(scope: !32, file: !1, line: 14, column: 9)
!53 = !DILocation(line: 14, column: 9, scope: !32)
!54 = !DILocation(line: 15, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !52, file: !1, line: 14, column: 15)
!56 = !DILocalVariable(name: "envlen", scope: !32, file: !1, line: 18, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !58, line: 46, baseType: !59)
!58 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DILocation(line: 18, column: 12, scope: !32)
!61 = !DILocation(line: 18, column: 28, scope: !32)
!62 = !DILocation(line: 18, column: 21, scope: !32)
!63 = !DILocation(line: 18, column: 33, scope: !32)
!64 = !DILocalVariable(name: "cpy", scope: !32, file: !1, line: 19, type: !48)
!65 = !DILocation(line: 19, column: 11, scope: !32)
!66 = !DILocation(line: 19, column: 17, scope: !32)
!67 = !DILocation(line: 19, column: 27, scope: !32)
!68 = !DILocation(line: 20, column: 10, scope: !69)
!69 = distinct !DILexicalBlock(scope: !32, file: !1, line: 20, column: 9)
!70 = !DILocation(line: 20, column: 9, scope: !32)
!71 = !DILocation(line: 21, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !1, line: 20, column: 15)
!73 = !DILocation(line: 24, column: 5, scope: !32)
!74 = !DILocation(line: 25, column: 12, scope: !32)
!75 = !DILocation(line: 25, column: 17, scope: !32)
!76 = !DILocation(line: 25, column: 22, scope: !32)
!77 = !DILocation(line: 25, column: 5, scope: !32)
!78 = !DILocation(line: 26, column: 11, scope: !32)
!79 = !DILocation(line: 26, column: 9, scope: !32)
!80 = !DILocation(line: 28, column: 5, scope: !32)
!81 = !DILocation(line: 28, column: 12, scope: !32)
!82 = !DILocation(line: 29, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !32, file: !1, line: 28, column: 27)
!84 = distinct !{!84, !80, !85, !86}
!85 = !DILocation(line: 30, column: 5, scope: !32)
!86 = !{!"llvm.loop.mustprogress"}
!87 = !DILocation(line: 31, column: 10, scope: !88)
!88 = distinct !DILexicalBlock(scope: !32, file: !1, line: 31, column: 9)
!89 = !DILocation(line: 31, column: 9, scope: !88)
!90 = !DILocation(line: 31, column: 14, scope: !88)
!91 = !DILocation(line: 31, column: 9, scope: !32)
!92 = !DILocation(line: 32, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !88, file: !1, line: 31, column: 23)
!94 = !DILocation(line: 32, column: 17, scope: !93)
!95 = !DILocation(line: 33, column: 9, scope: !93)
!96 = !DILocation(line: 36, column: 5, scope: !32)
!97 = !DILocation(line: 36, column: 13, scope: !32)
!98 = !DILocation(line: 37, column: 5, scope: !32)
!99 = !DILocation(line: 38, column: 1, scope: !32)
!100 = distinct !DISubprogram(name: "memcpy", scope: !101, file: !101, line: 12, type: !102, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !35)
!101 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!102 = !DISubroutineType(types: !103)
!103 = !{!104, !104, !105, !57}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!107 = !DILocalVariable(name: "destaddr", arg: 1, scope: !100, file: !101, line: 12, type: !104)
!108 = !DILocation(line: 12, column: 20, scope: !100)
!109 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !100, file: !101, line: 12, type: !105)
!110 = !DILocation(line: 12, column: 42, scope: !100)
!111 = !DILocalVariable(name: "len", arg: 3, scope: !100, file: !101, line: 12, type: !57)
!112 = !DILocation(line: 12, column: 58, scope: !100)
!113 = !DILocalVariable(name: "dest", scope: !100, file: !101, line: 13, type: !48)
!114 = !DILocation(line: 13, column: 9, scope: !100)
!115 = !DILocation(line: 13, column: 16, scope: !100)
!116 = !DILocalVariable(name: "src", scope: !100, file: !101, line: 14, type: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!119 = !DILocation(line: 14, column: 15, scope: !100)
!120 = !DILocation(line: 14, column: 21, scope: !100)
!121 = !DILocation(line: 16, column: 3, scope: !100)
!122 = !DILocation(line: 16, column: 13, scope: !100)
!123 = !DILocation(line: 16, column: 16, scope: !100)
!124 = !DILocation(line: 17, column: 19, scope: !100)
!125 = !DILocation(line: 17, column: 15, scope: !100)
!126 = !DILocation(line: 17, column: 10, scope: !100)
!127 = !DILocation(line: 17, column: 13, scope: !100)
!128 = distinct !{!128, !121, !124, !86}
!129 = !DILocation(line: 18, column: 10, scope: !100)
!130 = !DILocation(line: 18, column: 3, scope: !100)
