; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/160_xmlcatalog.c_128_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/160_xmlcatalog.c_128_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [10 x i8] c"input_buf\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"temp_catalog_input.txt\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/160_xmlcatalog.c_128_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1000 x i8], align 16
  %9 = alloca [1024 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !17, metadata !DIExpression()), !dbg !20
  store i8* null, i8** %2, align 8, !dbg !20
  call void @llvm.dbg.declare(metadata i64* %3, metadata !21, metadata !DIExpression()), !dbg !25
  store i64 0, i64* %3, align 8, !dbg !25
  call void @llvm.dbg.declare(metadata i64* %4, metadata !26, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !33, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata i8** %6, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %7, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata [1000 x i8]* %8, metadata !94, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata [1024 x i8]* %9, metadata !99, metadata !DIExpression()), !dbg !103
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0, !dbg !104
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 1024, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)), !dbg !105
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 1023, !dbg !106
  store i8 0, i8* %11, align 1, !dbg !107
  %12 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !108
  store %struct._IO_FILE* %12, %struct._IO_FILE** %5, align 8, !dbg !109
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !110
  %14 = icmp ne %struct._IO_FILE* %13, null, !dbg !110
  br i1 %14, label %16, label %15, !dbg !112

15:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !113
  br label %121, !dbg !113

16:                                               ; preds = %0
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0, !dbg !114
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !115
  %19 = call i32 @fputs(i8* noundef %17, %struct._IO_FILE* noundef %18), !dbg !116
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !117
  %21 = call i32 @fclose(%struct._IO_FILE* noundef %20), !dbg !118
  %22 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !119
  store %struct._IO_FILE* %22, %struct._IO_FILE** %5, align 8, !dbg !120
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !121
  %24 = icmp ne %struct._IO_FILE* %23, null, !dbg !121
  br i1 %24, label %26, label %25, !dbg !123

25:                                               ; preds = %16
  store i32 1, i32* %1, align 4, !dbg !124
  br label %121, !dbg !124

26:                                               ; preds = %16
  br label %27, !dbg !125

27:                                               ; preds = %70, %63, %26
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !126
  %29 = call i64 @getline(i8** noundef %2, i64* noundef %3, %struct._IO_FILE* noundef %28), !dbg !127
  store i64 %29, i64* %4, align 8, !dbg !128
  %30 = icmp ne i64 %29, -1, !dbg !129
  br i1 %30, label %31, label %112, !dbg !125

31:                                               ; preds = %27
  %32 = load i8*, i8** %2, align 8, !dbg !130
  store i8* %32, i8** %6, align 8, !dbg !132
  br label %33, !dbg !133

33:                                               ; preds = %45, %31
  %34 = load i8*, i8** %6, align 8, !dbg !134
  %35 = load i8, i8* %34, align 1, !dbg !135
  %36 = sext i8 %35 to i32, !dbg !135
  %37 = icmp eq i32 %36, 32, !dbg !136
  br i1 %37, label %43, label %38, !dbg !137

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8, !dbg !138
  %40 = load i8, i8* %39, align 1, !dbg !139
  %41 = sext i8 %40 to i32, !dbg !139
  %42 = icmp eq i32 %41, 9, !dbg !140
  br label %43, !dbg !137

43:                                               ; preds = %38, %33
  %44 = phi i1 [ true, %33 ], [ %42, %38 ]
  br i1 %44, label %45, label %48, !dbg !133

45:                                               ; preds = %43
  %46 = load i8*, i8** %6, align 8, !dbg !141
  %47 = getelementptr inbounds i8, i8* %46, i32 1, !dbg !141
  store i8* %47, i8** %6, align 8, !dbg !141
  br label %33, !dbg !133, !llvm.loop !142

48:                                               ; preds = %43
  %49 = load i8*, i8** %6, align 8, !dbg !144
  %50 = load i8, i8* %49, align 1, !dbg !146
  %51 = sext i8 %50 to i32, !dbg !146
  %52 = icmp eq i32 %51, 0, !dbg !147
  br i1 %52, label %63, label %53, !dbg !148

53:                                               ; preds = %48
  %54 = load i8*, i8** %6, align 8, !dbg !149
  %55 = load i8, i8* %54, align 1, !dbg !150
  %56 = sext i8 %55 to i32, !dbg !150
  %57 = icmp eq i32 %56, 10, !dbg !151
  br i1 %57, label %63, label %58, !dbg !152

58:                                               ; preds = %53
  %59 = load i8*, i8** %6, align 8, !dbg !153
  %60 = load i8, i8* %59, align 1, !dbg !154
  %61 = sext i8 %60 to i32, !dbg !154
  %62 = icmp eq i32 %61, 13, !dbg !155
  br i1 %62, label %63, label %65, !dbg !156

63:                                               ; preds = %58, %53, %48
  %64 = load i8*, i8** %2, align 8, !dbg !157
  call void @free(i8* noundef %64) #7, !dbg !159
  store i8* null, i8** %2, align 8, !dbg !160
  store i64 0, i64* %3, align 8, !dbg !161
  br label %27, !dbg !162, !llvm.loop !163

65:                                               ; preds = %58
  %66 = load i8*, i8** %6, align 8, !dbg !165
  %67 = load i8, i8* %66, align 1, !dbg !167
  %68 = sext i8 %67 to i32, !dbg !167
  %69 = icmp eq i32 %68, 35, !dbg !168
  br i1 %69, label %70, label %72, !dbg !169

70:                                               ; preds = %65
  %71 = load i8*, i8** %2, align 8, !dbg !170
  call void @free(i8* noundef %71) #7, !dbg !172
  store i8* null, i8** %2, align 8, !dbg !173
  store i64 0, i64* %3, align 8, !dbg !174
  br label %27, !dbg !175, !llvm.loop !163

72:                                               ; preds = %65
  store i32 0, i32* %7, align 4, !dbg !176
  br label %73, !dbg !177

73:                                               ; preds = %96, %72
  %74 = load i8*, i8** %6, align 8, !dbg !178
  %75 = load i8, i8* %74, align 1, !dbg !179
  %76 = sext i8 %75 to i32, !dbg !179
  %77 = icmp ne i32 %76, 10, !dbg !180
  br i1 %77, label %78, label %88, !dbg !181

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8, !dbg !182
  %80 = load i8, i8* %79, align 1, !dbg !183
  %81 = sext i8 %80 to i32, !dbg !183
  %82 = icmp ne i32 %81, 13, !dbg !184
  br i1 %82, label %83, label %88, !dbg !185

83:                                               ; preds = %78
  %84 = load i8*, i8** %6, align 8, !dbg !186
  %85 = load i8, i8* %84, align 1, !dbg !187
  %86 = sext i8 %85 to i32, !dbg !187
  %87 = icmp ne i32 %86, 0, !dbg !188
  br label %88

88:                                               ; preds = %83, %78, %73
  %89 = phi i1 [ false, %78 ], [ false, %73 ], [ %87, %83 ], !dbg !189
  br i1 %89, label %90, label %104, !dbg !177

90:                                               ; preds = %88
  %91 = load i8*, i8** %6, align 8, !dbg !190
  %92 = load i8, i8* %91, align 1, !dbg !193
  %93 = sext i8 %92 to i32, !dbg !193
  %94 = icmp eq i32 %93, 0, !dbg !194
  br i1 %94, label %95, label %96, !dbg !195

95:                                               ; preds = %90
  br label %104, !dbg !196

96:                                               ; preds = %90
  %97 = load i8*, i8** %6, align 8, !dbg !197
  %98 = getelementptr inbounds i8, i8* %97, i32 1, !dbg !197
  store i8* %98, i8** %6, align 8, !dbg !197
  %99 = load i8, i8* %97, align 1, !dbg !198
  %100 = load i32, i32* %7, align 4, !dbg !199
  %101 = add nsw i32 %100, 1, !dbg !199
  store i32 %101, i32* %7, align 4, !dbg !199
  %102 = sext i32 %100 to i64, !dbg !200
  %103 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 %102, !dbg !200
  store i8 %99, i8* %103, align 1, !dbg !201
  br label %73, !dbg !177, !llvm.loop !202

104:                                              ; preds = %95, %88
  %105 = load i32, i32* %7, align 4, !dbg !204
  %106 = sext i32 %105 to i64, !dbg !205
  %107 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 %106, !dbg !205
  store i8 0, i8* %107, align 1, !dbg !206
  %108 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !207
  %109 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0, !dbg !208
  %110 = call i8* @memset(i8* %109, i32 0, i64 1000), !dbg !208
  %111 = load i8*, i8** %2, align 8, !dbg !209
  call void @free(i8* noundef %111) #7, !dbg !210
  store i8* null, i8** %2, align 8, !dbg !211
  store i64 0, i64* %3, align 8, !dbg !212
  br label %112, !dbg !213

112:                                              ; preds = %104, %27
  %113 = load i8*, i8** %2, align 8, !dbg !214
  %114 = icmp ne i8* %113, null, !dbg !214
  br i1 %114, label %115, label %117, !dbg !216

115:                                              ; preds = %112
  %116 = load i8*, i8** %2, align 8, !dbg !217
  call void @free(i8* noundef %116) #7, !dbg !218
  br label %117, !dbg !218

117:                                              ; preds = %115, %112
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !219
  %119 = call i32 @fclose(%struct._IO_FILE* noundef %118), !dbg !220
  %120 = call i32 @remove(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !221
  store i32 0, i32* %1, align 4, !dbg !222
  br label %121, !dbg !222

121:                                              ; preds = %117, %25, %15
  %122 = load i32, i32* %1, align 4, !dbg !223
  ret i32 %122, !dbg !223
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #2

declare i64 @getline(i8** noundef, i64* noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @remove(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !224 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !228, metadata !DIExpression()), !dbg !229
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !230, metadata !DIExpression()), !dbg !231
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata i8** %7, metadata !234, metadata !DIExpression()), !dbg !235
  %8 = load i8*, i8** %4, align 8, !dbg !236
  store i8* %8, i8** %7, align 8, !dbg !235
  br label %9, !dbg !237

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !238
  %11 = add i64 %10, -1, !dbg !238
  store i64 %11, i64* %6, align 8, !dbg !238
  %12 = icmp ugt i64 %10, 0, !dbg !239
  br i1 %12, label %13, label %18, !dbg !237

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !240
  %15 = trunc i32 %14 to i8, !dbg !240
  %16 = load i8*, i8** %7, align 8, !dbg !241
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !241
  store i8* %17, i8** %7, align 8, !dbg !241
  store i8 %15, i8* %16, align 1, !dbg !242
  br label %9, !dbg !237, !llvm.loop !243

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !244
  ret i8* %19, !dbg !245
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/160_xmlcatalog.c_128_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "404d0f1d3a63776b1c2abf50ac761a7e")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !13, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "cmdline", scope: !12, file: !1, line: 10, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DILocation(line: 10, column: 11, scope: !12)
!21 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 11, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 46, baseType: !24)
!23 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!24 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!25 = !DILocation(line: 11, column: 12, scope: !12)
!26 = !DILocalVariable(name: "read", scope: !12, file: !1, line: 12, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !28, line: 78, baseType: !29)
!28 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "1e435c46987a169d9f9186f63a512303")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !30, line: 194, baseType: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!31 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!32 = !DILocation(line: 12, column: 13, scope: !12)
!33 = !DILocalVariable(name: "stream", scope: !12, file: !1, line: 13, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !36, line: 7, baseType: !37)
!36 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !38, line: 49, size: 1728, elements: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "7a6d4a00a37ee6b9a40cd04bd01f5d00")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !55, !57, !58, !59, !61, !63, !65, !69, !72, !74, !77, !80, !81, !83, !84, !85}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !37, file: !38, line: 51, baseType: !15, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !37, file: !38, line: 54, baseType: !18, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !37, file: !38, line: 55, baseType: !18, size: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !37, file: !38, line: 56, baseType: !18, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !37, file: !38, line: 57, baseType: !18, size: 64, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !37, file: !38, line: 58, baseType: !18, size: 64, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !37, file: !38, line: 59, baseType: !18, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !37, file: !38, line: 60, baseType: !18, size: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !37, file: !38, line: 61, baseType: !18, size: 64, offset: 512)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !37, file: !38, line: 64, baseType: !18, size: 64, offset: 576)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !37, file: !38, line: 65, baseType: !18, size: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !37, file: !38, line: 66, baseType: !18, size: 64, offset: 704)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !37, file: !38, line: 68, baseType: !53, size: 64, offset: 768)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !38, line: 36, flags: DIFlagFwdDecl)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !37, file: !38, line: 70, baseType: !56, size: 64, offset: 832)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !37, file: !38, line: 72, baseType: !15, size: 32, offset: 896)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !37, file: !38, line: 73, baseType: !15, size: 32, offset: 928)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !37, file: !38, line: 74, baseType: !60, size: 64, offset: 960)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !30, line: 152, baseType: !31)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !37, file: !38, line: 77, baseType: !62, size: 16, offset: 1024)
!62 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !37, file: !38, line: 78, baseType: !64, size: 8, offset: 1040)
!64 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !37, file: !38, line: 79, baseType: !66, size: 8, offset: 1048)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !37, file: !38, line: 81, baseType: !70, size: 64, offset: 1088)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !38, line: 43, baseType: null)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !37, file: !38, line: 89, baseType: !73, size: 64, offset: 1152)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !30, line: 153, baseType: !31)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !37, file: !38, line: 91, baseType: !75, size: 64, offset: 1216)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !38, line: 37, flags: DIFlagFwdDecl)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !37, file: !38, line: 92, baseType: !78, size: 64, offset: 1280)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !38, line: 38, flags: DIFlagFwdDecl)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !37, file: !38, line: 93, baseType: !56, size: 64, offset: 1344)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !37, file: !38, line: 94, baseType: !82, size: 64, offset: 1408)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !37, file: !38, line: 95, baseType: !22, size: 64, offset: 1472)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !37, file: !38, line: 96, baseType: !15, size: 32, offset: 1536)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !37, file: !38, line: 98, baseType: !86, size: 160, offset: 1568)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 20)
!89 = !DILocation(line: 13, column: 11, scope: !12)
!90 = !DILocalVariable(name: "cur", scope: !12, file: !1, line: 14, type: !18)
!91 = !DILocation(line: 14, column: 11, scope: !12)
!92 = !DILocalVariable(name: "i", scope: !12, file: !1, line: 15, type: !15)
!93 = !DILocation(line: 15, column: 9, scope: !12)
!94 = !DILocalVariable(name: "arg", scope: !12, file: !1, line: 16, type: !95)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8000, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 1000)
!98 = !DILocation(line: 16, column: 10, scope: !12)
!99 = !DILocalVariable(name: "input_buf", scope: !12, file: !1, line: 19, type: !100)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8192, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 1024)
!103 = !DILocation(line: 19, column: 10, scope: !12)
!104 = !DILocation(line: 20, column: 24, scope: !12)
!105 = !DILocation(line: 20, column: 5, scope: !12)
!106 = !DILocation(line: 22, column: 5, scope: !12)
!107 = !DILocation(line: 22, column: 36, scope: !12)
!108 = !DILocation(line: 25, column: 14, scope: !12)
!109 = !DILocation(line: 25, column: 12, scope: !12)
!110 = !DILocation(line: 26, column: 10, scope: !111)
!111 = distinct !DILexicalBlock(scope: !12, file: !1, line: 26, column: 9)
!112 = !DILocation(line: 26, column: 9, scope: !12)
!113 = !DILocation(line: 26, column: 18, scope: !111)
!114 = !DILocation(line: 27, column: 11, scope: !12)
!115 = !DILocation(line: 27, column: 22, scope: !12)
!116 = !DILocation(line: 27, column: 5, scope: !12)
!117 = !DILocation(line: 28, column: 12, scope: !12)
!118 = !DILocation(line: 28, column: 5, scope: !12)
!119 = !DILocation(line: 31, column: 14, scope: !12)
!120 = !DILocation(line: 31, column: 12, scope: !12)
!121 = !DILocation(line: 32, column: 10, scope: !122)
!122 = distinct !DILexicalBlock(scope: !12, file: !1, line: 32, column: 9)
!123 = !DILocation(line: 32, column: 9, scope: !12)
!124 = !DILocation(line: 32, column: 18, scope: !122)
!125 = !DILocation(line: 35, column: 5, scope: !12)
!126 = !DILocation(line: 35, column: 44, scope: !12)
!127 = !DILocation(line: 35, column: 20, scope: !12)
!128 = !DILocation(line: 35, column: 18, scope: !12)
!129 = !DILocation(line: 35, column: 53, scope: !12)
!130 = !DILocation(line: 36, column: 15, scope: !131)
!131 = distinct !DILexicalBlock(scope: !12, file: !1, line: 35, column: 60)
!132 = !DILocation(line: 36, column: 13, scope: !131)
!133 = !DILocation(line: 38, column: 9, scope: !131)
!134 = !DILocation(line: 38, column: 18, scope: !131)
!135 = !DILocation(line: 38, column: 17, scope: !131)
!136 = !DILocation(line: 38, column: 22, scope: !131)
!137 = !DILocation(line: 38, column: 30, scope: !131)
!138 = !DILocation(line: 38, column: 35, scope: !131)
!139 = !DILocation(line: 38, column: 34, scope: !131)
!140 = !DILocation(line: 38, column: 39, scope: !131)
!141 = !DILocation(line: 38, column: 52, scope: !131)
!142 = distinct !{!142, !133, !141, !143}
!143 = !{!"llvm.loop.mustprogress"}
!144 = !DILocation(line: 39, column: 14, scope: !145)
!145 = distinct !DILexicalBlock(scope: !131, file: !1, line: 39, column: 13)
!146 = !DILocation(line: 39, column: 13, scope: !145)
!147 = !DILocation(line: 39, column: 18, scope: !145)
!148 = !DILocation(line: 39, column: 23, scope: !145)
!149 = !DILocation(line: 39, column: 27, scope: !145)
!150 = !DILocation(line: 39, column: 26, scope: !145)
!151 = !DILocation(line: 39, column: 31, scope: !145)
!152 = !DILocation(line: 39, column: 39, scope: !145)
!153 = !DILocation(line: 39, column: 43, scope: !145)
!154 = !DILocation(line: 39, column: 42, scope: !145)
!155 = !DILocation(line: 39, column: 47, scope: !145)
!156 = !DILocation(line: 39, column: 13, scope: !131)
!157 = !DILocation(line: 40, column: 18, scope: !158)
!158 = distinct !DILexicalBlock(scope: !145, file: !1, line: 39, column: 56)
!159 = !DILocation(line: 40, column: 13, scope: !158)
!160 = !DILocation(line: 41, column: 21, scope: !158)
!161 = !DILocation(line: 42, column: 17, scope: !158)
!162 = !DILocation(line: 43, column: 13, scope: !158)
!163 = distinct !{!163, !125, !164, !143}
!164 = !DILocation(line: 73, column: 5, scope: !12)
!165 = !DILocation(line: 45, column: 14, scope: !166)
!166 = distinct !DILexicalBlock(scope: !131, file: !1, line: 45, column: 13)
!167 = !DILocation(line: 45, column: 13, scope: !166)
!168 = !DILocation(line: 45, column: 18, scope: !166)
!169 = !DILocation(line: 45, column: 13, scope: !131)
!170 = !DILocation(line: 46, column: 18, scope: !171)
!171 = distinct !DILexicalBlock(scope: !166, file: !1, line: 45, column: 26)
!172 = !DILocation(line: 46, column: 13, scope: !171)
!173 = !DILocation(line: 47, column: 21, scope: !171)
!174 = !DILocation(line: 48, column: 17, scope: !171)
!175 = !DILocation(line: 49, column: 13, scope: !171)
!176 = !DILocation(line: 53, column: 11, scope: !131)
!177 = !DILocation(line: 54, column: 9, scope: !131)
!178 = !DILocation(line: 54, column: 18, scope: !131)
!179 = !DILocation(line: 54, column: 17, scope: !131)
!180 = !DILocation(line: 54, column: 22, scope: !131)
!181 = !DILocation(line: 54, column: 31, scope: !131)
!182 = !DILocation(line: 54, column: 36, scope: !131)
!183 = !DILocation(line: 54, column: 35, scope: !131)
!184 = !DILocation(line: 54, column: 40, scope: !131)
!185 = !DILocation(line: 54, column: 49, scope: !131)
!186 = !DILocation(line: 54, column: 54, scope: !131)
!187 = !DILocation(line: 54, column: 53, scope: !131)
!188 = !DILocation(line: 54, column: 58, scope: !131)
!189 = !DILocation(line: 0, scope: !131)
!190 = !DILocation(line: 55, column: 18, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 55, column: 17)
!192 = distinct !DILexicalBlock(scope: !131, file: !1, line: 54, column: 65)
!193 = !DILocation(line: 55, column: 17, scope: !191)
!194 = !DILocation(line: 55, column: 22, scope: !191)
!195 = !DILocation(line: 55, column: 17, scope: !192)
!196 = !DILocation(line: 56, column: 17, scope: !191)
!197 = !DILocation(line: 58, column: 28, scope: !192)
!198 = !DILocation(line: 58, column: 24, scope: !192)
!199 = !DILocation(line: 58, column: 18, scope: !192)
!200 = !DILocation(line: 58, column: 13, scope: !192)
!201 = !DILocation(line: 58, column: 22, scope: !192)
!202 = distinct !{!202, !177, !203, !143}
!203 = !DILocation(line: 59, column: 9, scope: !131)
!204 = !DILocation(line: 60, column: 13, scope: !131)
!205 = !DILocation(line: 60, column: 9, scope: !131)
!206 = !DILocation(line: 60, column: 16, scope: !131)
!207 = !DILocation(line: 64, column: 9, scope: !131)
!208 = !DILocation(line: 66, column: 9, scope: !131)
!209 = !DILocation(line: 69, column: 14, scope: !131)
!210 = !DILocation(line: 69, column: 9, scope: !131)
!211 = !DILocation(line: 70, column: 17, scope: !131)
!212 = !DILocation(line: 71, column: 13, scope: !131)
!213 = !DILocation(line: 72, column: 9, scope: !131)
!214 = !DILocation(line: 75, column: 9, scope: !215)
!215 = distinct !DILexicalBlock(scope: !12, file: !1, line: 75, column: 9)
!216 = !DILocation(line: 75, column: 9, scope: !12)
!217 = !DILocation(line: 75, column: 23, scope: !215)
!218 = !DILocation(line: 75, column: 18, scope: !215)
!219 = !DILocation(line: 76, column: 12, scope: !12)
!220 = !DILocation(line: 76, column: 5, scope: !12)
!221 = !DILocation(line: 77, column: 5, scope: !12)
!222 = !DILocation(line: 78, column: 5, scope: !12)
!223 = !DILocation(line: 79, column: 1, scope: !12)
!224 = distinct !DISubprogram(name: "memset", scope: !225, file: !225, line: 12, type: !226, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!225 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!226 = !DISubroutineType(types: !227)
!227 = !{!82, !82, !15, !22}
!228 = !DILocalVariable(name: "dst", arg: 1, scope: !224, file: !225, line: 12, type: !82)
!229 = !DILocation(line: 12, column: 20, scope: !224)
!230 = !DILocalVariable(name: "s", arg: 2, scope: !224, file: !225, line: 12, type: !15)
!231 = !DILocation(line: 12, column: 29, scope: !224)
!232 = !DILocalVariable(name: "count", arg: 3, scope: !224, file: !225, line: 12, type: !22)
!233 = !DILocation(line: 12, column: 39, scope: !224)
!234 = !DILocalVariable(name: "a", scope: !224, file: !225, line: 13, type: !18)
!235 = !DILocation(line: 13, column: 9, scope: !224)
!236 = !DILocation(line: 13, column: 13, scope: !224)
!237 = !DILocation(line: 14, column: 3, scope: !224)
!238 = !DILocation(line: 14, column: 15, scope: !224)
!239 = !DILocation(line: 14, column: 18, scope: !224)
!240 = !DILocation(line: 15, column: 12, scope: !224)
!241 = !DILocation(line: 15, column: 7, scope: !224)
!242 = !DILocation(line: 15, column: 10, scope: !224)
!243 = distinct !{!243, !237, !240, !143}
!244 = !DILocation(line: 16, column: 10, scope: !224)
!245 = !DILocation(line: 16, column: 3, scope: !224)
