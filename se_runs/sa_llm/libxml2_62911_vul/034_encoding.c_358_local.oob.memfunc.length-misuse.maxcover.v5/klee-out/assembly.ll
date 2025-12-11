; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/034_encoding.c_358_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/034_encoding.c_358_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"outlen\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"inlenb\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"inb_buf\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/034_encoding.c_358_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"(len <= 1024 && len >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@__PRETTY_FUNCTION__.isolat1ToUTF8 = private unnamed_addr constant [72 x i8] c"int isolat1ToUTF8(unsigned char *, int *, const unsigned char *, int *)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %3, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %5, metadata !27, metadata !DIExpression()), !dbg !28
  %7 = bitcast i32* %3 to i8*, !dbg !29
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !30
  %8 = bitcast i32* %5 to i8*, !dbg !31
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !32
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !33
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 1024, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !34
  %10 = load i32, i32* %5, align 4, !dbg !35
  %11 = icmp sge i32 %10, 0, !dbg !36
  br i1 %11, label %12, label %15, !dbg !37

12:                                               ; preds = %0
  %13 = load i32, i32* %5, align 4, !dbg !38
  %14 = icmp slt i32 %13, 1024, !dbg !39
  br label %15

15:                                               ; preds = %12, %0
  %16 = phi i1 [ false, %0 ], [ %14, %12 ], !dbg !40
  %17 = zext i1 %16 to i32, !dbg !37
  %18 = sext i32 %17 to i64, !dbg !35
  call void @klee_assume(i64 noundef %18), !dbg !41
  %19 = load i32, i32* %3, align 4, !dbg !42
  %20 = icmp sge i32 %19, 0, !dbg !43
  br i1 %20, label %21, label %24, !dbg !44

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4, !dbg !45
  %23 = icmp slt i32 %22, 1024, !dbg !46
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi i1 [ false, %15 ], [ %23, %21 ], !dbg !40
  %26 = zext i1 %25 to i32, !dbg !44
  %27 = sext i32 %26 to i64, !dbg !42
  call void @klee_assume(i64 noundef %27), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %6, metadata !48, metadata !DIExpression()), !dbg !49
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !50
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !51
  %30 = call i32 @isolat1ToUTF8(i8* noundef %28, i32* noundef %3, i8* noundef %29, i32* noundef %5), !dbg !52
  store i32 %30, i32* %6, align 4, !dbg !49
  %31 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !53
  ret i32 0, !dbg !54
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isolat1ToUTF8(i8* noundef %0, i32* noundef %1, i8* noundef %2, i32* noundef %3) #0 !dbg !55 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !62, metadata !DIExpression()), !dbg !63
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !64, metadata !DIExpression()), !dbg !65
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !66, metadata !DIExpression()), !dbg !67
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %9, metadata !70, metadata !DIExpression()), !dbg !71
  %10 = load i32*, i32** %8, align 8, !dbg !72
  %11 = load i32, i32* %10, align 4, !dbg !73
  store i32 %11, i32* %9, align 4, !dbg !71
  %12 = load i32, i32* %9, align 4, !dbg !74
  %13 = icmp sle i32 %12, 1024, !dbg !74
  br i1 %13, label %14, label %19, !dbg !74

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4, !dbg !74
  %16 = icmp sge i32 %15, 0, !dbg !74
  br i1 %16, label %17, label %19, !dbg !74

17:                                               ; preds = %14
  br i1 true, label %18, label %19, !dbg !74

18:                                               ; preds = %17
  br label %21, !dbg !74

19:                                               ; preds = %17, %14, %4
  %20 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @__PRETTY_FUNCTION__.isolat1ToUTF8, i64 0, i64 0)), !dbg !74
  br label %21, !dbg !74

21:                                               ; preds = %19, %18
  %22 = load i8*, i8** %5, align 8, !dbg !75
  %23 = load i8*, i8** %7, align 8, !dbg !76
  %24 = load i32, i32* %9, align 4, !dbg !77
  %25 = sext i32 %24 to i64, !dbg !77
  %26 = call i8* @memcpy(i8* %22, i8* %23, i64 %25), !dbg !78
  %27 = load i32, i32* %9, align 4, !dbg !79
  %28 = load i32*, i32** %6, align 8, !dbg !80
  store i32 %27, i32* %28, align 4, !dbg !81
  %29 = load i32, i32* %9, align 4, !dbg !82
  %30 = load i32*, i32** %8, align 8, !dbg !83
  store i32 %29, i32* %30, align 4, !dbg !84
  %31 = load i32*, i32** %6, align 8, !dbg !85
  %32 = load i32, i32* %31, align 4, !dbg !86
  ret i32 %32, !dbg !87
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !88 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !98, metadata !DIExpression()), !dbg !99
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !100, metadata !DIExpression()), !dbg !101
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !102, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata i8** %7, metadata !104, metadata !DIExpression()), !dbg !107
  %9 = load i8*, i8** %4, align 8, !dbg !108
  store i8* %9, i8** %7, align 8, !dbg !107
  call void @llvm.dbg.declare(metadata i8** %8, metadata !109, metadata !DIExpression()), !dbg !112
  %10 = load i8*, i8** %5, align 8, !dbg !113
  store i8* %10, i8** %8, align 8, !dbg !112
  br label %11, !dbg !114

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !115
  %13 = add i64 %12, -1, !dbg !115
  store i64 %13, i64* %6, align 8, !dbg !115
  %14 = icmp ugt i64 %12, 0, !dbg !116
  br i1 %14, label %15, label %21, !dbg !114

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !117
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !117
  store i8* %17, i8** %8, align 8, !dbg !117
  %18 = load i8, i8* %16, align 1, !dbg !118
  %19 = load i8*, i8** %7, align 8, !dbg !119
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !119
  store i8* %20, i8** %7, align 8, !dbg !119
  store i8 %18, i8* %19, align 1, !dbg !120
  br label %11, !dbg !114, !llvm.loop !121

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !123
  ret i8* %22, !dbg !124
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/034_encoding.c_358_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "6c705b2c86ebd28d507a810063ee4d5c")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !13, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "out_buf", scope: !12, file: !1, line: 15, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8192, elements: !20)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !{!21}
!21 = !DISubrange(count: 1024)
!22 = !DILocation(line: 15, column: 19, scope: !12)
!23 = !DILocalVariable(name: "outlen", scope: !12, file: !1, line: 16, type: !15)
!24 = !DILocation(line: 16, column: 9, scope: !12)
!25 = !DILocalVariable(name: "inb_buf", scope: !12, file: !1, line: 17, type: !18)
!26 = !DILocation(line: 17, column: 19, scope: !12)
!27 = !DILocalVariable(name: "inlenb", scope: !12, file: !1, line: 18, type: !15)
!28 = !DILocation(line: 18, column: 9, scope: !12)
!29 = !DILocation(line: 21, column: 24, scope: !12)
!30 = !DILocation(line: 21, column: 5, scope: !12)
!31 = !DILocation(line: 22, column: 24, scope: !12)
!32 = !DILocation(line: 22, column: 5, scope: !12)
!33 = !DILocation(line: 23, column: 24, scope: !12)
!34 = !DILocation(line: 23, column: 5, scope: !12)
!35 = !DILocation(line: 26, column: 17, scope: !12)
!36 = !DILocation(line: 26, column: 24, scope: !12)
!37 = !DILocation(line: 26, column: 29, scope: !12)
!38 = !DILocation(line: 26, column: 32, scope: !12)
!39 = !DILocation(line: 26, column: 39, scope: !12)
!40 = !DILocation(line: 0, scope: !12)
!41 = !DILocation(line: 26, column: 5, scope: !12)
!42 = !DILocation(line: 27, column: 17, scope: !12)
!43 = !DILocation(line: 27, column: 24, scope: !12)
!44 = !DILocation(line: 27, column: 29, scope: !12)
!45 = !DILocation(line: 27, column: 32, scope: !12)
!46 = !DILocation(line: 27, column: 39, scope: !12)
!47 = !DILocation(line: 27, column: 5, scope: !12)
!48 = !DILocalVariable(name: "result", scope: !12, file: !1, line: 30, type: !15)
!49 = !DILocation(line: 30, column: 9, scope: !12)
!50 = !DILocation(line: 30, column: 32, scope: !12)
!51 = !DILocation(line: 30, column: 50, scope: !12)
!52 = !DILocation(line: 30, column: 18, scope: !12)
!53 = !DILocation(line: 34, column: 5, scope: !12)
!54 = !DILocation(line: 36, column: 5, scope: !12)
!55 = distinct !DISubprogram(name: "isolat1ToUTF8", scope: !1, file: !1, line: 40, type: !56, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!56 = !DISubroutineType(types: !57)
!57 = !{!15, !58, !59, !60, !59}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!62 = !DILocalVariable(name: "out", arg: 1, scope: !55, file: !1, line: 40, type: !58)
!63 = !DILocation(line: 40, column: 34, scope: !55)
!64 = !DILocalVariable(name: "outlen", arg: 2, scope: !55, file: !1, line: 40, type: !59)
!65 = !DILocation(line: 40, column: 44, scope: !55)
!66 = !DILocalVariable(name: "inb", arg: 3, scope: !55, file: !1, line: 41, type: !60)
!67 = !DILocation(line: 41, column: 40, scope: !55)
!68 = !DILocalVariable(name: "inlenb", arg: 4, scope: !55, file: !1, line: 41, type: !59)
!69 = !DILocation(line: 41, column: 50, scope: !55)
!70 = !DILocalVariable(name: "len", scope: !55, file: !1, line: 42, type: !15)
!71 = !DILocation(line: 42, column: 9, scope: !55)
!72 = !DILocation(line: 42, column: 16, scope: !55)
!73 = !DILocation(line: 42, column: 15, scope: !55)
!74 = !DILocation(line: 45, column: 5, scope: !55)
!75 = !DILocation(line: 52, column: 12, scope: !55)
!76 = !DILocation(line: 52, column: 17, scope: !55)
!77 = !DILocation(line: 52, column: 22, scope: !55)
!78 = !DILocation(line: 52, column: 5, scope: !55)
!79 = !DILocation(line: 54, column: 15, scope: !55)
!80 = !DILocation(line: 54, column: 6, scope: !55)
!81 = !DILocation(line: 54, column: 13, scope: !55)
!82 = !DILocation(line: 55, column: 15, scope: !55)
!83 = !DILocation(line: 55, column: 6, scope: !55)
!84 = !DILocation(line: 55, column: 13, scope: !55)
!85 = !DILocation(line: 56, column: 13, scope: !55)
!86 = !DILocation(line: 56, column: 12, scope: !55)
!87 = !DILocation(line: 56, column: 5, scope: !55)
!88 = distinct !DISubprogram(name: "memcpy", scope: !89, file: !89, line: 12, type: !90, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!89 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!90 = !DISubroutineType(types: !91)
!91 = !{!92, !92, !93, !95}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !96, line: 46, baseType: !97)
!96 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!97 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!98 = !DILocalVariable(name: "destaddr", arg: 1, scope: !88, file: !89, line: 12, type: !92)
!99 = !DILocation(line: 12, column: 20, scope: !88)
!100 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !88, file: !89, line: 12, type: !93)
!101 = !DILocation(line: 12, column: 42, scope: !88)
!102 = !DILocalVariable(name: "len", arg: 3, scope: !88, file: !89, line: 12, type: !95)
!103 = !DILocation(line: 12, column: 58, scope: !88)
!104 = !DILocalVariable(name: "dest", scope: !88, file: !89, line: 13, type: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!107 = !DILocation(line: 13, column: 9, scope: !88)
!108 = !DILocation(line: 13, column: 16, scope: !88)
!109 = !DILocalVariable(name: "src", scope: !88, file: !89, line: 14, type: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!112 = !DILocation(line: 14, column: 15, scope: !88)
!113 = !DILocation(line: 14, column: 21, scope: !88)
!114 = !DILocation(line: 16, column: 3, scope: !88)
!115 = !DILocation(line: 16, column: 13, scope: !88)
!116 = !DILocation(line: 16, column: 16, scope: !88)
!117 = !DILocation(line: 17, column: 19, scope: !88)
!118 = !DILocation(line: 17, column: 15, scope: !88)
!119 = !DILocation(line: 17, column: 10, scope: !88)
!120 = !DILocation(line: 17, column: 13, scope: !88)
!121 = distinct !{!121, !114, !117, !122}
!122 = !{!"llvm.loop.mustprogress"}
!123 = !DILocation(line: 18, column: 10, scope: !88)
!124 = !DILocation(line: 18, column: 3, scope: !88)
