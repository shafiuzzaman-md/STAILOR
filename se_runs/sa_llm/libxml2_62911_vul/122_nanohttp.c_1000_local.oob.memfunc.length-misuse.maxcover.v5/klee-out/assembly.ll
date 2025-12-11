; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/122_nanohttp.c_1000_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/122_nanohttp.c_1000_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"ilen\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/122_nanohttp.c_1000_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNanoHTTPMethodRedir = private unnamed_addr constant [107 x i8] c"void xmlNanoHTTPMethodRedir(const char *, const char *, const char *, char **, char **, const char *, int)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !16 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i8** %3, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i8** %4, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i8** %7, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %8, metadata !33, metadata !DIExpression()), !dbg !34
  %9 = call i32 (i32, ...) bitcast (i32 (...)* @klee_make_symbolic_str to i32 (i32, ...)*)(i32 noundef 256), !dbg !35
  %10 = sext i32 %9 to i64, !dbg !35
  %11 = inttoptr i64 %10 to i8*, !dbg !35
  store i8* %11, i8** %2, align 8, !dbg !36
  %12 = call i32 (i32, ...) bitcast (i32 (...)* @klee_make_symbolic_str to i32 (i32, ...)*)(i32 noundef 16), !dbg !37
  %13 = sext i32 %12 to i64, !dbg !37
  %14 = inttoptr i64 %13 to i8*, !dbg !37
  store i8* %14, i8** %3, align 8, !dbg !38
  %15 = call i32 (i32, ...) bitcast (i32 (...)* @klee_make_symbolic_str to i32 (i32, ...)*)(i32 noundef 1024), !dbg !39
  %16 = sext i32 %15 to i64, !dbg !39
  %17 = inttoptr i64 %16 to i8*, !dbg !39
  store i8* %17, i8** %4, align 8, !dbg !40
  %18 = call i8* @malloc(i64 noundef 8), !dbg !41
  %19 = bitcast i8* %18 to i8**, !dbg !42
  store i8** %19, i8*** %5, align 8, !dbg !43
  %20 = call i8* @malloc(i64 noundef 8), !dbg !44
  %21 = bitcast i8* %20 to i8**, !dbg !45
  store i8** %21, i8*** %6, align 8, !dbg !46
  %22 = call i32 (i32, ...) bitcast (i32 (...)* @klee_make_symbolic_str to i32 (i32, ...)*)(i32 noundef 512), !dbg !47
  %23 = sext i32 %22 to i64, !dbg !47
  %24 = inttoptr i64 %23 to i8*, !dbg !47
  store i8* %24, i8** %7, align 8, !dbg !48
  %25 = bitcast i32* %8 to i8*, !dbg !49
  call void @klee_make_symbolic(i8* noundef %25, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !50
  %26 = load i32, i32* %8, align 4, !dbg !51
  %27 = icmp sge i32 %26, 0, !dbg !52
  %28 = zext i1 %27 to i32, !dbg !52
  %29 = sext i32 %28 to i64, !dbg !51
  call void @klee_assume(i64 noundef %29), !dbg !53
  %30 = load i32, i32* %8, align 4, !dbg !54
  %31 = icmp slt i32 %30, 1024, !dbg !55
  %32 = zext i1 %31 to i32, !dbg !55
  %33 = sext i32 %32 to i64, !dbg !54
  call void @klee_assume(i64 noundef %33), !dbg !56
  %34 = load i8*, i8** %2, align 8, !dbg !57
  %35 = load i8*, i8** %3, align 8, !dbg !58
  %36 = load i8*, i8** %4, align 8, !dbg !59
  %37 = load i8**, i8*** %5, align 8, !dbg !60
  %38 = load i8**, i8*** %6, align 8, !dbg !61
  %39 = load i8*, i8** %7, align 8, !dbg !62
  %40 = load i32, i32* %8, align 4, !dbg !63
  call void @xmlNanoHTTPMethodRedir(i8* noundef %34, i8* noundef %35, i8* noundef %36, i8** noundef %37, i8** noundef %38, i8* noundef %39, i32 noundef %40), !dbg !64
  %41 = load i8**, i8*** %5, align 8, !dbg !65
  %42 = bitcast i8** %41 to i8*, !dbg !65
  call void @free(i8* noundef %42), !dbg !66
  %43 = load i8**, i8*** %6, align 8, !dbg !67
  %44 = bitcast i8** %43 to i8*, !dbg !67
  call void @free(i8* noundef %44), !dbg !68
  ret i32 0, !dbg !69
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @klee_make_symbolic_str(...) #2

declare i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlNanoHTTPMethodRedir(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8** noundef %3, i8** noundef %4, i8* noundef %5, i32 noundef %6) #0 !dbg !70 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockaddr_in, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !75, metadata !DIExpression()), !dbg !76
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !77, metadata !DIExpression()), !dbg !78
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !79, metadata !DIExpression()), !dbg !80
  store i8** %3, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !81, metadata !DIExpression()), !dbg !82
  store i8** %4, i8*** %12, align 8
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !83, metadata !DIExpression()), !dbg !84
  store i8* %5, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !85, metadata !DIExpression()), !dbg !86
  store i32 %6, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %15, metadata !89, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata i32* %16, metadata !117, metadata !DIExpression()), !dbg !119
  %17 = bitcast %struct.sockaddr_in* %15 to i8*, !dbg !120
  %18 = call i8* @memset(i8* %17, i32 0, i64 16), !dbg !120
  %19 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @__PRETTY_FUNCTION__.xmlNanoHTTPMethodRedir, i64 0, i64 0)), !dbg !121
  ret void, !dbg !122
}

declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !123 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !131, metadata !DIExpression()), !dbg !132
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !133, metadata !DIExpression()), !dbg !134
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i8** %7, metadata !137, metadata !DIExpression()), !dbg !138
  %8 = load i8*, i8** %4, align 8, !dbg !139
  store i8* %8, i8** %7, align 8, !dbg !138
  br label %9, !dbg !140

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !141
  %11 = add i64 %10, -1, !dbg !141
  store i64 %11, i64* %6, align 8, !dbg !141
  %12 = icmp ugt i64 %10, 0, !dbg !142
  br i1 %12, label %13, label %18, !dbg !140

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !143
  %15 = trunc i32 %14 to i8, !dbg !143
  %16 = load i8*, i8** %7, align 8, !dbg !144
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !144
  store i8* %17, i8** %7, align 8, !dbg !144
  store i8 %15, i8* %16, align 1, !dbg !145
  br label %9, !dbg !140, !llvm.loop !146

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !148
  ret i8* %19, !dbg !149
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/122_nanohttp.c_1000_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "24733fe6fe5d8e83edce5aedda59a8e2")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 23, type: !17, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{}
!21 = !DILocalVariable(name: "URL", scope: !16, file: !1, line: 24, type: !4)
!22 = !DILocation(line: 24, column: 11, scope: !16)
!23 = !DILocalVariable(name: "method", scope: !16, file: !1, line: 25, type: !4)
!24 = !DILocation(line: 25, column: 11, scope: !16)
!25 = !DILocalVariable(name: "input", scope: !16, file: !1, line: 26, type: !4)
!26 = !DILocation(line: 26, column: 11, scope: !16)
!27 = !DILocalVariable(name: "contentType", scope: !16, file: !1, line: 27, type: !3)
!28 = !DILocation(line: 27, column: 12, scope: !16)
!29 = !DILocalVariable(name: "redir", scope: !16, file: !1, line: 28, type: !3)
!30 = !DILocation(line: 28, column: 12, scope: !16)
!31 = !DILocalVariable(name: "headers", scope: !16, file: !1, line: 29, type: !4)
!32 = !DILocation(line: 29, column: 11, scope: !16)
!33 = !DILocalVariable(name: "ilen", scope: !16, file: !1, line: 30, type: !19)
!34 = !DILocation(line: 30, column: 9, scope: !16)
!35 = !DILocation(line: 32, column: 11, scope: !16)
!36 = !DILocation(line: 32, column: 9, scope: !16)
!37 = !DILocation(line: 33, column: 14, scope: !16)
!38 = !DILocation(line: 33, column: 12, scope: !16)
!39 = !DILocation(line: 34, column: 13, scope: !16)
!40 = !DILocation(line: 34, column: 11, scope: !16)
!41 = !DILocation(line: 35, column: 28, scope: !16)
!42 = !DILocation(line: 35, column: 19, scope: !16)
!43 = !DILocation(line: 35, column: 17, scope: !16)
!44 = !DILocation(line: 36, column: 22, scope: !16)
!45 = !DILocation(line: 36, column: 13, scope: !16)
!46 = !DILocation(line: 36, column: 11, scope: !16)
!47 = !DILocation(line: 37, column: 15, scope: !16)
!48 = !DILocation(line: 37, column: 13, scope: !16)
!49 = !DILocation(line: 39, column: 24, scope: !16)
!50 = !DILocation(line: 39, column: 5, scope: !16)
!51 = !DILocation(line: 40, column: 17, scope: !16)
!52 = !DILocation(line: 40, column: 22, scope: !16)
!53 = !DILocation(line: 40, column: 5, scope: !16)
!54 = !DILocation(line: 41, column: 17, scope: !16)
!55 = !DILocation(line: 41, column: 22, scope: !16)
!56 = !DILocation(line: 41, column: 5, scope: !16)
!57 = !DILocation(line: 43, column: 28, scope: !16)
!58 = !DILocation(line: 43, column: 33, scope: !16)
!59 = !DILocation(line: 43, column: 41, scope: !16)
!60 = !DILocation(line: 43, column: 48, scope: !16)
!61 = !DILocation(line: 43, column: 61, scope: !16)
!62 = !DILocation(line: 43, column: 68, scope: !16)
!63 = !DILocation(line: 43, column: 77, scope: !16)
!64 = !DILocation(line: 43, column: 5, scope: !16)
!65 = !DILocation(line: 45, column: 10, scope: !16)
!66 = !DILocation(line: 45, column: 5, scope: !16)
!67 = !DILocation(line: 46, column: 10, scope: !16)
!68 = !DILocation(line: 46, column: 5, scope: !16)
!69 = !DILocation(line: 48, column: 5, scope: !16)
!70 = distinct !DISubprogram(name: "xmlNanoHTTPMethodRedir", scope: !1, file: !1, line: 51, type: !71, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73, !73, !73, !3, !3, !73, !19}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!75 = !DILocalVariable(name: "URL", arg: 1, scope: !70, file: !1, line: 51, type: !73)
!76 = !DILocation(line: 51, column: 41, scope: !70)
!77 = !DILocalVariable(name: "method", arg: 2, scope: !70, file: !1, line: 51, type: !73)
!78 = !DILocation(line: 51, column: 58, scope: !70)
!79 = !DILocalVariable(name: "input", arg: 3, scope: !70, file: !1, line: 51, type: !73)
!80 = !DILocation(line: 51, column: 78, scope: !70)
!81 = !DILocalVariable(name: "contentType", arg: 4, scope: !70, file: !1, line: 52, type: !3)
!82 = !DILocation(line: 52, column: 36, scope: !70)
!83 = !DILocalVariable(name: "redir", arg: 5, scope: !70, file: !1, line: 52, type: !3)
!84 = !DILocation(line: 52, column: 56, scope: !70)
!85 = !DILocalVariable(name: "headers", arg: 6, scope: !70, file: !1, line: 53, type: !73)
!86 = !DILocation(line: 53, column: 41, scope: !70)
!87 = !DILocalVariable(name: "ilen", arg: 7, scope: !70, file: !1, line: 53, type: !19)
!88 = !DILocation(line: 53, column: 54, scope: !70)
!89 = !DILocalVariable(name: "sockin", scope: !70, file: !1, line: 54, type: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !91, line: 247, size: 128, elements: !92)
!91 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "fbd766480c8cb9a8fe07ee7aa568ee60")
!92 = !{!93, !97, !103, !111}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !90, file: !91, line: 249, baseType: !94, size: 16)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !95, line: 28, baseType: !96)
!95 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "5066b774f0f3cdb5cbbb5467306060db")
!96 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !90, file: !91, line: 250, baseType: !98, size: 16, offset: 16)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !91, line: 125, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !100, line: 25, baseType: !101)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !102, line: 40, baseType: !96)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !90, file: !91, line: 251, baseType: !104, size: 32, offset: 32)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !91, line: 31, size: 32, elements: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !104, file: !91, line: 33, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !91, line: 30, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !100, line: 26, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !102, line: 42, baseType: !110)
!110 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !90, file: !91, line: 254, baseType: !112, size: 64, offset: 64)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 64, elements: !114)
!113 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!114 = !{!115}
!115 = !DISubrange(count: 8)
!116 = !DILocation(line: 54, column: 24, scope: !70)
!117 = !DILocalVariable(name: "s", scope: !70, file: !1, line: 58, type: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "SOCKET", file: !1, line: 17, baseType: !19)
!119 = !DILocation(line: 58, column: 12, scope: !70)
!120 = !DILocation(line: 60, column: 5, scope: !70)
!121 = !DILocation(line: 64, column: 5, scope: !70)
!122 = !DILocation(line: 72, column: 1, scope: !70)
!123 = distinct !DISubprogram(name: "memset", scope: !124, file: !124, line: 12, type: !125, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !20)
!124 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!125 = !DISubroutineType(types: !126)
!126 = !{!127, !127, !19, !128}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !129, line: 46, baseType: !130)
!129 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!130 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!131 = !DILocalVariable(name: "dst", arg: 1, scope: !123, file: !124, line: 12, type: !127)
!132 = !DILocation(line: 12, column: 20, scope: !123)
!133 = !DILocalVariable(name: "s", arg: 2, scope: !123, file: !124, line: 12, type: !19)
!134 = !DILocation(line: 12, column: 29, scope: !123)
!135 = !DILocalVariable(name: "count", arg: 3, scope: !123, file: !124, line: 12, type: !128)
!136 = !DILocation(line: 12, column: 39, scope: !123)
!137 = !DILocalVariable(name: "a", scope: !123, file: !124, line: 13, type: !4)
!138 = !DILocation(line: 13, column: 9, scope: !123)
!139 = !DILocation(line: 13, column: 13, scope: !123)
!140 = !DILocation(line: 14, column: 3, scope: !123)
!141 = !DILocation(line: 14, column: 15, scope: !123)
!142 = !DILocation(line: 14, column: 18, scope: !123)
!143 = !DILocation(line: 15, column: 12, scope: !123)
!144 = !DILocation(line: 15, column: 7, scope: !123)
!145 = !DILocation(line: 15, column: 10, scope: !123)
!146 = distinct !{!146, !140, !143, !147}
!147 = !{!"llvm.loop.mustprogress"}
!148 = !DILocation(line: 16, column: 10, scope: !123)
!149 = !DILocation(line: 16, column: 3, scope: !123)
