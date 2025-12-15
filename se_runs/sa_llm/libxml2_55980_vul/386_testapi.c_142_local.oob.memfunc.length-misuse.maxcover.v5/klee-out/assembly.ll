; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/386_testapi.c_142_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/386_testapi.c_142_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"symbolic_flag\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"  chartab\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/386_testapi.c_142_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlInitParser() #0 !dbg !15 {
  ret void, !dbg !19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRelaxNGInitTypes() #0 !dbg !20 {
  ret void, !dbg !21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putenv(i8* noundef nonnull %0) #0 !dbg !22 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !26, metadata !DIExpression()), !dbg !27
  %3 = load i8*, i8** %2, align 8, !dbg !28
  ret i32 0, !dbg !29
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !30 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x i8], align 16
  %3 = alloca [20 x i32], align 16
  %4 = alloca [20 x i64], align 16
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [20 x i8]* %2, metadata !33, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata [20 x i32]* %3, metadata !38, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata [20 x i64]* %4, metadata !41, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %5, metadata !45, metadata !DIExpression()), !dbg !46
  %6 = bitcast i32* %5 to i8*, !dbg !47
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !48
  %7 = load i32, i32* %5, align 4, !dbg !49
  %8 = icmp ne i32 %7, 0, !dbg !50
  %9 = zext i1 %8 to i32, !dbg !50
  %10 = sext i32 %9 to i64, !dbg !49
  call void @klee_assume(i64 noundef %10), !dbg !51
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0, !dbg !52
  %12 = call i8* @memset(i8* %11, i32 0, i64 20), !dbg !52
  %13 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0, !dbg !53
  %14 = call i8* @strncpy(i8* noundef %13, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 noundef 20) #7, !dbg !54
  %15 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !55
  %16 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0, !dbg !56
  %17 = bitcast i32* %16 to i8*, !dbg !56
  %18 = call i8* @memset(i8* %17, i32 0, i64 80), !dbg !56
  %19 = getelementptr inbounds [20 x i64], [20 x i64]* %4, i64 0, i64 0, !dbg !57
  %20 = bitcast i64* %19 to i8*, !dbg !57
  %21 = call i8* @memset(i8* %20, i32 0, i64 160), !dbg !57
  call void @xmlInitParser(), !dbg !58
  ret i32 0, !dbg !59
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !60 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !68, metadata !DIExpression()), !dbg !69
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !70, metadata !DIExpression()), !dbg !71
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i8** %7, metadata !74, metadata !DIExpression()), !dbg !75
  %8 = load i8*, i8** %4, align 8, !dbg !76
  store i8* %8, i8** %7, align 8, !dbg !75
  br label %9, !dbg !77

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !78
  %11 = add i64 %10, -1, !dbg !78
  store i64 %11, i64* %6, align 8, !dbg !78
  %12 = icmp ugt i64 %10, 0, !dbg !79
  br i1 %12, label %13, label %18, !dbg !77

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !80
  %15 = trunc i32 %14 to i8, !dbg !80
  %16 = load i8*, i8** %7, align 8, !dbg !81
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !81
  store i8* %17, i8** %7, align 8, !dbg !81
  store i8 %15, i8* %16, align 1, !dbg !82
  br label %9, !dbg !77, !llvm.loop !83

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !85
  ret i8* %19, !dbg !86
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/386_testapi.c_142_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b2ac43fdde5464fde6ac84632183b1fd")
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
!15 = distinct !DISubprogram(name: "xmlInitParser", scope: !1, file: !1, line: 10, type: !16, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{null}
!18 = !{}
!19 = !DILocation(line: 12, column: 1, scope: !15)
!20 = distinct !DISubprogram(name: "xmlRelaxNGInitTypes", scope: !1, file: !1, line: 15, type: !16, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!21 = !DILocation(line: 17, column: 1, scope: !20)
!22 = distinct !DISubprogram(name: "putenv", scope: !1, file: !1, line: 20, type: !23, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !3}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DILocalVariable(name: "string", arg: 1, scope: !22, file: !1, line: 20, type: !3)
!27 = !DILocation(line: 20, column: 18, scope: !22)
!28 = !DILocation(line: 21, column: 11, scope: !22)
!29 = !DILocation(line: 22, column: 5, scope: !22)
!30 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 26, type: !31, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!31 = !DISubroutineType(types: !32)
!32 = !{!25}
!33 = !DILocalVariable(name: "chartab", scope: !30, file: !1, line: 28, type: !34)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 20)
!37 = !DILocation(line: 28, column: 10, scope: !30)
!38 = !DILocalVariable(name: "inttab", scope: !30, file: !1, line: 29, type: !39)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 640, elements: !35)
!40 = !DILocation(line: 29, column: 9, scope: !30)
!41 = !DILocalVariable(name: "longtab", scope: !30, file: !1, line: 30, type: !42)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 1280, elements: !35)
!43 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!44 = !DILocation(line: 30, column: 10, scope: !30)
!45 = !DILocalVariable(name: "symbolic_flag", scope: !30, file: !1, line: 33, type: !25)
!46 = !DILocation(line: 33, column: 9, scope: !30)
!47 = !DILocation(line: 34, column: 24, scope: !30)
!48 = !DILocation(line: 34, column: 5, scope: !30)
!49 = !DILocation(line: 37, column: 17, scope: !30)
!50 = !DILocation(line: 37, column: 31, scope: !30)
!51 = !DILocation(line: 37, column: 5, scope: !30)
!52 = !DILocation(line: 44, column: 5, scope: !30)
!53 = !DILocation(line: 45, column: 22, scope: !30)
!54 = !DILocation(line: 45, column: 5, scope: !30)
!55 = !DILocation(line: 53, column: 5, scope: !30)
!56 = !DILocation(line: 56, column: 5, scope: !30)
!57 = !DILocation(line: 57, column: 5, scope: !30)
!58 = !DILocation(line: 59, column: 5, scope: !30)
!59 = !DILocation(line: 64, column: 5, scope: !30)
!60 = distinct !DISubprogram(name: "memset", scope: !61, file: !61, line: 12, type: !62, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !18)
!61 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !64, !25, !65}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !66, line: 46, baseType: !67)
!66 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!67 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!68 = !DILocalVariable(name: "dst", arg: 1, scope: !60, file: !61, line: 12, type: !64)
!69 = !DILocation(line: 12, column: 20, scope: !60)
!70 = !DILocalVariable(name: "s", arg: 2, scope: !60, file: !61, line: 12, type: !25)
!71 = !DILocation(line: 12, column: 29, scope: !60)
!72 = !DILocalVariable(name: "count", arg: 3, scope: !60, file: !61, line: 12, type: !65)
!73 = !DILocation(line: 12, column: 39, scope: !60)
!74 = !DILocalVariable(name: "a", scope: !60, file: !61, line: 13, type: !3)
!75 = !DILocation(line: 13, column: 9, scope: !60)
!76 = !DILocation(line: 13, column: 13, scope: !60)
!77 = !DILocation(line: 14, column: 3, scope: !60)
!78 = !DILocation(line: 14, column: 15, scope: !60)
!79 = !DILocation(line: 14, column: 18, scope: !60)
!80 = !DILocation(line: 15, column: 12, scope: !60)
!81 = !DILocation(line: 15, column: 7, scope: !60)
!82 = !DILocation(line: 15, column: 10, scope: !60)
!83 = distinct !{!83, !77, !80, !84}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !DILocation(line: 16, column: 10, scope: !60)
!86 = !DILocation(line: 16, column: 3, scope: !60)
