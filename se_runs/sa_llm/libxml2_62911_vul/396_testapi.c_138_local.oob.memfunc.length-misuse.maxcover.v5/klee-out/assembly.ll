; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/396_testapi.c_138_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/396_testapi.c_138_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"chartab\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"inttab\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"longtab\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"  chartab\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/396_testapi.c_138_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !15 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i32], align 16
  %4 = alloca [256 x i64], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !20, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata [256 x i32]* %3, metadata !26, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata [256 x i64]* %4, metadata !29, metadata !DIExpression()), !dbg !32
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !33
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !34
  %6 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0, !dbg !35
  %7 = bitcast i32* %6 to i8*, !dbg !35
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 1024, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !36
  %8 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 0, !dbg !37
  %9 = bitcast i64* %8 to i8*, !dbg !37
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 2048, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !38
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !39
  %11 = call i8* @memset(i8* %10, i32 0, i64 256), !dbg !39
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !40
  %13 = call i8* @strncpy(i8* noundef %12, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 noundef 20), !dbg !41
  %14 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0, !dbg !42
  %15 = bitcast i32* %14 to i8*, !dbg !42
  %16 = call i8* @memset(i8* %15, i32 0, i64 1024), !dbg !42
  %17 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.5, i64 0, i64 0), i32 noundef 20, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !43
  %18 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 0, !dbg !44
  %19 = bitcast i64* %18 to i8*, !dbg !44
  %20 = call i8* @memset(i8* %19, i32 0, i64 2048), !dbg !44
  call void @xmlInitParser(), !dbg !45
  ret i32 0, !dbg !46
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @xmlInitParser() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !47 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !57, metadata !DIExpression()), !dbg !58
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i8** %7, metadata !61, metadata !DIExpression()), !dbg !62
  %8 = load i8*, i8** %4, align 8, !dbg !63
  store i8* %8, i8** %7, align 8, !dbg !62
  br label %9, !dbg !64

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !65
  %11 = add i64 %10, -1, !dbg !65
  store i64 %11, i64* %6, align 8, !dbg !65
  %12 = icmp ugt i64 %10, 0, !dbg !66
  br i1 %12, label %13, label %18, !dbg !64

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !67
  %15 = trunc i32 %14 to i8, !dbg !67
  %16 = load i8*, i8** %7, align 8, !dbg !68
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !68
  store i8* %17, i8** %7, align 8, !dbg !68
  store i8 %15, i8* %16, align 1, !dbg !69
  br label %9, !dbg !64, !llvm.loop !70

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !72
  ret i8* %19, !dbg !73
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/396_testapi.c_138_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "36e1e0cd15614a45a75f5314f7fa48a3")
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
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !16, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{}
!20 = !DILocalVariable(name: "chartab", scope: !15, file: !1, line: 9, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !23)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !{!24}
!24 = !DISubrange(count: 256)
!25 = !DILocation(line: 9, column: 19, scope: !15)
!26 = !DILocalVariable(name: "inttab", scope: !15, file: !1, line: 10, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8192, elements: !23)
!28 = !DILocation(line: 10, column: 9, scope: !15)
!29 = !DILocalVariable(name: "longtab", scope: !15, file: !1, line: 11, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 16384, elements: !23)
!31 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!32 = !DILocation(line: 11, column: 10, scope: !15)
!33 = !DILocation(line: 13, column: 24, scope: !15)
!34 = !DILocation(line: 13, column: 5, scope: !15)
!35 = !DILocation(line: 14, column: 24, scope: !15)
!36 = !DILocation(line: 14, column: 5, scope: !15)
!37 = !DILocation(line: 15, column: 24, scope: !15)
!38 = !DILocation(line: 15, column: 5, scope: !15)
!39 = !DILocation(line: 17, column: 5, scope: !15)
!40 = !DILocation(line: 18, column: 22, scope: !15)
!41 = !DILocation(line: 18, column: 5, scope: !15)
!42 = !DILocation(line: 19, column: 5, scope: !15)
!43 = !DILocation(line: 20, column: 5, scope: !15)
!44 = !DILocation(line: 21, column: 5, scope: !15)
!45 = !DILocation(line: 23, column: 5, scope: !15)
!46 = !DILocation(line: 28, column: 5, scope: !15)
!47 = distinct !DISubprogram(name: "memset", scope: !48, file: !48, line: 12, type: !49, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !19)
!48 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !51, !18, !52}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !53, line: 46, baseType: !54)
!53 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!54 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!55 = !DILocalVariable(name: "dst", arg: 1, scope: !47, file: !48, line: 12, type: !51)
!56 = !DILocation(line: 12, column: 20, scope: !47)
!57 = !DILocalVariable(name: "s", arg: 2, scope: !47, file: !48, line: 12, type: !18)
!58 = !DILocation(line: 12, column: 29, scope: !47)
!59 = !DILocalVariable(name: "count", arg: 3, scope: !47, file: !48, line: 12, type: !52)
!60 = !DILocation(line: 12, column: 39, scope: !47)
!61 = !DILocalVariable(name: "a", scope: !47, file: !48, line: 13, type: !3)
!62 = !DILocation(line: 13, column: 9, scope: !47)
!63 = !DILocation(line: 13, column: 13, scope: !47)
!64 = !DILocation(line: 14, column: 3, scope: !47)
!65 = !DILocation(line: 14, column: 15, scope: !47)
!66 = !DILocation(line: 14, column: 18, scope: !47)
!67 = !DILocation(line: 15, column: 12, scope: !47)
!68 = !DILocation(line: 15, column: 7, scope: !47)
!69 = !DILocation(line: 15, column: 10, scope: !47)
!70 = distinct !{!70, !64, !67, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !DILocation(line: 16, column: 10, scope: !47)
!73 = !DILocation(line: 16, column: 3, scope: !47)
