; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/128_xmlcatalog.c_81_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/128_xmlcatalog.c_81_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"prompt_choice\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"stdin_buffer\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Enter: \00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"(strlen(stdin_buffer) < 500) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_55980_vul/128_xmlcatalog.c_81_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlReadline(i8* noundef %0) #0 !dbg !16 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [501 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata [501 x i8]* %4, metadata !24, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8** %5, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %6, metadata !31, metadata !DIExpression()), !dbg !33
  %7 = load i8*, i8** %3, align 8, !dbg !34
  %8 = icmp ne i8* %7, null, !dbg !36
  br i1 %8, label %9, label %13, !dbg !37

9:                                                ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !38
  %11 = load i8*, i8** %3, align 8, !dbg !39
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef %11), !dbg !40
  br label %13, !dbg !40

13:                                               ; preds = %9, %1
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !41
  %15 = call i32 @fflush(%struct._IO_FILE* noundef %14), !dbg !42
  %16 = getelementptr inbounds [501 x i8], [501 x i8]* %4, i64 0, i64 0, !dbg !43
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !45
  %18 = call i8* @fgets(i8* noundef %16, i32 noundef 500, %struct._IO_FILE* noundef %17), !dbg !46
  %19 = icmp ne i8* %18, null, !dbg !46
  br i1 %19, label %21, label %20, !dbg !47

20:                                               ; preds = %13
  store i8* null, i8** %2, align 8, !dbg !48
  br label %41, !dbg !48

21:                                               ; preds = %13
  %22 = getelementptr inbounds [501 x i8], [501 x i8]* %4, i64 0, i64 500, !dbg !49
  store i8 0, i8* %22, align 4, !dbg !50
  %23 = getelementptr inbounds [501 x i8], [501 x i8]* %4, i64 0, i64 0, !dbg !51
  %24 = call i64 @strlen(i8* noundef %23) #8, !dbg !52
  %25 = trunc i64 %24 to i32, !dbg !52
  store i32 %25, i32* %6, align 4, !dbg !53
  %26 = load i32, i32* %6, align 4, !dbg !54
  %27 = add nsw i32 %26, 1, !dbg !55
  %28 = sext i32 %27 to i64, !dbg !54
  %29 = call noalias i8* @malloc(i64 noundef %28) #9, !dbg !56
  store i8* %29, i8** %5, align 8, !dbg !57
  %30 = load i8*, i8** %5, align 8, !dbg !58
  %31 = icmp ne i8* %30, null, !dbg !60
  br i1 %31, label %32, label %39, !dbg !61

32:                                               ; preds = %21
  %33 = load i8*, i8** %5, align 8, !dbg !62
  %34 = getelementptr inbounds [501 x i8], [501 x i8]* %4, i64 0, i64 0, !dbg !64
  %35 = load i32, i32* %6, align 4, !dbg !65
  %36 = add nsw i32 %35, 1, !dbg !66
  %37 = sext i32 %36 to i64, !dbg !65
  %38 = call i8* @memcpy(i8* %33, i8* %34, i64 %37), !dbg !64
  br label %39, !dbg !67

39:                                               ; preds = %32, %21
  %40 = load i8*, i8** %5, align 8, !dbg !68
  store i8* %40, i8** %2, align 8, !dbg !69
  br label %41, !dbg !69

41:                                               ; preds = %39, %20
  %42 = load i8*, i8** %2, align 8, !dbg !70
  ret i8* %42, !dbg !70
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare i32 @fflush(%struct._IO_FILE* noundef) #2

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !71 {
  %1 = alloca i32, align 4
  %2 = alloca [501 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [501 x i8]* %2, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %3, metadata !76, metadata !DIExpression()), !dbg !77
  %7 = bitcast i32* %3 to i8*, !dbg !78
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)), !dbg !79
  %8 = getelementptr inbounds [501 x i8], [501 x i8]* %2, i64 0, i64 0, !dbg !80
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 501, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)), !dbg !81
  %9 = load i32, i32* %3, align 4, !dbg !82
  %10 = icmp eq i32 %9, 0, !dbg !83
  br i1 %10, label %14, label %11, !dbg !84

11:                                               ; preds = %0
  %12 = load i32, i32* %3, align 4, !dbg !85
  %13 = icmp eq i32 %12, 1, !dbg !86
  br label %14, !dbg !84

14:                                               ; preds = %11, %0
  %15 = phi i1 [ true, %0 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32, !dbg !84
  %17 = sext i32 %16 to i64, !dbg !82
  call void @klee_assume(i64 noundef %17), !dbg !87
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !88, metadata !DIExpression()), !dbg !148
  %18 = getelementptr inbounds [501 x i8], [501 x i8]* %2, i64 0, i64 0, !dbg !149
  %19 = call noalias %struct._IO_FILE* @fmemopen(i8* noundef %18, i64 noundef 501, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !150
  store %struct._IO_FILE* %19, %struct._IO_FILE** %4, align 8, !dbg !148
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !151
  %21 = icmp ne %struct._IO_FILE* %20, null, !dbg !151
  br i1 %21, label %23, label %22, !dbg !153

22:                                               ; preds = %14
  store i32 1, i32* %1, align 4, !dbg !154
  br label %48, !dbg !154

23:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !156, metadata !DIExpression()), !dbg !157
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !158
  store %struct._IO_FILE* %24, %struct._IO_FILE** %5, align 8, !dbg !157
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !159
  store %struct._IO_FILE* %25, %struct._IO_FILE** @stdin, align 8, !dbg !160
  call void @llvm.dbg.declare(metadata i8** %6, metadata !161, metadata !DIExpression()), !dbg !162
  %26 = load i32, i32* %3, align 4, !dbg !163
  %27 = icmp ne i32 %26, 0, !dbg !163
  %28 = zext i1 %27 to i64, !dbg !163
  %29 = select i1 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* null, !dbg !163
  %30 = call i8* @xmlReadline(i8* noundef %29), !dbg !164
  store i8* %30, i8** %6, align 8, !dbg !162
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !165
  store %struct._IO_FILE* %31, %struct._IO_FILE** @stdin, align 8, !dbg !166
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !167
  %33 = call i32 @fclose(%struct._IO_FILE* noundef %32), !dbg !168
  %34 = load i8*, i8** %6, align 8, !dbg !169
  %35 = icmp ne i8* %34, null, !dbg !171
  br i1 %35, label %36, label %47, !dbg !172

36:                                               ; preds = %23
  %37 = getelementptr inbounds [501 x i8], [501 x i8]* %2, i64 0, i64 0, !dbg !173
  %38 = call i64 @strlen(i8* noundef %37) #8, !dbg !173
  %39 = icmp ult i64 %38, 500, !dbg !173
  br i1 %39, label %40, label %42, !dbg !173

40:                                               ; preds = %36
  br i1 true, label %41, label %42, !dbg !173

41:                                               ; preds = %40
  br label %44, !dbg !173

42:                                               ; preds = %40, %36
  %43 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.7, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !173
  br label %44, !dbg !173

44:                                               ; preds = %42, %41
  %45 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.7, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !175
  %46 = load i8*, i8** %6, align 8, !dbg !176
  call void @free(i8* noundef %46) #9, !dbg !177
  br label %47, !dbg !178

47:                                               ; preds = %44, %23
  store i32 0, i32* %1, align 4, !dbg !179
  br label %48, !dbg !179

48:                                               ; preds = %47, %22
  %49 = load i32, i32* %1, align 4, !dbg !180
  ret i32 %49, !dbg !180
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fmemopen(i8* noundef, i64 noundef, i8* noundef) #4

declare i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !181 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !187, metadata !DIExpression()), !dbg !188
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !189, metadata !DIExpression()), !dbg !190
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata i8** %7, metadata !193, metadata !DIExpression()), !dbg !194
  %9 = load i8*, i8** %4, align 8, !dbg !195
  store i8* %9, i8** %7, align 8, !dbg !194
  call void @llvm.dbg.declare(metadata i8** %8, metadata !196, metadata !DIExpression()), !dbg !197
  %10 = load i8*, i8** %5, align 8, !dbg !198
  store i8* %10, i8** %8, align 8, !dbg !197
  br label %11, !dbg !199

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !200
  %13 = add i64 %12, -1, !dbg !200
  store i64 %13, i64* %6, align 8, !dbg !200
  %14 = icmp ugt i64 %12, 0, !dbg !201
  br i1 %14, label %15, label %21, !dbg !199

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !202
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !202
  store i8* %17, i8** %8, align 8, !dbg !202
  %18 = load i8, i8* %16, align 1, !dbg !203
  %19 = load i8*, i8** %7, align 8, !dbg !204
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !204
  store i8* %20, i8** %7, align 8, !dbg !204
  store i8 %18, i8* %19, align 1, !dbg !205
  br label %11, !dbg !199, !llvm.loop !206

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !208
  ret i8* %22, !dbg !209
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/128_xmlcatalog.c_81_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "aee5da182d5b88c5f30b5882baa540de")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "xmlReadline", scope: !1, file: !1, line: 10, type: !17, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!17 = !DISubroutineType(types: !18)
!18 = !{!4, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!21 = !{}
!22 = !DILocalVariable(name: "prompt", arg: 1, scope: !16, file: !1, line: 10, type: !19)
!23 = !DILocation(line: 10, column: 31, scope: !16)
!24 = !DILocalVariable(name: "line_read", scope: !16, file: !1, line: 15, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 4008, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 501)
!28 = !DILocation(line: 15, column: 10, scope: !16)
!29 = !DILocalVariable(name: "ret", scope: !16, file: !1, line: 16, type: !4)
!30 = !DILocation(line: 16, column: 11, scope: !16)
!31 = !DILocalVariable(name: "len", scope: !16, file: !1, line: 17, type: !32)
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DILocation(line: 17, column: 9, scope: !16)
!34 = !DILocation(line: 19, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !16, file: !1, line: 19, column: 9)
!36 = !DILocation(line: 19, column: 16, scope: !35)
!37 = !DILocation(line: 19, column: 9, scope: !16)
!38 = !DILocation(line: 20, column: 17, scope: !35)
!39 = !DILocation(line: 20, column: 31, scope: !35)
!40 = !DILocation(line: 20, column: 9, scope: !35)
!41 = !DILocation(line: 21, column: 12, scope: !16)
!42 = !DILocation(line: 21, column: 5, scope: !16)
!43 = !DILocation(line: 23, column: 16, scope: !44)
!44 = distinct !DILexicalBlock(scope: !16, file: !1, line: 23, column: 9)
!45 = !DILocation(line: 23, column: 32, scope: !44)
!46 = !DILocation(line: 23, column: 10, scope: !44)
!47 = !DILocation(line: 23, column: 9, scope: !16)
!48 = !DILocation(line: 24, column: 9, scope: !44)
!49 = !DILocation(line: 26, column: 5, scope: !16)
!50 = !DILocation(line: 26, column: 20, scope: !16)
!51 = !DILocation(line: 27, column: 18, scope: !16)
!52 = !DILocation(line: 27, column: 11, scope: !16)
!53 = !DILocation(line: 27, column: 9, scope: !16)
!54 = !DILocation(line: 29, column: 27, scope: !16)
!55 = !DILocation(line: 29, column: 31, scope: !16)
!56 = !DILocation(line: 29, column: 20, scope: !16)
!57 = !DILocation(line: 29, column: 9, scope: !16)
!58 = !DILocation(line: 30, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !16, file: !1, line: 30, column: 9)
!60 = !DILocation(line: 30, column: 13, scope: !59)
!61 = !DILocation(line: 30, column: 9, scope: !16)
!62 = !DILocation(line: 31, column: 16, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 30, column: 22)
!64 = !DILocation(line: 31, column: 9, scope: !63)
!65 = !DILocation(line: 31, column: 32, scope: !63)
!66 = !DILocation(line: 31, column: 36, scope: !63)
!67 = !DILocation(line: 32, column: 5, scope: !63)
!68 = !DILocation(line: 33, column: 12, scope: !16)
!69 = !DILocation(line: 33, column: 5, scope: !16)
!70 = !DILocation(line: 35, column: 1, scope: !16)
!71 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 37, type: !72, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!72 = !DISubroutineType(types: !73)
!73 = !{!32}
!74 = !DILocalVariable(name: "stdin_buffer", scope: !71, file: !1, line: 38, type: !25)
!75 = !DILocation(line: 38, column: 10, scope: !71)
!76 = !DILocalVariable(name: "prompt_choice", scope: !71, file: !1, line: 39, type: !32)
!77 = !DILocation(line: 39, column: 9, scope: !71)
!78 = !DILocation(line: 41, column: 24, scope: !71)
!79 = !DILocation(line: 41, column: 5, scope: !71)
!80 = !DILocation(line: 42, column: 24, scope: !71)
!81 = !DILocation(line: 42, column: 5, scope: !71)
!82 = !DILocation(line: 44, column: 17, scope: !71)
!83 = !DILocation(line: 44, column: 31, scope: !71)
!84 = !DILocation(line: 44, column: 36, scope: !71)
!85 = !DILocation(line: 44, column: 39, scope: !71)
!86 = !DILocation(line: 44, column: 53, scope: !71)
!87 = !DILocation(line: 44, column: 5, scope: !71)
!88 = !DILocalVariable(name: "fake_stdin", scope: !71, file: !1, line: 46, type: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !91, line: 7, baseType: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !93, line: 49, size: 1728, elements: !94)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "7a6d4a00a37ee6b9a40cd04bd01f5d00")
!94 = !{!95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !110, !112, !113, !114, !118, !120, !122, !126, !129, !131, !134, !137, !138, !139, !143, !144}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !92, file: !93, line: 51, baseType: !32, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !92, file: !93, line: 54, baseType: !4, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !92, file: !93, line: 55, baseType: !4, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !92, file: !93, line: 56, baseType: !4, size: 64, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !92, file: !93, line: 57, baseType: !4, size: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !92, file: !93, line: 58, baseType: !4, size: 64, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !92, file: !93, line: 59, baseType: !4, size: 64, offset: 384)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !92, file: !93, line: 60, baseType: !4, size: 64, offset: 448)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !92, file: !93, line: 61, baseType: !4, size: 64, offset: 512)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !92, file: !93, line: 64, baseType: !4, size: 64, offset: 576)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !92, file: !93, line: 65, baseType: !4, size: 64, offset: 640)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !92, file: !93, line: 66, baseType: !4, size: 64, offset: 704)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !92, file: !93, line: 68, baseType: !108, size: 64, offset: 768)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !93, line: 36, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !92, file: !93, line: 70, baseType: !111, size: 64, offset: 832)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !92, file: !93, line: 72, baseType: !32, size: 32, offset: 896)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !92, file: !93, line: 73, baseType: !32, size: 32, offset: 928)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !92, file: !93, line: 74, baseType: !115, size: 64, offset: 960)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !116, line: 152, baseType: !117)
!116 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!117 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !92, file: !93, line: 77, baseType: !119, size: 16, offset: 1024)
!119 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !92, file: !93, line: 78, baseType: !121, size: 8, offset: 1040)
!121 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !92, file: !93, line: 79, baseType: !123, size: 8, offset: 1048)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 1)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !92, file: !93, line: 81, baseType: !127, size: 64, offset: 1088)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !93, line: 43, baseType: null)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !92, file: !93, line: 89, baseType: !130, size: 64, offset: 1152)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !116, line: 153, baseType: !117)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !92, file: !93, line: 91, baseType: !132, size: 64, offset: 1216)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !93, line: 37, flags: DIFlagFwdDecl)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !92, file: !93, line: 92, baseType: !135, size: 64, offset: 1280)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !93, line: 38, flags: DIFlagFwdDecl)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !92, file: !93, line: 93, baseType: !111, size: 64, offset: 1344)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !92, file: !93, line: 94, baseType: !3, size: 64, offset: 1408)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !92, file: !93, line: 95, baseType: !140, size: 64, offset: 1472)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !141, line: 46, baseType: !142)
!141 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!142 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !92, file: !93, line: 96, baseType: !32, size: 32, offset: 1536)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !92, file: !93, line: 98, baseType: !145, size: 160, offset: 1568)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 20)
!148 = !DILocation(line: 46, column: 11, scope: !71)
!149 = !DILocation(line: 46, column: 33, scope: !71)
!150 = !DILocation(line: 46, column: 24, scope: !71)
!151 = !DILocation(line: 47, column: 10, scope: !152)
!152 = distinct !DILexicalBlock(scope: !71, file: !1, line: 47, column: 9)
!153 = !DILocation(line: 47, column: 9, scope: !71)
!154 = !DILocation(line: 48, column: 9, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !1, line: 47, column: 22)
!156 = !DILocalVariable(name: "original_stdin", scope: !71, file: !1, line: 51, type: !89)
!157 = !DILocation(line: 51, column: 11, scope: !71)
!158 = !DILocation(line: 51, column: 28, scope: !71)
!159 = !DILocation(line: 52, column: 13, scope: !71)
!160 = !DILocation(line: 52, column: 11, scope: !71)
!161 = !DILocalVariable(name: "result", scope: !71, file: !1, line: 54, type: !4)
!162 = !DILocation(line: 54, column: 11, scope: !71)
!163 = !DILocation(line: 54, column: 32, scope: !71)
!164 = !DILocation(line: 54, column: 20, scope: !71)
!165 = !DILocation(line: 56, column: 13, scope: !71)
!166 = !DILocation(line: 56, column: 11, scope: !71)
!167 = !DILocation(line: 57, column: 12, scope: !71)
!168 = !DILocation(line: 57, column: 5, scope: !71)
!169 = !DILocation(line: 59, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !71, file: !1, line: 59, column: 9)
!171 = !DILocation(line: 59, column: 16, scope: !170)
!172 = !DILocation(line: 59, column: 9, scope: !71)
!173 = !DILocation(line: 60, column: 9, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !1, line: 59, column: 25)
!175 = !DILocation(line: 61, column: 9, scope: !174)
!176 = !DILocation(line: 62, column: 14, scope: !174)
!177 = !DILocation(line: 62, column: 9, scope: !174)
!178 = !DILocation(line: 63, column: 5, scope: !174)
!179 = !DILocation(line: 65, column: 5, scope: !71)
!180 = !DILocation(line: 66, column: 1, scope: !71)
!181 = distinct !DISubprogram(name: "memcpy", scope: !182, file: !182, line: 12, type: !183, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !21)
!182 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!183 = !DISubroutineType(types: !184)
!184 = !{!3, !3, !185, !140}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!187 = !DILocalVariable(name: "destaddr", arg: 1, scope: !181, file: !182, line: 12, type: !3)
!188 = !DILocation(line: 12, column: 20, scope: !181)
!189 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !181, file: !182, line: 12, type: !185)
!190 = !DILocation(line: 12, column: 42, scope: !181)
!191 = !DILocalVariable(name: "len", arg: 3, scope: !181, file: !182, line: 12, type: !140)
!192 = !DILocation(line: 12, column: 58, scope: !181)
!193 = !DILocalVariable(name: "dest", scope: !181, file: !182, line: 13, type: !4)
!194 = !DILocation(line: 13, column: 9, scope: !181)
!195 = !DILocation(line: 13, column: 16, scope: !181)
!196 = !DILocalVariable(name: "src", scope: !181, file: !182, line: 14, type: !19)
!197 = !DILocation(line: 14, column: 15, scope: !181)
!198 = !DILocation(line: 14, column: 21, scope: !181)
!199 = !DILocation(line: 16, column: 3, scope: !181)
!200 = !DILocation(line: 16, column: 13, scope: !181)
!201 = !DILocation(line: 16, column: 16, scope: !181)
!202 = !DILocation(line: 17, column: 19, scope: !181)
!203 = !DILocation(line: 17, column: 15, scope: !181)
!204 = !DILocation(line: 17, column: 10, scope: !181)
!205 = !DILocation(line: 17, column: 13, scope: !181)
!206 = distinct !{!206, !199, !202, !207}
!207 = !{!"llvm.loop.mustprogress"}
!208 = !DILocation(line: 18, column: 10, scope: !181)
!209 = !DILocation(line: 18, column: 3, scope: !181)
