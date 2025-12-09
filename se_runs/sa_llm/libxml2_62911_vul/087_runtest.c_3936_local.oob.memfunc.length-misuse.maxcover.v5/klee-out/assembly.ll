; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/087_runtest.c_3936_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/087_runtest.c_3936_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"result/pattern/%s\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/087_runtest.c_3936_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".xml\00", align 1
@update_results = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"Missing xml file %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Failed to open %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca [500 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !19, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata [500 x i8]* %4, metadata !27, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %5, metadata !32, metadata !DIExpression()), !dbg !33
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !34
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !35
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !36
  %9 = load i8, i8* %8, align 16, !dbg !36
  %10 = sext i8 %9 to i32, !dbg !36
  %11 = icmp ne i32 %10, 0, !dbg !37
  %12 = zext i1 %11 to i32, !dbg !37
  %13 = sext i32 %12 to i64, !dbg !36
  call void @klee_assume(i64 noundef %13), !dbg !38
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !39
  %15 = call i64 @strlen(i8* noundef %14) #8, !dbg !40
  %16 = icmp uge i64 %15, 4, !dbg !41
  %17 = zext i1 %16 to i32, !dbg !41
  %18 = sext i32 %17 to i64, !dbg !40
  call void @klee_assume(i64 noundef %18), !dbg !42
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !43
  %20 = call i64 @strlen(i8* noundef %19) #8, !dbg !44
  %21 = icmp ult i64 %20, 255, !dbg !45
  %22 = zext i1 %21 to i32, !dbg !45
  %23 = sext i32 %22 to i64, !dbg !44
  call void @klee_assume(i64 noundef %23), !dbg !46
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !47
  store i8 0, i8* %24, align 1, !dbg !48
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !49
  %26 = call i64 @strlen(i8* noundef %25) #8, !dbg !50
  %27 = trunc i64 %26 to i32, !dbg !50
  store i32 %27, i32* %5, align 4, !dbg !51
  %28 = load i32, i32* %5, align 4, !dbg !52
  %29 = sub nsw i32 %28, 4, !dbg !52
  store i32 %29, i32* %5, align 4, !dbg !52
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !53
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !53
  %32 = load i32, i32* %5, align 4, !dbg !54
  %33 = sext i32 %32 to i64, !dbg !54
  %34 = call i8* @memcpy(i8* %30, i8* %31, i64 %33), !dbg !53
  %35 = load i32, i32* %5, align 4, !dbg !55
  %36 = sext i32 %35 to i64, !dbg !56
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %36, !dbg !56
  store i8 0, i8* %37, align 1, !dbg !57
  %38 = getelementptr inbounds [500 x i8], [500 x i8]* %4, i64 0, i64 0, !dbg !58
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !60
  %40 = call i8* @baseFilename(i8* noundef %39), !dbg !61
  %41 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %38, i64 noundef 499, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* noundef %40) #9, !dbg !62
  %42 = icmp sge i32 %41, 499, !dbg !63
  br i1 %42, label %43, label %45, !dbg !64

43:                                               ; preds = %0
  %44 = getelementptr inbounds [500 x i8], [500 x i8]* %4, i64 0, i64 499, !dbg !65
  store i8 0, i8* %44, align 1, !dbg !66
  br label %45, !dbg !65

45:                                               ; preds = %43, %0
  %46 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !67
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !68
  %48 = load i32, i32* %5, align 4, !dbg !69
  %49 = sext i32 %48 to i64, !dbg !70
  %50 = getelementptr inbounds i8, i8* %47, i64 %49, !dbg !70
  %51 = call i8* @memcpy(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 5), !dbg !71
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !72
  %53 = call i32 @checkTestFile(i8* noundef %52), !dbg !74
  %54 = icmp ne i32 %53, 0, !dbg !74
  br i1 %54, label %62, label %55, !dbg !75

55:                                               ; preds = %45
  %56 = load i32, i32* @update_results, align 4, !dbg !76
  %57 = icmp ne i32 %56, 0, !dbg !76
  br i1 %57, label %62, label %58, !dbg !77

58:                                               ; preds = %55
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !78
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !80
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %59, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* noundef %60), !dbg !81
  store i32 -1, i32* %1, align 4, !dbg !82
  br label %74, !dbg !82

62:                                               ; preds = %55, %45
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !83, metadata !DIExpression()), !dbg !144
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !145
  %64 = call noalias %struct._IO_FILE* @fopen(i8* noundef %63, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)), !dbg !146
  store %struct._IO_FILE* %64, %struct._IO_FILE** %6, align 8, !dbg !144
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !147
  %66 = icmp eq %struct._IO_FILE* %65, null, !dbg !149
  br i1 %66, label %67, label %71, !dbg !150

67:                                               ; preds = %62
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !151
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !153
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %68, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* noundef %69), !dbg !154
  store i32 -1, i32* %1, align 4, !dbg !155
  br label %74, !dbg !155

71:                                               ; preds = %62
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !156
  %73 = call i32 @fclose(%struct._IO_FILE* noundef %72), !dbg !157
  store i32 0, i32* %1, align 4, !dbg !158
  br label %74, !dbg !158

74:                                               ; preds = %71, %67, %58
  %75 = load i32, i32* %1, align 4, !dbg !159
  ret i32 %75, !dbg !159
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #5

declare i8* @baseFilename(i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

declare i32 @checkTestFile(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !160 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !166, metadata !DIExpression()), !dbg !167
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !168, metadata !DIExpression()), !dbg !169
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata i8** %7, metadata !172, metadata !DIExpression()), !dbg !173
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
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/087_runtest.c_3936_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "e7cabf2dcaf75949b8e9e4ed4bf7a5e4")
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
!14 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !15, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{}
!19 = !DILocalVariable(name: "filename", scope: !14, file: !1, line: 12, type: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, elements: !22)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !{!23}
!23 = !DISubrange(count: 256)
!24 = !DILocation(line: 12, column: 10, scope: !14)
!25 = !DILocalVariable(name: "xml", scope: !14, file: !1, line: 13, type: !20)
!26 = !DILocation(line: 13, column: 10, scope: !14)
!27 = !DILocalVariable(name: "result", scope: !14, file: !1, line: 14, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 4000, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 500)
!31 = !DILocation(line: 14, column: 10, scope: !14)
!32 = !DILocalVariable(name: "len", scope: !14, file: !1, line: 15, type: !17)
!33 = !DILocation(line: 15, column: 9, scope: !14)
!34 = !DILocation(line: 17, column: 24, scope: !14)
!35 = !DILocation(line: 17, column: 5, scope: !14)
!36 = !DILocation(line: 18, column: 17, scope: !14)
!37 = !DILocation(line: 18, column: 29, scope: !14)
!38 = !DILocation(line: 18, column: 5, scope: !14)
!39 = !DILocation(line: 19, column: 24, scope: !14)
!40 = !DILocation(line: 19, column: 17, scope: !14)
!41 = !DILocation(line: 19, column: 34, scope: !14)
!42 = !DILocation(line: 19, column: 5, scope: !14)
!43 = !DILocation(line: 20, column: 24, scope: !14)
!44 = !DILocation(line: 20, column: 17, scope: !14)
!45 = !DILocation(line: 20, column: 34, scope: !14)
!46 = !DILocation(line: 20, column: 5, scope: !14)
!47 = !DILocation(line: 21, column: 5, scope: !14)
!48 = !DILocation(line: 21, column: 36, scope: !14)
!49 = !DILocation(line: 23, column: 18, scope: !14)
!50 = !DILocation(line: 23, column: 11, scope: !14)
!51 = !DILocation(line: 23, column: 9, scope: !14)
!52 = !DILocation(line: 24, column: 9, scope: !14)
!53 = !DILocation(line: 25, column: 5, scope: !14)
!54 = !DILocation(line: 25, column: 27, scope: !14)
!55 = !DILocation(line: 26, column: 9, scope: !14)
!56 = !DILocation(line: 26, column: 5, scope: !14)
!57 = !DILocation(line: 26, column: 14, scope: !14)
!58 = !DILocation(line: 27, column: 18, scope: !59)
!59 = distinct !DILexicalBlock(scope: !14, file: !1, line: 27, column: 9)
!60 = !DILocation(line: 27, column: 65, scope: !59)
!61 = !DILocation(line: 27, column: 52, scope: !59)
!62 = !DILocation(line: 27, column: 9, scope: !59)
!63 = !DILocation(line: 27, column: 71, scope: !59)
!64 = !DILocation(line: 27, column: 9, scope: !14)
!65 = !DILocation(line: 28, column: 9, scope: !59)
!66 = !DILocation(line: 28, column: 21, scope: !59)
!67 = !DILocation(line: 30, column: 5, scope: !14)
!68 = !DILocation(line: 31, column: 12, scope: !14)
!69 = !DILocation(line: 31, column: 18, scope: !14)
!70 = !DILocation(line: 31, column: 16, scope: !14)
!71 = !DILocation(line: 31, column: 5, scope: !14)
!72 = !DILocation(line: 33, column: 24, scope: !73)
!73 = distinct !DILexicalBlock(scope: !14, file: !1, line: 33, column: 9)
!74 = !DILocation(line: 33, column: 10, scope: !73)
!75 = !DILocation(line: 33, column: 29, scope: !73)
!76 = !DILocation(line: 33, column: 33, scope: !73)
!77 = !DILocation(line: 33, column: 9, scope: !14)
!78 = !DILocation(line: 34, column: 17, scope: !79)
!79 = distinct !DILexicalBlock(scope: !73, file: !1, line: 33, column: 49)
!80 = !DILocation(line: 34, column: 50, scope: !79)
!81 = !DILocation(line: 34, column: 9, scope: !79)
!82 = !DILocation(line: 35, column: 9, scope: !79)
!83 = !DILocalVariable(name: "f", scope: !14, file: !1, line: 38, type: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !86, line: 7, baseType: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !88, line: 49, size: 1728, elements: !89)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "7a6d4a00a37ee6b9a40cd04bd01f5d00")
!89 = !{!90, !91, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !106, !108, !109, !110, !114, !116, !118, !122, !125, !127, !130, !133, !134, !135, !139, !140}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !87, file: !88, line: 51, baseType: !17, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !87, file: !88, line: 54, baseType: !92, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !87, file: !88, line: 55, baseType: !92, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !87, file: !88, line: 56, baseType: !92, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !87, file: !88, line: 57, baseType: !92, size: 64, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !87, file: !88, line: 58, baseType: !92, size: 64, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !87, file: !88, line: 59, baseType: !92, size: 64, offset: 384)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !87, file: !88, line: 60, baseType: !92, size: 64, offset: 448)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !87, file: !88, line: 61, baseType: !92, size: 64, offset: 512)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !87, file: !88, line: 64, baseType: !92, size: 64, offset: 576)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !87, file: !88, line: 65, baseType: !92, size: 64, offset: 640)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !87, file: !88, line: 66, baseType: !92, size: 64, offset: 704)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !87, file: !88, line: 68, baseType: !104, size: 64, offset: 768)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !88, line: 36, flags: DIFlagFwdDecl)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !87, file: !88, line: 70, baseType: !107, size: 64, offset: 832)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !87, file: !88, line: 72, baseType: !17, size: 32, offset: 896)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !87, file: !88, line: 73, baseType: !17, size: 32, offset: 928)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !87, file: !88, line: 74, baseType: !111, size: 64, offset: 960)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !112, line: 152, baseType: !113)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!113 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !87, file: !88, line: 77, baseType: !115, size: 16, offset: 1024)
!115 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !87, file: !88, line: 78, baseType: !117, size: 8, offset: 1040)
!117 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !87, file: !88, line: 79, baseType: !119, size: 8, offset: 1048)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 1)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !87, file: !88, line: 81, baseType: !123, size: 64, offset: 1088)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !88, line: 43, baseType: null)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !87, file: !88, line: 89, baseType: !126, size: 64, offset: 1152)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !112, line: 153, baseType: !113)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !87, file: !88, line: 91, baseType: !128, size: 64, offset: 1216)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !88, line: 37, flags: DIFlagFwdDecl)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !87, file: !88, line: 92, baseType: !131, size: 64, offset: 1280)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !88, line: 38, flags: DIFlagFwdDecl)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !87, file: !88, line: 93, baseType: !107, size: 64, offset: 1344)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !87, file: !88, line: 94, baseType: !3, size: 64, offset: 1408)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !87, file: !88, line: 95, baseType: !136, size: 64, offset: 1472)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !137, line: 46, baseType: !138)
!137 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!138 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !87, file: !88, line: 96, baseType: !17, size: 32, offset: 1536)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !87, file: !88, line: 98, baseType: !141, size: 160, offset: 1568)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 20)
!144 = !DILocation(line: 38, column: 11, scope: !14)
!145 = !DILocation(line: 38, column: 21, scope: !14)
!146 = !DILocation(line: 38, column: 15, scope: !14)
!147 = !DILocation(line: 39, column: 9, scope: !148)
!148 = distinct !DILexicalBlock(scope: !14, file: !1, line: 39, column: 9)
!149 = !DILocation(line: 39, column: 11, scope: !148)
!150 = !DILocation(line: 39, column: 9, scope: !14)
!151 = !DILocation(line: 40, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 39, column: 20)
!153 = !DILocation(line: 40, column: 48, scope: !152)
!154 = !DILocation(line: 40, column: 9, scope: !152)
!155 = !DILocation(line: 41, column: 9, scope: !152)
!156 = !DILocation(line: 43, column: 12, scope: !14)
!157 = !DILocation(line: 43, column: 5, scope: !14)
!158 = !DILocation(line: 45, column: 5, scope: !14)
!159 = !DILocation(line: 46, column: 1, scope: !14)
!160 = distinct !DISubprogram(name: "memcpy", scope: !161, file: !161, line: 12, type: !162, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !18)
!161 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!162 = !DISubroutineType(types: !163)
!163 = !{!3, !3, !164, !136}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!166 = !DILocalVariable(name: "destaddr", arg: 1, scope: !160, file: !161, line: 12, type: !3)
!167 = !DILocation(line: 12, column: 20, scope: !160)
!168 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !160, file: !161, line: 12, type: !164)
!169 = !DILocation(line: 12, column: 42, scope: !160)
!170 = !DILocalVariable(name: "len", arg: 3, scope: !160, file: !161, line: 12, type: !136)
!171 = !DILocation(line: 12, column: 58, scope: !160)
!172 = !DILocalVariable(name: "dest", scope: !160, file: !161, line: 13, type: !92)
!173 = !DILocation(line: 13, column: 9, scope: !160)
!174 = !DILocation(line: 13, column: 16, scope: !160)
!175 = !DILocalVariable(name: "src", scope: !160, file: !161, line: 14, type: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!178 = !DILocation(line: 14, column: 15, scope: !160)
!179 = !DILocation(line: 14, column: 21, scope: !160)
!180 = !DILocation(line: 16, column: 3, scope: !160)
!181 = !DILocation(line: 16, column: 13, scope: !160)
!182 = !DILocation(line: 16, column: 16, scope: !160)
!183 = !DILocation(line: 17, column: 19, scope: !160)
!184 = !DILocation(line: 17, column: 15, scope: !160)
!185 = !DILocation(line: 17, column: 10, scope: !160)
!186 = !DILocation(line: 17, column: 13, scope: !160)
!187 = distinct !{!187, !180, !183, !188}
!188 = !{!"llvm.loop.mustprogress"}
!189 = !DILocation(line: 18, column: 10, scope: !160)
!190 = !DILocation(line: 18, column: 3, scope: !160)
