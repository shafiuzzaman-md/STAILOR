; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/149_runtest.c_605_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/149_runtest.c_605_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".tmp\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/149_runtest.c_605_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [500 x i8], align 16
  %3 = alloca [500 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [100 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [500 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [500 x i8]* %3, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i8** %4, metadata !25, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i8** %5, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i8** %6, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata [100 x i8]* %7, metadata !32, metadata !DIExpression()), !dbg !36
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0, !dbg !37
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 100, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !38
  %9 = bitcast i8** %4 to i8*, !dbg !39
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !40
  %10 = bitcast i8** %5 to i8*, !dbg !41
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !42
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 99, !dbg !43
  store i8 0, i8* %11, align 1, !dbg !44
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0, !dbg !45
  %13 = call i8* @baseFilename(i8* noundef %12), !dbg !46
  store i8* %13, i8** %6, align 8, !dbg !47
  %14 = load i8*, i8** %4, align 8, !dbg !48
  %15 = icmp eq i8* %14, null, !dbg !50
  br i1 %15, label %16, label %17, !dbg !51

16:                                               ; preds = %0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8, !dbg !52
  br label %17, !dbg !53

17:                                               ; preds = %16, %0
  %18 = load i8*, i8** %5, align 8, !dbg !54
  %19 = icmp eq i8* %18, null, !dbg !56
  br i1 %19, label %20, label %21, !dbg !57

20:                                               ; preds = %17
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8, !dbg !58
  br label %21, !dbg !59

21:                                               ; preds = %20, %17
  %22 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.6, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !60
  %23 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 0, !dbg !61
  %24 = load i8*, i8** %4, align 8, !dbg !62
  %25 = call i8* @strncpy(i8* noundef %23, i8* noundef %24, i64 noundef 499) #5, !dbg !63
  %26 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 0, !dbg !64
  %27 = load i8*, i8** %5, align 8, !dbg !66
  %28 = load i8*, i8** %6, align 8, !dbg !67
  %29 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 0, !dbg !68
  %30 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %26, i64 noundef 499, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* noundef %27, i8* noundef %28, i8* noundef %29) #5, !dbg !69
  %31 = icmp sge i32 %30, 499, !dbg !70
  br i1 %31, label %32, label %34, !dbg !71

32:                                               ; preds = %21
  %33 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 499, !dbg !72
  store i8 0, i8* %33, align 1, !dbg !73
  br label %34, !dbg !72

34:                                               ; preds = %32, %21
  %35 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 0, !dbg !74
  %36 = call noalias i8* @strdup(i8* noundef %35) #5, !dbg !75
  call void @free(i8* noundef %36) #5, !dbg !76
  ret i32 0, !dbg !77
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i8* @baseFilename(i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: nounwind
declare noalias i8* @strdup(i8* noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/149_runtest.c_605_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "118527e0b24dba5c0cfeb4ec1d6411e5")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !13, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "suffixbuff", scope: !12, file: !1, line: 9, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 4000, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 500)
!22 = !DILocation(line: 9, column: 10, scope: !12)
!23 = !DILocalVariable(name: "res", scope: !12, file: !1, line: 10, type: !18)
!24 = !DILocation(line: 10, column: 10, scope: !12)
!25 = !DILocalVariable(name: "suffix", scope: !12, file: !1, line: 11, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!27 = !DILocation(line: 11, column: 11, scope: !12)
!28 = !DILocalVariable(name: "out", scope: !12, file: !1, line: 12, type: !26)
!29 = !DILocation(line: 12, column: 11, scope: !12)
!30 = !DILocalVariable(name: "base", scope: !12, file: !1, line: 13, type: !26)
!31 = !DILocation(line: 13, column: 11, scope: !12)
!32 = !DILocalVariable(name: "filename", scope: !12, file: !1, line: 14, type: !33)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 800, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 100)
!36 = !DILocation(line: 14, column: 10, scope: !12)
!37 = !DILocation(line: 16, column: 24, scope: !12)
!38 = !DILocation(line: 16, column: 5, scope: !12)
!39 = !DILocation(line: 17, column: 24, scope: !12)
!40 = !DILocation(line: 17, column: 5, scope: !12)
!41 = !DILocation(line: 18, column: 24, scope: !12)
!42 = !DILocation(line: 18, column: 5, scope: !12)
!43 = !DILocation(line: 20, column: 5, scope: !12)
!44 = !DILocation(line: 20, column: 34, scope: !12)
!45 = !DILocation(line: 22, column: 25, scope: !12)
!46 = !DILocation(line: 22, column: 12, scope: !12)
!47 = !DILocation(line: 22, column: 10, scope: !12)
!48 = !DILocation(line: 23, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !12, file: !1, line: 23, column: 9)
!50 = !DILocation(line: 23, column: 16, scope: !49)
!51 = !DILocation(line: 23, column: 9, scope: !12)
!52 = !DILocation(line: 24, column: 16, scope: !49)
!53 = !DILocation(line: 24, column: 9, scope: !49)
!54 = !DILocation(line: 25, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !12, file: !1, line: 25, column: 9)
!56 = !DILocation(line: 25, column: 13, scope: !55)
!57 = !DILocation(line: 25, column: 9, scope: !12)
!58 = !DILocation(line: 26, column: 13, scope: !55)
!59 = !DILocation(line: 26, column: 9, scope: !55)
!60 = !DILocation(line: 28, column: 5, scope: !12)
!61 = !DILocation(line: 29, column: 13, scope: !12)
!62 = !DILocation(line: 29, column: 24, scope: !12)
!63 = !DILocation(line: 29, column: 5, scope: !12)
!64 = !DILocation(line: 31, column: 18, scope: !65)
!65 = distinct !DILexicalBlock(scope: !12, file: !1, line: 31, column: 9)
!66 = !DILocation(line: 31, column: 38, scope: !65)
!67 = !DILocation(line: 31, column: 43, scope: !65)
!68 = !DILocation(line: 31, column: 49, scope: !65)
!69 = !DILocation(line: 31, column: 9, scope: !65)
!70 = !DILocation(line: 31, column: 61, scope: !65)
!71 = !DILocation(line: 31, column: 9, scope: !12)
!72 = !DILocation(line: 32, column: 9, scope: !65)
!73 = !DILocation(line: 32, column: 18, scope: !65)
!74 = !DILocation(line: 33, column: 17, scope: !12)
!75 = !DILocation(line: 33, column: 10, scope: !12)
!76 = !DILocation(line: 33, column: 5, scope: !12)
!77 = !DILocation(line: 35, column: 5, scope: !12)
