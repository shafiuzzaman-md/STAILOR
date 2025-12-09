; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/122_nanohttp.c_1000_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/122_nanohttp.c_1000_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }

@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/122_nanohttp.c_1000_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNanoHTTPMethodRedir = private unnamed_addr constant [95 x i8] c"void xmlNanoHTTPMethodRedir(const char *, const char *, const char *, char **, char **, int *)\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"URL\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"input\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlNanoHTTPMethodRedir(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8** noundef %3, i8** noundef %4, i32* noundef %5) #0 !dbg !12 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sockaddr_in, align 4
  %14 = alloca %struct.sockaddr_in6, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !23, metadata !DIExpression()), !dbg !24
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !25, metadata !DIExpression()), !dbg !26
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !27, metadata !DIExpression()), !dbg !28
  store i8** %3, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !29, metadata !DIExpression()), !dbg !30
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !31, metadata !DIExpression()), !dbg !32
  store i32* %5, i32** %12, align 8
  call void @llvm.dbg.declare(metadata i32** %12, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %13, metadata !35, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6* %14, metadata !63, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata i32* %15, metadata !89, metadata !DIExpression()), !dbg !91
  %16 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @__PRETTY_FUNCTION__.xmlNanoHTTPMethodRedir, i64 0, i64 0)), !dbg !92
  %17 = bitcast %struct.sockaddr_in* %13 to i8*, !dbg !93
  %18 = call i8* @memset(i8* %17, i32 0, i64 16), !dbg !93
  %19 = bitcast %struct.sockaddr_in6* %14 to i8*, !dbg !94
  %20 = call i8* @memset(i8* %19, i32 0, i64 28), !dbg !94
  %21 = load i32, i32* %15, align 4, !dbg !95
  ret void, !dbg !96
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !97 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [16 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !100, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata [16 x i8]* %3, metadata !105, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i8** %5, metadata !110, metadata !DIExpression()), !dbg !111
  store i8* null, i8** %5, align 8, !dbg !111
  call void @llvm.dbg.declare(metadata i8** %6, metadata !112, metadata !DIExpression()), !dbg !113
  store i8* null, i8** %6, align 8, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %7, metadata !114, metadata !DIExpression()), !dbg !115
  store i32 0, i32* %7, align 4, !dbg !115
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !116
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !117
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0, !dbg !118
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !119
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !120
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)), !dbg !121
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !122
  store i8 0, i8* %11, align 1, !dbg !123
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 15, !dbg !124
  store i8 0, i8* %12, align 1, !dbg !125
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 255, !dbg !126
  store i8 0, i8* %13, align 1, !dbg !127
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !128
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0, !dbg !129
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !130
  call void @xmlNanoHTTPMethodRedir(i8* noundef %14, i8* noundef %15, i8* noundef %16, i8** noundef %5, i8** noundef %6, i32* noundef %7), !dbg !131
  ret i32 0, !dbg !132
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !133 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !141, metadata !DIExpression()), !dbg !142
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !143, metadata !DIExpression()), !dbg !144
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i8** %7, metadata !147, metadata !DIExpression()), !dbg !148
  %8 = load i8*, i8** %4, align 8, !dbg !149
  store i8* %8, i8** %7, align 8, !dbg !148
  br label %9, !dbg !150

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !151
  %11 = add i64 %10, -1, !dbg !151
  store i64 %11, i64* %6, align 8, !dbg !151
  %12 = icmp ugt i64 %10, 0, !dbg !152
  br i1 %12, label %13, label %18, !dbg !150

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !153
  %15 = trunc i32 %14 to i8, !dbg !153
  %16 = load i8*, i8** %7, align 8, !dbg !154
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !154
  store i8* %17, i8** %7, align 8, !dbg !154
  store i8 %15, i8* %16, align 1, !dbg !155
  br label %9, !dbg !150, !llvm.loop !156

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !158
  ret i8* %19, !dbg !159
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/122_nanohttp.c_1000_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "67bfa770f1852462cf4ca8d1bd198422")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "xmlNanoHTTPMethodRedir", scope: !1, file: !1, line: 16, type: !13, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15, !15, !15, !18, !18, !20}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{}
!23 = !DILocalVariable(name: "URL", arg: 1, scope: !12, file: !1, line: 16, type: !15)
!24 = !DILocation(line: 16, column: 41, scope: !12)
!25 = !DILocalVariable(name: "method", arg: 2, scope: !12, file: !1, line: 16, type: !15)
!26 = !DILocation(line: 16, column: 58, scope: !12)
!27 = !DILocalVariable(name: "input", arg: 3, scope: !12, file: !1, line: 16, type: !15)
!28 = !DILocation(line: 16, column: 78, scope: !12)
!29 = !DILocalVariable(name: "contentType", arg: 4, scope: !12, file: !1, line: 17, type: !18)
!30 = !DILocation(line: 17, column: 36, scope: !12)
!31 = !DILocalVariable(name: "redir", arg: 5, scope: !12, file: !1, line: 17, type: !18)
!32 = !DILocation(line: 17, column: 56, scope: !12)
!33 = !DILocalVariable(name: "code", arg: 6, scope: !12, file: !1, line: 17, type: !20)
!34 = !DILocation(line: 17, column: 68, scope: !12)
!35 = !DILocalVariable(name: "sockin", scope: !12, file: !1, line: 18, type: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !37, line: 247, size: 128, elements: !38)
!37 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "fbd766480c8cb9a8fe07ee7aa568ee60")
!38 = !{!39, !43, !49, !57}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !36, file: !37, line: 249, baseType: !40, size: 16)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !41, line: 28, baseType: !42)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "5066b774f0f3cdb5cbbb5467306060db")
!42 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !36, file: !37, line: 250, baseType: !44, size: 16, offset: 16)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !37, line: 125, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !46, line: 25, baseType: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !48, line: 40, baseType: !42)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!49 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !36, file: !37, line: 251, baseType: !50, size: 32, offset: 32)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !37, line: 31, size: 32, elements: !51)
!51 = !{!52}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !50, file: !37, line: 33, baseType: !53, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !37, line: 30, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !46, line: 26, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !48, line: 42, baseType: !56)
!56 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !36, file: !37, line: 254, baseType: !58, size: 64, offset: 64)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !60)
!59 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!60 = !{!61}
!61 = !DISubrange(count: 8)
!62 = !DILocation(line: 18, column: 24, scope: !12)
!63 = !DILocalVariable(name: "sockin6", scope: !12, file: !1, line: 20, type: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !37, line: 262, size: 224, elements: !65)
!65 = !{!66, !67, !68, !69, !87}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !64, file: !37, line: 264, baseType: !40, size: 16)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !64, file: !37, line: 265, baseType: !44, size: 16, offset: 16)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !64, file: !37, line: 266, baseType: !54, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !64, file: !37, line: 267, baseType: !70, size: 128, offset: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !37, line: 221, size: 128, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !70, file: !37, line: 228, baseType: !73, size: 128)
!73 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !70, file: !37, line: 223, size: 128, elements: !74)
!74 = !{!75, !81, !83}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !73, file: !37, line: 225, baseType: !76, size: 128)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 128, elements: !79)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !46, line: 24, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !48, line: 38, baseType: !59)
!79 = !{!80}
!80 = !DISubrange(count: 16)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !73, file: !37, line: 226, baseType: !82, size: 128)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, elements: !60)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !73, file: !37, line: 227, baseType: !84, size: 128)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 128, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 4)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !64, file: !37, line: 268, baseType: !54, size: 32, offset: 192)
!88 = !DILocation(line: 20, column: 25, scope: !12)
!89 = !DILocalVariable(name: "s", scope: !12, file: !1, line: 22, type: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "SOCKET", file: !1, line: 12, baseType: !21)
!91 = !DILocation(line: 22, column: 12, scope: !12)
!92 = !DILocation(line: 25, column: 5, scope: !12)
!93 = !DILocation(line: 26, column: 5, scope: !12)
!94 = !DILocation(line: 29, column: 5, scope: !12)
!95 = !DILocation(line: 31, column: 11, scope: !12)
!96 = !DILocation(line: 32, column: 1, scope: !12)
!97 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 34, type: !98, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!98 = !DISubroutineType(types: !99)
!99 = !{!21}
!100 = !DILocalVariable(name: "URL", scope: !97, file: !1, line: 36, type: !101)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 256)
!104 = !DILocation(line: 36, column: 10, scope: !97)
!105 = !DILocalVariable(name: "method", scope: !97, file: !1, line: 37, type: !106)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !79)
!107 = !DILocation(line: 37, column: 10, scope: !97)
!108 = !DILocalVariable(name: "input", scope: !97, file: !1, line: 38, type: !101)
!109 = !DILocation(line: 38, column: 10, scope: !97)
!110 = !DILocalVariable(name: "contentType", scope: !97, file: !1, line: 39, type: !19)
!111 = !DILocation(line: 39, column: 11, scope: !97)
!112 = !DILocalVariable(name: "redir", scope: !97, file: !1, line: 40, type: !19)
!113 = !DILocation(line: 40, column: 11, scope: !97)
!114 = !DILocalVariable(name: "code", scope: !97, file: !1, line: 41, type: !21)
!115 = !DILocation(line: 41, column: 9, scope: !97)
!116 = !DILocation(line: 43, column: 24, scope: !97)
!117 = !DILocation(line: 43, column: 5, scope: !97)
!118 = !DILocation(line: 44, column: 24, scope: !97)
!119 = !DILocation(line: 44, column: 5, scope: !97)
!120 = !DILocation(line: 45, column: 24, scope: !97)
!121 = !DILocation(line: 45, column: 5, scope: !97)
!122 = !DILocation(line: 48, column: 5, scope: !97)
!123 = !DILocation(line: 48, column: 14, scope: !97)
!124 = !DILocation(line: 49, column: 5, scope: !97)
!125 = !DILocation(line: 49, column: 16, scope: !97)
!126 = !DILocation(line: 50, column: 5, scope: !97)
!127 = !DILocation(line: 50, column: 16, scope: !97)
!128 = !DILocation(line: 53, column: 28, scope: !97)
!129 = !DILocation(line: 53, column: 33, scope: !97)
!130 = !DILocation(line: 53, column: 41, scope: !97)
!131 = !DILocation(line: 53, column: 5, scope: !97)
!132 = !DILocation(line: 55, column: 5, scope: !97)
!133 = distinct !DISubprogram(name: "memset", scope: !134, file: !134, line: 12, type: !135, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !22)
!134 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!135 = !DISubroutineType(types: !136)
!136 = !{!137, !137, !21, !138}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !139, line: 46, baseType: !140)
!139 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!140 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!141 = !DILocalVariable(name: "dst", arg: 1, scope: !133, file: !134, line: 12, type: !137)
!142 = !DILocation(line: 12, column: 20, scope: !133)
!143 = !DILocalVariable(name: "s", arg: 2, scope: !133, file: !134, line: 12, type: !21)
!144 = !DILocation(line: 12, column: 29, scope: !133)
!145 = !DILocalVariable(name: "count", arg: 3, scope: !133, file: !134, line: 12, type: !138)
!146 = !DILocation(line: 12, column: 39, scope: !133)
!147 = !DILocalVariable(name: "a", scope: !133, file: !134, line: 13, type: !19)
!148 = !DILocation(line: 13, column: 9, scope: !133)
!149 = !DILocation(line: 13, column: 13, scope: !133)
!150 = !DILocation(line: 14, column: 3, scope: !133)
!151 = !DILocation(line: 14, column: 15, scope: !133)
!152 = !DILocation(line: 14, column: 18, scope: !133)
!153 = !DILocation(line: 15, column: 12, scope: !133)
!154 = !DILocation(line: 15, column: 7, scope: !133)
!155 = !DILocation(line: 15, column: 10, scope: !133)
!156 = distinct !{!156, !150, !153, !157}
!157 = !{!"llvm.loop.mustprogress"}
!158 = !DILocation(line: 16, column: 10, scope: !133)
!159 = !DILocation(line: 16, column: 3, scope: !133)
