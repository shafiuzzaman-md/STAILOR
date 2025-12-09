; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/394_testapi.c_136_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/394_testapi.c_136_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/394_testapi.c_136_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"  chartab\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !15 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  %3 = alloca [10 x i32], align 16
  %4 = alloca [10 x i64], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !20, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata [10 x i32]* %3, metadata !26, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata [10 x i64]* %4, metadata !29, metadata !DIExpression()), !dbg !32
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !33
  %6 = call i8* @memset(i8* %5, i32 0, i64 10), !dbg !33
  %7 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0), i32 noundef 13, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !34
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !35
  %9 = call i8* @strncpy(i8* noundef %8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 noundef 20) #7, !dbg !36
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0, !dbg !37
  %11 = bitcast i32* %10 to i8*, !dbg !37
  %12 = call i8* @memset(i8* %11, i32 0, i64 40), !dbg !37
  %13 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i64 0, i64 0, !dbg !38
  %14 = bitcast i64* %13 to i8*, !dbg !38
  %15 = call i8* @memset(i8* %14, i32 0, i64 80), !dbg !38
  call void @xmlInitParser(), !dbg !39
  %16 = call i32 (...) @xmlInitializeCatalog(), !dbg !40
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

declare i32 @xmlInitializeCatalog(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !42 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !50, metadata !DIExpression()), !dbg !51
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !52, metadata !DIExpression()), !dbg !53
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i8** %7, metadata !56, metadata !DIExpression()), !dbg !57
  %8 = load i8*, i8** %4, align 8, !dbg !58
  store i8* %8, i8** %7, align 8, !dbg !57
  br label %9, !dbg !59

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !60
  %11 = add i64 %10, -1, !dbg !60
  store i64 %11, i64* %6, align 8, !dbg !60
  %12 = icmp ugt i64 %10, 0, !dbg !61
  br i1 %12, label %13, label %18, !dbg !59

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !62
  %15 = trunc i32 %14 to i8, !dbg !62
  %16 = load i8*, i8** %7, align 8, !dbg !63
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !63
  store i8* %17, i8** %7, align 8, !dbg !63
  store i8 %15, i8* %16, align 1, !dbg !64
  br label %9, !dbg !59, !llvm.loop !65

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !67
  ret i8* %19, !dbg !68
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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/394_testapi.c_136_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "3e27da7d36cbf7bddb2758cf2700799f")
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
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !16, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{}
!20 = !DILocalVariable(name: "chartab", scope: !15, file: !1, line: 8, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 80, elements: !23)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !{!24}
!24 = !DISubrange(count: 10)
!25 = !DILocation(line: 8, column: 19, scope: !15)
!26 = !DILocalVariable(name: "inttab", scope: !15, file: !1, line: 9, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 320, elements: !23)
!28 = !DILocation(line: 9, column: 9, scope: !15)
!29 = !DILocalVariable(name: "longtab", scope: !15, file: !1, line: 10, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 640, elements: !23)
!31 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!32 = !DILocation(line: 10, column: 10, scope: !15)
!33 = !DILocation(line: 12, column: 5, scope: !15)
!34 = !DILocation(line: 13, column: 5, scope: !15)
!35 = !DILocation(line: 14, column: 22, scope: !15)
!36 = !DILocation(line: 14, column: 5, scope: !15)
!37 = !DILocation(line: 15, column: 5, scope: !15)
!38 = !DILocation(line: 16, column: 5, scope: !15)
!39 = !DILocation(line: 18, column: 5, scope: !15)
!40 = !DILocation(line: 20, column: 5, scope: !15)
!41 = !DILocation(line: 23, column: 5, scope: !15)
!42 = distinct !DISubprogram(name: "memset", scope: !43, file: !43, line: 12, type: !44, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !19)
!43 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !46, !18, !47}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!49 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!50 = !DILocalVariable(name: "dst", arg: 1, scope: !42, file: !43, line: 12, type: !46)
!51 = !DILocation(line: 12, column: 20, scope: !42)
!52 = !DILocalVariable(name: "s", arg: 2, scope: !42, file: !43, line: 12, type: !18)
!53 = !DILocation(line: 12, column: 29, scope: !42)
!54 = !DILocalVariable(name: "count", arg: 3, scope: !42, file: !43, line: 12, type: !47)
!55 = !DILocation(line: 12, column: 39, scope: !42)
!56 = !DILocalVariable(name: "a", scope: !42, file: !43, line: 13, type: !3)
!57 = !DILocation(line: 13, column: 9, scope: !42)
!58 = !DILocation(line: 13, column: 13, scope: !42)
!59 = !DILocation(line: 14, column: 3, scope: !42)
!60 = !DILocation(line: 14, column: 15, scope: !42)
!61 = !DILocation(line: 14, column: 18, scope: !42)
!62 = !DILocation(line: 15, column: 12, scope: !42)
!63 = !DILocation(line: 15, column: 7, scope: !42)
!64 = !DILocation(line: 15, column: 10, scope: !42)
!65 = distinct !{!65, !59, !62, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !DILocation(line: 16, column: 10, scope: !42)
!68 = !DILocation(line: 16, column: 3, scope: !42)
