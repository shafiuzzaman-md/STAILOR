; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/316_tree.c_239_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/316_tree.c_239_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"lenp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"lenn\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"memory_size\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ncname\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/316_tree.c_239_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !17 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i8** %3, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i8** %4, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %5, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %6, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %7, metadata !32, metadata !DIExpression()), !dbg !33
  %8 = bitcast i32* %5 to i8*, !dbg !34
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !35
  %9 = bitcast i32* %6 to i8*, !dbg !36
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !37
  %10 = bitcast i32* %7 to i8*, !dbg !38
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)), !dbg !39
  %11 = load i32, i32* %5, align 4, !dbg !40
  %12 = icmp sge i32 %11, 0, !dbg !41
  %13 = zext i1 %12 to i32, !dbg !41
  %14 = sext i32 %13 to i64, !dbg !40
  call void @klee_assume(i64 noundef %14), !dbg !42
  %15 = load i32, i32* %6, align 4, !dbg !43
  %16 = icmp sge i32 %15, 0, !dbg !44
  %17 = zext i1 %16 to i32, !dbg !44
  %18 = sext i32 %17 to i64, !dbg !43
  call void @klee_assume(i64 noundef %18), !dbg !45
  %19 = load i32, i32* %7, align 4, !dbg !46
  %20 = icmp sge i32 %19, 0, !dbg !47
  %21 = zext i1 %20 to i32, !dbg !47
  %22 = sext i32 %21 to i64, !dbg !46
  call void @klee_assume(i64 noundef %22), !dbg !48
  %23 = load i32, i32* %5, align 4, !dbg !49
  %24 = load i32, i32* %6, align 4, !dbg !51
  %25 = add nsw i32 %23, %24, !dbg !52
  %26 = add nsw i32 %25, 2, !dbg !53
  %27 = load i32, i32* %7, align 4, !dbg !54
  %28 = icmp sgt i32 %26, %27, !dbg !55
  br i1 %28, label %29, label %30, !dbg !56

29:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !57
  br label %126, !dbg !57

30:                                               ; preds = %0
  %31 = load i32, i32* %5, align 4, !dbg !59
  %32 = add nsw i32 %31, 1, !dbg !60
  %33 = sext i32 %32 to i64, !dbg !61
  %34 = mul i64 %33, 1, !dbg !62
  %35 = call noalias i8* @malloc(i64 noundef %34) #7, !dbg !63
  store i8* %35, i8** %2, align 8, !dbg !64
  %36 = load i32, i32* %6, align 4, !dbg !65
  %37 = add nsw i32 %36, 1, !dbg !66
  %38 = sext i32 %37 to i64, !dbg !67
  %39 = mul i64 %38, 1, !dbg !68
  %40 = call noalias i8* @malloc(i64 noundef %39) #7, !dbg !69
  store i8* %40, i8** %3, align 8, !dbg !70
  %41 = load i32, i32* %7, align 4, !dbg !71
  %42 = sext i32 %41 to i64, !dbg !71
  %43 = mul i64 %42, 1, !dbg !72
  %44 = call noalias i8* @malloc(i64 noundef %43) #7, !dbg !73
  store i8* %44, i8** %4, align 8, !dbg !74
  %45 = load i8*, i8** %2, align 8, !dbg !75
  %46 = icmp ne i8* %45, null, !dbg !75
  br i1 %46, label %47, label %53, !dbg !77

47:                                               ; preds = %30
  %48 = load i8*, i8** %3, align 8, !dbg !78
  %49 = icmp ne i8* %48, null, !dbg !78
  br i1 %49, label %50, label %53, !dbg !79

50:                                               ; preds = %47
  %51 = load i8*, i8** %4, align 8, !dbg !80
  %52 = icmp ne i8* %51, null, !dbg !80
  br i1 %52, label %69, label %53, !dbg !81

53:                                               ; preds = %50, %47, %30
  %54 = load i8*, i8** %2, align 8, !dbg !82
  %55 = icmp ne i8* %54, null, !dbg !82
  br i1 %55, label %56, label %58, !dbg !85

56:                                               ; preds = %53
  %57 = load i8*, i8** %2, align 8, !dbg !86
  call void @free(i8* noundef %57) #7, !dbg !87
  br label %58, !dbg !87

58:                                               ; preds = %56, %53
  %59 = load i8*, i8** %3, align 8, !dbg !88
  %60 = icmp ne i8* %59, null, !dbg !88
  br i1 %60, label %61, label %63, !dbg !90

61:                                               ; preds = %58
  %62 = load i8*, i8** %3, align 8, !dbg !91
  call void @free(i8* noundef %62) #7, !dbg !92
  br label %63, !dbg !92

63:                                               ; preds = %61, %58
  %64 = load i8*, i8** %4, align 8, !dbg !93
  %65 = icmp ne i8* %64, null, !dbg !93
  br i1 %65, label %66, label %68, !dbg !95

66:                                               ; preds = %63
  %67 = load i8*, i8** %4, align 8, !dbg !96
  call void @free(i8* noundef %67) #7, !dbg !97
  br label %68, !dbg !97

68:                                               ; preds = %66, %63
  store i32 0, i32* %1, align 4, !dbg !98
  br label %126, !dbg !98

69:                                               ; preds = %50
  %70 = load i8*, i8** %2, align 8, !dbg !99
  %71 = load i32, i32* %5, align 4, !dbg !100
  %72 = add nsw i32 %71, 1, !dbg !101
  %73 = sext i32 %72 to i64, !dbg !102
  %74 = mul i64 %73, 1, !dbg !103
  call void @klee_make_symbolic(i8* noundef %70, i64 noundef %74, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !104
  %75 = load i8*, i8** %3, align 8, !dbg !105
  %76 = load i32, i32* %6, align 4, !dbg !106
  %77 = add nsw i32 %76, 1, !dbg !107
  %78 = sext i32 %77 to i64, !dbg !108
  %79 = mul i64 %78, 1, !dbg !109
  call void @klee_make_symbolic(i8* noundef %75, i64 noundef %79, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)), !dbg !110
  %80 = load i8*, i8** %2, align 8, !dbg !111
  %81 = load i32, i32* %5, align 4, !dbg !112
  %82 = sext i32 %81 to i64, !dbg !111
  %83 = getelementptr inbounds i8, i8* %80, i64 %82, !dbg !111
  store i8 0, i8* %83, align 1, !dbg !113
  %84 = load i8*, i8** %3, align 8, !dbg !114
  %85 = load i32, i32* %6, align 4, !dbg !115
  %86 = sext i32 %85 to i64, !dbg !114
  %87 = getelementptr inbounds i8, i8* %84, i64 %86, !dbg !114
  store i8 0, i8* %87, align 1, !dbg !116
  %88 = load i32, i32* %5, align 4, !dbg !117
  %89 = icmp sgt i32 %88, 0, !dbg !119
  br i1 %89, label %90, label %97, !dbg !120

90:                                               ; preds = %69
  %91 = load i8*, i8** %4, align 8, !dbg !121
  %92 = getelementptr inbounds i8, i8* %91, i64 0, !dbg !121
  %93 = load i8*, i8** %2, align 8, !dbg !123
  %94 = load i32, i32* %5, align 4, !dbg !124
  %95 = sext i32 %94 to i64, !dbg !124
  %96 = call i8* @memcpy(i8* %92, i8* %93, i64 %95), !dbg !125
  br label %97, !dbg !126

97:                                               ; preds = %90, %69
  %98 = load i8*, i8** %4, align 8, !dbg !127
  %99 = load i32, i32* %5, align 4, !dbg !128
  %100 = sext i32 %99 to i64, !dbg !127
  %101 = getelementptr inbounds i8, i8* %98, i64 %100, !dbg !127
  store i8 58, i8* %101, align 1, !dbg !129
  %102 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !130
  %103 = load i32, i32* %6, align 4, !dbg !131
  %104 = icmp sgt i32 %103, 0, !dbg !133
  br i1 %104, label %105, label %115, !dbg !134

105:                                              ; preds = %97
  %106 = load i8*, i8** %4, align 8, !dbg !135
  %107 = load i32, i32* %5, align 4, !dbg !137
  %108 = add nsw i32 %107, 1, !dbg !138
  %109 = sext i32 %108 to i64, !dbg !135
  %110 = getelementptr inbounds i8, i8* %106, i64 %109, !dbg !135
  %111 = load i8*, i8** %3, align 8, !dbg !139
  %112 = load i32, i32* %6, align 4, !dbg !140
  %113 = sext i32 %112 to i64, !dbg !140
  %114 = call i8* @memcpy(i8* %110, i8* %111, i64 %113), !dbg !141
  br label %115, !dbg !142

115:                                              ; preds = %105, %97
  %116 = load i8*, i8** %4, align 8, !dbg !143
  %117 = load i32, i32* %6, align 4, !dbg !144
  %118 = load i32, i32* %5, align 4, !dbg !145
  %119 = add nsw i32 %117, %118, !dbg !146
  %120 = add nsw i32 %119, 1, !dbg !147
  %121 = sext i32 %120 to i64, !dbg !143
  %122 = getelementptr inbounds i8, i8* %116, i64 %121, !dbg !143
  store i8 0, i8* %122, align 1, !dbg !148
  %123 = load i8*, i8** %2, align 8, !dbg !149
  call void @free(i8* noundef %123) #7, !dbg !150
  %124 = load i8*, i8** %3, align 8, !dbg !151
  call void @free(i8* noundef %124) #7, !dbg !152
  %125 = load i8*, i8** %4, align 8, !dbg !153
  call void @free(i8* noundef %125) #7, !dbg !154
  store i32 0, i32* %1, align 4, !dbg !155
  br label %126, !dbg !155

126:                                              ; preds = %115, %68, %29
  %127 = load i32, i32* %1, align 4, !dbg !156
  ret i32 %127, !dbg !156
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !157 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !167, metadata !DIExpression()), !dbg !168
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !169, metadata !DIExpression()), !dbg !170
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata i8** %7, metadata !173, metadata !DIExpression()), !dbg !176
  %9 = load i8*, i8** %4, align 8, !dbg !177
  store i8* %9, i8** %7, align 8, !dbg !176
  call void @llvm.dbg.declare(metadata i8** %8, metadata !178, metadata !DIExpression()), !dbg !181
  %10 = load i8*, i8** %5, align 8, !dbg !182
  store i8* %10, i8** %8, align 8, !dbg !181
  br label %11, !dbg !183

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !184
  %13 = add i64 %12, -1, !dbg !184
  store i64 %13, i64* %6, align 8, !dbg !184
  %14 = icmp ugt i64 %12, 0, !dbg !185
  br i1 %14, label %15, label %21, !dbg !183

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !186
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !186
  store i8* %17, i8** %8, align 8, !dbg !186
  %18 = load i8, i8* %16, align 1, !dbg !187
  %19 = load i8*, i8** %7, align 8, !dbg !188
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !188
  store i8* %20, i8** %7, align 8, !dbg !188
  store i8 %18, i8* %19, align 1, !dbg !189
  br label %11, !dbg !183, !llvm.loop !190

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !192
  ret i8* %22, !dbg !193
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/316_tree.c_239_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "d43110b71f7108c9161d4ff58c7915df")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !5, line: 28, baseType: !6)
!5 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
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
!17 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !18, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{}
!22 = !DILocalVariable(name: "prefix", scope: !17, file: !1, line: 7, type: !3)
!23 = !DILocation(line: 7, column: 14, scope: !17)
!24 = !DILocalVariable(name: "ncname", scope: !17, file: !1, line: 8, type: !3)
!25 = !DILocation(line: 8, column: 14, scope: !17)
!26 = !DILocalVariable(name: "ret", scope: !17, file: !1, line: 9, type: !3)
!27 = !DILocation(line: 9, column: 14, scope: !17)
!28 = !DILocalVariable(name: "lenp", scope: !17, file: !1, line: 10, type: !20)
!29 = !DILocation(line: 10, column: 9, scope: !17)
!30 = !DILocalVariable(name: "lenn", scope: !17, file: !1, line: 10, type: !20)
!31 = !DILocation(line: 10, column: 15, scope: !17)
!32 = !DILocalVariable(name: "memory_size", scope: !17, file: !1, line: 11, type: !20)
!33 = !DILocation(line: 11, column: 9, scope: !17)
!34 = !DILocation(line: 13, column: 24, scope: !17)
!35 = !DILocation(line: 13, column: 5, scope: !17)
!36 = !DILocation(line: 14, column: 24, scope: !17)
!37 = !DILocation(line: 14, column: 5, scope: !17)
!38 = !DILocation(line: 15, column: 24, scope: !17)
!39 = !DILocation(line: 15, column: 5, scope: !17)
!40 = !DILocation(line: 17, column: 17, scope: !17)
!41 = !DILocation(line: 17, column: 22, scope: !17)
!42 = !DILocation(line: 17, column: 5, scope: !17)
!43 = !DILocation(line: 18, column: 17, scope: !17)
!44 = !DILocation(line: 18, column: 22, scope: !17)
!45 = !DILocation(line: 18, column: 5, scope: !17)
!46 = !DILocation(line: 19, column: 17, scope: !17)
!47 = !DILocation(line: 19, column: 29, scope: !17)
!48 = !DILocation(line: 19, column: 5, scope: !17)
!49 = !DILocation(line: 21, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !17, file: !1, line: 21, column: 9)
!51 = !DILocation(line: 21, column: 16, scope: !50)
!52 = !DILocation(line: 21, column: 14, scope: !50)
!53 = !DILocation(line: 21, column: 21, scope: !50)
!54 = !DILocation(line: 21, column: 27, scope: !50)
!55 = !DILocation(line: 21, column: 25, scope: !50)
!56 = !DILocation(line: 21, column: 9, scope: !17)
!57 = !DILocation(line: 22, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !50, file: !1, line: 21, column: 40)
!59 = !DILocation(line: 25, column: 33, scope: !17)
!60 = !DILocation(line: 25, column: 38, scope: !17)
!61 = !DILocation(line: 25, column: 32, scope: !17)
!62 = !DILocation(line: 25, column: 43, scope: !17)
!63 = !DILocation(line: 25, column: 25, scope: !17)
!64 = !DILocation(line: 25, column: 12, scope: !17)
!65 = !DILocation(line: 26, column: 33, scope: !17)
!66 = !DILocation(line: 26, column: 38, scope: !17)
!67 = !DILocation(line: 26, column: 32, scope: !17)
!68 = !DILocation(line: 26, column: 43, scope: !17)
!69 = !DILocation(line: 26, column: 25, scope: !17)
!70 = !DILocation(line: 26, column: 12, scope: !17)
!71 = !DILocation(line: 27, column: 29, scope: !17)
!72 = !DILocation(line: 27, column: 41, scope: !17)
!73 = !DILocation(line: 27, column: 22, scope: !17)
!74 = !DILocation(line: 27, column: 9, scope: !17)
!75 = !DILocation(line: 29, column: 10, scope: !76)
!76 = distinct !DILexicalBlock(scope: !17, file: !1, line: 29, column: 9)
!77 = !DILocation(line: 29, column: 17, scope: !76)
!78 = !DILocation(line: 29, column: 21, scope: !76)
!79 = !DILocation(line: 29, column: 28, scope: !76)
!80 = !DILocation(line: 29, column: 32, scope: !76)
!81 = !DILocation(line: 29, column: 9, scope: !17)
!82 = !DILocation(line: 30, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !84, file: !1, line: 30, column: 13)
!84 = distinct !DILexicalBlock(scope: !76, file: !1, line: 29, column: 37)
!85 = !DILocation(line: 30, column: 13, scope: !84)
!86 = !DILocation(line: 30, column: 26, scope: !83)
!87 = !DILocation(line: 30, column: 21, scope: !83)
!88 = !DILocation(line: 31, column: 13, scope: !89)
!89 = distinct !DILexicalBlock(scope: !84, file: !1, line: 31, column: 13)
!90 = !DILocation(line: 31, column: 13, scope: !84)
!91 = !DILocation(line: 31, column: 26, scope: !89)
!92 = !DILocation(line: 31, column: 21, scope: !89)
!93 = !DILocation(line: 32, column: 13, scope: !94)
!94 = distinct !DILexicalBlock(scope: !84, file: !1, line: 32, column: 13)
!95 = !DILocation(line: 32, column: 13, scope: !84)
!96 = !DILocation(line: 32, column: 23, scope: !94)
!97 = !DILocation(line: 32, column: 18, scope: !94)
!98 = !DILocation(line: 33, column: 9, scope: !84)
!99 = !DILocation(line: 36, column: 24, scope: !17)
!100 = !DILocation(line: 36, column: 33, scope: !17)
!101 = !DILocation(line: 36, column: 38, scope: !17)
!102 = !DILocation(line: 36, column: 32, scope: !17)
!103 = !DILocation(line: 36, column: 43, scope: !17)
!104 = !DILocation(line: 36, column: 5, scope: !17)
!105 = !DILocation(line: 37, column: 24, scope: !17)
!106 = !DILocation(line: 37, column: 33, scope: !17)
!107 = !DILocation(line: 37, column: 38, scope: !17)
!108 = !DILocation(line: 37, column: 32, scope: !17)
!109 = !DILocation(line: 37, column: 43, scope: !17)
!110 = !DILocation(line: 37, column: 5, scope: !17)
!111 = !DILocation(line: 39, column: 5, scope: !17)
!112 = !DILocation(line: 39, column: 12, scope: !17)
!113 = !DILocation(line: 39, column: 18, scope: !17)
!114 = !DILocation(line: 40, column: 5, scope: !17)
!115 = !DILocation(line: 40, column: 12, scope: !17)
!116 = !DILocation(line: 40, column: 18, scope: !17)
!117 = !DILocation(line: 42, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !17, file: !1, line: 42, column: 9)
!119 = !DILocation(line: 42, column: 14, scope: !118)
!120 = !DILocation(line: 42, column: 9, scope: !17)
!121 = !DILocation(line: 43, column: 17, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !1, line: 42, column: 19)
!123 = !DILocation(line: 43, column: 25, scope: !122)
!124 = !DILocation(line: 43, column: 33, scope: !122)
!125 = !DILocation(line: 43, column: 9, scope: !122)
!126 = !DILocation(line: 44, column: 5, scope: !122)
!127 = !DILocation(line: 45, column: 5, scope: !17)
!128 = !DILocation(line: 45, column: 9, scope: !17)
!129 = !DILocation(line: 45, column: 15, scope: !17)
!130 = !DILocation(line: 46, column: 5, scope: !17)
!131 = !DILocation(line: 47, column: 9, scope: !132)
!132 = distinct !DILexicalBlock(scope: !17, file: !1, line: 47, column: 9)
!133 = !DILocation(line: 47, column: 14, scope: !132)
!134 = !DILocation(line: 47, column: 9, scope: !17)
!135 = !DILocation(line: 48, column: 17, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !1, line: 47, column: 19)
!137 = !DILocation(line: 48, column: 21, scope: !136)
!138 = !DILocation(line: 48, column: 26, scope: !136)
!139 = !DILocation(line: 48, column: 32, scope: !136)
!140 = !DILocation(line: 48, column: 40, scope: !136)
!141 = !DILocation(line: 48, column: 9, scope: !136)
!142 = !DILocation(line: 49, column: 5, scope: !136)
!143 = !DILocation(line: 50, column: 5, scope: !17)
!144 = !DILocation(line: 50, column: 9, scope: !17)
!145 = !DILocation(line: 50, column: 16, scope: !17)
!146 = !DILocation(line: 50, column: 14, scope: !17)
!147 = !DILocation(line: 50, column: 21, scope: !17)
!148 = !DILocation(line: 50, column: 26, scope: !17)
!149 = !DILocation(line: 52, column: 10, scope: !17)
!150 = !DILocation(line: 52, column: 5, scope: !17)
!151 = !DILocation(line: 53, column: 10, scope: !17)
!152 = !DILocation(line: 53, column: 5, scope: !17)
!153 = !DILocation(line: 54, column: 10, scope: !17)
!154 = !DILocation(line: 54, column: 5, scope: !17)
!155 = !DILocation(line: 55, column: 5, scope: !17)
!156 = !DILocation(line: 56, column: 1, scope: !17)
!157 = distinct !DISubprogram(name: "memcpy", scope: !158, file: !158, line: 12, type: !159, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !21)
!158 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!159 = !DISubroutineType(types: !160)
!160 = !{!161, !161, !162, !164}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !165, line: 46, baseType: !166)
!165 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!166 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!167 = !DILocalVariable(name: "destaddr", arg: 1, scope: !157, file: !158, line: 12, type: !161)
!168 = !DILocation(line: 12, column: 20, scope: !157)
!169 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !157, file: !158, line: 12, type: !162)
!170 = !DILocation(line: 12, column: 42, scope: !157)
!171 = !DILocalVariable(name: "len", arg: 3, scope: !157, file: !158, line: 12, type: !164)
!172 = !DILocation(line: 12, column: 58, scope: !157)
!173 = !DILocalVariable(name: "dest", scope: !157, file: !158, line: 13, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!176 = !DILocation(line: 13, column: 9, scope: !157)
!177 = !DILocation(line: 13, column: 16, scope: !157)
!178 = !DILocalVariable(name: "src", scope: !157, file: !158, line: 14, type: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!181 = !DILocation(line: 14, column: 15, scope: !157)
!182 = !DILocation(line: 14, column: 21, scope: !157)
!183 = !DILocation(line: 16, column: 3, scope: !157)
!184 = !DILocation(line: 16, column: 13, scope: !157)
!185 = !DILocation(line: 16, column: 16, scope: !157)
!186 = !DILocation(line: 17, column: 19, scope: !157)
!187 = !DILocation(line: 17, column: 15, scope: !157)
!188 = !DILocation(line: 17, column: 10, scope: !157)
!189 = !DILocation(line: 17, column: 13, scope: !157)
!190 = distinct !{!190, !183, !186, !191}
!191 = !{!"llvm.loop.mustprogress"}
!192 = !DILocation(line: 18, column: 10, scope: !157)
!193 = !DILocation(line: 18, column: 3, scope: !157)
