; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/315_tree.c_237_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/315_tree.c_237_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"lenp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"lenn\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ncname\00", align 1
@xmlMallocAtomic = external global i8* (i64)*, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/315_tree.c_237_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@xmlFree = external global void (i8*)*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !18 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i8** %3, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i8** %4, metadata !27, metadata !DIExpression()), !dbg !28
  store i8* null, i8** %4, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8** %5, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %6, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %7, metadata !33, metadata !DIExpression()), !dbg !34
  %8 = bitcast i32* %6 to i8*, !dbg !35
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !36
  %9 = bitcast i32* %7 to i8*, !dbg !37
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !38
  %10 = bitcast i8** %4 to i8*, !dbg !39
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !40
  %11 = load i32, i32* %6, align 4, !dbg !41
  %12 = icmp slt i32 %11, 0, !dbg !43
  br i1 %12, label %13, label %14, !dbg !44

13:                                               ; preds = %0
  store i32 0, i32* %6, align 4, !dbg !45
  br label %14, !dbg !46

14:                                               ; preds = %13, %0
  %15 = load i32, i32* %7, align 4, !dbg !47
  %16 = icmp slt i32 %15, 0, !dbg !49
  br i1 %16, label %17, label %18, !dbg !50

17:                                               ; preds = %14
  store i32 0, i32* %7, align 4, !dbg !51
  br label %18, !dbg !52

18:                                               ; preds = %17, %14
  %19 = load i32, i32* %6, align 4, !dbg !53
  %20 = add nsw i32 %19, 1, !dbg !54
  %21 = sext i32 %20 to i64, !dbg !53
  %22 = call noalias i8* @malloc(i64 noundef %21) #7, !dbg !55
  store i8* %22, i8** %2, align 8, !dbg !56
  %23 = load i8*, i8** %2, align 8, !dbg !57
  %24 = icmp ne i8* %23, null, !dbg !57
  br i1 %24, label %25, label %34, !dbg !59

25:                                               ; preds = %18
  %26 = load i8*, i8** %2, align 8, !dbg !60
  %27 = load i32, i32* %6, align 4, !dbg !62
  %28 = add nsw i32 %27, 1, !dbg !63
  %29 = sext i32 %28 to i64, !dbg !62
  call void @klee_make_symbolic(i8* noundef %26, i64 noundef %29, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !64
  %30 = load i8*, i8** %2, align 8, !dbg !65
  %31 = load i32, i32* %6, align 4, !dbg !66
  %32 = sext i32 %31 to i64, !dbg !65
  %33 = getelementptr inbounds i8, i8* %30, i64 %32, !dbg !65
  store i8 0, i8* %33, align 1, !dbg !67
  br label %34, !dbg !68

34:                                               ; preds = %25, %18
  %35 = load i32, i32* %7, align 4, !dbg !69
  %36 = add nsw i32 %35, 1, !dbg !70
  %37 = sext i32 %36 to i64, !dbg !69
  %38 = call noalias i8* @malloc(i64 noundef %37) #7, !dbg !71
  store i8* %38, i8** %3, align 8, !dbg !72
  %39 = load i8*, i8** %3, align 8, !dbg !73
  %40 = icmp ne i8* %39, null, !dbg !73
  br i1 %40, label %41, label %50, !dbg !75

41:                                               ; preds = %34
  %42 = load i8*, i8** %3, align 8, !dbg !76
  %43 = load i32, i32* %7, align 4, !dbg !78
  %44 = add nsw i32 %43, 1, !dbg !79
  %45 = sext i32 %44 to i64, !dbg !78
  call void @klee_make_symbolic(i8* noundef %42, i64 noundef %45, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)), !dbg !80
  %46 = load i8*, i8** %3, align 8, !dbg !81
  %47 = load i32, i32* %7, align 4, !dbg !82
  %48 = sext i32 %47 to i64, !dbg !81
  %49 = getelementptr inbounds i8, i8* %46, i64 %48, !dbg !81
  store i8 0, i8* %49, align 1, !dbg !83
  br label %50, !dbg !84

50:                                               ; preds = %41, %34
  %51 = load i8*, i8** %4, align 8, !dbg !85
  %52 = icmp eq i8* %51, null, !dbg !87
  br i1 %52, label %53, label %75, !dbg !88

53:                                               ; preds = %50
  %54 = load i8* (i64)*, i8* (i64)** @xmlMallocAtomic, align 8, !dbg !89
  %55 = load i32, i32* %7, align 4, !dbg !91
  %56 = load i32, i32* %6, align 4, !dbg !92
  %57 = add nsw i32 %55, %56, !dbg !93
  %58 = add nsw i32 %57, 2, !dbg !94
  %59 = sext i32 %58 to i64, !dbg !91
  %60 = call i8* %54(i64 noundef %59), !dbg !89
  store i8* %60, i8** %5, align 8, !dbg !95
  %61 = load i8*, i8** %5, align 8, !dbg !96
  %62 = icmp eq i8* %61, null, !dbg !98
  br i1 %62, label %63, label %74, !dbg !99

63:                                               ; preds = %53
  %64 = load i8*, i8** %2, align 8, !dbg !100
  %65 = icmp ne i8* %64, null, !dbg !100
  br i1 %65, label %66, label %68, !dbg !103

66:                                               ; preds = %63
  %67 = load i8*, i8** %2, align 8, !dbg !104
  call void @free(i8* noundef %67) #7, !dbg !105
  br label %68, !dbg !105

68:                                               ; preds = %66, %63
  %69 = load i8*, i8** %3, align 8, !dbg !106
  %70 = icmp ne i8* %69, null, !dbg !106
  br i1 %70, label %71, label %73, !dbg !108

71:                                               ; preds = %68
  %72 = load i8*, i8** %3, align 8, !dbg !109
  call void @free(i8* noundef %72) #7, !dbg !110
  br label %73, !dbg !110

73:                                               ; preds = %71, %68
  store i32 0, i32* %1, align 4, !dbg !111
  br label %122, !dbg !111

74:                                               ; preds = %53
  br label %77, !dbg !112

75:                                               ; preds = %50
  %76 = load i8*, i8** %4, align 8, !dbg !113
  store i8* %76, i8** %5, align 8, !dbg !115
  br label %77

77:                                               ; preds = %75, %74
  %78 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !116
  %79 = load i8*, i8** %5, align 8, !dbg !117
  %80 = getelementptr inbounds i8, i8* %79, i64 0, !dbg !117
  %81 = load i8*, i8** %2, align 8, !dbg !118
  %82 = load i32, i32* %6, align 4, !dbg !119
  %83 = sext i32 %82 to i64, !dbg !119
  %84 = call i8* @memcpy(i8* %80, i8* %81, i64 %83), !dbg !120
  %85 = load i8*, i8** %5, align 8, !dbg !121
  %86 = load i32, i32* %6, align 4, !dbg !122
  %87 = sext i32 %86 to i64, !dbg !121
  %88 = getelementptr inbounds i8, i8* %85, i64 %87, !dbg !121
  store i8 58, i8* %88, align 1, !dbg !123
  %89 = load i8*, i8** %5, align 8, !dbg !124
  %90 = load i32, i32* %6, align 4, !dbg !125
  %91 = add nsw i32 %90, 1, !dbg !126
  %92 = sext i32 %91 to i64, !dbg !124
  %93 = getelementptr inbounds i8, i8* %89, i64 %92, !dbg !124
  %94 = load i8*, i8** %3, align 8, !dbg !127
  %95 = load i32, i32* %7, align 4, !dbg !128
  %96 = sext i32 %95 to i64, !dbg !128
  %97 = call i8* @memcpy(i8* %93, i8* %94, i64 %96), !dbg !129
  %98 = load i8*, i8** %5, align 8, !dbg !130
  %99 = load i32, i32* %7, align 4, !dbg !131
  %100 = load i32, i32* %6, align 4, !dbg !132
  %101 = add nsw i32 %99, %100, !dbg !133
  %102 = add nsw i32 %101, 1, !dbg !134
  %103 = sext i32 %102 to i64, !dbg !130
  %104 = getelementptr inbounds i8, i8* %98, i64 %103, !dbg !130
  store i8 0, i8* %104, align 1, !dbg !135
  %105 = load i8*, i8** %2, align 8, !dbg !136
  %106 = icmp ne i8* %105, null, !dbg !136
  br i1 %106, label %107, label %109, !dbg !138

107:                                              ; preds = %77
  %108 = load i8*, i8** %2, align 8, !dbg !139
  call void @free(i8* noundef %108) #7, !dbg !140
  br label %109, !dbg !140

109:                                              ; preds = %107, %77
  %110 = load i8*, i8** %3, align 8, !dbg !141
  %111 = icmp ne i8* %110, null, !dbg !141
  br i1 %111, label %112, label %114, !dbg !143

112:                                              ; preds = %109
  %113 = load i8*, i8** %3, align 8, !dbg !144
  call void @free(i8* noundef %113) #7, !dbg !145
  br label %114, !dbg !145

114:                                              ; preds = %112, %109
  %115 = load i8*, i8** %5, align 8, !dbg !146
  %116 = load i8*, i8** %4, align 8, !dbg !148
  %117 = icmp ne i8* %115, %116, !dbg !149
  br i1 %117, label %118, label %121, !dbg !150

118:                                              ; preds = %114
  %119 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !151
  %120 = load i8*, i8** %5, align 8, !dbg !152
  call void %119(i8* noundef %120), !dbg !151
  br label %121, !dbg !151

121:                                              ; preds = %118, %114
  store i32 0, i32* %1, align 4, !dbg !153
  br label %122, !dbg !153

122:                                              ; preds = %121, %73
  %123 = load i32, i32* %1, align 4, !dbg !154
  ret i32 %123, !dbg !154
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !155 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !164, metadata !DIExpression()), !dbg !165
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !166, metadata !DIExpression()), !dbg !167
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !168, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata i8** %7, metadata !170, metadata !DIExpression()), !dbg !173
  %9 = load i8*, i8** %4, align 8, !dbg !174
  store i8* %9, i8** %7, align 8, !dbg !173
  call void @llvm.dbg.declare(metadata i8** %8, metadata !175, metadata !DIExpression()), !dbg !178
  %10 = load i8*, i8** %5, align 8, !dbg !179
  store i8* %10, i8** %8, align 8, !dbg !178
  br label %11, !dbg !180

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !181
  %13 = add i64 %12, -1, !dbg !181
  store i64 %13, i64* %6, align 8, !dbg !181
  %14 = icmp ugt i64 %12, 0, !dbg !182
  br i1 %14, label %15, label %21, !dbg !180

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !183
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !183
  store i8* %17, i8** %8, align 8, !dbg !183
  %18 = load i8, i8* %16, align 1, !dbg !184
  %19 = load i8*, i8** %7, align 8, !dbg !185
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !185
  store i8* %20, i8** %7, align 8, !dbg !185
  store i8 %18, i8* %19, align 1, !dbg !186
  br label %11, !dbg !180, !llvm.loop !187

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !189
  ret i8* %22, !dbg !190
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17, !17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/315_tree.c_237_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "64ca3ec023c653e95c36c85c739df29e")
!2 = !{!3, !7}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !5, line: 28, baseType: !6)
!5 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"Ubuntu clang version 14.0.6"}
!18 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !19, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!19 = !DISubroutineType(types: !20)
!20 = !{!21}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{}
!23 = !DILocalVariable(name: "prefix", scope: !18, file: !1, line: 7, type: !3)
!24 = !DILocation(line: 7, column: 14, scope: !18)
!25 = !DILocalVariable(name: "ncname", scope: !18, file: !1, line: 8, type: !3)
!26 = !DILocation(line: 8, column: 14, scope: !18)
!27 = !DILocalVariable(name: "memory", scope: !18, file: !1, line: 9, type: !3)
!28 = !DILocation(line: 9, column: 14, scope: !18)
!29 = !DILocalVariable(name: "ret", scope: !18, file: !1, line: 10, type: !3)
!30 = !DILocation(line: 10, column: 14, scope: !18)
!31 = !DILocalVariable(name: "lenp", scope: !18, file: !1, line: 11, type: !21)
!32 = !DILocation(line: 11, column: 9, scope: !18)
!33 = !DILocalVariable(name: "lenn", scope: !18, file: !1, line: 11, type: !21)
!34 = !DILocation(line: 11, column: 15, scope: !18)
!35 = !DILocation(line: 13, column: 24, scope: !18)
!36 = !DILocation(line: 13, column: 5, scope: !18)
!37 = !DILocation(line: 14, column: 24, scope: !18)
!38 = !DILocation(line: 14, column: 5, scope: !18)
!39 = !DILocation(line: 15, column: 24, scope: !18)
!40 = !DILocation(line: 15, column: 5, scope: !18)
!41 = !DILocation(line: 17, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !18, file: !1, line: 17, column: 9)
!43 = !DILocation(line: 17, column: 14, scope: !42)
!44 = !DILocation(line: 17, column: 9, scope: !18)
!45 = !DILocation(line: 17, column: 24, scope: !42)
!46 = !DILocation(line: 17, column: 19, scope: !42)
!47 = !DILocation(line: 18, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !18, file: !1, line: 18, column: 9)
!49 = !DILocation(line: 18, column: 14, scope: !48)
!50 = !DILocation(line: 18, column: 9, scope: !18)
!51 = !DILocation(line: 18, column: 24, scope: !48)
!52 = !DILocation(line: 18, column: 19, scope: !48)
!53 = !DILocation(line: 20, column: 32, scope: !18)
!54 = !DILocation(line: 20, column: 37, scope: !18)
!55 = !DILocation(line: 20, column: 25, scope: !18)
!56 = !DILocation(line: 20, column: 12, scope: !18)
!57 = !DILocation(line: 21, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !18, file: !1, line: 21, column: 9)
!59 = !DILocation(line: 21, column: 9, scope: !18)
!60 = !DILocation(line: 22, column: 28, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !1, line: 21, column: 17)
!62 = !DILocation(line: 22, column: 36, scope: !61)
!63 = !DILocation(line: 22, column: 41, scope: !61)
!64 = !DILocation(line: 22, column: 9, scope: !61)
!65 = !DILocation(line: 23, column: 9, scope: !61)
!66 = !DILocation(line: 23, column: 16, scope: !61)
!67 = !DILocation(line: 23, column: 22, scope: !61)
!68 = !DILocation(line: 24, column: 5, scope: !61)
!69 = !DILocation(line: 26, column: 32, scope: !18)
!70 = !DILocation(line: 26, column: 37, scope: !18)
!71 = !DILocation(line: 26, column: 25, scope: !18)
!72 = !DILocation(line: 26, column: 12, scope: !18)
!73 = !DILocation(line: 27, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !18, file: !1, line: 27, column: 9)
!75 = !DILocation(line: 27, column: 9, scope: !18)
!76 = !DILocation(line: 28, column: 28, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !1, line: 27, column: 17)
!78 = !DILocation(line: 28, column: 36, scope: !77)
!79 = !DILocation(line: 28, column: 41, scope: !77)
!80 = !DILocation(line: 28, column: 9, scope: !77)
!81 = !DILocation(line: 29, column: 9, scope: !77)
!82 = !DILocation(line: 29, column: 16, scope: !77)
!83 = !DILocation(line: 29, column: 22, scope: !77)
!84 = !DILocation(line: 30, column: 5, scope: !77)
!85 = !DILocation(line: 32, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !18, file: !1, line: 32, column: 9)
!87 = !DILocation(line: 32, column: 16, scope: !86)
!88 = !DILocation(line: 32, column: 9, scope: !18)
!89 = !DILocation(line: 33, column: 27, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 32, column: 25)
!91 = !DILocation(line: 33, column: 43, scope: !90)
!92 = !DILocation(line: 33, column: 50, scope: !90)
!93 = !DILocation(line: 33, column: 48, scope: !90)
!94 = !DILocation(line: 33, column: 55, scope: !90)
!95 = !DILocation(line: 33, column: 13, scope: !90)
!96 = !DILocation(line: 34, column: 13, scope: !97)
!97 = distinct !DILexicalBlock(scope: !90, file: !1, line: 34, column: 13)
!98 = !DILocation(line: 34, column: 17, scope: !97)
!99 = !DILocation(line: 34, column: 13, scope: !90)
!100 = !DILocation(line: 35, column: 17, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 35, column: 17)
!102 = distinct !DILexicalBlock(scope: !97, file: !1, line: 34, column: 26)
!103 = !DILocation(line: 35, column: 17, scope: !102)
!104 = !DILocation(line: 35, column: 30, scope: !101)
!105 = !DILocation(line: 35, column: 25, scope: !101)
!106 = !DILocation(line: 36, column: 17, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 36, column: 17)
!108 = !DILocation(line: 36, column: 17, scope: !102)
!109 = !DILocation(line: 36, column: 30, scope: !107)
!110 = !DILocation(line: 36, column: 25, scope: !107)
!111 = !DILocation(line: 37, column: 13, scope: !102)
!112 = !DILocation(line: 39, column: 5, scope: !90)
!113 = !DILocation(line: 40, column: 15, scope: !114)
!114 = distinct !DILexicalBlock(scope: !86, file: !1, line: 39, column: 12)
!115 = !DILocation(line: 40, column: 13, scope: !114)
!116 = !DILocation(line: 43, column: 5, scope: !18)
!117 = !DILocation(line: 44, column: 13, scope: !18)
!118 = !DILocation(line: 44, column: 21, scope: !18)
!119 = !DILocation(line: 44, column: 29, scope: !18)
!120 = !DILocation(line: 44, column: 5, scope: !18)
!121 = !DILocation(line: 45, column: 5, scope: !18)
!122 = !DILocation(line: 45, column: 9, scope: !18)
!123 = !DILocation(line: 45, column: 15, scope: !18)
!124 = !DILocation(line: 46, column: 13, scope: !18)
!125 = !DILocation(line: 46, column: 17, scope: !18)
!126 = !DILocation(line: 46, column: 22, scope: !18)
!127 = !DILocation(line: 46, column: 28, scope: !18)
!128 = !DILocation(line: 46, column: 36, scope: !18)
!129 = !DILocation(line: 46, column: 5, scope: !18)
!130 = !DILocation(line: 47, column: 5, scope: !18)
!131 = !DILocation(line: 47, column: 9, scope: !18)
!132 = !DILocation(line: 47, column: 16, scope: !18)
!133 = !DILocation(line: 47, column: 14, scope: !18)
!134 = !DILocation(line: 47, column: 21, scope: !18)
!135 = !DILocation(line: 47, column: 26, scope: !18)
!136 = !DILocation(line: 49, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !18, file: !1, line: 49, column: 9)
!138 = !DILocation(line: 49, column: 9, scope: !18)
!139 = !DILocation(line: 49, column: 22, scope: !137)
!140 = !DILocation(line: 49, column: 17, scope: !137)
!141 = !DILocation(line: 50, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !18, file: !1, line: 50, column: 9)
!143 = !DILocation(line: 50, column: 9, scope: !18)
!144 = !DILocation(line: 50, column: 22, scope: !142)
!145 = !DILocation(line: 50, column: 17, scope: !142)
!146 = !DILocation(line: 51, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !18, file: !1, line: 51, column: 9)
!148 = !DILocation(line: 51, column: 16, scope: !147)
!149 = !DILocation(line: 51, column: 13, scope: !147)
!150 = !DILocation(line: 51, column: 9, scope: !18)
!151 = !DILocation(line: 51, column: 24, scope: !147)
!152 = !DILocation(line: 51, column: 32, scope: !147)
!153 = !DILocation(line: 52, column: 5, scope: !18)
!154 = !DILocation(line: 53, column: 1, scope: !18)
!155 = distinct !DISubprogram(name: "memcpy", scope: !156, file: !156, line: 12, type: !157, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !22)
!156 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!157 = !DISubroutineType(types: !158)
!158 = !{!7, !7, !159, !161}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !162, line: 46, baseType: !163)
!162 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!163 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!164 = !DILocalVariable(name: "destaddr", arg: 1, scope: !155, file: !156, line: 12, type: !7)
!165 = !DILocation(line: 12, column: 20, scope: !155)
!166 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !155, file: !156, line: 12, type: !159)
!167 = !DILocation(line: 12, column: 42, scope: !155)
!168 = !DILocalVariable(name: "len", arg: 3, scope: !155, file: !156, line: 12, type: !161)
!169 = !DILocation(line: 12, column: 58, scope: !155)
!170 = !DILocalVariable(name: "dest", scope: !155, file: !156, line: 13, type: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!173 = !DILocation(line: 13, column: 9, scope: !155)
!174 = !DILocation(line: 13, column: 16, scope: !155)
!175 = !DILocalVariable(name: "src", scope: !155, file: !156, line: 14, type: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!178 = !DILocation(line: 14, column: 15, scope: !155)
!179 = !DILocation(line: 14, column: 21, scope: !155)
!180 = !DILocation(line: 16, column: 3, scope: !155)
!181 = !DILocation(line: 16, column: 13, scope: !155)
!182 = !DILocation(line: 16, column: 16, scope: !155)
!183 = !DILocation(line: 17, column: 19, scope: !155)
!184 = !DILocation(line: 17, column: 15, scope: !155)
!185 = !DILocation(line: 17, column: 10, scope: !155)
!186 = !DILocation(line: 17, column: 13, scope: !155)
!187 = distinct !{!187, !180, !183, !188}
!188 = !{!"llvm.loop.mustprogress"}
!189 = !DILocation(line: 18, column: 10, scope: !155)
!190 = !DILocation(line: 18, column: 3, scope: !155)
