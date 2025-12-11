; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/215_xmlstring.c_466_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/215_xmlstring.c_466_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"cur_buf\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"add_buf\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"(size >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/215_xmlstring.c_466_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlRealloc(i8* noundef %0, i64 noundef %1) #0 !dbg !23 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !27, metadata !DIExpression()), !dbg !28
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !29, metadata !DIExpression()), !dbg !30
  %7 = load i64, i64* %5, align 8, !dbg !31
  %8 = icmp eq i64 %7, 0, !dbg !33
  br i1 %8, label %9, label %11, !dbg !34

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !35
  call void @free(i8* noundef %10) #8, !dbg !37
  store i8* null, i8** %3, align 8, !dbg !38
  br label %16, !dbg !38

11:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !39, metadata !DIExpression()), !dbg !40
  %12 = load i8*, i8** %4, align 8, !dbg !41
  %13 = load i64, i64* %5, align 8, !dbg !42
  %14 = call i8* @realloc(i8* noundef %12, i64 noundef %13) #8, !dbg !43
  store i8* %14, i8** %6, align 8, !dbg !40
  %15 = load i8*, i8** %6, align 8, !dbg !44
  store i8* %15, i8** %3, align 8, !dbg !45
  br label %16, !dbg !45

16:                                               ; preds = %11, %9
  %17 = load i8*, i8** %3, align 8, !dbg !46
  ret i8* %17, !dbg !46
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !47 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [256 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !53, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !58, metadata !DIExpression()), !dbg !59
  %6 = bitcast i32* %2 to i8*, !dbg !60
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !61
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !62
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !63
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !64
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !65
  %9 = load i32, i32* %2, align 4, !dbg !66
  %10 = icmp sge i32 %9, 0, !dbg !67
  %11 = zext i1 %10 to i32, !dbg !67
  %12 = sext i32 %11 to i64, !dbg !66
  call void @klee_assume(i64 noundef %12), !dbg !68
  %13 = load i32, i32* %2, align 4, !dbg !69
  %14 = icmp slt i32 %13, 256, !dbg !70
  %15 = zext i1 %14 to i32, !dbg !70
  %16 = sext i32 %15 to i64, !dbg !69
  call void @klee_assume(i64 noundef %16), !dbg !71
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !72
  store i8 0, i8* %17, align 1, !dbg !73
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 255, !dbg !74
  store i8 0, i8* %18, align 1, !dbg !75
  call void @llvm.dbg.declare(metadata i8** %5, metadata !76, metadata !DIExpression()), !dbg !77
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !78
  %20 = load i32, i32* %2, align 4, !dbg !79
  %21 = call i8* @xmlStrndup(i8* noundef %19, i32 noundef %20), !dbg !80
  store i8* %21, i8** %5, align 8, !dbg !77
  %22 = load i32, i32* %2, align 4, !dbg !81
  %23 = icmp sge i32 %22, 0, !dbg !81
  br i1 %23, label %24, label %26, !dbg !81

24:                                               ; preds = %0
  br i1 true, label %25, label %26, !dbg !81

25:                                               ; preds = %24
  br label %28, !dbg !81

26:                                               ; preds = %24, %0
  %27 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.5, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !81
  br label %28, !dbg !81

28:                                               ; preds = %26, %25
  %29 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.5, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !82
  %30 = load i8*, i8** %5, align 8, !dbg !83
  %31 = icmp ne i8* %30, null, !dbg !85
  br i1 %31, label %32, label %38, !dbg !86

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8, !dbg !87
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !88
  %35 = icmp ne i8* %33, %34, !dbg !89
  br i1 %35, label %36, label %38, !dbg !90

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8, !dbg !91
  call void @free(i8* noundef %37) #8, !dbg !93
  br label %38, !dbg !94

38:                                               ; preds = %36, %32, %28
  ret i32 0, !dbg !95
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrndup(i8* noundef %0, i32 noundef %1) #0 !dbg !96 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !101, metadata !DIExpression()), !dbg !102
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata i32* %6, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata i8** %7, metadata !107, metadata !DIExpression()), !dbg !108
  %8 = load i8*, i8** %4, align 8, !dbg !109
  %9 = icmp eq i8* %8, null, !dbg !111
  br i1 %9, label %10, label %11, !dbg !112

10:                                               ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !113
  br label %41, !dbg !113

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !114
  %13 = call i64 @strlen(i8* noundef %12) #9, !dbg !115
  %14 = trunc i64 %13 to i32, !dbg !115
  store i32 %14, i32* %6, align 4, !dbg !116
  %15 = load i32, i32* %5, align 4, !dbg !117
  %16 = sext i32 %15 to i64, !dbg !118
  %17 = load i32, i32* %6, align 4, !dbg !119
  %18 = sext i32 %17 to i64, !dbg !119
  %19 = add i64 %16, %18, !dbg !120
  %20 = add i64 %19, 1, !dbg !121
  %21 = call i8* @xmlRealloc(i8* noundef null, i64 noundef %20), !dbg !122
  store i8* %21, i8** %7, align 8, !dbg !123
  %22 = load i8*, i8** %7, align 8, !dbg !124
  %23 = icmp eq i8* %22, null, !dbg !126
  br i1 %23, label %24, label %25, !dbg !127

24:                                               ; preds = %11
  store i8* null, i8** %3, align 8, !dbg !128
  br label %41, !dbg !128

25:                                               ; preds = %11
  %26 = load i8*, i8** %7, align 8, !dbg !130
  %27 = load i32, i32* %5, align 4, !dbg !131
  %28 = sext i32 %27 to i64, !dbg !130
  %29 = getelementptr inbounds i8, i8* %26, i64 %28, !dbg !130
  %30 = load i8*, i8** %4, align 8, !dbg !132
  %31 = load i32, i32* %6, align 4, !dbg !133
  %32 = sext i32 %31 to i64, !dbg !133
  %33 = call i8* @memcpy(i8* %29, i8* %30, i64 %32), !dbg !134
  %34 = load i8*, i8** %7, align 8, !dbg !135
  %35 = load i32, i32* %5, align 4, !dbg !136
  %36 = load i32, i32* %6, align 4, !dbg !137
  %37 = add nsw i32 %35, %36, !dbg !138
  %38 = sext i32 %37 to i64, !dbg !135
  %39 = getelementptr inbounds i8, i8* %34, i64 %38, !dbg !135
  store i8 0, i8* %39, align 1, !dbg !139
  %40 = load i8*, i8** %7, align 8, !dbg !140
  store i8* %40, i8** %3, align 8, !dbg !141
  br label %41, !dbg !141

41:                                               ; preds = %25, %24, %10
  %42 = load i8*, i8** %3, align 8, !dbg !142
  ret i8* %42, !dbg !142
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !143 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !149, metadata !DIExpression()), !dbg !150
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !151, metadata !DIExpression()), !dbg !152
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata i8** %7, metadata !155, metadata !DIExpression()), !dbg !157
  %9 = load i8*, i8** %4, align 8, !dbg !158
  store i8* %9, i8** %7, align 8, !dbg !157
  call void @llvm.dbg.declare(metadata i8** %8, metadata !159, metadata !DIExpression()), !dbg !160
  %10 = load i8*, i8** %5, align 8, !dbg !161
  store i8* %10, i8** %8, align 8, !dbg !160
  br label %11, !dbg !162

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !163
  %13 = add i64 %12, -1, !dbg !163
  store i64 %13, i64* %6, align 8, !dbg !163
  %14 = icmp ugt i64 %12, 0, !dbg !164
  br i1 %14, label %15, label %21, !dbg !162

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !165
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !165
  store i8* %17, i8** %8, align 8, !dbg !165
  %18 = load i8, i8* %16, align 1, !dbg !166
  %19 = load i8*, i8** %7, align 8, !dbg !167
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !167
  store i8* %20, i8** %7, align 8, !dbg !167
  store i8 %18, i8* %19, align 1, !dbg !168
  br label %11, !dbg !162, !llvm.loop !169

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !171
  ret i8* %22, !dbg !172
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/215_xmlstring.c_466_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "5da498104bb5b5f46776404a494b15b5")
!2 = !{!3, !6, !7, !10}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !5)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 46, baseType: !12)
!11 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!12 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
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
!23 = distinct !DISubprogram(name: "xmlRealloc", scope: !1, file: !1, line: 15, type: !24, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!24 = !DISubroutineType(types: !25)
!25 = !{!3, !6, !10}
!26 = !{}
!27 = !DILocalVariable(name: "ptr", arg: 1, scope: !23, file: !1, line: 15, type: !6)
!28 = !DILocation(line: 15, column: 27, scope: !23)
!29 = !DILocalVariable(name: "size", arg: 2, scope: !23, file: !1, line: 15, type: !10)
!30 = !DILocation(line: 15, column: 39, scope: !23)
!31 = !DILocation(line: 16, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !23, file: !1, line: 16, column: 9)
!33 = !DILocation(line: 16, column: 14, scope: !32)
!34 = !DILocation(line: 16, column: 9, scope: !23)
!35 = !DILocation(line: 17, column: 14, scope: !36)
!36 = distinct !DILexicalBlock(scope: !32, file: !1, line: 16, column: 20)
!37 = !DILocation(line: 17, column: 9, scope: !36)
!38 = !DILocation(line: 18, column: 9, scope: !36)
!39 = !DILocalVariable(name: "new_ptr", scope: !23, file: !1, line: 20, type: !6)
!40 = !DILocation(line: 20, column: 11, scope: !23)
!41 = !DILocation(line: 20, column: 29, scope: !23)
!42 = !DILocation(line: 20, column: 34, scope: !23)
!43 = !DILocation(line: 20, column: 21, scope: !23)
!44 = !DILocation(line: 21, column: 22, scope: !23)
!45 = !DILocation(line: 21, column: 5, scope: !23)
!46 = !DILocation(line: 22, column: 1, scope: !23)
!47 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 25, type: !48, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!48 = !DISubroutineType(types: !49)
!49 = !{!50}
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DILocalVariable(name: "size", scope: !47, file: !1, line: 27, type: !50)
!52 = !DILocation(line: 27, column: 9, scope: !47)
!53 = !DILocalVariable(name: "cur_buf", scope: !47, file: !1, line: 28, type: !54)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 256)
!57 = !DILocation(line: 28, column: 13, scope: !47)
!58 = !DILocalVariable(name: "add_buf", scope: !47, file: !1, line: 29, type: !54)
!59 = !DILocation(line: 29, column: 13, scope: !47)
!60 = !DILocation(line: 32, column: 24, scope: !47)
!61 = !DILocation(line: 32, column: 5, scope: !47)
!62 = !DILocation(line: 33, column: 24, scope: !47)
!63 = !DILocation(line: 33, column: 5, scope: !47)
!64 = !DILocation(line: 34, column: 24, scope: !47)
!65 = !DILocation(line: 34, column: 5, scope: !47)
!66 = !DILocation(line: 37, column: 17, scope: !47)
!67 = !DILocation(line: 37, column: 22, scope: !47)
!68 = !DILocation(line: 37, column: 5, scope: !47)
!69 = !DILocation(line: 38, column: 17, scope: !47)
!70 = !DILocation(line: 38, column: 22, scope: !47)
!71 = !DILocation(line: 38, column: 5, scope: !47)
!72 = !DILocation(line: 41, column: 5, scope: !47)
!73 = !DILocation(line: 41, column: 18, scope: !47)
!74 = !DILocation(line: 42, column: 5, scope: !47)
!75 = !DILocation(line: 42, column: 18, scope: !47)
!76 = !DILocalVariable(name: "result", scope: !47, file: !1, line: 45, type: !3)
!77 = !DILocation(line: 45, column: 14, scope: !47)
!78 = !DILocation(line: 45, column: 34, scope: !47)
!79 = !DILocation(line: 45, column: 43, scope: !47)
!80 = !DILocation(line: 45, column: 23, scope: !47)
!81 = !DILocation(line: 52, column: 5, scope: !47)
!82 = !DILocation(line: 55, column: 5, scope: !47)
!83 = !DILocation(line: 58, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !47, file: !1, line: 58, column: 9)
!85 = !DILocation(line: 58, column: 16, scope: !84)
!86 = !DILocation(line: 58, column: 24, scope: !84)
!87 = !DILocation(line: 58, column: 27, scope: !84)
!88 = !DILocation(line: 58, column: 47, scope: !84)
!89 = !DILocation(line: 58, column: 34, scope: !84)
!90 = !DILocation(line: 58, column: 9, scope: !47)
!91 = !DILocation(line: 59, column: 14, scope: !92)
!92 = distinct !DILexicalBlock(scope: !84, file: !1, line: 58, column: 56)
!93 = !DILocation(line: 59, column: 9, scope: !92)
!94 = !DILocation(line: 60, column: 5, scope: !92)
!95 = !DILocation(line: 62, column: 5, scope: !47)
!96 = distinct !DISubprogram(name: "xmlStrndup", scope: !1, file: !1, line: 66, type: !97, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!97 = !DISubroutineType(types: !98)
!98 = !{!3, !99, !50}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!101 = !DILocalVariable(name: "cur", arg: 1, scope: !96, file: !1, line: 66, type: !99)
!102 = !DILocation(line: 66, column: 36, scope: !96)
!103 = !DILocalVariable(name: "size", arg: 2, scope: !96, file: !1, line: 66, type: !50)
!104 = !DILocation(line: 66, column: 45, scope: !96)
!105 = !DILocalVariable(name: "len", scope: !96, file: !1, line: 67, type: !50)
!106 = !DILocation(line: 67, column: 9, scope: !96)
!107 = !DILocalVariable(name: "ret", scope: !96, file: !1, line: 68, type: !3)
!108 = !DILocation(line: 68, column: 14, scope: !96)
!109 = !DILocation(line: 70, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !96, file: !1, line: 70, column: 9)
!111 = !DILocation(line: 70, column: 13, scope: !110)
!112 = !DILocation(line: 70, column: 9, scope: !96)
!113 = !DILocation(line: 70, column: 22, scope: !110)
!114 = !DILocation(line: 74, column: 31, scope: !96)
!115 = !DILocation(line: 74, column: 11, scope: !96)
!116 = !DILocation(line: 74, column: 9, scope: !96)
!117 = !DILocation(line: 77, column: 46, scope: !96)
!118 = !DILocation(line: 77, column: 38, scope: !96)
!119 = !DILocation(line: 77, column: 53, scope: !96)
!120 = !DILocation(line: 77, column: 51, scope: !96)
!121 = !DILocation(line: 77, column: 57, scope: !96)
!122 = !DILocation(line: 77, column: 21, scope: !96)
!123 = !DILocation(line: 77, column: 9, scope: !96)
!124 = !DILocation(line: 78, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !96, file: !1, line: 78, column: 9)
!126 = !DILocation(line: 78, column: 13, scope: !125)
!127 = !DILocation(line: 78, column: 9, scope: !96)
!128 = !DILocation(line: 79, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 78, column: 22)
!130 = !DILocation(line: 84, column: 13, scope: !96)
!131 = !DILocation(line: 84, column: 17, scope: !96)
!132 = !DILocation(line: 84, column: 24, scope: !96)
!133 = !DILocation(line: 84, column: 29, scope: !96)
!134 = !DILocation(line: 84, column: 5, scope: !96)
!135 = !DILocation(line: 85, column: 5, scope: !96)
!136 = !DILocation(line: 85, column: 9, scope: !96)
!137 = !DILocation(line: 85, column: 16, scope: !96)
!138 = !DILocation(line: 85, column: 14, scope: !96)
!139 = !DILocation(line: 85, column: 21, scope: !96)
!140 = !DILocation(line: 87, column: 12, scope: !96)
!141 = !DILocation(line: 87, column: 5, scope: !96)
!142 = !DILocation(line: 88, column: 1, scope: !96)
!143 = distinct !DISubprogram(name: "memcpy", scope: !144, file: !144, line: 12, type: !145, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !26)
!144 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!145 = !DISubroutineType(types: !146)
!146 = !{!6, !6, !147, !10}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!149 = !DILocalVariable(name: "destaddr", arg: 1, scope: !143, file: !144, line: 12, type: !6)
!150 = !DILocation(line: 12, column: 20, scope: !143)
!151 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !143, file: !144, line: 12, type: !147)
!152 = !DILocation(line: 12, column: 42, scope: !143)
!153 = !DILocalVariable(name: "len", arg: 3, scope: !143, file: !144, line: 12, type: !10)
!154 = !DILocation(line: 12, column: 58, scope: !143)
!155 = !DILocalVariable(name: "dest", scope: !143, file: !144, line: 13, type: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!157 = !DILocation(line: 13, column: 9, scope: !143)
!158 = !DILocation(line: 13, column: 16, scope: !143)
!159 = !DILocalVariable(name: "src", scope: !143, file: !144, line: 14, type: !7)
!160 = !DILocation(line: 14, column: 15, scope: !143)
!161 = !DILocation(line: 14, column: 21, scope: !143)
!162 = !DILocation(line: 16, column: 3, scope: !143)
!163 = !DILocation(line: 16, column: 13, scope: !143)
!164 = !DILocation(line: 16, column: 16, scope: !143)
!165 = !DILocation(line: 17, column: 19, scope: !143)
!166 = !DILocation(line: 17, column: 15, scope: !143)
!167 = !DILocation(line: 17, column: 10, scope: !143)
!168 = !DILocation(line: 17, column: 13, scope: !143)
!169 = distinct !{!169, !162, !165, !170}
!170 = !{!"llvm.loop.mustprogress"}
!171 = !DILocation(line: 18, column: 10, scope: !143)
!172 = !DILocation(line: 18, column: 3, scope: !143)
