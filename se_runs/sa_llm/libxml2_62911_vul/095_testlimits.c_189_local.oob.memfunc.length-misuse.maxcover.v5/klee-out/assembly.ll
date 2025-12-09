; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/095_testlimits.c_189_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/095_testlimits.c_189_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"instate\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"curlen\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"dotlen\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/095_testlimits.c_189_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !16 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [1024 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i64* %3, metadata !23, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i64* %4, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i64* %5, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i64* %6, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i64* %7, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i8** %8, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata [1024 x i8]* %9, metadata !38, metadata !DIExpression()), !dbg !42
  %10 = bitcast i32* %2 to i8*, !dbg !43
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !44
  %11 = bitcast i64* %3 to i8*, !dbg !45
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !46
  %12 = bitcast i64* %4 to i8*, !dbg !47
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !48
  %13 = bitcast i64* %5 to i8*, !dbg !49
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !50
  %14 = bitcast i64* %6 to i8*, !dbg !51
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)), !dbg !52
  %15 = bitcast i64* %7 to i8*, !dbg !53
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)), !dbg !54
  %16 = call noalias i8* @malloc(i64 noundef 2048) #7, !dbg !55
  store i8* %16, i8** %8, align 8, !dbg !56
  %17 = load i8*, i8** %8, align 8, !dbg !57
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 2048, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)), !dbg !58
  %18 = load i64, i64* %3, align 8, !dbg !59
  %19 = icmp uge i64 %18, 0, !dbg !60
  %20 = zext i1 %19 to i32, !dbg !60
  %21 = sext i32 %20 to i64, !dbg !59
  call void @klee_assume(i64 noundef %21), !dbg !61
  %22 = load i64, i64* %4, align 8, !dbg !62
  %23 = icmp uge i64 %22, 0, !dbg !63
  %24 = zext i1 %23 to i32, !dbg !63
  %25 = sext i32 %24 to i64, !dbg !62
  call void @klee_assume(i64 noundef %25), !dbg !64
  %26 = load i64, i64* %5, align 8, !dbg !65
  %27 = icmp uge i64 %26, 0, !dbg !66
  %28 = zext i1 %27 to i32, !dbg !66
  %29 = sext i32 %28 to i64, !dbg !65
  call void @klee_assume(i64 noundef %29), !dbg !67
  %30 = load i64, i64* %6, align 8, !dbg !68
  %31 = icmp uge i64 %30, 0, !dbg !69
  %32 = zext i1 %31 to i32, !dbg !69
  %33 = sext i32 %32 to i64, !dbg !68
  call void @klee_assume(i64 noundef %33), !dbg !70
  %34 = load i64, i64* %7, align 8, !dbg !71
  %35 = icmp uge i64 %34, 0, !dbg !72
  %36 = zext i1 %35 to i32, !dbg !72
  %37 = sext i32 %36 to i64, !dbg !71
  call void @klee_assume(i64 noundef %37), !dbg !73
  %38 = load i32, i32* %2, align 4, !dbg !74
  %39 = icmp eq i32 %38, 1, !dbg !75
  %40 = zext i1 %39 to i32, !dbg !75
  %41 = sext i32 %40 to i64, !dbg !74
  call void @klee_assume(i64 noundef %41), !dbg !76
  %42 = load i64, i64* %3, align 8, !dbg !77
  %43 = load i64, i64* %4, align 8, !dbg !78
  %44 = icmp ult i64 %42, %43, !dbg !79
  %45 = zext i1 %44 to i32, !dbg !79
  %46 = sext i32 %45 to i64, !dbg !77
  call void @klee_assume(i64 noundef %46), !dbg !80
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0, !dbg !81
  %48 = icmp ne i8* %47, null, !dbg !82
  %49 = zext i1 %48 to i32, !dbg !82
  %50 = sext i32 %49 to i64, !dbg !81
  call void @klee_assume(i64 noundef %50), !dbg !83
  %51 = load i8*, i8** %8, align 8, !dbg !84
  %52 = icmp ne i8* %51, null, !dbg !85
  %53 = zext i1 %52 to i32, !dbg !85
  %54 = sext i32 %53 to i64, !dbg !84
  call void @klee_assume(i64 noundef %54), !dbg !86
  %55 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.8, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !87
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0, !dbg !88
  %57 = load i8*, i8** %8, align 8, !dbg !89
  %58 = load i64, i64* %3, align 8, !dbg !90
  %59 = call i8* @memcpy(i8* %56, i8* %57, i64 %58), !dbg !88
  %60 = load i8*, i8** %8, align 8, !dbg !91
  call void @free(i8* noundef %60) #7, !dbg !92
  ret i32 0, !dbg !93
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !94 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !100, metadata !DIExpression()), !dbg !101
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !102, metadata !DIExpression()), !dbg !103
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i8** %7, metadata !106, metadata !DIExpression()), !dbg !107
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
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/095_testlimits.c_189_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "484fce4bcf32d0a0efe47c427cba080e")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !17, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{}
!21 = !DILocalVariable(name: "instate", scope: !16, file: !1, line: 13, type: !19)
!22 = !DILocation(line: 13, column: 9, scope: !16)
!23 = !DILocalVariable(name: "len", scope: !16, file: !1, line: 14, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 46, baseType: !26)
!25 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!26 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!27 = !DILocation(line: 14, column: 12, scope: !16)
!28 = !DILocalVariable(name: "rlen", scope: !16, file: !1, line: 14, type: !24)
!29 = !DILocation(line: 14, column: 17, scope: !16)
!30 = !DILocalVariable(name: "curlen", scope: !16, file: !1, line: 14, type: !24)
!31 = !DILocation(line: 14, column: 23, scope: !16)
!32 = !DILocalVariable(name: "dotlen", scope: !16, file: !1, line: 14, type: !24)
!33 = !DILocation(line: 14, column: 31, scope: !16)
!34 = !DILocalVariable(name: "maxlen", scope: !16, file: !1, line: 14, type: !24)
!35 = !DILocation(line: 14, column: 39, scope: !16)
!36 = !DILocalVariable(name: "current", scope: !16, file: !1, line: 15, type: !3)
!37 = !DILocation(line: 15, column: 11, scope: !16)
!38 = !DILocalVariable(name: "buffer", scope: !16, file: !1, line: 16, type: !39)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 1024)
!42 = !DILocation(line: 16, column: 10, scope: !16)
!43 = !DILocation(line: 19, column: 24, scope: !16)
!44 = !DILocation(line: 19, column: 5, scope: !16)
!45 = !DILocation(line: 20, column: 24, scope: !16)
!46 = !DILocation(line: 20, column: 5, scope: !16)
!47 = !DILocation(line: 21, column: 24, scope: !16)
!48 = !DILocation(line: 21, column: 5, scope: !16)
!49 = !DILocation(line: 22, column: 24, scope: !16)
!50 = !DILocation(line: 22, column: 5, scope: !16)
!51 = !DILocation(line: 23, column: 24, scope: !16)
!52 = !DILocation(line: 23, column: 5, scope: !16)
!53 = !DILocation(line: 24, column: 24, scope: !16)
!54 = !DILocation(line: 24, column: 5, scope: !16)
!55 = !DILocation(line: 27, column: 22, scope: !16)
!56 = !DILocation(line: 27, column: 13, scope: !16)
!57 = !DILocation(line: 28, column: 24, scope: !16)
!58 = !DILocation(line: 28, column: 5, scope: !16)
!59 = !DILocation(line: 31, column: 17, scope: !16)
!60 = !DILocation(line: 31, column: 21, scope: !16)
!61 = !DILocation(line: 31, column: 5, scope: !16)
!62 = !DILocation(line: 32, column: 17, scope: !16)
!63 = !DILocation(line: 32, column: 22, scope: !16)
!64 = !DILocation(line: 32, column: 5, scope: !16)
!65 = !DILocation(line: 33, column: 17, scope: !16)
!66 = !DILocation(line: 33, column: 24, scope: !16)
!67 = !DILocation(line: 33, column: 5, scope: !16)
!68 = !DILocation(line: 34, column: 17, scope: !16)
!69 = !DILocation(line: 34, column: 24, scope: !16)
!70 = !DILocation(line: 34, column: 5, scope: !16)
!71 = !DILocation(line: 35, column: 17, scope: !16)
!72 = !DILocation(line: 35, column: 24, scope: !16)
!73 = !DILocation(line: 35, column: 5, scope: !16)
!74 = !DILocation(line: 41, column: 17, scope: !16)
!75 = !DILocation(line: 41, column: 25, scope: !16)
!76 = !DILocation(line: 41, column: 5, scope: !16)
!77 = !DILocation(line: 44, column: 17, scope: !16)
!78 = !DILocation(line: 44, column: 23, scope: !16)
!79 = !DILocation(line: 44, column: 21, scope: !16)
!80 = !DILocation(line: 44, column: 5, scope: !16)
!81 = !DILocation(line: 47, column: 17, scope: !16)
!82 = !DILocation(line: 47, column: 24, scope: !16)
!83 = !DILocation(line: 47, column: 5, scope: !16)
!84 = !DILocation(line: 48, column: 17, scope: !16)
!85 = !DILocation(line: 48, column: 25, scope: !16)
!86 = !DILocation(line: 48, column: 5, scope: !16)
!87 = !DILocation(line: 51, column: 5, scope: !16)
!88 = !DILocation(line: 62, column: 5, scope: !16)
!89 = !DILocation(line: 62, column: 20, scope: !16)
!90 = !DILocation(line: 62, column: 29, scope: !16)
!91 = !DILocation(line: 66, column: 10, scope: !16)
!92 = !DILocation(line: 66, column: 5, scope: !16)
!93 = !DILocation(line: 67, column: 5, scope: !16)
!94 = distinct !DISubprogram(name: "memcpy", scope: !95, file: !95, line: 12, type: !96, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !20)
!95 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!96 = !DISubroutineType(types: !97)
!97 = !{!5, !5, !98, !24}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!100 = !DILocalVariable(name: "destaddr", arg: 1, scope: !94, file: !95, line: 12, type: !5)
!101 = !DILocation(line: 12, column: 20, scope: !94)
!102 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !94, file: !95, line: 12, type: !98)
!103 = !DILocation(line: 12, column: 42, scope: !94)
!104 = !DILocalVariable(name: "len", arg: 3, scope: !94, file: !95, line: 12, type: !24)
!105 = !DILocation(line: 12, column: 58, scope: !94)
!106 = !DILocalVariable(name: "dest", scope: !94, file: !95, line: 13, type: !3)
!107 = !DILocation(line: 13, column: 9, scope: !94)
!108 = !DILocation(line: 13, column: 16, scope: !94)
!109 = !DILocalVariable(name: "src", scope: !94, file: !95, line: 14, type: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!112 = !DILocation(line: 14, column: 15, scope: !94)
!113 = !DILocation(line: 14, column: 21, scope: !94)
!114 = !DILocation(line: 16, column: 3, scope: !94)
!115 = !DILocation(line: 16, column: 13, scope: !94)
!116 = !DILocation(line: 16, column: 16, scope: !94)
!117 = !DILocation(line: 17, column: 19, scope: !94)
!118 = !DILocation(line: 17, column: 15, scope: !94)
!119 = !DILocation(line: 17, column: 10, scope: !94)
!120 = !DILocation(line: 17, column: 13, scope: !94)
!121 = distinct !{!121, !114, !117, !122}
!122 = !{!"llvm.loop.mustprogress"}
!123 = !DILocation(line: 18, column: 10, scope: !94)
!124 = !DILocation(line: 18, column: 3, scope: !94)
