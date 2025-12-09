; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/124_nanohttp.c_1108_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/124_nanohttp.c_1108_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.in_addr = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [11 x i8] c"h_addrtype\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"h_length\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"h_addr_list_entry\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/124_nanohttp.c_1108_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !29 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.hostent, align 8
  %3 = alloca %struct.in_addr, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i8*], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.hostent* %2, metadata !34, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata %struct.in_addr* %3, metadata !44, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %4, metadata !55, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %5, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %6, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %7, metadata !74, metadata !DIExpression()), !dbg !75
  store i32 80, i32* %7, align 4, !dbg !75
  %9 = getelementptr inbounds %struct.hostent, %struct.hostent* %2, i32 0, i32 2, !dbg !76
  %10 = bitcast i32* %9 to i8*, !dbg !77
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !78
  %11 = getelementptr inbounds %struct.hostent, %struct.hostent* %2, i32 0, i32 3, !dbg !79
  %12 = bitcast i32* %11 to i8*, !dbg !80
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !81
  %13 = getelementptr inbounds %struct.hostent, %struct.hostent* %2, i32 0, i32 3, !dbg !82
  %14 = load i32, i32* %13, align 4, !dbg !82
  %15 = icmp sge i32 %14, 0, !dbg !83
  %16 = zext i1 %15 to i32, !dbg !83
  %17 = sext i32 %16 to i64, !dbg !84
  call void @klee_assume(i64 noundef %17), !dbg !85
  call void @llvm.dbg.declare(metadata [2 x i8*]* %8, metadata !86, metadata !DIExpression()), !dbg !90
  %18 = call noalias i8* @malloc(i64 noundef 4) #8, !dbg !91
  %19 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0, !dbg !92
  store i8* %18, i8** %19, align 16, !dbg !93
  %20 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 1, !dbg !94
  store i8* null, i8** %20, align 8, !dbg !95
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0, !dbg !96
  %22 = load i8*, i8** %21, align 16, !dbg !96
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef 4, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)), !dbg !97
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0, !dbg !98
  %24 = getelementptr inbounds %struct.hostent, %struct.hostent* %2, i32 0, i32 4, !dbg !99
  store i8** %23, i8*** %24, align 8, !dbg !100
  %25 = getelementptr inbounds %struct.hostent, %struct.hostent* %2, i32 0, i32 2, !dbg !101
  %26 = load i32, i32* %25, align 8, !dbg !101
  %27 = icmp eq i32 %26, 2, !dbg !102
  %28 = zext i1 %27 to i32, !dbg !102
  %29 = sext i32 %28 to i64, !dbg !103
  call void @klee_assume(i64 noundef %29), !dbg !104
  store i32 0, i32* %6, align 4, !dbg !105
  br label %30, !dbg !107

30:                                               ; preds = %78, %0
  %31 = getelementptr inbounds %struct.hostent, %struct.hostent* %2, i32 0, i32 4, !dbg !108
  %32 = load i8**, i8*** %31, align 8, !dbg !108
  %33 = load i32, i32* %6, align 4, !dbg !110
  %34 = sext i32 %33 to i64, !dbg !111
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34, !dbg !111
  %36 = load i8*, i8** %35, align 8, !dbg !111
  %37 = icmp ne i8* %36, null, !dbg !112
  br i1 %37, label %38, label %81, !dbg !112

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.hostent, %struct.hostent* %2, i32 0, i32 2, !dbg !113
  %40 = load i32, i32* %39, align 8, !dbg !113
  %41 = icmp eq i32 %40, 2, !dbg !116
  br i1 %41, label %42, label %76, !dbg !117

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.hostent, %struct.hostent* %2, i32 0, i32 3, !dbg !118
  %44 = load i32, i32* %43, align 4, !dbg !118
  %45 = zext i32 %44 to i64, !dbg !121
  %46 = icmp ugt i64 %45, 4, !dbg !122
  br i1 %46, label %47, label %50, !dbg !123

47:                                               ; preds = %42
  %48 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0, !dbg !124
  %49 = load i8*, i8** %48, align 16, !dbg !124
  call void @free(i8* noundef %49) #8, !dbg !126
  store i32 0, i32* %1, align 4, !dbg !127
  br label %84, !dbg !127

50:                                               ; preds = %42
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !128
  %52 = bitcast %struct.in_addr* %3 to i8*, !dbg !129
  %53 = getelementptr inbounds %struct.hostent, %struct.hostent* %2, i32 0, i32 4, !dbg !130
  %54 = load i8**, i8*** %53, align 8, !dbg !130
  %55 = load i32, i32* %6, align 4, !dbg !131
  %56 = sext i32 %55 to i64, !dbg !132
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56, !dbg !132
  %58 = load i8*, i8** %57, align 8, !dbg !132
  %59 = getelementptr inbounds %struct.hostent, %struct.hostent* %2, i32 0, i32 3, !dbg !133
  %60 = load i32, i32* %59, align 4, !dbg !133
  %61 = sext i32 %60 to i64, !dbg !134
  %62 = call i8* @memcpy(i8* %52, i8* %58, i64 %61), !dbg !129
  %63 = getelementptr inbounds %struct.hostent, %struct.hostent* %2, i32 0, i32 2, !dbg !135
  %64 = load i32, i32* %63, align 8, !dbg !135
  %65 = trunc i32 %64 to i16, !dbg !136
  %66 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0, !dbg !137
  store i16 %65, i16* %66, align 4, !dbg !138
  %67 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2, !dbg !139
  %68 = bitcast %struct.in_addr* %67 to i8*, !dbg !140
  %69 = bitcast %struct.in_addr* %3 to i8*, !dbg !140
  %70 = call i8* @memcpy(i8* %68, i8* %69, i64 4), !dbg !140
  %71 = load i32, i32* %7, align 4, !dbg !141
  %72 = trunc i32 %71 to i16, !dbg !142
  %73 = call zeroext i16 @htons(i16 noundef zeroext %72) #9, !dbg !143
  %74 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1, !dbg !144
  store i16 %73, i16* %74, align 2, !dbg !145
  %75 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*, !dbg !146
  store %struct.sockaddr* %75, %struct.sockaddr** %5, align 8, !dbg !147
  br label %77, !dbg !148

76:                                               ; preds = %38
  br label %81, !dbg !149

77:                                               ; preds = %50
  br label %81, !dbg !151

78:                                               ; No predecessors!
  %79 = load i32, i32* %6, align 4, !dbg !152
  %80 = add nsw i32 %79, 1, !dbg !152
  store i32 %80, i32* %6, align 4, !dbg !152
  br label %30, !dbg !153, !llvm.loop !154

81:                                               ; preds = %77, %76, %30
  %82 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0, !dbg !157
  %83 = load i8*, i8** %82, align 16, !dbg !157
  call void @free(i8* noundef %83) #8, !dbg !158
  store i32 0, i32* %1, align 4, !dbg !159
  br label %84, !dbg !159

84:                                               ; preds = %81, %47
  %85 = load i32, i32* %1, align 4, !dbg !160
  ret i32 %85, !dbg !160
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind readnone willreturn
declare zeroext i16 @htons(i16 noundef zeroext) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !161 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !171, metadata !DIExpression()), !dbg !172
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !173, metadata !DIExpression()), !dbg !174
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata i8** %7, metadata !177, metadata !DIExpression()), !dbg !178
  %9 = load i8*, i8** %4, align 8, !dbg !179
  store i8* %9, i8** %7, align 8, !dbg !178
  call void @llvm.dbg.declare(metadata i8** %8, metadata !180, metadata !DIExpression()), !dbg !183
  %10 = load i8*, i8** %5, align 8, !dbg !184
  store i8* %10, i8** %8, align 8, !dbg !183
  br label %11, !dbg !185

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !186
  %13 = add i64 %12, -1, !dbg !186
  store i64 %13, i64* %6, align 8, !dbg !186
  %14 = icmp ugt i64 %12, 0, !dbg !187
  br i1 %14, label %15, label %21, !dbg !185

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !188
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !188
  store i8* %17, i8** %8, align 8, !dbg !188
  %18 = load i8, i8* %16, align 1, !dbg !189
  %19 = load i8*, i8** %7, align 8, !dbg !190
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !190
  store i8* %20, i8** %7, align 8, !dbg !190
  store i8 %18, i8* %19, align 1, !dbg !191
  br label %11, !dbg !185, !llvm.loop !192

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !193
  ret i8* %22, !dbg !194
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28, !28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/124_nanohttp.c_1108_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "200b700096d58567c5d5d9b6c3b6fc2c")
!2 = !{!3, !5, !6, !7, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !10, line: 183, size: 128, elements: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "71a09f67661e8e55cf505c19b5ddbb85")
!11 = !{!12, !15}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !9, file: !10, line: 185, baseType: !13, size: 16)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !14, line: 28, baseType: !7)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "5066b774f0f3cdb5cbbb5467306060db")
!15 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !9, file: !10, line: 186, baseType: !16, size: 112, offset: 16)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 14)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"Ubuntu clang version 14.0.6"}
!29 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !30, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!30 = !DISubroutineType(types: !31)
!31 = !{!32}
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !{}
!34 = !DILocalVariable(name: "h", scope: !29, file: !1, line: 20, type: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hostent", file: !36, line: 98, size: 256, elements: !37)
!36 = !DIFile(filename: "/usr/include/netdb.h", directory: "", checksumkind: CSK_MD5, checksum: "e13dcb271d305d7732d545225e2b900f")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "h_name", scope: !35, file: !36, line: 100, baseType: !3, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "h_aliases", scope: !35, file: !36, line: 101, baseType: !5, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "h_addrtype", scope: !35, file: !36, line: 102, baseType: !32, size: 32, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "h_length", scope: !35, file: !36, line: 103, baseType: !32, size: 32, offset: 160)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "h_addr_list", scope: !35, file: !36, line: 104, baseType: !5, size: 64, offset: 192)
!43 = !DILocation(line: 20, column: 20, scope: !29)
!44 = !DILocalVariable(name: "ia", scope: !29, file: !1, line: 21, type: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !46, line: 31, size: 32, elements: !47)
!46 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "fbd766480c8cb9a8fe07ee7aa568ee60")
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !45, file: !46, line: 33, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !46, line: 30, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !51, line: 26, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !53, line: 42, baseType: !6)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!54 = !DILocation(line: 21, column: 20, scope: !29)
!55 = !DILocalVariable(name: "sockin", scope: !29, file: !1, line: 22, type: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !46, line: 247, size: 128, elements: !57)
!57 = !{!58, !59, !63, !64}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !56, file: !46, line: 249, baseType: !13, size: 16)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !56, file: !46, line: 250, baseType: !60, size: 16, offset: 16)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !46, line: 125, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !51, line: 25, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !53, line: 40, baseType: !7)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !56, file: !46, line: 251, baseType: !45, size: 32, offset: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !56, file: !46, line: 254, baseType: !65, size: 64, offset: 64)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 64, elements: !67)
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !{!68}
!68 = !DISubrange(count: 8)
!69 = !DILocation(line: 22, column: 24, scope: !29)
!70 = !DILocalVariable(name: "addr", scope: !29, file: !1, line: 23, type: !8)
!71 = !DILocation(line: 23, column: 22, scope: !29)
!72 = !DILocalVariable(name: "i", scope: !29, file: !1, line: 24, type: !32)
!73 = !DILocation(line: 24, column: 9, scope: !29)
!74 = !DILocalVariable(name: "port", scope: !29, file: !1, line: 25, type: !32)
!75 = !DILocation(line: 25, column: 9, scope: !29)
!76 = !DILocation(line: 28, column: 27, scope: !29)
!77 = !DILocation(line: 28, column: 24, scope: !29)
!78 = !DILocation(line: 28, column: 5, scope: !29)
!79 = !DILocation(line: 29, column: 27, scope: !29)
!80 = !DILocation(line: 29, column: 24, scope: !29)
!81 = !DILocation(line: 29, column: 5, scope: !29)
!82 = !DILocation(line: 32, column: 19, scope: !29)
!83 = !DILocation(line: 32, column: 28, scope: !29)
!84 = !DILocation(line: 32, column: 17, scope: !29)
!85 = !DILocation(line: 32, column: 5, scope: !29)
!86 = !DILocalVariable(name: "addr_list", scope: !29, file: !1, line: 36, type: !87)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 128, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 2)
!90 = !DILocation(line: 36, column: 11, scope: !29)
!91 = !DILocation(line: 37, column: 28, scope: !29)
!92 = !DILocation(line: 37, column: 5, scope: !29)
!93 = !DILocation(line: 37, column: 18, scope: !29)
!94 = !DILocation(line: 38, column: 5, scope: !29)
!95 = !DILocation(line: 38, column: 18, scope: !29)
!96 = !DILocation(line: 39, column: 24, scope: !29)
!97 = !DILocation(line: 39, column: 5, scope: !29)
!98 = !DILocation(line: 40, column: 30, scope: !29)
!99 = !DILocation(line: 40, column: 7, scope: !29)
!100 = !DILocation(line: 40, column: 19, scope: !29)
!101 = !DILocation(line: 43, column: 19, scope: !29)
!102 = !DILocation(line: 43, column: 30, scope: !29)
!103 = !DILocation(line: 43, column: 17, scope: !29)
!104 = !DILocation(line: 43, column: 5, scope: !29)
!105 = !DILocation(line: 46, column: 12, scope: !106)
!106 = distinct !DILexicalBlock(scope: !29, file: !1, line: 46, column: 5)
!107 = !DILocation(line: 46, column: 10, scope: !106)
!108 = !DILocation(line: 46, column: 19, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 46, column: 5)
!110 = !DILocation(line: 46, column: 31, scope: !109)
!111 = !DILocation(line: 46, column: 17, scope: !109)
!112 = !DILocation(line: 46, column: 5, scope: !106)
!113 = !DILocation(line: 47, column: 15, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !1, line: 47, column: 13)
!115 = distinct !DILexicalBlock(scope: !109, file: !1, line: 46, column: 40)
!116 = !DILocation(line: 47, column: 26, scope: !114)
!117 = !DILocation(line: 47, column: 13, scope: !115)
!118 = !DILocation(line: 49, column: 34, scope: !119)
!119 = distinct !DILexicalBlock(scope: !120, file: !1, line: 49, column: 17)
!120 = distinct !DILexicalBlock(scope: !114, file: !1, line: 47, column: 38)
!121 = !DILocation(line: 49, column: 17, scope: !119)
!122 = !DILocation(line: 49, column: 43, scope: !119)
!123 = !DILocation(line: 49, column: 17, scope: !120)
!124 = !DILocation(line: 51, column: 22, scope: !125)
!125 = distinct !DILexicalBlock(scope: !119, file: !1, line: 49, column: 57)
!126 = !DILocation(line: 51, column: 17, scope: !125)
!127 = !DILocation(line: 52, column: 17, scope: !125)
!128 = !DILocation(line: 55, column: 13, scope: !120)
!129 = !DILocation(line: 57, column: 13, scope: !120)
!130 = !DILocation(line: 57, column: 27, scope: !120)
!131 = !DILocation(line: 57, column: 39, scope: !120)
!132 = !DILocation(line: 57, column: 25, scope: !120)
!133 = !DILocation(line: 57, column: 45, scope: !120)
!134 = !DILocation(line: 57, column: 43, scope: !120)
!135 = !DILocation(line: 58, column: 35, scope: !120)
!136 = !DILocation(line: 58, column: 33, scope: !120)
!137 = !DILocation(line: 58, column: 20, scope: !120)
!138 = !DILocation(line: 58, column: 31, scope: !120)
!139 = !DILocation(line: 59, column: 20, scope: !120)
!140 = !DILocation(line: 59, column: 31, scope: !120)
!141 = !DILocation(line: 60, column: 69, scope: !120)
!142 = !DILocation(line: 60, column: 53, scope: !120)
!143 = !DILocation(line: 60, column: 47, scope: !120)
!144 = !DILocation(line: 60, column: 20, scope: !120)
!145 = !DILocation(line: 60, column: 29, scope: !120)
!146 = !DILocation(line: 61, column: 20, scope: !120)
!147 = !DILocation(line: 61, column: 18, scope: !120)
!148 = !DILocation(line: 62, column: 9, scope: !120)
!149 = !DILocation(line: 63, column: 13, scope: !150)
!150 = distinct !DILexicalBlock(scope: !114, file: !1, line: 62, column: 16)
!151 = !DILocation(line: 69, column: 9, scope: !115)
!152 = !DILocation(line: 46, column: 36, scope: !109)
!153 = !DILocation(line: 46, column: 5, scope: !109)
!154 = distinct !{!154, !112, !155, !156}
!155 = !DILocation(line: 70, column: 5, scope: !106)
!156 = !{!"llvm.loop.mustprogress"}
!157 = !DILocation(line: 72, column: 10, scope: !29)
!158 = !DILocation(line: 72, column: 5, scope: !29)
!159 = !DILocation(line: 73, column: 5, scope: !29)
!160 = !DILocation(line: 74, column: 1, scope: !29)
!161 = distinct !DISubprogram(name: "memcpy", scope: !162, file: !162, line: 12, type: !163, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !33)
!162 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!163 = !DISubroutineType(types: !164)
!164 = !{!165, !165, !166, !168}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !169, line: 46, baseType: !170)
!169 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!170 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!171 = !DILocalVariable(name: "destaddr", arg: 1, scope: !161, file: !162, line: 12, type: !165)
!172 = !DILocation(line: 12, column: 20, scope: !161)
!173 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !161, file: !162, line: 12, type: !166)
!174 = !DILocation(line: 12, column: 42, scope: !161)
!175 = !DILocalVariable(name: "len", arg: 3, scope: !161, file: !162, line: 12, type: !168)
!176 = !DILocation(line: 12, column: 58, scope: !161)
!177 = !DILocalVariable(name: "dest", scope: !161, file: !162, line: 13, type: !3)
!178 = !DILocation(line: 13, column: 9, scope: !161)
!179 = !DILocation(line: 13, column: 16, scope: !161)
!180 = !DILocalVariable(name: "src", scope: !161, file: !162, line: 14, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!183 = !DILocation(line: 14, column: 15, scope: !161)
!184 = !DILocation(line: 14, column: 21, scope: !161)
!185 = !DILocation(line: 16, column: 3, scope: !161)
!186 = !DILocation(line: 16, column: 13, scope: !161)
!187 = !DILocation(line: 16, column: 16, scope: !161)
!188 = !DILocation(line: 17, column: 19, scope: !161)
!189 = !DILocation(line: 17, column: 15, scope: !161)
!190 = !DILocation(line: 17, column: 10, scope: !161)
!191 = !DILocation(line: 17, column: 13, scope: !161)
!192 = distinct !{!192, !185, !188, !156}
!193 = !DILocation(line: 18, column: 10, scope: !161)
!194 = !DILocation(line: 18, column: 3, scope: !161)
