; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/138_threads.c_384_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/138_threads.c_384_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/138_threads.c_384_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i64* %3, metadata !19, metadata !DIExpression()), !dbg !23
  %4 = bitcast i32* %2 to i8*, !dbg !24
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !25
  %5 = bitcast i64* %3 to i8*, !dbg !26
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !27
  %6 = call i32 (...) @XML_IS_THREADED(), !dbg !28
  %7 = icmp eq i32 %6, 0, !dbg !30
  br i1 %7, label %8, label %9, !dbg !31

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !32
  br label %16, !dbg !32

9:                                                ; preds = %0
  %10 = call i64 @pthread_self() #7, !dbg !34
  store i64 %10, i64* %3, align 8, !dbg !35
  %11 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 19, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !36
  %12 = bitcast i32* %2 to i8*, !dbg !37
  %13 = bitcast i64* %3 to i8*, !dbg !37
  %14 = call i8* @memcpy(i8* %12, i8* %13, i64 4), !dbg !37
  %15 = load i32, i32* %2, align 4, !dbg !38
  store i32 %15, i32* %1, align 4, !dbg !39
  br label %16, !dbg !39

16:                                               ; preds = %9, %8
  %17 = load i32, i32* %1, align 4, !dbg !40
  ret i32 %17, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i32 @XML_IS_THREADED(...) #2

; Function Attrs: nounwind readnone willreturn
declare i64 @pthread_self() #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !41 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !50, metadata !DIExpression()), !dbg !51
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !52, metadata !DIExpression()), !dbg !53
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i8** %7, metadata !56, metadata !DIExpression()), !dbg !59
  %9 = load i8*, i8** %4, align 8, !dbg !60
  store i8* %9, i8** %7, align 8, !dbg !59
  call void @llvm.dbg.declare(metadata i8** %8, metadata !61, metadata !DIExpression()), !dbg !64
  %10 = load i8*, i8** %5, align 8, !dbg !65
  store i8* %10, i8** %8, align 8, !dbg !64
  br label %11, !dbg !66

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !67
  %13 = add i64 %12, -1, !dbg !67
  store i64 %13, i64* %6, align 8, !dbg !67
  %14 = icmp ugt i64 %12, 0, !dbg !68
  br i1 %14, label %15, label %21, !dbg !66

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !69
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !69
  store i8* %17, i8** %8, align 8, !dbg !69
  %18 = load i8, i8* %16, align 1, !dbg !70
  %19 = load i8*, i8** %7, align 8, !dbg !71
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !71
  store i8* %20, i8** %7, align 8, !dbg !71
  store i8 %18, i8* %19, align 1, !dbg !72
  br label %11, !dbg !66, !llvm.loop !73

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !75
  ret i8* %22, !dbg !76
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/138_threads.c_384_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "cf61be925aca8940e126995cf09e3499")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !13, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "ret", scope: !12, file: !1, line: 7, type: !15)
!18 = !DILocation(line: 7, column: 9, scope: !12)
!19 = !DILocalVariable(name: "id", scope: !12, file: !1, line: 8, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !21, line: 27, baseType: !22)
!21 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "8a5acdbeec491eca11cf81cb1ef77ea7")
!22 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!23 = !DILocation(line: 8, column: 15, scope: !12)
!24 = !DILocation(line: 10, column: 24, scope: !12)
!25 = !DILocation(line: 10, column: 5, scope: !12)
!26 = !DILocation(line: 11, column: 24, scope: !12)
!27 = !DILocation(line: 11, column: 5, scope: !12)
!28 = !DILocation(line: 13, column: 9, scope: !29)
!29 = distinct !DILexicalBlock(scope: !12, file: !1, line: 13, column: 9)
!30 = !DILocation(line: 13, column: 27, scope: !29)
!31 = !DILocation(line: 13, column: 9, scope: !12)
!32 = !DILocation(line: 14, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !29, file: !1, line: 13, column: 33)
!34 = !DILocation(line: 17, column: 10, scope: !12)
!35 = !DILocation(line: 17, column: 8, scope: !12)
!36 = !DILocation(line: 19, column: 5, scope: !12)
!37 = !DILocation(line: 20, column: 5, scope: !12)
!38 = !DILocation(line: 22, column: 12, scope: !12)
!39 = !DILocation(line: 22, column: 5, scope: !12)
!40 = !DILocation(line: 23, column: 1, scope: !12)
!41 = distinct !DISubprogram(name: "memcpy", scope: !42, file: !42, line: 12, type: !43, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!42 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !45, !46, !48}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 46, baseType: !22)
!49 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!50 = !DILocalVariable(name: "destaddr", arg: 1, scope: !41, file: !42, line: 12, type: !45)
!51 = !DILocation(line: 12, column: 20, scope: !41)
!52 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !41, file: !42, line: 12, type: !46)
!53 = !DILocation(line: 12, column: 42, scope: !41)
!54 = !DILocalVariable(name: "len", arg: 3, scope: !41, file: !42, line: 12, type: !48)
!55 = !DILocation(line: 12, column: 58, scope: !41)
!56 = !DILocalVariable(name: "dest", scope: !41, file: !42, line: 13, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!59 = !DILocation(line: 13, column: 9, scope: !41)
!60 = !DILocation(line: 13, column: 16, scope: !41)
!61 = !DILocalVariable(name: "src", scope: !41, file: !42, line: 14, type: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!64 = !DILocation(line: 14, column: 15, scope: !41)
!65 = !DILocation(line: 14, column: 21, scope: !41)
!66 = !DILocation(line: 16, column: 3, scope: !41)
!67 = !DILocation(line: 16, column: 13, scope: !41)
!68 = !DILocation(line: 16, column: 16, scope: !41)
!69 = !DILocation(line: 17, column: 19, scope: !41)
!70 = !DILocation(line: 17, column: 15, scope: !41)
!71 = !DILocation(line: 17, column: 10, scope: !41)
!72 = !DILocation(line: 17, column: 13, scope: !41)
!73 = distinct !{!73, !66, !69, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !DILocation(line: 18, column: 10, scope: !41)
!76 = !DILocation(line: 18, column: 3, scope: !41)
