; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/162_xmlcatalog.c_80_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/162_xmlcatalog.c_80_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [10 x i8] c"line_read\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/162_xmlcatalog.c_80_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !16 {
  %1 = alloca i32, align 4
  %2 = alloca [501 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [501 x i8]* %2, metadata !21, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i8** %3, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %4, metadata !28, metadata !DIExpression()), !dbg !29
  %5 = getelementptr inbounds [501 x i8], [501 x i8]* %2, i64 0, i64 0, !dbg !30
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 501, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)), !dbg !31
  %6 = getelementptr inbounds [501 x i8], [501 x i8]* %2, i64 0, i64 0, !dbg !32
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !34
  %8 = call i8* @fgets(i8* noundef %6, i32 noundef 500, %struct._IO_FILE* noundef %7), !dbg !35
  %9 = icmp ne i8* %8, null, !dbg !35
  br i1 %9, label %11, label %10, !dbg !36

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !37
  br label %31, !dbg !37

11:                                               ; preds = %0
  %12 = getelementptr inbounds [501 x i8], [501 x i8]* %2, i64 0, i64 500, !dbg !39
  store i8 0, i8* %12, align 4, !dbg !40
  %13 = getelementptr inbounds [501 x i8], [501 x i8]* %2, i64 0, i64 0, !dbg !41
  %14 = call i64 @strlen(i8* noundef %13) #8, !dbg !42
  %15 = trunc i64 %14 to i32, !dbg !42
  store i32 %15, i32* %4, align 4, !dbg !43
  %16 = load i32, i32* %4, align 4, !dbg !44
  %17 = add nsw i32 %16, 1, !dbg !45
  %18 = sext i32 %17 to i64, !dbg !44
  %19 = call noalias i8* @malloc(i64 noundef %18) #9, !dbg !46
  store i8* %19, i8** %3, align 8, !dbg !47
  %20 = load i8*, i8** %3, align 8, !dbg !48
  %21 = icmp ne i8* %20, null, !dbg !50
  br i1 %21, label %22, label %29, !dbg !51

22:                                               ; preds = %11
  %23 = load i8*, i8** %3, align 8, !dbg !52
  %24 = getelementptr inbounds [501 x i8], [501 x i8]* %2, i64 0, i64 0, !dbg !54
  %25 = load i32, i32* %4, align 4, !dbg !55
  %26 = add nsw i32 %25, 1, !dbg !56
  %27 = sext i32 %26 to i64, !dbg !55
  %28 = call i8* @memcpy(i8* %23, i8* %24, i64 %27), !dbg !54
  br label %29, !dbg !57

29:                                               ; preds = %22, %11
  %30 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0), i32 noundef 26, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !58
  store i32 0, i32* %1, align 4, !dbg !59
  br label %31, !dbg !59

31:                                               ; preds = %29, %10
  %32 = load i32, i32* %1, align 4, !dbg !60
  ret i32 %32, !dbg !60
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !61 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !70, metadata !DIExpression()), !dbg !71
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !72, metadata !DIExpression()), !dbg !73
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i8** %7, metadata !76, metadata !DIExpression()), !dbg !77
  %9 = load i8*, i8** %4, align 8, !dbg !78
  store i8* %9, i8** %7, align 8, !dbg !77
  call void @llvm.dbg.declare(metadata i8** %8, metadata !79, metadata !DIExpression()), !dbg !82
  %10 = load i8*, i8** %5, align 8, !dbg !83
  store i8* %10, i8** %8, align 8, !dbg !82
  br label %11, !dbg !84

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !85
  %13 = add i64 %12, -1, !dbg !85
  store i64 %13, i64* %6, align 8, !dbg !85
  %14 = icmp ugt i64 %12, 0, !dbg !86
  br i1 %14, label %15, label %21, !dbg !84

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !87
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !87
  store i8* %17, i8** %8, align 8, !dbg !87
  %18 = load i8, i8* %16, align 1, !dbg !88
  %19 = load i8*, i8** %7, align 8, !dbg !89
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !89
  store i8* %20, i8** %7, align 8, !dbg !89
  store i8 %18, i8* %19, align 1, !dbg !90
  br label %11, !dbg !84, !llvm.loop !91

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !93
  ret i8* %22, !dbg !94
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/162_xmlcatalog.c_80_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "c742f7632e1fbd7d70d1075342e5f5ef")
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
!16 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !17, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{}
!21 = !DILocalVariable(name: "line_read", scope: !16, file: !1, line: 10, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4008, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 501)
!25 = !DILocation(line: 10, column: 10, scope: !16)
!26 = !DILocalVariable(name: "ret", scope: !16, file: !1, line: 11, type: !3)
!27 = !DILocation(line: 11, column: 11, scope: !16)
!28 = !DILocalVariable(name: "len", scope: !16, file: !1, line: 12, type: !19)
!29 = !DILocation(line: 12, column: 9, scope: !16)
!30 = !DILocation(line: 14, column: 24, scope: !16)
!31 = !DILocation(line: 14, column: 5, scope: !16)
!32 = !DILocation(line: 16, column: 16, scope: !33)
!33 = distinct !DILexicalBlock(scope: !16, file: !1, line: 16, column: 9)
!34 = !DILocation(line: 16, column: 32, scope: !33)
!35 = !DILocation(line: 16, column: 10, scope: !33)
!36 = !DILocation(line: 16, column: 9, scope: !16)
!37 = !DILocation(line: 17, column: 9, scope: !38)
!38 = distinct !DILexicalBlock(scope: !33, file: !1, line: 16, column: 40)
!39 = !DILocation(line: 19, column: 5, scope: !16)
!40 = !DILocation(line: 19, column: 20, scope: !16)
!41 = !DILocation(line: 20, column: 18, scope: !16)
!42 = !DILocation(line: 20, column: 11, scope: !16)
!43 = !DILocation(line: 20, column: 9, scope: !16)
!44 = !DILocation(line: 21, column: 27, scope: !16)
!45 = !DILocation(line: 21, column: 31, scope: !16)
!46 = !DILocation(line: 21, column: 20, scope: !16)
!47 = !DILocation(line: 21, column: 9, scope: !16)
!48 = !DILocation(line: 22, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !16, file: !1, line: 22, column: 9)
!50 = !DILocation(line: 22, column: 13, scope: !49)
!51 = !DILocation(line: 22, column: 9, scope: !16)
!52 = !DILocation(line: 23, column: 16, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 22, column: 22)
!54 = !DILocation(line: 23, column: 9, scope: !53)
!55 = !DILocation(line: 23, column: 32, scope: !53)
!56 = !DILocation(line: 23, column: 36, scope: !53)
!57 = !DILocation(line: 24, column: 5, scope: !53)
!58 = !DILocation(line: 26, column: 5, scope: !16)
!59 = !DILocation(line: 27, column: 5, scope: !16)
!60 = !DILocation(line: 28, column: 1, scope: !16)
!61 = distinct !DISubprogram(name: "memcpy", scope: !62, file: !62, line: 12, type: !63, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !20)
!62 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!63 = !DISubroutineType(types: !64)
!64 = !{!5, !5, !65, !67}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !68, line: 46, baseType: !69)
!68 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!69 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!70 = !DILocalVariable(name: "destaddr", arg: 1, scope: !61, file: !62, line: 12, type: !5)
!71 = !DILocation(line: 12, column: 20, scope: !61)
!72 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !61, file: !62, line: 12, type: !65)
!73 = !DILocation(line: 12, column: 42, scope: !61)
!74 = !DILocalVariable(name: "len", arg: 3, scope: !61, file: !62, line: 12, type: !67)
!75 = !DILocation(line: 12, column: 58, scope: !61)
!76 = !DILocalVariable(name: "dest", scope: !61, file: !62, line: 13, type: !3)
!77 = !DILocation(line: 13, column: 9, scope: !61)
!78 = !DILocation(line: 13, column: 16, scope: !61)
!79 = !DILocalVariable(name: "src", scope: !61, file: !62, line: 14, type: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!82 = !DILocation(line: 14, column: 15, scope: !61)
!83 = !DILocation(line: 14, column: 21, scope: !61)
!84 = !DILocation(line: 16, column: 3, scope: !61)
!85 = !DILocation(line: 16, column: 13, scope: !61)
!86 = !DILocation(line: 16, column: 16, scope: !61)
!87 = !DILocation(line: 17, column: 19, scope: !61)
!88 = !DILocation(line: 17, column: 15, scope: !61)
!89 = !DILocation(line: 17, column: 10, scope: !61)
!90 = !DILocation(line: 17, column: 13, scope: !61)
!91 = distinct !{!91, !84, !87, !92}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !DILocation(line: 18, column: 10, scope: !61)
!94 = !DILocation(line: 18, column: 3, scope: !61)
