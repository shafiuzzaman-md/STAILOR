; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/165_nanohttp.c_1015_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/165_nanohttp.c_1015_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"use_ipv6\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_55980_vul/165_nanohttp.c_1015_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNanoHTTPOpen = private unnamed_addr constant [45 x i8] c"void *xmlNanoHTTPOpen(const char *, char **)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"http://example.com\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"url\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlNanoHTTPOpen(i8* noundef %0, i8** noundef %1) #0 !dbg !14 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca %struct.sockaddr_in6, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !23, metadata !DIExpression()), !dbg !24
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %5, metadata !27, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %6, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata [256 x i8]* %7, metadata !32, metadata !DIExpression()), !dbg !36
  %10 = bitcast i32* %5 to i8*, !dbg !37
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !38
  %11 = bitcast i32* %6 to i8*, !dbg !39
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !40
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !41
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !42
  %13 = load i32, i32* %6, align 4, !dbg !43
  %14 = icmp sge i32 %13, 0, !dbg !44
  br i1 %14, label %15, label %18, !dbg !45

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4, !dbg !46
  %17 = icmp sle i32 %16, 65535, !dbg !47
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi i1 [ false, %2 ], [ %17, %15 ], !dbg !48
  %20 = zext i1 %19 to i32, !dbg !45
  %21 = sext i32 %20 to i64, !dbg !43
  call void @klee_assume(i64 noundef %21), !dbg !49
  %22 = load i32, i32* %5, align 4, !dbg !50
  %23 = icmp eq i32 %22, 0, !dbg !51
  br i1 %23, label %27, label %24, !dbg !52

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4, !dbg !53
  %26 = icmp eq i32 %25, 1, !dbg !54
  br label %27, !dbg !52

27:                                               ; preds = %24, %18
  %28 = phi i1 [ true, %18 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !52
  %30 = sext i32 %29 to i64, !dbg !50
  call void @klee_assume(i64 noundef %30), !dbg !55
  %31 = load i32, i32* %5, align 4, !dbg !56
  %32 = icmp ne i32 %31, 0, !dbg !56
  br i1 %32, label %33, label %37, !dbg !58

33:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6* %8, metadata !59, metadata !DIExpression()), !dbg !100
  %34 = bitcast %struct.sockaddr_in6* %8 to i8*, !dbg !101
  %35 = call i8* @memset(i8* %34, i32 0, i64 28), !dbg !101
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.xmlNanoHTTPOpen, i64 0, i64 0)), !dbg !102
  br label %41, !dbg !103

37:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %9, metadata !104, metadata !DIExpression()), !dbg !117
  %38 = bitcast %struct.sockaddr_in* %9 to i8*, !dbg !118
  %39 = call i8* @memset(i8* %38, i32 0, i64 16), !dbg !118
  %40 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.xmlNanoHTTPOpen, i64 0, i64 0)), !dbg !119
  br label %41

41:                                               ; preds = %37, %33
  ret i8* null, !dbg !120
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !121 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !124, metadata !DIExpression()), !dbg !125
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8, !dbg !125
  call void @llvm.dbg.declare(metadata i8** %3, metadata !126, metadata !DIExpression()), !dbg !127
  store i8* null, i8** %3, align 8, !dbg !127
  %4 = load i8*, i8** %2, align 8, !dbg !128
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 19, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !129
  %5 = load i8*, i8** %2, align 8, !dbg !130
  %6 = call i8* @xmlNanoHTTPOpen(i8* noundef %5, i8** noundef %3), !dbg !131
  ret i32 0, !dbg !132
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !133 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !140, metadata !DIExpression()), !dbg !141
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !142, metadata !DIExpression()), !dbg !143
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i8** %7, metadata !146, metadata !DIExpression()), !dbg !147
  %8 = load i8*, i8** %4, align 8, !dbg !148
  store i8* %8, i8** %7, align 8, !dbg !147
  br label %9, !dbg !149

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !150
  %11 = add i64 %10, -1, !dbg !150
  store i64 %11, i64* %6, align 8, !dbg !150
  %12 = icmp ugt i64 %10, 0, !dbg !151
  br i1 %12, label %13, label %18, !dbg !149

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !152
  %15 = trunc i32 %14 to i8, !dbg !152
  %16 = load i8*, i8** %7, align 8, !dbg !153
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !153
  store i8* %17, i8** %7, align 8, !dbg !153
  store i8 %15, i8* %16, align 1, !dbg !154
  br label %9, !dbg !149, !llvm.loop !155

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !157
  ret i8* %19, !dbg !158
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/165_nanohttp.c_1015_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3419be60c31f936e39912039e687dbe7")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "xmlNanoHTTPOpen", scope: !1, file: !1, line: 26, type: !15, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!15 = !DISubroutineType(types: !16)
!16 = !{!3, !17, !20}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!22 = !{}
!23 = !DILocalVariable(name: "URL", arg: 1, scope: !14, file: !1, line: 26, type: !17)
!24 = !DILocation(line: 26, column: 35, scope: !14)
!25 = !DILocalVariable(name: "contentType", arg: 2, scope: !14, file: !1, line: 26, type: !20)
!26 = !DILocation(line: 26, column: 47, scope: !14)
!27 = !DILocalVariable(name: "use_ipv6", scope: !14, file: !1, line: 28, type: !28)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DILocation(line: 28, column: 9, scope: !14)
!30 = !DILocalVariable(name: "port", scope: !14, file: !1, line: 29, type: !28)
!31 = !DILocation(line: 29, column: 9, scope: !14)
!32 = !DILocalVariable(name: "hostname", scope: !14, file: !1, line: 30, type: !33)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 256)
!36 = !DILocation(line: 30, column: 10, scope: !14)
!37 = !DILocation(line: 32, column: 24, scope: !14)
!38 = !DILocation(line: 32, column: 5, scope: !14)
!39 = !DILocation(line: 33, column: 24, scope: !14)
!40 = !DILocation(line: 33, column: 5, scope: !14)
!41 = !DILocation(line: 34, column: 24, scope: !14)
!42 = !DILocation(line: 34, column: 5, scope: !14)
!43 = !DILocation(line: 37, column: 17, scope: !14)
!44 = !DILocation(line: 37, column: 22, scope: !14)
!45 = !DILocation(line: 37, column: 27, scope: !14)
!46 = !DILocation(line: 37, column: 30, scope: !14)
!47 = !DILocation(line: 37, column: 35, scope: !14)
!48 = !DILocation(line: 0, scope: !14)
!49 = !DILocation(line: 37, column: 5, scope: !14)
!50 = !DILocation(line: 38, column: 17, scope: !14)
!51 = !DILocation(line: 38, column: 26, scope: !14)
!52 = !DILocation(line: 38, column: 31, scope: !14)
!53 = !DILocation(line: 38, column: 34, scope: !14)
!54 = !DILocation(line: 38, column: 43, scope: !14)
!55 = !DILocation(line: 38, column: 5, scope: !14)
!56 = !DILocation(line: 41, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !14, file: !1, line: 41, column: 9)
!58 = !DILocation(line: 41, column: 9, scope: !14)
!59 = !DILocalVariable(name: "sockin6", scope: !60, file: !1, line: 43, type: !61)
!60 = distinct !DILexicalBlock(scope: !57, file: !1, line: 41, column: 19)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !62, line: 262, size: 224, elements: !63)
!62 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "fbd766480c8cb9a8fe07ee7aa568ee60")
!63 = !{!64, !68, !74, !78, !99}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !61, file: !62, line: 264, baseType: !65, size: 16)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !66, line: 28, baseType: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "5066b774f0f3cdb5cbbb5467306060db")
!67 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !61, file: !62, line: 265, baseType: !69, size: 16, offset: 16)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !62, line: 125, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !71, line: 25, baseType: !72)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !73, line: 40, baseType: !67)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!74 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !61, file: !62, line: 266, baseType: !75, size: 32, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !71, line: 26, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !73, line: 42, baseType: !77)
!77 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !61, file: !62, line: 267, baseType: !79, size: 128, offset: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !62, line: 221, size: 128, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !79, file: !62, line: 228, baseType: !82, size: 128)
!82 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !79, file: !62, line: 223, size: 128, elements: !83)
!83 = !{!84, !91, !95}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !82, file: !62, line: 225, baseType: !85, size: 128)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 128, elements: !89)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !71, line: 24, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !73, line: 38, baseType: !88)
!88 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!89 = !{!90}
!90 = !DISubrange(count: 16)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !82, file: !62, line: 226, baseType: !92, size: 128)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 8)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !82, file: !62, line: 227, baseType: !96, size: 128)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 128, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 4)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !61, file: !62, line: 268, baseType: !75, size: 32, offset: 192)
!100 = !DILocation(line: 43, column: 29, scope: !60)
!101 = !DILocation(line: 44, column: 9, scope: !60)
!102 = !DILocation(line: 53, column: 9, scope: !60)
!103 = !DILocation(line: 54, column: 5, scope: !60)
!104 = !DILocalVariable(name: "sockin", scope: !105, file: !1, line: 56, type: !106)
!105 = distinct !DILexicalBlock(scope: !57, file: !1, line: 54, column: 12)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !62, line: 247, size: 128, elements: !107)
!107 = !{!108, !109, !110, !115}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !106, file: !62, line: 249, baseType: !65, size: 16)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !106, file: !62, line: 250, baseType: !69, size: 16, offset: 16)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !106, file: !62, line: 251, baseType: !111, size: 32, offset: 32)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !62, line: 31, size: 32, elements: !112)
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !111, file: !62, line: 33, baseType: !114, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !62, line: 30, baseType: !75)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !106, file: !62, line: 254, baseType: !116, size: 64, offset: 64)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 64, elements: !93)
!117 = !DILocation(line: 56, column: 28, scope: !105)
!118 = !DILocation(line: 57, column: 9, scope: !105)
!119 = !DILocation(line: 63, column: 9, scope: !105)
!120 = !DILocation(line: 66, column: 5, scope: !14)
!121 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 70, type: !122, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!122 = !DISubroutineType(types: !123)
!123 = !{!28}
!124 = !DILocalVariable(name: "url", scope: !121, file: !1, line: 71, type: !21)
!125 = !DILocation(line: 71, column: 11, scope: !121)
!126 = !DILocalVariable(name: "contentType", scope: !121, file: !1, line: 72, type: !21)
!127 = !DILocation(line: 72, column: 11, scope: !121)
!128 = !DILocation(line: 75, column: 24, scope: !121)
!129 = !DILocation(line: 75, column: 5, scope: !121)
!130 = !DILocation(line: 78, column: 21, scope: !121)
!131 = !DILocation(line: 78, column: 5, scope: !121)
!132 = !DILocation(line: 80, column: 5, scope: !121)
!133 = distinct !DISubprogram(name: "memset", scope: !134, file: !134, line: 12, type: !135, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !22)
!134 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!135 = !DISubroutineType(types: !136)
!136 = !{!3, !3, !28, !137}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 46, baseType: !139)
!138 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!139 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!140 = !DILocalVariable(name: "dst", arg: 1, scope: !133, file: !134, line: 12, type: !3)
!141 = !DILocation(line: 12, column: 20, scope: !133)
!142 = !DILocalVariable(name: "s", arg: 2, scope: !133, file: !134, line: 12, type: !28)
!143 = !DILocation(line: 12, column: 29, scope: !133)
!144 = !DILocalVariable(name: "count", arg: 3, scope: !133, file: !134, line: 12, type: !137)
!145 = !DILocation(line: 12, column: 39, scope: !133)
!146 = !DILocalVariable(name: "a", scope: !133, file: !134, line: 13, type: !21)
!147 = !DILocation(line: 13, column: 9, scope: !133)
!148 = !DILocation(line: 13, column: 13, scope: !133)
!149 = !DILocation(line: 14, column: 3, scope: !133)
!150 = !DILocation(line: 14, column: 15, scope: !133)
!151 = !DILocation(line: 14, column: 18, scope: !133)
!152 = !DILocation(line: 15, column: 12, scope: !133)
!153 = !DILocation(line: 15, column: 7, scope: !133)
!154 = !DILocation(line: 15, column: 10, scope: !133)
!155 = distinct !{!155, !149, !152, !156}
!156 = !{!"llvm.loop.mustprogress"}
!157 = !DILocation(line: 16, column: 10, scope: !133)
!158 = !DILocation(line: 16, column: 3, scope: !133)
