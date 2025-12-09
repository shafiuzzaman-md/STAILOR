; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/091_testlimits.c_278_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/091_testlimits.c_278_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"URI\00", align 1
@crazy_indx = external global i32, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"crazy_indx\00", align 1
@crazy = external global [0 x i8], align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"some content for crazy buffer\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"crazy:\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/091_testlimits.c_278_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@rlen = external global i32, align 4
@current = external global i8*, align 8
@instate = external global i32, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_timout() #0 !dbg !12 {
  ret void, !dbg !16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !17 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @xmlInitParser(), !dbg !21
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !22, metadata !DIExpression()), !dbg !27
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !28
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !29
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !30
  store i8 0, i8* %5, align 1, !dbg !31
  call void @klee_make_symbolic(i8* noundef bitcast (i32* @crazy_indx to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !32
  %6 = call i8* @strcpy(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @crazy, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !33
  call void @llvm.dbg.declare(metadata i8** %3, metadata !34, metadata !DIExpression()), !dbg !35
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !36
  %8 = call i8* @crazyOpen(i8* noundef %7), !dbg !37
  store i8* %8, i8** %3, align 8, !dbg !35
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !38
  %10 = call i32 @strncmp(i8* noundef %9, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 noundef 6) #7, !dbg !40
  %11 = icmp eq i32 %10, 0, !dbg !41
  br i1 %11, label %12, label %14, !dbg !42

12:                                               ; preds = %0
  %13 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !43
  br label %14, !dbg !45

14:                                               ; preds = %12, %0
  call void @xmlCleanupParser(), !dbg !46
  ret i32 0, !dbg !47
}

declare void @xmlInitParser() #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @crazyOpen(i8* noundef %0) #0 !dbg !48 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !53, metadata !DIExpression()), !dbg !54
  %4 = load i8*, i8** %3, align 8, !dbg !55
  %5 = icmp eq i8* %4, null, !dbg !57
  br i1 %5, label %10, label %6, !dbg !58

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !59
  %8 = call i32 @strncmp(i8* noundef %7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 noundef 6) #7, !dbg !60
  %9 = icmp ne i32 %8, 0, !dbg !60
  br i1 %9, label %10, label %11, !dbg !61

10:                                               ; preds = %6, %1
  store i8* null, i8** %2, align 8, !dbg !62
  br label %20, !dbg !62

11:                                               ; preds = %6
  %12 = load i32, i32* @crazy_indx, align 4, !dbg !63
  %13 = sext i32 %12 to i64, !dbg !63
  %14 = call i64 @strlen(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @crazy, i64 0, i64 0)) #7, !dbg !65
  %15 = icmp ugt i64 %13, %14, !dbg !66
  br i1 %15, label %16, label %17, !dbg !67

16:                                               ; preds = %11
  store i8* null, i8** %2, align 8, !dbg !68
  br label %20, !dbg !68

17:                                               ; preds = %11
  call void @reset_timout(), !dbg !69
  %18 = load i32, i32* @crazy_indx, align 4, !dbg !70
  store i32 %18, i32* @rlen, align 4, !dbg !71
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @crazy, i64 0, i64 0), i8** @current, align 8, !dbg !72
  store i32 0, i32* @instate, align 4, !dbg !73
  %19 = load i8*, i8** %3, align 8, !dbg !74
  store i8* %19, i8** %2, align 8, !dbg !75
  br label %20, !dbg !75

20:                                               ; preds = %17, %16, %10
  %21 = load i8*, i8** %2, align 8, !dbg !76
  ret i8* %21, !dbg !76
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

declare void @xmlCleanupParser() #1

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/091_testlimits.c_278_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "e4380bce54ea6f59c3862f55243f03cd")
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
!12 = distinct !DISubprogram(name: "reset_timout", scope: !1, file: !1, line: 14, type: !13, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DISubroutineType(types: !14)
!14 = !{null}
!15 = !{}
!16 = !DILocation(line: 16, column: 1, scope: !12)
!17 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 33, type: !18, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!18 = !DISubroutineType(types: !19)
!19 = !{!20}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DILocation(line: 35, column: 5, scope: !17)
!22 = !DILocalVariable(name: "URI", scope: !17, file: !1, line: 38, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2048, elements: !25)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !{!26}
!26 = !DISubrange(count: 256)
!27 = !DILocation(line: 38, column: 10, scope: !17)
!28 = !DILocation(line: 39, column: 24, scope: !17)
!29 = !DILocation(line: 39, column: 5, scope: !17)
!30 = !DILocation(line: 41, column: 5, scope: !17)
!31 = !DILocation(line: 41, column: 14, scope: !17)
!32 = !DILocation(line: 44, column: 5, scope: !17)
!33 = !DILocation(line: 47, column: 5, scope: !17)
!34 = !DILocalVariable(name: "result", scope: !17, file: !1, line: 50, type: !3)
!35 = !DILocation(line: 50, column: 11, scope: !17)
!36 = !DILocation(line: 50, column: 30, scope: !17)
!37 = !DILocation(line: 50, column: 20, scope: !17)
!38 = !DILocation(line: 56, column: 32, scope: !39)
!39 = distinct !DILexicalBlock(scope: !17, file: !1, line: 56, column: 9)
!40 = !DILocation(line: 56, column: 24, scope: !39)
!41 = !DILocation(line: 56, column: 50, scope: !39)
!42 = !DILocation(line: 56, column: 9, scope: !17)
!43 = !DILocation(line: 60, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !39, file: !1, line: 56, column: 56)
!45 = !DILocation(line: 61, column: 5, scope: !44)
!46 = !DILocation(line: 64, column: 5, scope: !17)
!47 = !DILocation(line: 65, column: 5, scope: !17)
!48 = distinct !DISubprogram(name: "crazyOpen", scope: !1, file: !1, line: 19, type: !49, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !15)
!49 = !DISubroutineType(types: !50)
!50 = !{!3, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!53 = !DILocalVariable(name: "URI", arg: 1, scope: !48, file: !1, line: 19, type: !51)
!54 = !DILocation(line: 19, column: 36, scope: !48)
!55 = !DILocation(line: 20, column: 10, scope: !56)
!56 = distinct !DILexicalBlock(scope: !48, file: !1, line: 20, column: 9)
!57 = !DILocation(line: 20, column: 14, scope: !56)
!58 = !DILocation(line: 20, column: 23, scope: !56)
!59 = !DILocation(line: 20, column: 35, scope: !56)
!60 = !DILocation(line: 20, column: 27, scope: !56)
!61 = !DILocation(line: 20, column: 9, scope: !48)
!62 = !DILocation(line: 21, column: 9, scope: !56)
!63 = !DILocation(line: 23, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !48, file: !1, line: 23, column: 9)
!65 = !DILocation(line: 23, column: 22, scope: !64)
!66 = !DILocation(line: 23, column: 20, scope: !64)
!67 = !DILocation(line: 23, column: 9, scope: !48)
!68 = !DILocation(line: 24, column: 9, scope: !64)
!69 = !DILocation(line: 25, column: 5, scope: !48)
!70 = !DILocation(line: 26, column: 12, scope: !48)
!71 = !DILocation(line: 26, column: 10, scope: !48)
!72 = !DILocation(line: 27, column: 13, scope: !48)
!73 = !DILocation(line: 28, column: 13, scope: !48)
!74 = !DILocation(line: 30, column: 19, scope: !48)
!75 = !DILocation(line: 30, column: 5, scope: !48)
!76 = !DILocation(line: 31, column: 1, scope: !48)
