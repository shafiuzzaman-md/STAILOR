; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/093_runtest.c_3494_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/093_runtest.c_3494_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"(len < 500) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/093_runtest.c_3494_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [500 x i8], align 16
  %3 = alloca [500 x i8], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [500 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [500 x i8]* %3, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %4, metadata !25, metadata !DIExpression()), !dbg !26
  %5 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 0, !dbg !27
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 500, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !28
  %6 = bitcast i32* %4 to i8*, !dbg !29
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !30
  %7 = load i32, i32* %4, align 4, !dbg !31
  %8 = icmp sge i32 %7, 0, !dbg !32
  %9 = zext i1 %8 to i32, !dbg !32
  %10 = sext i32 %9 to i64, !dbg !31
  call void @klee_assume(i64 noundef %10), !dbg !33
  %11 = load i32, i32* %4, align 4, !dbg !34
  %12 = icmp slt i32 %11, 500, !dbg !35
  %13 = zext i1 %12 to i32, !dbg !35
  %14 = sext i32 %13 to i64, !dbg !34
  call void @klee_assume(i64 noundef %14), !dbg !36
  %15 = load i32, i32* %4, align 4, !dbg !37
  %16 = sext i32 %15 to i64, !dbg !38
  %17 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 %16, !dbg !38
  %18 = load i8, i8* %17, align 1, !dbg !38
  %19 = sext i8 %18 to i32, !dbg !38
  %20 = icmp eq i32 %19, 95, !dbg !39
  %21 = zext i1 %20 to i32, !dbg !39
  %22 = sext i32 %21 to i64, !dbg !38
  call void @klee_assume(i64 noundef %22), !dbg !40
  %23 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 0, !dbg !41
  %24 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 0, !dbg !41
  %25 = load i32, i32* %4, align 4, !dbg !42
  %26 = sext i32 %25 to i64, !dbg !42
  %27 = call i8* @memcpy(i8* %23, i8* %24, i64 %26), !dbg !41
  %28 = load i32, i32* %4, align 4, !dbg !43
  %29 = sext i32 %28 to i64, !dbg !44
  %30 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 %29, !dbg !44
  store i8 0, i8* %30, align 1, !dbg !45
  %31 = load i32, i32* %4, align 4, !dbg !46
  %32 = add nsw i32 %31, 2, !dbg !46
  store i32 %32, i32* %4, align 4, !dbg !46
  %33 = load i32, i32* %4, align 4, !dbg !47
  %34 = icmp slt i32 %33, 500, !dbg !47
  br i1 %34, label %35, label %37, !dbg !47

35:                                               ; preds = %0
  br i1 true, label %36, label %37, !dbg !47

36:                                               ; preds = %35
  br label %39, !dbg !47

37:                                               ; preds = %35, %0
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !47
  br label %39, !dbg !47

39:                                               ; preds = %37, %36
  %40 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !48
  ret i32 0, !dbg !49
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !50 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !60, metadata !DIExpression()), !dbg !61
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !62, metadata !DIExpression()), !dbg !63
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i8** %7, metadata !66, metadata !DIExpression()), !dbg !68
  %9 = load i8*, i8** %4, align 8, !dbg !69
  store i8* %9, i8** %7, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i8** %8, metadata !70, metadata !DIExpression()), !dbg !73
  %10 = load i8*, i8** %5, align 8, !dbg !74
  store i8* %10, i8** %8, align 8, !dbg !73
  br label %11, !dbg !75

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !76
  %13 = add i64 %12, -1, !dbg !76
  store i64 %13, i64* %6, align 8, !dbg !76
  %14 = icmp ugt i64 %12, 0, !dbg !77
  br i1 %14, label %15, label %21, !dbg !75

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !78
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !78
  store i8* %17, i8** %8, align 8, !dbg !78
  %18 = load i8, i8* %16, align 1, !dbg !79
  %19 = load i8*, i8** %7, align 8, !dbg !80
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !80
  store i8* %20, i8** %7, align 8, !dbg !80
  store i8 %18, i8* %19, align 1, !dbg !81
  br label %11, !dbg !75, !llvm.loop !82

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !84
  ret i8* %22, !dbg !85
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/093_runtest.c_3494_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "241d94cb6b42337c9498c08e309c3356")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !13, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "base", scope: !12, file: !1, line: 12, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 4000, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 500)
!22 = !DILocation(line: 12, column: 10, scope: !12)
!23 = !DILocalVariable(name: "prefix", scope: !12, file: !1, line: 13, type: !18)
!24 = !DILocation(line: 13, column: 10, scope: !12)
!25 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 14, type: !15)
!26 = !DILocation(line: 14, column: 9, scope: !12)
!27 = !DILocation(line: 16, column: 24, scope: !12)
!28 = !DILocation(line: 16, column: 5, scope: !12)
!29 = !DILocation(line: 17, column: 24, scope: !12)
!30 = !DILocation(line: 17, column: 5, scope: !12)
!31 = !DILocation(line: 19, column: 17, scope: !12)
!32 = !DILocation(line: 19, column: 21, scope: !12)
!33 = !DILocation(line: 19, column: 5, scope: !12)
!34 = !DILocation(line: 20, column: 17, scope: !12)
!35 = !DILocation(line: 20, column: 21, scope: !12)
!36 = !DILocation(line: 20, column: 5, scope: !12)
!37 = !DILocation(line: 21, column: 22, scope: !12)
!38 = !DILocation(line: 21, column: 17, scope: !12)
!39 = !DILocation(line: 21, column: 27, scope: !12)
!40 = !DILocation(line: 21, column: 5, scope: !12)
!41 = !DILocation(line: 23, column: 5, scope: !12)
!42 = !DILocation(line: 23, column: 26, scope: !12)
!43 = !DILocation(line: 24, column: 12, scope: !12)
!44 = !DILocation(line: 24, column: 5, scope: !12)
!45 = !DILocation(line: 24, column: 17, scope: !12)
!46 = !DILocation(line: 26, column: 9, scope: !12)
!47 = !DILocation(line: 28, column: 5, scope: !12)
!48 = !DILocation(line: 29, column: 5, scope: !12)
!49 = !DILocation(line: 31, column: 5, scope: !12)
!50 = distinct !DISubprogram(name: "memcpy", scope: !51, file: !51, line: 12, type: !52, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!51 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !54, !55, !57}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !58, line: 46, baseType: !59)
!58 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DILocalVariable(name: "destaddr", arg: 1, scope: !50, file: !51, line: 12, type: !54)
!61 = !DILocation(line: 12, column: 20, scope: !50)
!62 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !50, file: !51, line: 12, type: !55)
!63 = !DILocation(line: 12, column: 42, scope: !50)
!64 = !DILocalVariable(name: "len", arg: 3, scope: !50, file: !51, line: 12, type: !57)
!65 = !DILocation(line: 12, column: 58, scope: !50)
!66 = !DILocalVariable(name: "dest", scope: !50, file: !51, line: 13, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!68 = !DILocation(line: 13, column: 9, scope: !50)
!69 = !DILocation(line: 13, column: 16, scope: !50)
!70 = !DILocalVariable(name: "src", scope: !50, file: !51, line: 14, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!73 = !DILocation(line: 14, column: 15, scope: !50)
!74 = !DILocation(line: 14, column: 21, scope: !50)
!75 = !DILocation(line: 16, column: 3, scope: !50)
!76 = !DILocation(line: 16, column: 13, scope: !50)
!77 = !DILocation(line: 16, column: 16, scope: !50)
!78 = !DILocation(line: 17, column: 19, scope: !50)
!79 = !DILocation(line: 17, column: 15, scope: !50)
!80 = !DILocation(line: 17, column: 10, scope: !50)
!81 = !DILocation(line: 17, column: 13, scope: !50)
!82 = distinct !{!82, !75, !78, !83}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !DILocation(line: 18, column: 10, scope: !50)
!85 = !DILocation(line: 18, column: 3, scope: !50)
