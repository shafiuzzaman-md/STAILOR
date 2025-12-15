; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/387_testapi.c_143_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/387_testapi.c_143_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@chartab = external global [100 x i8], align 16
@.str = private unnamed_addr constant [11 x i8] c"  chartab\0A\00", align 1
@inttab = external global [100 x i32], align 16
@longtab = external global [100 x i64], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"chartab\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"inttab\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"longtab\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/387_testapi.c_143_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlInitParser() #0 !dbg !15 {
  ret void, !dbg !19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testapi_main() #0 !dbg !20 {
  %1 = call i8* @memset(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @chartab, i64 0, i64 0), i32 0, i64 100), !dbg !21
  %2 = call i8* @strncpy(i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @chartab, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 noundef 20) #7, !dbg !22
  %3 = call i8* @memset(i8* bitcast ([100 x i32]* @inttab to i8*), i32 0, i64 400), !dbg !23
  %4 = call i8* @memset(i8* bitcast ([100 x i64]* @longtab to i8*), i32 0, i64 800), !dbg !24
  call void @xmlInitParser(), !dbg !25
  ret void, !dbg !26
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !27 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @klee_make_symbolic(i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @chartab, i64 0, i64 0), i64 noundef 100, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !31
  call void @klee_make_symbolic(i8* noundef bitcast ([100 x i32]* @inttab to i8*), i64 noundef 400, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !32
  call void @klee_make_symbolic(i8* noundef bitcast ([100 x i64]* @longtab to i8*), i64 noundef 800, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !33
  call void @testapi_main(), !dbg !34
  %2 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.5, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !35
  ret i32 0, !dbg !36
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !37 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !45, metadata !DIExpression()), !dbg !46
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !47, metadata !DIExpression()), !dbg !48
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i8** %7, metadata !51, metadata !DIExpression()), !dbg !52
  %8 = load i8*, i8** %4, align 8, !dbg !53
  store i8* %8, i8** %7, align 8, !dbg !52
  br label %9, !dbg !54

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !55
  %11 = add i64 %10, -1, !dbg !55
  store i64 %11, i64* %6, align 8, !dbg !55
  %12 = icmp ugt i64 %10, 0, !dbg !56
  br i1 %12, label %13, label %18, !dbg !54

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !57
  %15 = trunc i32 %14 to i8, !dbg !57
  %16 = load i8*, i8** %7, align 8, !dbg !58
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !58
  store i8* %17, i8** %7, align 8, !dbg !58
  store i8 %15, i8* %16, align 1, !dbg !59
  br label %9, !dbg !54, !llvm.loop !60

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !62
  ret i8* %19, !dbg !63
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/387_testapi.c_143_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "6b2b1f763de3368cff0e4ad2b4204e86")
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
!15 = distinct !DISubprogram(name: "xmlInitParser", scope: !1, file: !1, line: 15, type: !16, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{null}
!18 = !{}
!19 = !DILocation(line: 17, column: 1, scope: !15)
!20 = distinct !DISubprogram(name: "testapi_main", scope: !1, file: !1, line: 35, type: !16, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!21 = !DILocation(line: 41, column: 5, scope: !20)
!22 = !DILocation(line: 42, column: 5, scope: !20)
!23 = !DILocation(line: 43, column: 5, scope: !20)
!24 = !DILocation(line: 46, column: 5, scope: !20)
!25 = !DILocation(line: 48, column: 5, scope: !20)
!26 = !DILocation(line: 52, column: 1, scope: !20)
!27 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !28, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!28 = !DISubroutineType(types: !29)
!29 = !{!30}
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DILocation(line: 56, column: 5, scope: !27)
!32 = !DILocation(line: 57, column: 5, scope: !27)
!33 = !DILocation(line: 58, column: 5, scope: !27)
!34 = !DILocation(line: 61, column: 5, scope: !27)
!35 = !DILocation(line: 71, column: 5, scope: !27)
!36 = !DILocation(line: 73, column: 5, scope: !27)
!37 = distinct !DISubprogram(name: "memset", scope: !38, file: !38, line: 12, type: !39, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !18)
!38 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !41, !30, !42}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 46, baseType: !44)
!43 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!44 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DILocalVariable(name: "dst", arg: 1, scope: !37, file: !38, line: 12, type: !41)
!46 = !DILocation(line: 12, column: 20, scope: !37)
!47 = !DILocalVariable(name: "s", arg: 2, scope: !37, file: !38, line: 12, type: !30)
!48 = !DILocation(line: 12, column: 29, scope: !37)
!49 = !DILocalVariable(name: "count", arg: 3, scope: !37, file: !38, line: 12, type: !42)
!50 = !DILocation(line: 12, column: 39, scope: !37)
!51 = !DILocalVariable(name: "a", scope: !37, file: !38, line: 13, type: !3)
!52 = !DILocation(line: 13, column: 9, scope: !37)
!53 = !DILocation(line: 13, column: 13, scope: !37)
!54 = !DILocation(line: 14, column: 3, scope: !37)
!55 = !DILocation(line: 14, column: 15, scope: !37)
!56 = !DILocation(line: 14, column: 18, scope: !37)
!57 = !DILocation(line: 15, column: 12, scope: !37)
!58 = !DILocation(line: 15, column: 7, scope: !37)
!59 = !DILocation(line: 15, column: 10, scope: !37)
!60 = distinct !{!60, !54, !57, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !DILocation(line: 16, column: 10, scope: !37)
!63 = !DILocation(line: 16, column: 3, scope: !37)
