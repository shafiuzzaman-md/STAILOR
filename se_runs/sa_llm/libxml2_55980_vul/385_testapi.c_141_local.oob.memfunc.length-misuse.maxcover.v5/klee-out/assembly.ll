; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/385_testapi.c_141_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/385_testapi.c_141_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"http_proxy=\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/385_testapi.c_141_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"  chartab\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putenv(i8* noundef nonnull %0) #0 !dbg !15 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !20, metadata !DIExpression()), !dbg !21
  %3 = load i8*, i8** %2, align 8, !dbg !22
  ret i32 0, !dbg !23
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlInitParser() #0 !dbg !24 {
  ret void, !dbg !27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRelaxNGInitTypes() #0 !dbg !28 {
  ret void, !dbg !29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !30 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !33, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !41, metadata !DIExpression()), !dbg !42
  %5 = call i32 @putenv(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #6, !dbg !43
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !44
  %7 = call i8* @memset(i8* %6, i32 0, i64 256), !dbg !44
  %8 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !45
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !46
  %10 = call i8* @strncpy(i8* noundef %9, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 noundef 20) #6, !dbg !47
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !48
  %12 = call i8* @memset(i8* %11, i32 0, i64 256), !dbg !48
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !49
  %14 = call i8* @memset(i8* %13, i32 0, i64 256), !dbg !49
  call void @xmlInitParser(), !dbg !50
  ret i32 0, !dbg !51
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !52 {
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
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/385_testapi.c_141_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "5b94c0926e21cd48157cc1698cf24489")
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
!15 = distinct !DISubprogram(name: "putenv", scope: !1, file: !1, line: 10, type: !16, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !3}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{}
!20 = !DILocalVariable(name: "string", arg: 1, scope: !15, file: !1, line: 10, type: !3)
!21 = !DILocation(line: 10, column: 18, scope: !15)
!22 = !DILocation(line: 11, column: 11, scope: !15)
!23 = !DILocation(line: 12, column: 5, scope: !15)
!24 = distinct !DISubprogram(name: "xmlInitParser", scope: !1, file: !1, line: 16, type: !25, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!25 = !DISubroutineType(types: !26)
!26 = !{null}
!27 = !DILocation(line: 17, column: 5, scope: !24)
!28 = distinct !DISubprogram(name: "xmlRelaxNGInitTypes", scope: !1, file: !1, line: 21, type: !25, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!29 = !DILocation(line: 22, column: 5, scope: !28)
!30 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 31, type: !31, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!31 = !DISubroutineType(types: !32)
!32 = !{!18}
!33 = !DILocalVariable(name: "chartab", scope: !30, file: !1, line: 33, type: !34)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2048, elements: !36)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !{!37}
!37 = !DISubrange(count: 256)
!38 = !DILocation(line: 33, column: 19, scope: !30)
!39 = !DILocalVariable(name: "inttab", scope: !30, file: !1, line: 36, type: !34)
!40 = !DILocation(line: 36, column: 19, scope: !30)
!41 = !DILocalVariable(name: "longtab", scope: !30, file: !1, line: 37, type: !34)
!42 = !DILocation(line: 37, column: 19, scope: !30)
!43 = !DILocation(line: 48, column: 5, scope: !30)
!44 = !DILocation(line: 51, column: 5, scope: !30)
!45 = !DILocation(line: 59, column: 5, scope: !30)
!46 = !DILocation(line: 63, column: 22, scope: !30)
!47 = !DILocation(line: 63, column: 5, scope: !30)
!48 = !DILocation(line: 66, column: 5, scope: !30)
!49 = !DILocation(line: 67, column: 5, scope: !30)
!50 = !DILocation(line: 69, column: 5, scope: !30)
!51 = !DILocation(line: 71, column: 5, scope: !30)
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
