; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/084_testrecurse.c_201_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/084_testrecurse.c_201_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"URI\00", align 1
@start = internal global i8* null, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"(strlen(URI) >= 4) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_55980_vul/084_testrecurse.c_201_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"huge:\00", align 1
@rlen = internal global i64 0, align 8, !dbg !7
@current = internal global i8* null, align 8, !dbg !12

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !24 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !29, metadata !DIExpression()), !dbg !33
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !34
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !35
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !36
  store i8 0, i8* %4, align 1, !dbg !37
  %5 = call noalias i8* @malloc(i64 noundef 256) #6, !dbg !38
  store i8* %5, i8** @start, align 8, !dbg !39
  %6 = load i8*, i8** @start, align 8, !dbg !40
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !41
  %7 = load i8*, i8** @start, align 8, !dbg !42
  %8 = getelementptr inbounds i8, i8* %7, i64 255, !dbg !42
  store i8 0, i8* %8, align 1, !dbg !43
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !44
  %10 = call i64 @strlen(i8* noundef %9) #7, !dbg !44
  %11 = icmp uge i64 %10, 4, !dbg !44
  br i1 %11, label %12, label %14, !dbg !44

12:                                               ; preds = %0
  br i1 true, label %13, label %14, !dbg !44

13:                                               ; preds = %12
  br label %16, !dbg !44

14:                                               ; preds = %12, %0
  %15 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !44
  br label %16, !dbg !44

16:                                               ; preds = %14, %13
  %17 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !45
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !46
  %19 = call i8* @hugeOpen(i8* noundef %18), !dbg !47
  %20 = load i8*, i8** @start, align 8, !dbg !48
  call void @free(i8* noundef %20) #6, !dbg !49
  ret i32 0, !dbg !50
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hugeOpen(i8* noundef %0) #0 !dbg !51 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !56, metadata !DIExpression()), !dbg !57
  %4 = load i8*, i8** %3, align 8, !dbg !58
  %5 = icmp eq i8* %4, null, !dbg !60
  br i1 %5, label %10, label %6, !dbg !61

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !62
  %8 = call i32 @strncmp(i8* noundef %7, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 noundef 4) #7, !dbg !63
  %9 = icmp ne i32 %8, 0, !dbg !63
  br i1 %9, label %10, label %11, !dbg !64

10:                                               ; preds = %6, %1
  store i8* null, i8** %2, align 8, !dbg !65
  br label %16, !dbg !65

11:                                               ; preds = %6
  %12 = load i8*, i8** @start, align 8, !dbg !66
  %13 = call i64 @strlen(i8* noundef %12) #7, !dbg !67
  store i64 %13, i64* @rlen, align 8, !dbg !68
  %14 = load i8*, i8** @start, align 8, !dbg !69
  store i8* %14, i8** @current, align 8, !dbg !70
  %15 = load i8*, i8** @current, align 8, !dbg !71
  store i8* %15, i8** %2, align 8, !dbg !72
  br label %16, !dbg !72

16:                                               ; preds = %11, %10
  %17 = load i8*, i8** %2, align 8, !dbg !73
  ret i8* %17, !dbg !73
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "start", scope: !2, file: !3, line: 10, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/084_testrecurse.c_201_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "1e32bf3a20a1569c818afa3dc83a52e7")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !12}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "rlen", scope: !2, file: !3, line: 11, type: !9, isLocal: true, isDefinition: true)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !10, line: 46, baseType: !11)
!10 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!11 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "current", scope: !2, file: !3, line: 12, type: !14, isLocal: true, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"Ubuntu clang version 14.0.6"}
!24 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 27, type: !25, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!25 = !DISubroutineType(types: !26)
!26 = !{!27}
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !{}
!29 = !DILocalVariable(name: "URI", scope: !24, file: !3, line: 29, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 2048, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 256)
!33 = !DILocation(line: 29, column: 10, scope: !24)
!34 = !DILocation(line: 30, column: 24, scope: !24)
!35 = !DILocation(line: 30, column: 5, scope: !24)
!36 = !DILocation(line: 33, column: 5, scope: !24)
!37 = !DILocation(line: 33, column: 14, scope: !24)
!38 = !DILocation(line: 36, column: 13, scope: !24)
!39 = !DILocation(line: 36, column: 11, scope: !24)
!40 = !DILocation(line: 37, column: 24, scope: !24)
!41 = !DILocation(line: 37, column: 5, scope: !24)
!42 = !DILocation(line: 38, column: 5, scope: !24)
!43 = !DILocation(line: 38, column: 16, scope: !24)
!44 = !DILocation(line: 43, column: 5, scope: !24)
!45 = !DILocation(line: 46, column: 5, scope: !24)
!46 = !DILocation(line: 49, column: 20, scope: !24)
!47 = !DILocation(line: 49, column: 11, scope: !24)
!48 = !DILocation(line: 52, column: 10, scope: !24)
!49 = !DILocation(line: 52, column: 5, scope: !24)
!50 = !DILocation(line: 54, column: 5, scope: !24)
!51 = distinct !DISubprogram(name: "hugeOpen", scope: !3, file: !3, line: 19, type: !52, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!52 = !DISubroutineType(types: !53)
!53 = !{!5, !54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!56 = !DILocalVariable(name: "URI", arg: 1, scope: !51, file: !3, line: 19, type: !54)
!57 = !DILocation(line: 19, column: 22, scope: !51)
!58 = !DILocation(line: 20, column: 10, scope: !59)
!59 = distinct !DILexicalBlock(scope: !51, file: !3, line: 20, column: 9)
!60 = !DILocation(line: 20, column: 14, scope: !59)
!61 = !DILocation(line: 20, column: 23, scope: !59)
!62 = !DILocation(line: 20, column: 35, scope: !59)
!63 = !DILocation(line: 20, column: 27, scope: !59)
!64 = !DILocation(line: 20, column: 9, scope: !51)
!65 = !DILocation(line: 21, column: 9, scope: !59)
!66 = !DILocation(line: 22, column: 19, scope: !51)
!67 = !DILocation(line: 22, column: 12, scope: !51)
!68 = !DILocation(line: 22, column: 10, scope: !51)
!69 = !DILocation(line: 23, column: 15, scope: !51)
!70 = !DILocation(line: 23, column: 13, scope: !51)
!71 = !DILocation(line: 24, column: 21, scope: !51)
!72 = !DILocation(line: 24, column: 5, scope: !51)
!73 = !DILocation(line: 25, column: 1, scope: !51)
