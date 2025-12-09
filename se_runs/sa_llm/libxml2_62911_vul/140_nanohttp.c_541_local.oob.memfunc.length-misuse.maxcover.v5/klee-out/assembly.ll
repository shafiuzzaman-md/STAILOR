; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/140_nanohttp.c_541_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/140_nanohttp.c_541_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [24 x i8] c"http://example.com/test\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/140_nanohttp.c_541_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !41 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !46, metadata !DIExpression()), !dbg !49
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %2, align 8, !dbg !49
  call void @llvm.dbg.declare(metadata i8** %3, metadata !50, metadata !DIExpression()), !dbg !51
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8, !dbg !51
  call void @llvm.dbg.declare(metadata i8** %4, metadata !52, metadata !DIExpression()), !dbg !53
  store i8* null, i8** %4, align 8, !dbg !53
  call void @llvm.dbg.declare(metadata i8** %5, metadata !54, metadata !DIExpression()), !dbg !56
  store i8* null, i8** %5, align 8, !dbg !56
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !57, metadata !DIExpression()), !dbg !59
  store i8** null, i8*** %6, align 8, !dbg !59
  call void @llvm.dbg.declare(metadata i8** %7, metadata !60, metadata !DIExpression()), !dbg !61
  store i8* null, i8** %7, align 8, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %8, metadata !62, metadata !DIExpression()), !dbg !63
  store i32 0, i32* %8, align 4, !dbg !63
  call void @xmlNanoHTTPInit(), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %9, metadata !65, metadata !DIExpression()), !dbg !66
  %12 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #8, !dbg !67
  store i32 %12, i32* %9, align 4, !dbg !66
  %13 = load i32, i32* %9, align 4, !dbg !68
  %14 = icmp slt i32 %13, 0, !dbg !70
  br i1 %14, label %15, label %16, !dbg !71

15:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !72
  br label %54, !dbg !72

16:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %10, metadata !74, metadata !DIExpression()), !dbg !97
  %17 = bitcast %struct.sockaddr_in* %10 to i8*, !dbg !98
  %18 = call i8* @memset(i8* %17, i32 0, i64 16), !dbg !98
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0, !dbg !99
  store i16 2, i16* %19, align 4, !dbg !100
  %20 = call zeroext i16 @htons(i16 noundef zeroext 80) #9, !dbg !101
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1, !dbg !102
  store i16 %20, i16* %21, align 2, !dbg !103
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2, !dbg !104
  %23 = bitcast %struct.in_addr* %22 to i8*, !dbg !105
  %24 = call i32 @inet_pton(i32 noundef 2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef %23) #8, !dbg !106
  %25 = load i32, i32* %9, align 4, !dbg !107
  %26 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*, !dbg !109
  %27 = call i32 @connect(i32 noundef %25, %struct.sockaddr* noundef %26, i32 noundef 16), !dbg !110
  %28 = icmp slt i32 %27, 0, !dbg !111
  br i1 %28, label %29, label %32, !dbg !112

29:                                               ; preds = %16
  %30 = load i32, i32* %9, align 4, !dbg !113
  %31 = call i32 @close(i32 noundef %30), !dbg !115
  store i32 1, i32* %1, align 4, !dbg !116
  br label %54, !dbg !116

32:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata i8** %11, metadata !117, metadata !DIExpression()), !dbg !118
  %33 = load i8*, i8** %2, align 8, !dbg !119
  %34 = load i8*, i8** %3, align 8, !dbg !120
  %35 = load i8*, i8** %4, align 8, !dbg !121
  %36 = load i8*, i8** %7, align 8, !dbg !122
  %37 = bitcast i8* %36 to i8**, !dbg !122
  %38 = load i32, i32* %8, align 4, !dbg !123
  %39 = sext i32 %38 to i64, !dbg !123
  %40 = inttoptr i64 %39 to i8*, !dbg !123
  %41 = load i8**, i8*** %6, align 8, !dbg !124
  %42 = ptrtoint i8** %41 to i32, !dbg !124
  %43 = call i8* @xmlNanoHTTPMethodRedir(i8* noundef %33, i8* noundef %34, i8* noundef %35, i8** noundef %5, i8** noundef %37, i8* noundef %40, i32 noundef %42), !dbg !125
  store i8* %43, i8** %11, align 8, !dbg !118
  %44 = load i8*, i8** %11, align 8, !dbg !126
  %45 = icmp eq i8* %44, null, !dbg !128
  br i1 %45, label %46, label %49, !dbg !129

46:                                               ; preds = %32
  %47 = load i32, i32* %9, align 4, !dbg !130
  %48 = call i32 @close(i32 noundef %47), !dbg !132
  store i32 1, i32* %1, align 4, !dbg !133
  br label %54, !dbg !133

49:                                               ; preds = %32
  %50 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !134
  %51 = load i8*, i8** %11, align 8, !dbg !135
  call void @xmlNanoHTTPClose(i8* noundef %51), !dbg !136
  %52 = load i32, i32* %9, align 4, !dbg !137
  %53 = call i32 @close(i32 noundef %52), !dbg !138
  store i32 0, i32* %1, align 4, !dbg !139
  br label %54, !dbg !139

54:                                               ; preds = %49, %46, %29, %15
  %55 = load i32, i32* %1, align 4, !dbg !140
  ret i32 %55, !dbg !140
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlNanoHTTPInit() #2

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 noundef zeroext) #5

; Function Attrs: nounwind
declare i32 @inet_pton(i32 noundef, i8* noundef, i8* noundef) #3

declare i32 @connect(i32 noundef, %struct.sockaddr* noundef, i32 noundef) #2

declare i32 @close(i32 noundef) #2

declare i8* @xmlNanoHTTPMethodRedir(i8* noundef, i8* noundef, i8* noundef, i8** noundef, i8** noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

declare void @xmlNanoHTTPClose(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !141 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !148, metadata !DIExpression()), !dbg !149
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !150, metadata !DIExpression()), !dbg !151
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata i8** %7, metadata !154, metadata !DIExpression()), !dbg !155
  %8 = load i8*, i8** %4, align 8, !dbg !156
  store i8* %8, i8** %7, align 8, !dbg !155
  br label %9, !dbg !157

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !158
  %11 = add i64 %10, -1, !dbg !158
  store i64 %11, i64* %6, align 8, !dbg !158
  %12 = icmp ugt i64 %10, 0, !dbg !159
  br i1 %12, label %13, label %18, !dbg !157

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !160
  %15 = trunc i32 %14 to i8, !dbg !160
  %16 = load i8*, i8** %7, align 8, !dbg !161
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !161
  store i8* %17, i8** %7, align 8, !dbg !161
  store i8 %15, i8* %16, align 1, !dbg !162
  br label %9, !dbg !157, !llvm.loop !163

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !165
  ret i8* %19, !dbg !166
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40, !40}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !16, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/140_nanohttp.c_541_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "e236658e8ae319fabedcf5359427439d")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !4, line: 24, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "5ca1da466a04f4b8f6d88ec84b75042e")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15}
!7 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!8 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!9 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!10 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!11 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!12 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!13 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!14 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!15 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!16 = !{!17, !30}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !19, line: 183, size: 128, elements: !20)
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "71a09f67661e8e55cf505c19b5ddbb85")
!20 = !{!21, !25}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !18, file: !19, line: 185, baseType: !22, size: 16)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !23, line: 28, baseType: !24)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "5066b774f0f3cdb5cbbb5467306060db")
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !18, file: !19, line: 186, baseType: !26, size: 112, offset: 16)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 112, elements: !28)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !{!29}
!29 = !DISubrange(count: 14)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = distinct !DICompileUnit(language: DW_LANG_C99, file: !32, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!32 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!33 = !{i32 7, !"Dwarf Version", i32 5}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = !{i32 7, !"PIC Level", i32 2}
!37 = !{i32 7, !"PIE Level", i32 2}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"Ubuntu clang version 14.0.6"}
!41 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !42, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !45)
!42 = !DISubroutineType(types: !43)
!43 = !{!44}
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !{}
!46 = !DILocalVariable(name: "url", scope: !41, file: !1, line: 13, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!49 = !DILocation(line: 13, column: 17, scope: !41)
!50 = !DILocalVariable(name: "method", scope: !41, file: !1, line: 14, type: !47)
!51 = !DILocation(line: 14, column: 17, scope: !41)
!52 = !DILocalVariable(name: "input", scope: !41, file: !1, line: 15, type: !47)
!53 = !DILocation(line: 15, column: 17, scope: !41)
!54 = !DILocalVariable(name: "content_type", scope: !41, file: !1, line: 16, type: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!56 = !DILocation(line: 16, column: 11, scope: !41)
!57 = !DILocalVariable(name: "redir", scope: !41, file: !1, line: 17, type: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!59 = !DILocation(line: 17, column: 12, scope: !41)
!60 = !DILocalVariable(name: "auth", scope: !41, file: !1, line: 18, type: !55)
!61 = !DILocation(line: 18, column: 11, scope: !41)
!62 = !DILocalVariable(name: "ilen", scope: !41, file: !1, line: 19, type: !44)
!63 = !DILocation(line: 19, column: 9, scope: !41)
!64 = !DILocation(line: 21, column: 5, scope: !41)
!65 = !DILocalVariable(name: "fd", scope: !41, file: !1, line: 23, type: !44)
!66 = !DILocation(line: 23, column: 9, scope: !41)
!67 = !DILocation(line: 23, column: 14, scope: !41)
!68 = !DILocation(line: 24, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !41, file: !1, line: 24, column: 9)
!70 = !DILocation(line: 24, column: 12, scope: !69)
!71 = !DILocation(line: 24, column: 9, scope: !41)
!72 = !DILocation(line: 25, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 24, column: 17)
!74 = !DILocalVariable(name: "addr", scope: !41, file: !1, line: 28, type: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !76, line: 247, size: 128, elements: !77)
!76 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "fbd766480c8cb9a8fe07ee7aa568ee60")
!77 = !{!78, !79, !85, !92}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !75, file: !76, line: 249, baseType: !22, size: 16)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !75, file: !76, line: 250, baseType: !80, size: 16, offset: 16)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !76, line: 125, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !82, line: 25, baseType: !83)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !84, line: 40, baseType: !24)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !75, file: !76, line: 251, baseType: !86, size: 32, offset: 32)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !76, line: 31, size: 32, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !86, file: !76, line: 33, baseType: !89, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !76, line: 30, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !82, line: 26, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !84, line: 42, baseType: !5)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !75, file: !76, line: 254, baseType: !93, size: 64, offset: 64)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 64, elements: !95)
!94 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!95 = !{!96}
!96 = !DISubrange(count: 8)
!97 = !DILocation(line: 28, column: 24, scope: !41)
!98 = !DILocation(line: 29, column: 5, scope: !41)
!99 = !DILocation(line: 30, column: 10, scope: !41)
!100 = !DILocation(line: 30, column: 21, scope: !41)
!101 = !DILocation(line: 31, column: 21, scope: !41)
!102 = !DILocation(line: 31, column: 10, scope: !41)
!103 = !DILocation(line: 31, column: 19, scope: !41)
!104 = !DILocation(line: 32, column: 43, scope: !41)
!105 = !DILocation(line: 32, column: 37, scope: !41)
!106 = !DILocation(line: 32, column: 5, scope: !41)
!107 = !DILocation(line: 34, column: 17, scope: !108)
!108 = distinct !DILexicalBlock(scope: !41, file: !1, line: 34, column: 9)
!109 = !DILocation(line: 34, column: 21, scope: !108)
!110 = !DILocation(line: 34, column: 9, scope: !108)
!111 = !DILocation(line: 34, column: 60, scope: !108)
!112 = !DILocation(line: 34, column: 9, scope: !41)
!113 = !DILocation(line: 35, column: 15, scope: !114)
!114 = distinct !DILexicalBlock(scope: !108, file: !1, line: 34, column: 65)
!115 = !DILocation(line: 35, column: 9, scope: !114)
!116 = !DILocation(line: 36, column: 9, scope: !114)
!117 = !DILocalVariable(name: "ctxt", scope: !41, file: !1, line: 39, type: !30)
!118 = !DILocation(line: 39, column: 11, scope: !41)
!119 = !DILocation(line: 39, column: 41, scope: !41)
!120 = !DILocation(line: 39, column: 46, scope: !41)
!121 = !DILocation(line: 39, column: 54, scope: !41)
!122 = !DILocation(line: 39, column: 76, scope: !41)
!123 = !DILocation(line: 39, column: 82, scope: !41)
!124 = !DILocation(line: 39, column: 88, scope: !41)
!125 = !DILocation(line: 39, column: 18, scope: !41)
!126 = !DILocation(line: 40, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !41, file: !1, line: 40, column: 9)
!128 = !DILocation(line: 40, column: 14, scope: !127)
!129 = !DILocation(line: 40, column: 9, scope: !41)
!130 = !DILocation(line: 41, column: 15, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !1, line: 40, column: 23)
!132 = !DILocation(line: 41, column: 9, scope: !131)
!133 = !DILocation(line: 42, column: 9, scope: !131)
!134 = !DILocation(line: 45, column: 5, scope: !41)
!135 = !DILocation(line: 47, column: 22, scope: !41)
!136 = !DILocation(line: 47, column: 5, scope: !41)
!137 = !DILocation(line: 48, column: 11, scope: !41)
!138 = !DILocation(line: 48, column: 5, scope: !41)
!139 = !DILocation(line: 49, column: 5, scope: !41)
!140 = !DILocation(line: 50, column: 1, scope: !41)
!141 = distinct !DISubprogram(name: "memset", scope: !142, file: !142, line: 12, type: !143, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !45)
!142 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!143 = !DISubroutineType(types: !144)
!144 = !{!30, !30, !44, !145}
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !146, line: 46, baseType: !147)
!146 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!147 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!148 = !DILocalVariable(name: "dst", arg: 1, scope: !141, file: !142, line: 12, type: !30)
!149 = !DILocation(line: 12, column: 20, scope: !141)
!150 = !DILocalVariable(name: "s", arg: 2, scope: !141, file: !142, line: 12, type: !44)
!151 = !DILocation(line: 12, column: 29, scope: !141)
!152 = !DILocalVariable(name: "count", arg: 3, scope: !141, file: !142, line: 12, type: !145)
!153 = !DILocation(line: 12, column: 39, scope: !141)
!154 = !DILocalVariable(name: "a", scope: !141, file: !142, line: 13, type: !55)
!155 = !DILocation(line: 13, column: 9, scope: !141)
!156 = !DILocation(line: 13, column: 13, scope: !141)
!157 = !DILocation(line: 14, column: 3, scope: !141)
!158 = !DILocation(line: 14, column: 15, scope: !141)
!159 = !DILocation(line: 14, column: 18, scope: !141)
!160 = !DILocation(line: 15, column: 12, scope: !141)
!161 = !DILocation(line: 15, column: 7, scope: !141)
!162 = !DILocation(line: 15, column: 10, scope: !141)
!163 = distinct !{!163, !157, !160, !164}
!164 = !{!"llvm.loop.mustprogress"}
!165 = !DILocation(line: 16, column: 10, scope: !141)
!166 = !DILocation(line: 16, column: 3, scope: !141)
