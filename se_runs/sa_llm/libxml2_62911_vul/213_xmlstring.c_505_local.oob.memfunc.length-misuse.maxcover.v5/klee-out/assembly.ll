; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/213_xmlstring.c_505_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/213_xmlstring.c_505_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"str1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"str2\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"size_sym\00", align 1
@xmlMalloc = external global i8* (i64)*, align 8
@xmlFree = external global void (i8*)*, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/213_xmlstring.c_505_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !22 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8** %3, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %4, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %5, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %6, metadata !35, metadata !DIExpression()), !dbg !36
  %9 = call noalias i8* @malloc(i64 noundef 256) #7, !dbg !37
  store i8* %9, i8** %2, align 8, !dbg !38
  %10 = call noalias i8* @malloc(i64 noundef 256) #7, !dbg !39
  store i8* %10, i8** %3, align 8, !dbg !40
  %11 = load i8*, i8** %2, align 8, !dbg !41
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !42
  %12 = load i8*, i8** %3, align 8, !dbg !43
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !44
  %13 = bitcast i32* %4 to i8*, !dbg !45
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !46
  %14 = bitcast i32* %5 to i8*, !dbg !47
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !48
  %15 = load i32, i32* %4, align 4, !dbg !49
  %16 = icmp sge i32 %15, 0, !dbg !50
  %17 = zext i1 %16 to i32, !dbg !50
  %18 = sext i32 %17 to i64, !dbg !49
  call void @klee_assume(i64 noundef %18), !dbg !51
  %19 = load i32, i32* %5, align 4, !dbg !52
  %20 = icmp sge i32 %19, 0, !dbg !53
  %21 = zext i1 %20 to i32, !dbg !53
  %22 = sext i32 %21 to i64, !dbg !52
  call void @klee_assume(i64 noundef %22), !dbg !54
  %23 = load i32, i32* %5, align 4, !dbg !55
  %24 = icmp slt i32 %23, 256, !dbg !56
  %25 = zext i1 %24 to i32, !dbg !56
  %26 = sext i32 %25 to i64, !dbg !55
  call void @klee_assume(i64 noundef %26), !dbg !57
  %27 = load i32, i32* %5, align 4, !dbg !58
  store i32 %27, i32* %6, align 4, !dbg !59
  %28 = load i32, i32* %6, align 4, !dbg !60
  %29 = icmp ult i32 %28, 0, !dbg !62
  br i1 %29, label %35, label %30, !dbg !63

30:                                               ; preds = %0
  %31 = load i32, i32* %6, align 4, !dbg !64
  %32 = load i32, i32* %4, align 4, !dbg !65
  %33 = sub nsw i32 2147483647, %32, !dbg !66
  %34 = icmp ugt i32 %31, %33, !dbg !67
  br i1 %34, label %35, label %38, !dbg !68

35:                                               ; preds = %30, %0
  %36 = load i8*, i8** %2, align 8, !dbg !69
  call void @free(i8* noundef %36) #7, !dbg !71
  %37 = load i8*, i8** %3, align 8, !dbg !72
  call void @free(i8* noundef %37) #7, !dbg !73
  store i32 0, i32* %1, align 4, !dbg !74
  br label %86, !dbg !74

38:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8** %7, metadata !75, metadata !DIExpression()), !dbg !76
  %39 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !77
  %40 = load i32, i32* %6, align 4, !dbg !78
  %41 = zext i32 %40 to i64, !dbg !79
  %42 = load i32, i32* %4, align 4, !dbg !80
  %43 = sext i32 %42 to i64, !dbg !80
  %44 = add i64 %41, %43, !dbg !81
  %45 = add i64 %44, 1, !dbg !82
  %46 = call i8* %39(i64 noundef %45), !dbg !77
  store i8* %46, i8** %7, align 8, !dbg !76
  %47 = load i8*, i8** %7, align 8, !dbg !83
  %48 = icmp eq i8* %47, null, !dbg !85
  br i1 %48, label %49, label %61, !dbg !86

49:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata i8** %8, metadata !87, metadata !DIExpression()), !dbg !89
  %50 = load i8*, i8** %2, align 8, !dbg !90
  %51 = load i32, i32* %6, align 4, !dbg !91
  %52 = call i8* @xmlStrndup(i8* noundef %50, i32 noundef %51), !dbg !92
  store i8* %52, i8** %8, align 8, !dbg !89
  %53 = load i8*, i8** %8, align 8, !dbg !93
  %54 = icmp ne i8* %53, null, !dbg !93
  br i1 %54, label %55, label %58, !dbg !95

55:                                               ; preds = %49
  %56 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !96
  %57 = load i8*, i8** %8, align 8, !dbg !97
  call void %56(i8* noundef %57), !dbg !96
  br label %58, !dbg !96

58:                                               ; preds = %55, %49
  %59 = load i8*, i8** %2, align 8, !dbg !98
  call void @free(i8* noundef %59) #7, !dbg !99
  %60 = load i8*, i8** %3, align 8, !dbg !100
  call void @free(i8* noundef %60) #7, !dbg !101
  store i32 0, i32* %1, align 4, !dbg !102
  br label %86, !dbg !102

61:                                               ; preds = %38
  %62 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.5, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !103
  %63 = load i8*, i8** %7, align 8, !dbg !104
  %64 = load i8*, i8** %2, align 8, !dbg !105
  %65 = load i32, i32* %6, align 4, !dbg !106
  %66 = zext i32 %65 to i64, !dbg !106
  %67 = call i8* @memcpy(i8* %63, i8* %64, i64 %66), !dbg !107
  %68 = load i8*, i8** %7, align 8, !dbg !108
  %69 = load i32, i32* %6, align 4, !dbg !109
  %70 = zext i32 %69 to i64, !dbg !108
  %71 = getelementptr inbounds i8, i8* %68, i64 %70, !dbg !108
  %72 = load i8*, i8** %3, align 8, !dbg !110
  %73 = load i32, i32* %4, align 4, !dbg !111
  %74 = sext i32 %73 to i64, !dbg !111
  %75 = call i8* @memcpy(i8* %71, i8* %72, i64 %74), !dbg !112
  %76 = load i8*, i8** %7, align 8, !dbg !113
  %77 = load i32, i32* %6, align 4, !dbg !114
  %78 = load i32, i32* %4, align 4, !dbg !115
  %79 = add i32 %77, %78, !dbg !116
  %80 = zext i32 %79 to i64, !dbg !113
  %81 = getelementptr inbounds i8, i8* %76, i64 %80, !dbg !113
  store i8 0, i8* %81, align 1, !dbg !117
  %82 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !118
  %83 = load i8*, i8** %7, align 8, !dbg !119
  call void %82(i8* noundef %83), !dbg !118
  %84 = load i8*, i8** %2, align 8, !dbg !120
  call void @free(i8* noundef %84) #7, !dbg !121
  %85 = load i8*, i8** %3, align 8, !dbg !122
  call void @free(i8* noundef %85) #7, !dbg !123
  store i32 0, i32* %1, align 4, !dbg !124
  br label %86, !dbg !124

86:                                               ; preds = %61, %58, %35
  %87 = load i32, i32* %1, align 4, !dbg !125
  ret i32 %87, !dbg !125
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

declare i8* @xmlStrndup(i8* noundef, i32 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !126 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !132, metadata !DIExpression()), !dbg !133
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !134, metadata !DIExpression()), !dbg !135
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i8** %7, metadata !138, metadata !DIExpression()), !dbg !141
  %9 = load i8*, i8** %4, align 8, !dbg !142
  store i8* %9, i8** %7, align 8, !dbg !141
  call void @llvm.dbg.declare(metadata i8** %8, metadata !143, metadata !DIExpression()), !dbg !146
  %10 = load i8*, i8** %5, align 8, !dbg !147
  store i8* %10, i8** %8, align 8, !dbg !146
  br label %11, !dbg !148

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !149
  %13 = add i64 %12, -1, !dbg !149
  store i64 %13, i64* %6, align 8, !dbg !149
  %14 = icmp ugt i64 %12, 0, !dbg !150
  br i1 %14, label %15, label %21, !dbg !148

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !151
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !151
  store i8* %17, i8** %8, align 8, !dbg !151
  %18 = load i8, i8* %16, align 1, !dbg !152
  %19 = load i8*, i8** %7, align 8, !dbg !153
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !153
  store i8* %20, i8** %7, align 8, !dbg !153
  store i8 %18, i8* %19, align 1, !dbg !154
  br label %11, !dbg !148, !llvm.loop !155

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !157
  ret i8* %22, !dbg !158
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21, !21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/213_xmlstring.c_505_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "bcbdc2b978a46665e25d0c50febc00ce")
!2 = !{!3, !7, !8, !11}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !5, line: 28, baseType: !6)
!5 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !9, line: 46, baseType: !10)
!9 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!10 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"Ubuntu clang version 14.0.6"}
!22 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !23, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!23 = !DISubroutineType(types: !24)
!24 = !{!25}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !{}
!27 = !DILocalVariable(name: "str1", scope: !22, file: !1, line: 7, type: !3)
!28 = !DILocation(line: 7, column: 14, scope: !22)
!29 = !DILocalVariable(name: "str2", scope: !22, file: !1, line: 8, type: !3)
!30 = !DILocation(line: 8, column: 14, scope: !22)
!31 = !DILocalVariable(name: "len", scope: !22, file: !1, line: 9, type: !25)
!32 = !DILocation(line: 9, column: 9, scope: !22)
!33 = !DILocalVariable(name: "size_sym", scope: !22, file: !1, line: 10, type: !25)
!34 = !DILocation(line: 10, column: 9, scope: !22)
!35 = !DILocalVariable(name: "size", scope: !22, file: !1, line: 11, type: !7)
!36 = !DILocation(line: 11, column: 18, scope: !22)
!37 = !DILocation(line: 14, column: 23, scope: !22)
!38 = !DILocation(line: 14, column: 10, scope: !22)
!39 = !DILocation(line: 15, column: 23, scope: !22)
!40 = !DILocation(line: 15, column: 10, scope: !22)
!41 = !DILocation(line: 16, column: 24, scope: !22)
!42 = !DILocation(line: 16, column: 5, scope: !22)
!43 = !DILocation(line: 17, column: 24, scope: !22)
!44 = !DILocation(line: 17, column: 5, scope: !22)
!45 = !DILocation(line: 18, column: 24, scope: !22)
!46 = !DILocation(line: 18, column: 5, scope: !22)
!47 = !DILocation(line: 19, column: 24, scope: !22)
!48 = !DILocation(line: 19, column: 5, scope: !22)
!49 = !DILocation(line: 22, column: 17, scope: !22)
!50 = !DILocation(line: 22, column: 21, scope: !22)
!51 = !DILocation(line: 22, column: 5, scope: !22)
!52 = !DILocation(line: 24, column: 17, scope: !22)
!53 = !DILocation(line: 24, column: 26, scope: !22)
!54 = !DILocation(line: 24, column: 5, scope: !22)
!55 = !DILocation(line: 25, column: 17, scope: !22)
!56 = !DILocation(line: 25, column: 26, scope: !22)
!57 = !DILocation(line: 25, column: 5, scope: !22)
!58 = !DILocation(line: 28, column: 26, scope: !22)
!59 = !DILocation(line: 28, column: 10, scope: !22)
!60 = !DILocation(line: 31, column: 10, scope: !61)
!61 = distinct !DILexicalBlock(scope: !22, file: !1, line: 31, column: 9)
!62 = !DILocation(line: 31, column: 15, scope: !61)
!63 = !DILocation(line: 31, column: 20, scope: !61)
!64 = !DILocation(line: 31, column: 24, scope: !61)
!65 = !DILocation(line: 31, column: 41, scope: !61)
!66 = !DILocation(line: 31, column: 39, scope: !61)
!67 = !DILocation(line: 31, column: 29, scope: !61)
!68 = !DILocation(line: 31, column: 9, scope: !22)
!69 = !DILocation(line: 32, column: 14, scope: !70)
!70 = distinct !DILexicalBlock(scope: !61, file: !1, line: 31, column: 47)
!71 = !DILocation(line: 32, column: 9, scope: !70)
!72 = !DILocation(line: 33, column: 14, scope: !70)
!73 = !DILocation(line: 33, column: 9, scope: !70)
!74 = !DILocation(line: 34, column: 9, scope: !70)
!75 = !DILocalVariable(name: "ret", scope: !22, file: !1, line: 38, type: !3)
!76 = !DILocation(line: 38, column: 14, scope: !22)
!77 = !DILocation(line: 38, column: 32, scope: !22)
!78 = !DILocation(line: 38, column: 51, scope: !22)
!79 = !DILocation(line: 38, column: 42, scope: !22)
!80 = !DILocation(line: 38, column: 58, scope: !22)
!81 = !DILocation(line: 38, column: 56, scope: !22)
!82 = !DILocation(line: 38, column: 62, scope: !22)
!83 = !DILocation(line: 39, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !22, file: !1, line: 39, column: 9)
!85 = !DILocation(line: 39, column: 13, scope: !84)
!86 = !DILocation(line: 39, column: 9, scope: !22)
!87 = !DILocalVariable(name: "dup", scope: !88, file: !1, line: 41, type: !3)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 39, column: 22)
!89 = !DILocation(line: 41, column: 18, scope: !88)
!90 = !DILocation(line: 41, column: 35, scope: !88)
!91 = !DILocation(line: 41, column: 41, scope: !88)
!92 = !DILocation(line: 41, column: 24, scope: !88)
!93 = !DILocation(line: 42, column: 13, scope: !94)
!94 = distinct !DILexicalBlock(scope: !88, file: !1, line: 42, column: 13)
!95 = !DILocation(line: 42, column: 13, scope: !88)
!96 = !DILocation(line: 42, column: 18, scope: !94)
!97 = !DILocation(line: 42, column: 26, scope: !94)
!98 = !DILocation(line: 43, column: 14, scope: !88)
!99 = !DILocation(line: 43, column: 9, scope: !88)
!100 = !DILocation(line: 44, column: 14, scope: !88)
!101 = !DILocation(line: 44, column: 9, scope: !88)
!102 = !DILocation(line: 45, column: 9, scope: !88)
!103 = !DILocation(line: 49, column: 5, scope: !22)
!104 = !DILocation(line: 50, column: 12, scope: !22)
!105 = !DILocation(line: 50, column: 17, scope: !22)
!106 = !DILocation(line: 50, column: 23, scope: !22)
!107 = !DILocation(line: 50, column: 5, scope: !22)
!108 = !DILocation(line: 51, column: 13, scope: !22)
!109 = !DILocation(line: 51, column: 17, scope: !22)
!110 = !DILocation(line: 51, column: 24, scope: !22)
!111 = !DILocation(line: 51, column: 30, scope: !22)
!112 = !DILocation(line: 51, column: 5, scope: !22)
!113 = !DILocation(line: 52, column: 5, scope: !22)
!114 = !DILocation(line: 52, column: 9, scope: !22)
!115 = !DILocation(line: 52, column: 16, scope: !22)
!116 = !DILocation(line: 52, column: 14, scope: !22)
!117 = !DILocation(line: 52, column: 21, scope: !22)
!118 = !DILocation(line: 54, column: 5, scope: !22)
!119 = !DILocation(line: 54, column: 13, scope: !22)
!120 = !DILocation(line: 55, column: 10, scope: !22)
!121 = !DILocation(line: 55, column: 5, scope: !22)
!122 = !DILocation(line: 56, column: 10, scope: !22)
!123 = !DILocation(line: 56, column: 5, scope: !22)
!124 = !DILocation(line: 57, column: 5, scope: !22)
!125 = !DILocation(line: 58, column: 1, scope: !22)
!126 = distinct !DISubprogram(name: "memcpy", scope: !127, file: !127, line: 12, type: !128, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !26)
!127 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!128 = !DISubroutineType(types: !129)
!129 = !{!11, !11, !130, !8}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!132 = !DILocalVariable(name: "destaddr", arg: 1, scope: !126, file: !127, line: 12, type: !11)
!133 = !DILocation(line: 12, column: 20, scope: !126)
!134 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !126, file: !127, line: 12, type: !130)
!135 = !DILocation(line: 12, column: 42, scope: !126)
!136 = !DILocalVariable(name: "len", arg: 3, scope: !126, file: !127, line: 12, type: !8)
!137 = !DILocation(line: 12, column: 58, scope: !126)
!138 = !DILocalVariable(name: "dest", scope: !126, file: !127, line: 13, type: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!141 = !DILocation(line: 13, column: 9, scope: !126)
!142 = !DILocation(line: 13, column: 16, scope: !126)
!143 = !DILocalVariable(name: "src", scope: !126, file: !127, line: 14, type: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!146 = !DILocation(line: 14, column: 15, scope: !126)
!147 = !DILocation(line: 14, column: 21, scope: !126)
!148 = !DILocation(line: 16, column: 3, scope: !126)
!149 = !DILocation(line: 16, column: 13, scope: !126)
!150 = !DILocation(line: 16, column: 16, scope: !126)
!151 = !DILocation(line: 17, column: 19, scope: !126)
!152 = !DILocation(line: 17, column: 15, scope: !126)
!153 = !DILocation(line: 17, column: 10, scope: !126)
!154 = !DILocation(line: 17, column: 13, scope: !126)
!155 = distinct !{!155, !148, !151, !156}
!156 = !{!"llvm.loop.mustprogress"}
!157 = !DILocation(line: 18, column: 10, scope: !126)
!158 = !DILocation(line: 18, column: 3, scope: !126)
