; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/218_xmlIO.c_2922_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/218_xmlIO.c_2922_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlStringIOCtxt = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"ctxt_str\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/218_xmlIO.c_2922_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlStringRead = private unnamed_addr constant [39 x i8] c"int xmlStringRead(void *, char *, int)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xmlStringIOCtxt, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.xmlStringIOCtxt* %2, metadata !17, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !28, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %4, metadata !34, metadata !DIExpression()), !dbg !35
  %5 = getelementptr inbounds %struct.xmlStringIOCtxt, %struct.xmlStringIOCtxt* %2, i32 0, i32 0, !dbg !36
  %6 = bitcast i8** %5 to i8*, !dbg !37
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !38
  %7 = bitcast i32* %4 to i8*, !dbg !39
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !40
  %8 = load i32, i32* %4, align 4, !dbg !41
  %9 = icmp slt i32 %8, 0, !dbg !43
  br i1 %9, label %10, label %11, !dbg !44

10:                                               ; preds = %0
  store i32 0, i32* %4, align 4, !dbg !45
  br label %11, !dbg !47

11:                                               ; preds = %10, %0
  %12 = load i32, i32* %4, align 4, !dbg !48
  %13 = icmp sgt i32 %12, 1024, !dbg !50
  br i1 %13, label %14, label %15, !dbg !51

14:                                               ; preds = %11
  store i32 1024, i32* %4, align 4, !dbg !52
  br label %15, !dbg !54

15:                                               ; preds = %14, %11
  %16 = bitcast %struct.xmlStringIOCtxt* %2 to i8*, !dbg !55
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !56
  %18 = load i32, i32* %4, align 4, !dbg !57
  %19 = call i32 @xmlStringRead(i8* noundef %16, i8* noundef %17, i32 noundef %18), !dbg !58
  ret i32 0, !dbg !59
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlStringRead(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !60 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xmlStringIOCtxt*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !65, metadata !DIExpression()), !dbg !66
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !67, metadata !DIExpression()), !dbg !68
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata %struct.xmlStringIOCtxt** %7, metadata !71, metadata !DIExpression()), !dbg !73
  %10 = load i8*, i8** %4, align 8, !dbg !74
  %11 = bitcast i8* %10 to %struct.xmlStringIOCtxt*, !dbg !74
  store %struct.xmlStringIOCtxt* %11, %struct.xmlStringIOCtxt** %7, align 8, !dbg !73
  call void @llvm.dbg.declare(metadata i8** %8, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i64* %9, metadata !77, metadata !DIExpression()), !dbg !81
  %12 = load %struct.xmlStringIOCtxt*, %struct.xmlStringIOCtxt** %7, align 8, !dbg !82
  %13 = getelementptr inbounds %struct.xmlStringIOCtxt, %struct.xmlStringIOCtxt* %12, i32 0, i32 0, !dbg !83
  %14 = load i8*, i8** %13, align 8, !dbg !83
  %15 = load i32, i32* %6, align 4, !dbg !84
  %16 = sext i32 %15 to i64, !dbg !84
  %17 = call i8* @memchr(i8* noundef %14, i32 noundef 0, i64 noundef %16) #7, !dbg !85
  store i8* %17, i8** %8, align 8, !dbg !86
  %18 = load i8*, i8** %8, align 8, !dbg !87
  %19 = icmp ne i8* %18, null, !dbg !87
  br i1 %19, label %20, label %28, !dbg !87

20:                                               ; preds = %3
  %21 = load i8*, i8** %8, align 8, !dbg !88
  %22 = load %struct.xmlStringIOCtxt*, %struct.xmlStringIOCtxt** %7, align 8, !dbg !89
  %23 = getelementptr inbounds %struct.xmlStringIOCtxt, %struct.xmlStringIOCtxt* %22, i32 0, i32 0, !dbg !90
  %24 = load i8*, i8** %23, align 8, !dbg !90
  %25 = ptrtoint i8* %21 to i64, !dbg !91
  %26 = ptrtoint i8* %24 to i64, !dbg !91
  %27 = sub i64 %25, %26, !dbg !91
  br label %31, !dbg !87

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4, !dbg !92
  %30 = sext i32 %29 to i64, !dbg !92
  br label %31, !dbg !87

31:                                               ; preds = %28, %20
  %32 = phi i64 [ %27, %20 ], [ %30, %28 ], !dbg !87
  store i64 %32, i64* %9, align 8, !dbg !93
  %33 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 18, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.xmlStringRead, i64 0, i64 0)), !dbg !94
  %34 = load i8*, i8** %5, align 8, !dbg !95
  %35 = load %struct.xmlStringIOCtxt*, %struct.xmlStringIOCtxt** %7, align 8, !dbg !96
  %36 = getelementptr inbounds %struct.xmlStringIOCtxt, %struct.xmlStringIOCtxt* %35, i32 0, i32 0, !dbg !97
  %37 = load i8*, i8** %36, align 8, !dbg !97
  %38 = load i64, i64* %9, align 8, !dbg !98
  %39 = call i8* @memcpy(i8* %34, i8* %37, i64 %38), !dbg !99
  %40 = load i64, i64* %9, align 8, !dbg !100
  %41 = load %struct.xmlStringIOCtxt*, %struct.xmlStringIOCtxt** %7, align 8, !dbg !101
  %42 = getelementptr inbounds %struct.xmlStringIOCtxt, %struct.xmlStringIOCtxt* %41, i32 0, i32 0, !dbg !102
  %43 = load i8*, i8** %42, align 8, !dbg !103
  %44 = getelementptr inbounds i8, i8* %43, i64 %40, !dbg !103
  store i8* %44, i8** %42, align 8, !dbg !103
  %45 = load i64, i64* %9, align 8, !dbg !104
  %46 = trunc i64 %45 to i32, !dbg !105
  ret i32 %46, !dbg !106
}

; Function Attrs: nounwind readonly willreturn
declare i8* @memchr(i8* noundef, i32 noundef, i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !107 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !113, metadata !DIExpression()), !dbg !114
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !115, metadata !DIExpression()), !dbg !116
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata i8** %7, metadata !119, metadata !DIExpression()), !dbg !120
  %9 = load i8*, i8** %4, align 8, !dbg !121
  store i8* %9, i8** %7, align 8, !dbg !120
  call void @llvm.dbg.declare(metadata i8** %8, metadata !122, metadata !DIExpression()), !dbg !125
  %10 = load i8*, i8** %5, align 8, !dbg !126
  store i8* %10, i8** %8, align 8, !dbg !125
  br label %11, !dbg !127

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !128
  %13 = add i64 %12, -1, !dbg !128
  store i64 %13, i64* %6, align 8, !dbg !128
  %14 = icmp ugt i64 %12, 0, !dbg !129
  br i1 %14, label %15, label %21, !dbg !127

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !130
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !130
  store i8* %17, i8** %8, align 8, !dbg !130
  %18 = load i8, i8* %16, align 1, !dbg !131
  %19 = load i8*, i8** %7, align 8, !dbg !132
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !132
  store i8* %20, i8** %7, align 8, !dbg !132
  store i8 %18, i8* %19, align 1, !dbg !133
  br label %11, !dbg !127, !llvm.loop !134

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !136
  ret i8* %22, !dbg !137
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/218_xmlIO.c_2922_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "2d4c0897a994bb04f474962a898d3019")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 26, type: !13, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "ctxt", scope: !12, file: !1, line: 27, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStringIOCtxt", file: !1, line: 8, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 6, size: 64, elements: !20)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !19, file: !1, line: 7, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !25, line: 28, baseType: !26)
!25 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!26 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !DILocation(line: 27, column: 21, scope: !12)
!28 = !DILocalVariable(name: "buffer", scope: !12, file: !1, line: 28, type: !29)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8192, elements: !31)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !{!32}
!32 = !DISubrange(count: 1024)
!33 = !DILocation(line: 28, column: 10, scope: !12)
!34 = !DILocalVariable(name: "size", scope: !12, file: !1, line: 29, type: !15)
!35 = !DILocation(line: 29, column: 9, scope: !12)
!36 = !DILocation(line: 31, column: 30, scope: !12)
!37 = !DILocation(line: 31, column: 24, scope: !12)
!38 = !DILocation(line: 31, column: 5, scope: !12)
!39 = !DILocation(line: 32, column: 24, scope: !12)
!40 = !DILocation(line: 32, column: 5, scope: !12)
!41 = !DILocation(line: 34, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !12, file: !1, line: 34, column: 9)
!43 = !DILocation(line: 34, column: 14, scope: !42)
!44 = !DILocation(line: 34, column: 9, scope: !12)
!45 = !DILocation(line: 35, column: 14, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !1, line: 34, column: 19)
!47 = !DILocation(line: 36, column: 5, scope: !46)
!48 = !DILocation(line: 37, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !12, file: !1, line: 37, column: 9)
!50 = !DILocation(line: 37, column: 14, scope: !49)
!51 = !DILocation(line: 37, column: 9, scope: !12)
!52 = !DILocation(line: 38, column: 14, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 37, column: 22)
!54 = !DILocation(line: 39, column: 5, scope: !53)
!55 = !DILocation(line: 41, column: 19, scope: !12)
!56 = !DILocation(line: 41, column: 26, scope: !12)
!57 = !DILocation(line: 41, column: 34, scope: !12)
!58 = !DILocation(line: 41, column: 5, scope: !12)
!59 = !DILocation(line: 42, column: 5, scope: !12)
!60 = distinct !DISubprogram(name: "xmlStringRead", scope: !1, file: !1, line: 10, type: !61, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !16)
!61 = !DISubroutineType(types: !62)
!62 = !{!15, !63, !64, !15}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!65 = !DILocalVariable(name: "vctxt", arg: 1, scope: !60, file: !1, line: 10, type: !63)
!66 = !DILocation(line: 10, column: 32, scope: !60)
!67 = !DILocalVariable(name: "buf", arg: 2, scope: !60, file: !1, line: 10, type: !64)
!68 = !DILocation(line: 10, column: 45, scope: !60)
!69 = !DILocalVariable(name: "size", arg: 3, scope: !60, file: !1, line: 10, type: !15)
!70 = !DILocation(line: 10, column: 54, scope: !60)
!71 = !DILocalVariable(name: "ctxt", scope: !60, file: !1, line: 11, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!73 = !DILocation(line: 11, column: 22, scope: !60)
!74 = !DILocation(line: 11, column: 29, scope: !60)
!75 = !DILocalVariable(name: "zero", scope: !60, file: !1, line: 12, type: !22)
!76 = !DILocation(line: 12, column: 20, scope: !60)
!77 = !DILocalVariable(name: "len", scope: !60, file: !1, line: 13, type: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !79, line: 46, baseType: !80)
!79 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!80 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!81 = !DILocation(line: 13, column: 12, scope: !60)
!82 = !DILocation(line: 15, column: 19, scope: !60)
!83 = !DILocation(line: 15, column: 25, scope: !60)
!84 = !DILocation(line: 15, column: 33, scope: !60)
!85 = !DILocation(line: 15, column: 12, scope: !60)
!86 = !DILocation(line: 15, column: 10, scope: !60)
!87 = !DILocation(line: 16, column: 11, scope: !60)
!88 = !DILocation(line: 16, column: 18, scope: !60)
!89 = !DILocation(line: 16, column: 25, scope: !60)
!90 = !DILocation(line: 16, column: 31, scope: !60)
!91 = !DILocation(line: 16, column: 23, scope: !60)
!92 = !DILocation(line: 16, column: 37, scope: !60)
!93 = !DILocation(line: 16, column: 9, scope: !60)
!94 = !DILocation(line: 18, column: 5, scope: !60)
!95 = !DILocation(line: 20, column: 12, scope: !60)
!96 = !DILocation(line: 20, column: 17, scope: !60)
!97 = !DILocation(line: 20, column: 23, scope: !60)
!98 = !DILocation(line: 20, column: 28, scope: !60)
!99 = !DILocation(line: 20, column: 5, scope: !60)
!100 = !DILocation(line: 21, column: 18, scope: !60)
!101 = !DILocation(line: 21, column: 5, scope: !60)
!102 = !DILocation(line: 21, column: 11, scope: !60)
!103 = !DILocation(line: 21, column: 15, scope: !60)
!104 = !DILocation(line: 23, column: 12, scope: !60)
!105 = !DILocation(line: 23, column: 11, scope: !60)
!106 = !DILocation(line: 23, column: 5, scope: !60)
!107 = distinct !DISubprogram(name: "memcpy", scope: !108, file: !108, line: 12, type: !109, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!108 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!109 = !DISubroutineType(types: !110)
!110 = !{!63, !63, !111, !78}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!113 = !DILocalVariable(name: "destaddr", arg: 1, scope: !107, file: !108, line: 12, type: !63)
!114 = !DILocation(line: 12, column: 20, scope: !107)
!115 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !107, file: !108, line: 12, type: !111)
!116 = !DILocation(line: 12, column: 42, scope: !107)
!117 = !DILocalVariable(name: "len", arg: 3, scope: !107, file: !108, line: 12, type: !78)
!118 = !DILocation(line: 12, column: 58, scope: !107)
!119 = !DILocalVariable(name: "dest", scope: !107, file: !108, line: 13, type: !64)
!120 = !DILocation(line: 13, column: 9, scope: !107)
!121 = !DILocation(line: 13, column: 16, scope: !107)
!122 = !DILocalVariable(name: "src", scope: !107, file: !108, line: 14, type: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!125 = !DILocation(line: 14, column: 15, scope: !107)
!126 = !DILocation(line: 14, column: 21, scope: !107)
!127 = !DILocation(line: 16, column: 3, scope: !107)
!128 = !DILocation(line: 16, column: 13, scope: !107)
!129 = !DILocation(line: 16, column: 16, scope: !107)
!130 = !DILocation(line: 17, column: 19, scope: !107)
!131 = !DILocation(line: 17, column: 15, scope: !107)
!132 = !DILocation(line: 17, column: 10, scope: !107)
!133 = !DILocation(line: 17, column: 13, scope: !107)
!134 = distinct !{!134, !127, !130, !135}
!135 = !{!"llvm.loop.mustprogress"}
!136 = !DILocation(line: 18, column: 10, scope: !107)
!137 = !DILocation(line: 18, column: 3, scope: !107)
