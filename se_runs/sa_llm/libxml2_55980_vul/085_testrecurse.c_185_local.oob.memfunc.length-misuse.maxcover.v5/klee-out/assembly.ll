; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/085_testrecurse.c_185_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/085_testrecurse.c_185_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"URI\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"huge:\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"(strlen(URI) >= 4) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_55980_vul/085_testrecurse.c_185_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !23
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 10, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !24
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 9, !dbg !25
  %6 = load i8, i8* %5, align 1, !dbg !25
  %7 = sext i8 %6 to i32, !dbg !25
  %8 = icmp eq i32 %7, 0, !dbg !26
  %9 = zext i1 %8 to i32, !dbg !26
  %10 = sext i32 %9 to i64, !dbg !25
  call void @klee_assume(i64 noundef %10), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %3, metadata !28, metadata !DIExpression()), !dbg !29
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !30
  %12 = call i32 @hugeMatch(i8* noundef %11), !dbg !31
  store i32 %12, i32* %3, align 4, !dbg !29
  %13 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !32
  %14 = call i32 @strncmp(i8* noundef %13, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 noundef 4) #5, !dbg !34
  %15 = icmp eq i32 %14, 0, !dbg !35
  br i1 %15, label %16, label %26, !dbg !36

16:                                               ; preds = %0
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !37
  %18 = call i64 @strlen(i8* noundef %17) #5, !dbg !37
  %19 = icmp uge i64 %18, 4, !dbg !37
  br i1 %19, label %20, label %22, !dbg !37

20:                                               ; preds = %16
  br i1 true, label %21, label %22, !dbg !37

21:                                               ; preds = %20
  br label %24, !dbg !37

22:                                               ; preds = %20, %16
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !37
  br label %24, !dbg !37

24:                                               ; preds = %22, %21
  %25 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !39
  br label %26, !dbg !40

26:                                               ; preds = %24, %0
  ret i32 0, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugeMatch(i8* noundef %0) #0 !dbg !42 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !47, metadata !DIExpression()), !dbg !48
  %4 = load i8*, i8** %3, align 8, !dbg !49
  %5 = icmp ne i8* %4, null, !dbg !51
  br i1 %5, label %6, label %11, !dbg !52

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !53
  %8 = call i32 @strncmp(i8* noundef %7, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 noundef 4) #5, !dbg !54
  %9 = icmp ne i32 %8, 0, !dbg !54
  br i1 %9, label %11, label %10, !dbg !55

10:                                               ; preds = %6
  store i32 1, i32* %2, align 4, !dbg !56
  br label %12, !dbg !56

11:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4, !dbg !57
  br label %12, !dbg !57

12:                                               ; preds = %11, %10
  %13 = load i32, i32* %2, align 4, !dbg !58
  ret i32 %13, !dbg !58
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/085_testrecurse.c_185_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0a6f940d0ef6d4104cf96eb4ec6bdff2")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 14, type: !13, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "URI", scope: !12, file: !1, line: 15, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 80, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 10)
!22 = !DILocation(line: 15, column: 10, scope: !12)
!23 = !DILocation(line: 16, column: 24, scope: !12)
!24 = !DILocation(line: 16, column: 5, scope: !12)
!25 = !DILocation(line: 17, column: 17, scope: !12)
!26 = !DILocation(line: 17, column: 24, scope: !12)
!27 = !DILocation(line: 17, column: 5, scope: !12)
!28 = !DILocalVariable(name: "result", scope: !12, file: !1, line: 19, type: !15)
!29 = !DILocation(line: 19, column: 9, scope: !12)
!30 = !DILocation(line: 19, column: 28, scope: !12)
!31 = !DILocation(line: 19, column: 18, scope: !12)
!32 = !DILocation(line: 21, column: 32, scope: !33)
!33 = distinct !DILexicalBlock(scope: !12, file: !1, line: 21, column: 9)
!34 = !DILocation(line: 21, column: 24, scope: !33)
!35 = !DILocation(line: 21, column: 49, scope: !33)
!36 = !DILocation(line: 21, column: 9, scope: !12)
!37 = !DILocation(line: 22, column: 9, scope: !38)
!38 = distinct !DILexicalBlock(scope: !33, file: !1, line: 21, column: 55)
!39 = !DILocation(line: 23, column: 9, scope: !38)
!40 = !DILocation(line: 24, column: 5, scope: !38)
!41 = !DILocation(line: 26, column: 5, scope: !12)
!42 = distinct !DISubprogram(name: "hugeMatch", scope: !1, file: !1, line: 8, type: !43, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !16)
!43 = !DISubroutineType(types: !44)
!44 = !{!15, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!47 = !DILocalVariable(name: "URI", arg: 1, scope: !42, file: !1, line: 8, type: !45)
!48 = !DILocation(line: 8, column: 35, scope: !42)
!49 = !DILocation(line: 9, column: 10, scope: !50)
!50 = distinct !DILexicalBlock(scope: !42, file: !1, line: 9, column: 9)
!51 = !DILocation(line: 9, column: 14, scope: !50)
!52 = !DILocation(line: 9, column: 23, scope: !50)
!53 = !DILocation(line: 9, column: 36, scope: !50)
!54 = !DILocation(line: 9, column: 28, scope: !50)
!55 = !DILocation(line: 9, column: 9, scope: !42)
!56 = !DILocation(line: 10, column: 9, scope: !50)
!57 = !DILocation(line: 11, column: 5, scope: !42)
!58 = !DILocation(line: 12, column: 1, scope: !42)
