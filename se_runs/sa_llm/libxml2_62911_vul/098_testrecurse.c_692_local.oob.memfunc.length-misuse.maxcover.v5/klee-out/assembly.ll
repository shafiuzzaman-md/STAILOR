; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/098_testrecurse.c_692_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/098_testrecurse.c_692_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c".tmp\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"suffixbuff\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"(499 < dest_size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/098_testrecurse.c_692_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_function(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 !dbg !12 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !18, metadata !DIExpression()), !dbg !19
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !20, metadata !DIExpression()), !dbg !21
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !22, metadata !DIExpression()), !dbg !23
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !24, metadata !DIExpression()), !dbg !25
  %9 = load i8*, i8** %5, align 8, !dbg !26
  %10 = icmp eq i8* %9, null, !dbg !28
  br i1 %10, label %11, label %12, !dbg !29

11:                                               ; preds = %4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8, !dbg !30
  br label %12, !dbg !31

12:                                               ; preds = %11, %4
  %13 = load i8*, i8** %6, align 8, !dbg !32
  %14 = icmp eq i8* %13, null, !dbg !34
  br i1 %14, label %15, label %16, !dbg !35

15:                                               ; preds = %12
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8, !dbg !36
  br label %16, !dbg !37

16:                                               ; preds = %15, %12
  %17 = load i8*, i8** %7, align 8, !dbg !38
  %18 = load i8*, i8** %5, align 8, !dbg !39
  %19 = call i8* @strncpy(i8* noundef %17, i8* noundef %18, i64 noundef 499) #5, !dbg !40
  ret void, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !42 {
  %1 = alloca i32, align 4
  %2 = alloca [500 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = alloca [500 x i8], align 16
  %5 = alloca [100 x i8], align 16
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [500 x i8]* %2, metadata !46, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata [100 x i8]* %3, metadata !51, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata [500 x i8]* %4, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata [100 x i8]* %5, metadata !58, metadata !DIExpression()), !dbg !59
  %7 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 0, !dbg !60
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 500, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !61
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !62
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 100, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !63
  %9 = getelementptr inbounds [500 x i8], [500 x i8]* %4, i64 0, i64 0, !dbg !64
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 500, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)), !dbg !65
  %10 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0, !dbg !66
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !67
  %11 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 499, !dbg !68
  store i8 0, i8* %11, align 1, !dbg !69
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 99, !dbg !70
  store i8 0, i8* %12, align 1, !dbg !71
  %13 = getelementptr inbounds [500 x i8], [500 x i8]* %4, i64 0, i64 499, !dbg !72
  store i8 0, i8* %13, align 1, !dbg !73
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 99, !dbg !74
  store i8 0, i8* %14, align 1, !dbg !75
  call void @llvm.dbg.declare(metadata i64* %6, metadata !76, metadata !DIExpression()), !dbg !80
  store i64 500, i64* %6, align 8, !dbg !80
  %15 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 0, !dbg !81
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !82
  %17 = getelementptr inbounds [500 x i8], [500 x i8]* %4, i64 0, i64 0, !dbg !83
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0, !dbg !84
  call void @target_function(i8* noundef %15, i8* noundef %16, i8* noundef %17, i8* noundef %18), !dbg !85
  %19 = load i64, i64* %6, align 8, !dbg !86
  %20 = icmp ult i64 499, %19, !dbg !86
  br i1 %20, label %21, label %23, !dbg !86

21:                                               ; preds = %0
  br i1 true, label %22, label %23, !dbg !86

22:                                               ; preds = %21
  br label %25, !dbg !86

23:                                               ; preds = %21, %0
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.8, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !86
  br label %25, !dbg !86

25:                                               ; preds = %23, %22
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.8, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !87
  ret i32 0, !dbg !88
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/098_testrecurse.c_692_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "c06c87cb2ec46a3d4611c2e72abf0c6e")
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
!12 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 21, type: !13, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15, !15, !15, !15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{}
!18 = !DILocalVariable(name: "suffix", arg: 1, scope: !12, file: !1, line: 21, type: !15)
!19 = !DILocation(line: 21, column: 28, scope: !12)
!20 = !DILocalVariable(name: "out", arg: 2, scope: !12, file: !1, line: 21, type: !15)
!21 = !DILocation(line: 21, column: 42, scope: !12)
!22 = !DILocalVariable(name: "suffixbuff", arg: 3, scope: !12, file: !1, line: 21, type: !15)
!23 = !DILocation(line: 21, column: 53, scope: !12)
!24 = !DILocalVariable(name: "base", arg: 4, scope: !12, file: !1, line: 21, type: !15)
!25 = !DILocation(line: 21, column: 71, scope: !12)
!26 = !DILocation(line: 22, column: 9, scope: !27)
!27 = distinct !DILexicalBlock(scope: !12, file: !1, line: 22, column: 9)
!28 = !DILocation(line: 22, column: 16, scope: !27)
!29 = !DILocation(line: 22, column: 9, scope: !12)
!30 = !DILocation(line: 23, column: 16, scope: !27)
!31 = !DILocation(line: 23, column: 9, scope: !27)
!32 = !DILocation(line: 24, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !12, file: !1, line: 24, column: 9)
!34 = !DILocation(line: 24, column: 13, scope: !33)
!35 = !DILocation(line: 24, column: 9, scope: !12)
!36 = !DILocation(line: 25, column: 13, scope: !33)
!37 = !DILocation(line: 25, column: 9, scope: !33)
!38 = !DILocation(line: 28, column: 13, scope: !12)
!39 = !DILocation(line: 28, column: 25, scope: !12)
!40 = !DILocation(line: 28, column: 5, scope: !12)
!41 = !DILocation(line: 34, column: 1, scope: !12)
!42 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 36, type: !43, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!43 = !DISubroutineType(types: !44)
!44 = !{!45}
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DILocalVariable(name: "suffix", scope: !42, file: !1, line: 38, type: !47)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 4000, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 500)
!50 = !DILocation(line: 38, column: 10, scope: !42)
!51 = !DILocalVariable(name: "out", scope: !42, file: !1, line: 39, type: !52)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 800, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 100)
!55 = !DILocation(line: 39, column: 10, scope: !42)
!56 = !DILocalVariable(name: "suffixbuff", scope: !42, file: !1, line: 40, type: !47)
!57 = !DILocation(line: 40, column: 10, scope: !42)
!58 = !DILocalVariable(name: "base", scope: !42, file: !1, line: 41, type: !52)
!59 = !DILocation(line: 41, column: 10, scope: !42)
!60 = !DILocation(line: 44, column: 24, scope: !42)
!61 = !DILocation(line: 44, column: 5, scope: !42)
!62 = !DILocation(line: 45, column: 24, scope: !42)
!63 = !DILocation(line: 45, column: 5, scope: !42)
!64 = !DILocation(line: 46, column: 24, scope: !42)
!65 = !DILocation(line: 46, column: 5, scope: !42)
!66 = !DILocation(line: 47, column: 24, scope: !42)
!67 = !DILocation(line: 47, column: 5, scope: !42)
!68 = !DILocation(line: 50, column: 5, scope: !42)
!69 = !DILocation(line: 50, column: 30, scope: !42)
!70 = !DILocation(line: 51, column: 5, scope: !42)
!71 = !DILocation(line: 51, column: 24, scope: !42)
!72 = !DILocation(line: 52, column: 5, scope: !42)
!73 = !DILocation(line: 52, column: 38, scope: !42)
!74 = !DILocation(line: 53, column: 5, scope: !42)
!75 = !DILocation(line: 53, column: 26, scope: !42)
!76 = !DILocalVariable(name: "dest_size", scope: !42, file: !1, line: 70, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 46, baseType: !79)
!78 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!79 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!80 = !DILocation(line: 70, column: 12, scope: !42)
!81 = !DILocation(line: 73, column: 21, scope: !42)
!82 = !DILocation(line: 73, column: 29, scope: !42)
!83 = !DILocation(line: 73, column: 34, scope: !42)
!84 = !DILocation(line: 73, column: 46, scope: !42)
!85 = !DILocation(line: 73, column: 5, scope: !42)
!86 = !DILocation(line: 77, column: 5, scope: !42)
!87 = !DILocation(line: 80, column: 5, scope: !42)
!88 = !DILocation(line: 82, column: 5, scope: !42)
