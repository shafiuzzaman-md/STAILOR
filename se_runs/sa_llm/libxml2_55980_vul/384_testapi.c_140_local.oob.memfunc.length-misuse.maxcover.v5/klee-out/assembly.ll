; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/384_testapi.c_140_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/384_testapi.c_140_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"(len <= sizeof(chartab)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/384_testapi.c_140_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@chartab = dso_local global [256 x i8] zeroinitializer, align 16, !dbg !0
@.str.5 = private unnamed_addr constant [11 x i8] c"  chartab\0A\00", align 1
@inttab = dso_local global [256 x i32] zeroinitializer, align 16, !dbg !8
@longtab = dso_local global [256 x i64] zeroinitializer, align 16, !dbg !14

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlInitParser() #0 !dbg !30 {
  ret void, !dbg !34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !35 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !38, metadata !DIExpression()), !dbg !40
  %3 = bitcast i32* %2 to i8*, !dbg !41
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !42
  %4 = load i32, i32* %2, align 4, !dbg !43
  %5 = icmp ugt i32 %4, 0, !dbg !44
  %6 = zext i1 %5 to i32, !dbg !44
  %7 = sext i32 %6 to i64, !dbg !43
  call void @klee_assume(i64 noundef %7), !dbg !45
  %8 = load i32, i32* %2, align 4, !dbg !46
  %9 = zext i32 %8 to i64, !dbg !46
  %10 = icmp ule i64 %9, 256, !dbg !46
  br i1 %10, label %11, label %13, !dbg !46

11:                                               ; preds = %0
  br i1 true, label %12, label %13, !dbg !46

12:                                               ; preds = %11
  br label %15, !dbg !46

13:                                               ; preds = %11, %0
  %14 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !46
  br label %15, !dbg !46

15:                                               ; preds = %13, %12
  %16 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !47
  %17 = load i32, i32* %2, align 4, !dbg !48
  %18 = zext i32 %17 to i64, !dbg !48
  %19 = call i8* @memset(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @chartab, i64 0, i64 0), i32 0, i64 %18), !dbg !49
  %20 = call i8* @strncpy(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @chartab, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 noundef 20), !dbg !50
  %21 = call i8* @memset(i8* bitcast ([256 x i32]* @inttab to i8*), i32 0, i64 1024), !dbg !51
  %22 = call i8* @memset(i8* bitcast ([256 x i64]* @longtab to i8*), i32 0, i64 2048), !dbg !52
  call void @xmlInitParser(), !dbg !53
  ret i32 0, !dbg !54
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !55 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !63, metadata !DIExpression()), !dbg !64
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !65, metadata !DIExpression()), !dbg !66
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i8** %7, metadata !69, metadata !DIExpression()), !dbg !70
  %8 = load i8*, i8** %4, align 8, !dbg !71
  store i8* %8, i8** %7, align 8, !dbg !70
  br label %9, !dbg !72

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !73
  %11 = add i64 %10, -1, !dbg !73
  store i64 %11, i64* %6, align 8, !dbg !73
  %12 = icmp ugt i64 %10, 0, !dbg !74
  br i1 %12, label %13, label %18, !dbg !72

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !75
  %15 = trunc i32 %14 to i8, !dbg !75
  %16 = load i8*, i8** %7, align 8, !dbg !76
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !76
  store i8* %17, i8** %7, align 8, !dbg !76
  store i8 %15, i8* %16, align 1, !dbg !77
  br label %9, !dbg !72, !llvm.loop !78

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !80
  ret i8* %19, !dbg !81
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29, !29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "chartab", scope: !2, file: !3, line: 28, type: !18, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/384_testapi.c_140_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0b6f0c61d6542bef47bfe3114dbc7d4e")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !{!0, !8, !14}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "inttab", scope: !2, file: !3, line: 29, type: !10, isLocal: false, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8192, elements: !12)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DISubrange(count: 256)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "longtab", scope: !2, file: !3, line: 30, type: !16, isLocal: false, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 16384, elements: !12)
!17 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !12)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 7, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"Ubuntu clang version 14.0.6"}
!30 = distinct !DISubprogram(name: "xmlInitParser", scope: !3, file: !3, line: 8, type: !31, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{null}
!33 = !{}
!34 = !DILocation(line: 10, column: 1, scope: !30)
!35 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 33, type: !36, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !33)
!36 = !DISubroutineType(types: !37)
!37 = !{!11}
!38 = !DILocalVariable(name: "len", scope: !35, file: !3, line: 48, type: !39)
!39 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!40 = !DILocation(line: 48, column: 18, scope: !35)
!41 = !DILocation(line: 49, column: 24, scope: !35)
!42 = !DILocation(line: 49, column: 5, scope: !35)
!43 = !DILocation(line: 52, column: 17, scope: !35)
!44 = !DILocation(line: 52, column: 21, scope: !35)
!45 = !DILocation(line: 52, column: 5, scope: !35)
!46 = !DILocation(line: 55, column: 5, scope: !35)
!47 = !DILocation(line: 58, column: 5, scope: !35)
!48 = !DILocation(line: 61, column: 24, scope: !35)
!49 = !DILocation(line: 61, column: 5, scope: !35)
!50 = !DILocation(line: 64, column: 5, scope: !35)
!51 = !DILocation(line: 65, column: 5, scope: !35)
!52 = !DILocation(line: 66, column: 5, scope: !35)
!53 = !DILocation(line: 68, column: 5, scope: !35)
!54 = !DILocation(line: 73, column: 5, scope: !35)
!55 = distinct !DISubprogram(name: "memset", scope: !56, file: !56, line: 12, type: !57, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !33)
!56 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !59, !11, !60}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 46, baseType: !62)
!61 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!62 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DILocalVariable(name: "dst", arg: 1, scope: !55, file: !56, line: 12, type: !59)
!64 = !DILocation(line: 12, column: 20, scope: !55)
!65 = !DILocalVariable(name: "s", arg: 2, scope: !55, file: !56, line: 12, type: !11)
!66 = !DILocation(line: 12, column: 29, scope: !55)
!67 = !DILocalVariable(name: "count", arg: 3, scope: !55, file: !56, line: 12, type: !60)
!68 = !DILocation(line: 12, column: 39, scope: !55)
!69 = !DILocalVariable(name: "a", scope: !55, file: !56, line: 13, type: !5)
!70 = !DILocation(line: 13, column: 9, scope: !55)
!71 = !DILocation(line: 13, column: 13, scope: !55)
!72 = !DILocation(line: 14, column: 3, scope: !55)
!73 = !DILocation(line: 14, column: 15, scope: !55)
!74 = !DILocation(line: 14, column: 18, scope: !55)
!75 = !DILocation(line: 15, column: 12, scope: !55)
!76 = !DILocation(line: 15, column: 7, scope: !55)
!77 = !DILocation(line: 15, column: 10, scope: !55)
!78 = distinct !{!78, !72, !75, !79}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !DILocation(line: 16, column: 10, scope: !55)
!81 = !DILocation(line: 16, column: 3, scope: !55)
