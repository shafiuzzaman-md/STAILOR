; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/020_error.c_219_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/020_error.c_219_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/020_error.c_219_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %4, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %5, metadata !27, metadata !DIExpression()), !dbg !28
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !29
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 1024, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !30
  %7 = bitcast i32* %4 to i8*, !dbg !31
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !32
  %8 = bitcast i32* %5 to i8*, !dbg !33
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !34
  %9 = load i32, i32* %4, align 4, !dbg !35
  %10 = icmp sgt i32 %9, 0, !dbg !37
  br i1 %10, label %11, label %28, !dbg !38

11:                                               ; preds = %0
  %12 = load i32, i32* %4, align 4, !dbg !39
  %13 = sext i32 %12 to i64, !dbg !39
  %14 = icmp ule i64 %13, 1023, !dbg !40
  br i1 %14, label %15, label %28, !dbg !41

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4, !dbg !42
  %17 = icmp sge i32 %16, 0, !dbg !43
  br i1 %17, label %18, label %28, !dbg !44

18:                                               ; preds = %15
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !45
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !45
  %21 = load i32, i32* %4, align 4, !dbg !47
  %22 = sext i32 %21 to i64, !dbg !47
  %23 = call i8* @memcpy(i8* %19, i8* %20, i64 %22), !dbg !45
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 17, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !48
  %25 = load i32, i32* %4, align 4, !dbg !49
  %26 = sext i32 %25 to i64, !dbg !50
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 %26, !dbg !50
  store i8 0, i8* %27, align 1, !dbg !51
  br label %28, !dbg !52

28:                                               ; preds = %18, %15, %11, %0
  ret i32 0, !dbg !53
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !54 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !64, metadata !DIExpression()), !dbg !65
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !66, metadata !DIExpression()), !dbg !67
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i8** %7, metadata !70, metadata !DIExpression()), !dbg !72
  %9 = load i8*, i8** %4, align 8, !dbg !73
  store i8* %9, i8** %7, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i8** %8, metadata !74, metadata !DIExpression()), !dbg !77
  %10 = load i8*, i8** %5, align 8, !dbg !78
  store i8* %10, i8** %8, align 8, !dbg !77
  br label %11, !dbg !79

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !80
  %13 = add i64 %12, -1, !dbg !80
  store i64 %13, i64* %6, align 8, !dbg !80
  %14 = icmp ugt i64 %12, 0, !dbg !81
  br i1 %14, label %15, label %21, !dbg !79

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !82
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !82
  store i8* %17, i8** %8, align 8, !dbg !82
  %18 = load i8, i8* %16, align 1, !dbg !83
  %19 = load i8*, i8** %7, align 8, !dbg !84
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !84
  store i8* %20, i8** %7, align 8, !dbg !84
  store i8 %18, i8* %19, align 1, !dbg !85
  br label %11, !dbg !79, !llvm.loop !86

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !88
  ret i8* %22, !dbg !89
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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/020_error.c_219_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "f9a30cdf76589ff3843dcad15f60a597")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !13, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "content", scope: !12, file: !1, line: 6, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8192, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 1024)
!22 = !DILocation(line: 6, column: 10, scope: !12)
!23 = !DILocalVariable(name: "start", scope: !12, file: !1, line: 7, type: !18)
!24 = !DILocation(line: 7, column: 10, scope: !12)
!25 = !DILocalVariable(name: "n", scope: !12, file: !1, line: 8, type: !15)
!26 = !DILocation(line: 8, column: 9, scope: !12)
!27 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 9, type: !15)
!28 = !DILocation(line: 9, column: 9, scope: !12)
!29 = !DILocation(line: 11, column: 24, scope: !12)
!30 = !DILocation(line: 11, column: 5, scope: !12)
!31 = !DILocation(line: 12, column: 24, scope: !12)
!32 = !DILocation(line: 12, column: 5, scope: !12)
!33 = !DILocation(line: 13, column: 24, scope: !12)
!34 = !DILocation(line: 13, column: 5, scope: !12)
!35 = !DILocation(line: 15, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !12, file: !1, line: 15, column: 9)
!37 = !DILocation(line: 15, column: 11, scope: !36)
!38 = !DILocation(line: 15, column: 15, scope: !36)
!39 = !DILocation(line: 15, column: 18, scope: !36)
!40 = !DILocation(line: 15, column: 20, scope: !36)
!41 = !DILocation(line: 15, column: 43, scope: !36)
!42 = !DILocation(line: 15, column: 46, scope: !36)
!43 = !DILocation(line: 15, column: 50, scope: !36)
!44 = !DILocation(line: 15, column: 9, scope: !12)
!45 = !DILocation(line: 16, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !36, file: !1, line: 15, column: 56)
!47 = !DILocation(line: 16, column: 32, scope: !46)
!48 = !DILocation(line: 17, column: 9, scope: !46)
!49 = !DILocation(line: 18, column: 17, scope: !46)
!50 = !DILocation(line: 18, column: 9, scope: !46)
!51 = !DILocation(line: 18, column: 20, scope: !46)
!52 = !DILocation(line: 19, column: 5, scope: !46)
!53 = !DILocation(line: 21, column: 5, scope: !12)
!54 = distinct !DISubprogram(name: "memcpy", scope: !55, file: !55, line: 12, type: !56, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!55 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !58, !59, !61}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !62, line: 46, baseType: !63)
!62 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!63 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!64 = !DILocalVariable(name: "destaddr", arg: 1, scope: !54, file: !55, line: 12, type: !58)
!65 = !DILocation(line: 12, column: 20, scope: !54)
!66 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !54, file: !55, line: 12, type: !59)
!67 = !DILocation(line: 12, column: 42, scope: !54)
!68 = !DILocalVariable(name: "len", arg: 3, scope: !54, file: !55, line: 12, type: !61)
!69 = !DILocation(line: 12, column: 58, scope: !54)
!70 = !DILocalVariable(name: "dest", scope: !54, file: !55, line: 13, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!72 = !DILocation(line: 13, column: 9, scope: !54)
!73 = !DILocation(line: 13, column: 16, scope: !54)
!74 = !DILocalVariable(name: "src", scope: !54, file: !55, line: 14, type: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!77 = !DILocation(line: 14, column: 15, scope: !54)
!78 = !DILocation(line: 14, column: 21, scope: !54)
!79 = !DILocation(line: 16, column: 3, scope: !54)
!80 = !DILocation(line: 16, column: 13, scope: !54)
!81 = !DILocation(line: 16, column: 16, scope: !54)
!82 = !DILocation(line: 17, column: 19, scope: !54)
!83 = !DILocation(line: 17, column: 15, scope: !54)
!84 = !DILocation(line: 17, column: 10, scope: !54)
!85 = !DILocation(line: 17, column: 13, scope: !54)
!86 = distinct !{!86, !79, !82, !87}
!87 = !{!"llvm.loop.mustprogress"}
!88 = !DILocation(line: 18, column: 10, scope: !54)
!89 = !DILocation(line: 18, column: 3, scope: !54)
