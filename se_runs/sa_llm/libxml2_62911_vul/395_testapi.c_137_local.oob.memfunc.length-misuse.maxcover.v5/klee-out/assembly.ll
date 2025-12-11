; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/395_testapi.c_137_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/395_testapi.c_137_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/395_testapi.c_137_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.testapi_main = private unnamed_addr constant [23 x i8] c"int testapi_main(void)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"  chartab\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"symbolic_condition\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testapi_main() #0 !dbg !15 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca [256 x i32], align 16
  %3 = alloca [256 x i64], align 16
  call void @llvm.dbg.declare(metadata [256 x i8]* %1, metadata !20, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata [256 x i32]* %2, metadata !26, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata [256 x i64]* %3, metadata !29, metadata !DIExpression()), !dbg !32
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0, !dbg !33
  %5 = call i8* @memset(i8* %4, i32 0, i64 256), !dbg !33
  %6 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0), i32 noundef 26, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.testapi_main, i64 0, i64 0)), !dbg !34
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0, !dbg !35
  %8 = call i8* @strncpy(i8* noundef %7, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 noundef 20) #7, !dbg !36
  %9 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 0, !dbg !37
  %10 = bitcast i32* %9 to i8*, !dbg !37
  %11 = call i8* @memset(i8* %10, i32 0, i64 1024), !dbg !37
  %12 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0, !dbg !38
  %13 = bitcast i64* %12 to i8*, !dbg !38
  %14 = call i8* @memset(i8* %13, i32 0, i64 2048), !dbg !38
  call void @xmlInitParser(), !dbg !39
  call void @xmlInitializeCatalog(), !dbg !40
  ret i32 0, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #4

declare void @xmlInitParser() #5

declare void @xmlInitializeCatalog() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !42 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !43, metadata !DIExpression()), !dbg !44
  %3 = bitcast i32* %2 to i8*, !dbg !45
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)), !dbg !46
  %4 = load i32, i32* %2, align 4, !dbg !47
  %5 = icmp sgt i32 %4, 0, !dbg !48
  %6 = zext i1 %5 to i32, !dbg !48
  %7 = sext i32 %6 to i64, !dbg !47
  call void @klee_assume(i64 noundef %7), !dbg !49
  %8 = call i32 @testapi_main(), !dbg !50
  ret i32 0, !dbg !51
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !52 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !60, metadata !DIExpression()), !dbg !61
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !62, metadata !DIExpression()), !dbg !63
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i8** %7, metadata !66, metadata !DIExpression()), !dbg !67
  %8 = load i8*, i8** %4, align 8, !dbg !68
  store i8* %8, i8** %7, align 8, !dbg !67
  br label %9, !dbg !69

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !70
  %11 = add i64 %10, -1, !dbg !70
  store i64 %11, i64* %6, align 8, !dbg !70
  %12 = icmp ugt i64 %10, 0, !dbg !71
  br i1 %12, label %13, label %18, !dbg !69

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !72
  %15 = trunc i32 %14 to i8, !dbg !72
  %16 = load i8*, i8** %7, align 8, !dbg !73
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !73
  store i8* %17, i8** %7, align 8, !dbg !73
  store i8 %15, i8* %16, align 1, !dbg !74
  br label %9, !dbg !69, !llvm.loop !75

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !77
  ret i8* %19, !dbg !78
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/395_testapi.c_137_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "2ea41ec2141604bb3dd4d7ca6cec552e")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"Ubuntu clang version 14.0.6"}
!15 = distinct !DISubprogram(name: "testapi_main", scope: !1, file: !1, line: 14, type: !16, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{}
!20 = !DILocalVariable(name: "chartab", scope: !15, file: !1, line: 15, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !23)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !{!24}
!24 = !DISubrange(count: 256)
!25 = !DILocation(line: 15, column: 19, scope: !15)
!26 = !DILocalVariable(name: "inttab", scope: !15, file: !1, line: 16, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8192, elements: !23)
!28 = !DILocation(line: 16, column: 9, scope: !15)
!29 = !DILocalVariable(name: "longtab", scope: !15, file: !1, line: 17, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 16384, elements: !23)
!31 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!32 = !DILocation(line: 17, column: 10, scope: !15)
!33 = !DILocation(line: 20, column: 5, scope: !15)
!34 = !DILocation(line: 26, column: 5, scope: !15)
!35 = !DILocation(line: 29, column: 22, scope: !15)
!36 = !DILocation(line: 29, column: 5, scope: !15)
!37 = !DILocation(line: 30, column: 5, scope: !15)
!38 = !DILocation(line: 31, column: 5, scope: !15)
!39 = !DILocation(line: 33, column: 5, scope: !15)
!40 = !DILocation(line: 34, column: 5, scope: !15)
!41 = !DILocation(line: 36, column: 5, scope: !15)
!42 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 39, type: !16, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!43 = !DILocalVariable(name: "symbolic_condition", scope: !42, file: !1, line: 41, type: !18)
!44 = !DILocation(line: 41, column: 9, scope: !42)
!45 = !DILocation(line: 42, column: 24, scope: !42)
!46 = !DILocation(line: 42, column: 5, scope: !42)
!47 = !DILocation(line: 45, column: 17, scope: !42)
!48 = !DILocation(line: 45, column: 36, scope: !42)
!49 = !DILocation(line: 45, column: 5, scope: !42)
!50 = !DILocation(line: 48, column: 5, scope: !42)
!51 = !DILocation(line: 50, column: 5, scope: !42)
!52 = distinct !DISubprogram(name: "memset", scope: !53, file: !53, line: 12, type: !54, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !19)
!53 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !56, !18, !57}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !58, line: 46, baseType: !59)
!58 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DILocalVariable(name: "dst", arg: 1, scope: !52, file: !53, line: 12, type: !56)
!61 = !DILocation(line: 12, column: 20, scope: !52)
!62 = !DILocalVariable(name: "s", arg: 2, scope: !52, file: !53, line: 12, type: !18)
!63 = !DILocation(line: 12, column: 29, scope: !52)
!64 = !DILocalVariable(name: "count", arg: 3, scope: !52, file: !53, line: 12, type: !57)
!65 = !DILocation(line: 12, column: 39, scope: !52)
!66 = !DILocalVariable(name: "a", scope: !52, file: !53, line: 13, type: !3)
!67 = !DILocation(line: 13, column: 9, scope: !52)
!68 = !DILocation(line: 13, column: 13, scope: !52)
!69 = !DILocation(line: 14, column: 3, scope: !52)
!70 = !DILocation(line: 14, column: 15, scope: !52)
!71 = !DILocation(line: 14, column: 18, scope: !52)
!72 = !DILocation(line: 15, column: 12, scope: !52)
!73 = !DILocation(line: 15, column: 7, scope: !52)
!74 = !DILocation(line: 15, column: 10, scope: !52)
!75 = distinct !{!75, !69, !72, !76}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !DILocation(line: 16, column: 10, scope: !52)
!78 = !DILocation(line: 16, column: 3, scope: !52)
