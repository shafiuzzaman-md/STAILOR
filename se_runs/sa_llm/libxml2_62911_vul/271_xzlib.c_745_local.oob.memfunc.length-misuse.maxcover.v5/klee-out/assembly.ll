; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/271_xzlib.c_745_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/271_xzlib.c_745_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xz_state = type { i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"(n <= len) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/271_xzlib.c_745_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.__libxml2_xzread = private unnamed_addr constant [51 x i8] c"int __libxml2_xzread(void *, char *, unsigned int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"state_have\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"len\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__libxml2_xzread(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !23 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xz_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !30, metadata !DIExpression()), !dbg !31
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !32, metadata !DIExpression()), !dbg !33
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata %struct.xz_state** %7, metadata !36, metadata !DIExpression()), !dbg !37
  %10 = load i8*, i8** %4, align 8, !dbg !38
  %11 = bitcast i8* %10 to %struct.xz_state*, !dbg !39
  store %struct.xz_state* %11, %struct.xz_state** %7, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %8, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %9, metadata !42, metadata !DIExpression()), !dbg !43
  store i32 0, i32* %9, align 4, !dbg !43
  br label %12, !dbg !44

12:                                               ; preds = %3
  %13 = load %struct.xz_state*, %struct.xz_state** %7, align 8, !dbg !45
  %14 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %13, i32 0, i32 1, !dbg !48
  %15 = load i32, i32* %14, align 8, !dbg !48
  %16 = icmp ne i32 %15, 0, !dbg !45
  br i1 %16, label %17, label %58, !dbg !49

17:                                               ; preds = %12
  %18 = load %struct.xz_state*, %struct.xz_state** %7, align 8, !dbg !50
  %19 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %18, i32 0, i32 1, !dbg !52
  %20 = load i32, i32* %19, align 8, !dbg !52
  %21 = load i32, i32* %6, align 4, !dbg !53
  %22 = icmp ugt i32 %20, %21, !dbg !54
  br i1 %22, label %23, label %25, !dbg !50

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4, !dbg !55
  br label %29, !dbg !50

25:                                               ; preds = %17
  %26 = load %struct.xz_state*, %struct.xz_state** %7, align 8, !dbg !56
  %27 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %26, i32 0, i32 1, !dbg !57
  %28 = load i32, i32* %27, align 8, !dbg !57
  br label %29, !dbg !50

29:                                               ; preds = %25, %23
  %30 = phi i32 [ %24, %23 ], [ %28, %25 ], !dbg !50
  store i32 %30, i32* %8, align 4, !dbg !58
  %31 = load i32, i32* %8, align 4, !dbg !59
  %32 = load i32, i32* %6, align 4, !dbg !59
  %33 = icmp ule i32 %31, %32, !dbg !59
  br i1 %33, label %34, label %36, !dbg !59

34:                                               ; preds = %29
  br i1 true, label %35, label %36, !dbg !59

35:                                               ; preds = %34
  br label %38, !dbg !59

36:                                               ; preds = %34, %29
  %37 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.__libxml2_xzread, i64 0, i64 0)), !dbg !59
  br label %38, !dbg !59

38:                                               ; preds = %36, %35
  %39 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.__libxml2_xzread, i64 0, i64 0)), !dbg !60
  %40 = load i8*, i8** %5, align 8, !dbg !61
  %41 = load %struct.xz_state*, %struct.xz_state** %7, align 8, !dbg !62
  %42 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %41, i32 0, i32 0, !dbg !63
  %43 = load i8*, i8** %42, align 8, !dbg !63
  %44 = load i32, i32* %8, align 4, !dbg !64
  %45 = zext i32 %44 to i64, !dbg !64
  %46 = call i8* @memcpy(i8* %40, i8* %43, i64 %45), !dbg !65
  %47 = load i32, i32* %8, align 4, !dbg !66
  %48 = load %struct.xz_state*, %struct.xz_state** %7, align 8, !dbg !67
  %49 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %48, i32 0, i32 0, !dbg !68
  %50 = load i8*, i8** %49, align 8, !dbg !69
  %51 = zext i32 %47 to i64, !dbg !69
  %52 = getelementptr inbounds i8, i8* %50, i64 %51, !dbg !69
  store i8* %52, i8** %49, align 8, !dbg !69
  %53 = load i32, i32* %8, align 4, !dbg !70
  %54 = load %struct.xz_state*, %struct.xz_state** %7, align 8, !dbg !71
  %55 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %54, i32 0, i32 1, !dbg !72
  %56 = load i32, i32* %55, align 8, !dbg !73
  %57 = sub i32 %56, %53, !dbg !73
  store i32 %57, i32* %55, align 8, !dbg !73
  br label %58, !dbg !74

58:                                               ; preds = %38, %12
  br label %59, !dbg !75

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4, !dbg !76
  ret i32 %60, !dbg !77
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !78 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xz_state, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.xz_state* %2, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !83, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata i32* %4, metadata !88, metadata !DIExpression()), !dbg !89
  %5 = call noalias i8* @malloc(i64 noundef 2048) #7, !dbg !90
  %6 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 0, !dbg !91
  store i8* %5, i8** %6, align 8, !dbg !92
  %7 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 0, !dbg !93
  %8 = load i8*, i8** %7, align 8, !dbg !93
  %9 = icmp ne i8* %8, null, !dbg !94
  %10 = zext i1 %9 to i32, !dbg !94
  %11 = sext i32 %10 to i64, !dbg !95
  call void @klee_assume(i64 noundef %11), !dbg !96
  %12 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 1, !dbg !97
  %13 = bitcast i32* %12 to i8*, !dbg !98
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)), !dbg !99
  %14 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 1, !dbg !100
  %15 = load i32, i32* %14, align 8, !dbg !100
  %16 = icmp uge i32 %15, 0, !dbg !101
  %17 = zext i1 %16 to i32, !dbg !101
  %18 = sext i32 %17 to i64, !dbg !102
  call void @klee_assume(i64 noundef %18), !dbg !103
  %19 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 1, !dbg !104
  %20 = load i32, i32* %19, align 8, !dbg !104
  %21 = icmp ule i32 %20, 2048, !dbg !105
  %22 = zext i1 %21 to i32, !dbg !105
  %23 = sext i32 %22 to i64, !dbg !106
  call void @klee_assume(i64 noundef %23), !dbg !107
  %24 = bitcast i32* %4 to i8*, !dbg !108
  call void @klee_make_symbolic(i8* noundef %24, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !109
  %25 = load i32, i32* %4, align 4, !dbg !110
  %26 = icmp uge i32 %25, 0, !dbg !111
  %27 = zext i1 %26 to i32, !dbg !111
  %28 = sext i32 %27 to i64, !dbg !110
  call void @klee_assume(i64 noundef %28), !dbg !112
  %29 = load i32, i32* %4, align 4, !dbg !113
  %30 = icmp ule i32 %29, 1024, !dbg !114
  %31 = zext i1 %30 to i32, !dbg !114
  %32 = sext i32 %31 to i64, !dbg !113
  call void @klee_assume(i64 noundef %32), !dbg !115
  %33 = bitcast %struct.xz_state* %2 to i8*, !dbg !116
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !117
  %35 = load i32, i32* %4, align 4, !dbg !118
  %36 = call i32 @__libxml2_xzread(i8* noundef %33, i8* noundef %34, i32 noundef %35), !dbg !119
  %37 = getelementptr inbounds %struct.xz_state, %struct.xz_state* %2, i32 0, i32 0, !dbg !120
  %38 = load i8*, i8** %37, align 8, !dbg !120
  call void @free(i8* noundef %38) #7, !dbg !121
  ret i32 0, !dbg !122
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

declare void @klee_assume(i64 noundef) #5

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !123 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !132, metadata !DIExpression()), !dbg !133
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !134, metadata !DIExpression()), !dbg !135
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i8** %7, metadata !138, metadata !DIExpression()), !dbg !139
  %9 = load i8*, i8** %4, align 8, !dbg !140
  store i8* %9, i8** %7, align 8, !dbg !139
  call void @llvm.dbg.declare(metadata i8** %8, metadata !141, metadata !DIExpression()), !dbg !144
  %10 = load i8*, i8** %5, align 8, !dbg !145
  store i8* %10, i8** %8, align 8, !dbg !144
  br label %11, !dbg !146

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !147
  %13 = add i64 %12, -1, !dbg !147
  store i64 %13, i64* %6, align 8, !dbg !147
  %14 = icmp ugt i64 %12, 0, !dbg !148
  br i1 %14, label %15, label %21, !dbg !146

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !149
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !149
  store i8* %17, i8** %8, align 8, !dbg !149
  %18 = load i8, i8* %16, align 1, !dbg !150
  %19 = load i8*, i8** %7, align 8, !dbg !151
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !151
  store i8* %20, i8** %7, align 8, !dbg !151
  store i8 %18, i8* %19, align 1, !dbg !152
  br label %11, !dbg !146, !llvm.loop !153

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !155
  ret i8* %22, !dbg !156
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/271_xzlib.c_745_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "5eb94d996cb6fcfcdea4691f33d408e7")
!2 = !{!3, !12}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xz_state", file: !1, line: 13, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 10, size: 128, elements: !6)
!6 = !{!7, !10}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5, file: !1, line: 11, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "have", scope: !5, file: !1, line: 12, baseType: !11, size: 32, offset: 64)
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"Ubuntu clang version 14.0.6"}
!23 = distinct !DISubprogram(name: "__libxml2_xzread", scope: !1, file: !1, line: 16, type: !24, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !12, !27, !11}
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !{}
!30 = !DILocalVariable(name: "state", arg: 1, scope: !23, file: !1, line: 16, type: !12)
!31 = !DILocation(line: 16, column: 28, scope: !23)
!32 = !DILocalVariable(name: "buf", arg: 2, scope: !23, file: !1, line: 16, type: !27)
!33 = !DILocation(line: 16, column: 41, scope: !23)
!34 = !DILocalVariable(name: "len", arg: 3, scope: !23, file: !1, line: 16, type: !11)
!35 = !DILocation(line: 16, column: 59, scope: !23)
!36 = !DILocalVariable(name: "s", scope: !23, file: !1, line: 17, type: !3)
!37 = !DILocation(line: 17, column: 15, scope: !23)
!38 = !DILocation(line: 17, column: 31, scope: !23)
!39 = !DILocation(line: 17, column: 19, scope: !23)
!40 = !DILocalVariable(name: "n", scope: !23, file: !1, line: 18, type: !11)
!41 = !DILocation(line: 18, column: 18, scope: !23)
!42 = !DILocalVariable(name: "got", scope: !23, file: !1, line: 19, type: !11)
!43 = !DILocation(line: 19, column: 18, scope: !23)
!44 = !DILocation(line: 22, column: 5, scope: !23)
!45 = !DILocation(line: 24, column: 13, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 24, column: 13)
!47 = distinct !DILexicalBlock(scope: !23, file: !1, line: 22, column: 8)
!48 = !DILocation(line: 24, column: 16, scope: !46)
!49 = !DILocation(line: 24, column: 13, scope: !47)
!50 = !DILocation(line: 25, column: 17, scope: !51)
!51 = distinct !DILexicalBlock(scope: !46, file: !1, line: 24, column: 22)
!52 = !DILocation(line: 25, column: 20, scope: !51)
!53 = !DILocation(line: 25, column: 27, scope: !51)
!54 = !DILocation(line: 25, column: 25, scope: !51)
!55 = !DILocation(line: 25, column: 33, scope: !51)
!56 = !DILocation(line: 25, column: 39, scope: !51)
!57 = !DILocation(line: 25, column: 42, scope: !51)
!58 = !DILocation(line: 25, column: 15, scope: !51)
!59 = !DILocation(line: 28, column: 13, scope: !51)
!60 = !DILocation(line: 31, column: 13, scope: !51)
!61 = !DILocation(line: 33, column: 20, scope: !51)
!62 = !DILocation(line: 33, column: 25, scope: !51)
!63 = !DILocation(line: 33, column: 28, scope: !51)
!64 = !DILocation(line: 33, column: 34, scope: !51)
!65 = !DILocation(line: 33, column: 13, scope: !51)
!66 = !DILocation(line: 34, column: 24, scope: !51)
!67 = !DILocation(line: 34, column: 13, scope: !51)
!68 = !DILocation(line: 34, column: 16, scope: !51)
!69 = !DILocation(line: 34, column: 21, scope: !51)
!70 = !DILocation(line: 35, column: 24, scope: !51)
!71 = !DILocation(line: 35, column: 13, scope: !51)
!72 = !DILocation(line: 35, column: 16, scope: !51)
!73 = !DILocation(line: 35, column: 21, scope: !51)
!74 = !DILocation(line: 36, column: 9, scope: !51)
!75 = !DILocation(line: 39, column: 9, scope: !47)
!76 = !DILocation(line: 43, column: 12, scope: !23)
!77 = !DILocation(line: 43, column: 5, scope: !23)
!78 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 46, type: !79, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!79 = !DISubroutineType(types: !80)
!80 = !{!26}
!81 = !DILocalVariable(name: "state", scope: !78, file: !1, line: 48, type: !4)
!82 = !DILocation(line: 48, column: 14, scope: !78)
!83 = !DILocalVariable(name: "buffer", scope: !78, file: !1, line: 49, type: !84)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8192, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 1024)
!87 = !DILocation(line: 49, column: 10, scope: !78)
!88 = !DILocalVariable(name: "len", scope: !78, file: !1, line: 50, type: !11)
!89 = !DILocation(line: 50, column: 18, scope: !78)
!90 = !DILocation(line: 53, column: 18, scope: !78)
!91 = !DILocation(line: 53, column: 11, scope: !78)
!92 = !DILocation(line: 53, column: 16, scope: !78)
!93 = !DILocation(line: 54, column: 23, scope: !78)
!94 = !DILocation(line: 54, column: 28, scope: !78)
!95 = !DILocation(line: 54, column: 17, scope: !78)
!96 = !DILocation(line: 54, column: 5, scope: !78)
!97 = !DILocation(line: 57, column: 31, scope: !78)
!98 = !DILocation(line: 57, column: 24, scope: !78)
!99 = !DILocation(line: 57, column: 5, scope: !78)
!100 = !DILocation(line: 58, column: 23, scope: !78)
!101 = !DILocation(line: 58, column: 28, scope: !78)
!102 = !DILocation(line: 58, column: 17, scope: !78)
!103 = !DILocation(line: 58, column: 5, scope: !78)
!104 = !DILocation(line: 59, column: 23, scope: !78)
!105 = !DILocation(line: 59, column: 28, scope: !78)
!106 = !DILocation(line: 59, column: 17, scope: !78)
!107 = !DILocation(line: 59, column: 5, scope: !78)
!108 = !DILocation(line: 62, column: 24, scope: !78)
!109 = !DILocation(line: 62, column: 5, scope: !78)
!110 = !DILocation(line: 63, column: 17, scope: !78)
!111 = !DILocation(line: 63, column: 21, scope: !78)
!112 = !DILocation(line: 63, column: 5, scope: !78)
!113 = !DILocation(line: 64, column: 17, scope: !78)
!114 = !DILocation(line: 64, column: 21, scope: !78)
!115 = !DILocation(line: 64, column: 5, scope: !78)
!116 = !DILocation(line: 67, column: 22, scope: !78)
!117 = !DILocation(line: 67, column: 30, scope: !78)
!118 = !DILocation(line: 67, column: 38, scope: !78)
!119 = !DILocation(line: 67, column: 5, scope: !78)
!120 = !DILocation(line: 70, column: 16, scope: !78)
!121 = !DILocation(line: 70, column: 5, scope: !78)
!122 = !DILocation(line: 72, column: 5, scope: !78)
!123 = distinct !DISubprogram(name: "memcpy", scope: !124, file: !124, line: 12, type: !125, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !29)
!124 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!125 = !DISubroutineType(types: !126)
!126 = !{!12, !12, !127, !129}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !130, line: 46, baseType: !131)
!130 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!131 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!132 = !DILocalVariable(name: "destaddr", arg: 1, scope: !123, file: !124, line: 12, type: !12)
!133 = !DILocation(line: 12, column: 20, scope: !123)
!134 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !123, file: !124, line: 12, type: !127)
!135 = !DILocation(line: 12, column: 42, scope: !123)
!136 = !DILocalVariable(name: "len", arg: 3, scope: !123, file: !124, line: 12, type: !129)
!137 = !DILocation(line: 12, column: 58, scope: !123)
!138 = !DILocalVariable(name: "dest", scope: !123, file: !124, line: 13, type: !27)
!139 = !DILocation(line: 13, column: 9, scope: !123)
!140 = !DILocation(line: 13, column: 16, scope: !123)
!141 = !DILocalVariable(name: "src", scope: !123, file: !124, line: 14, type: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!144 = !DILocation(line: 14, column: 15, scope: !123)
!145 = !DILocation(line: 14, column: 21, scope: !123)
!146 = !DILocation(line: 16, column: 3, scope: !123)
!147 = !DILocation(line: 16, column: 13, scope: !123)
!148 = !DILocation(line: 16, column: 16, scope: !123)
!149 = !DILocation(line: 17, column: 19, scope: !123)
!150 = !DILocation(line: 17, column: 15, scope: !123)
!151 = !DILocation(line: 17, column: 10, scope: !123)
!152 = !DILocation(line: 17, column: 13, scope: !123)
!153 = distinct !{!153, !146, !149, !154}
!154 = !{!"llvm.loop.mustprogress"}
!155 = !DILocation(line: 18, column: 10, scope: !123)
!156 = !DILocation(line: 18, column: 3, scope: !123)
