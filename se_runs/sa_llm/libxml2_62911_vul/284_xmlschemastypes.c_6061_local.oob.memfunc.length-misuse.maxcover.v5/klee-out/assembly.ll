; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/284_xmlschemastypes.c_6061_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/284_xmlschemastypes.c_6061_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"i_symbolic\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"dec_total\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_62911_vul/284_xmlschemastypes.c_6061_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !16 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @xmlSchemaInitTypes(), !dbg !21
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !22, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %3, metadata !28, metadata !DIExpression()), !dbg !29
  store i32 256, i32* %3, align 4, !dbg !29
  call void @llvm.dbg.declare(metadata i8** %4, metadata !30, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %5, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %6, metadata !35, metadata !DIExpression()), !dbg !36
  %8 = bitcast i32* %5 to i8*, !dbg !37
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !38
  %9 = bitcast i32* %6 to i8*, !dbg !39
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)), !dbg !40
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !41
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !42
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !43
  %12 = load i32, i32* %3, align 4, !dbg !44
  %13 = udiv i32 %12, 2, !dbg !45
  %14 = zext i32 %13 to i64, !dbg !46
  %15 = getelementptr inbounds i8, i8* %11, i64 %14, !dbg !46
  store i8* %15, i8** %4, align 8, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %7, metadata !48, metadata !DIExpression()), !dbg !49
  %16 = load i32, i32* %5, align 4, !dbg !50
  store i32 %16, i32* %7, align 4, !dbg !49
  br label %17, !dbg !51

17:                                               ; preds = %40, %0
  %18 = load i8*, i8** %4, align 8, !dbg !52
  %19 = load i32, i32* %7, align 4, !dbg !53
  %20 = zext i32 %19 to i64, !dbg !54
  %21 = getelementptr inbounds i8, i8* %18, i64 %20, !dbg !54
  %22 = load i8, i8* %21, align 1, !dbg !55
  %23 = sext i8 %22 to i32, !dbg !55
  %24 = icmp ne i32 %23, 0, !dbg !56
  br i1 %24, label %25, label %41, !dbg !51

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4, !dbg !57
  %27 = add i32 %26, 1, !dbg !57
  store i32 %27, i32* %7, align 4, !dbg !57
  %28 = load i32, i32* %7, align 4, !dbg !59
  %29 = zext i32 %28 to i64, !dbg !59
  %30 = load i32, i32* %3, align 4, !dbg !61
  %31 = zext i32 %30 to i64, !dbg !61
  %32 = load i8*, i8** %4, align 8, !dbg !62
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !63
  %34 = ptrtoint i8* %32 to i64, !dbg !64
  %35 = ptrtoint i8* %33 to i64, !dbg !64
  %36 = sub i64 %34, %35, !dbg !64
  %37 = sub nsw i64 %31, %36, !dbg !65
  %38 = icmp sge i64 %29, %37, !dbg !66
  br i1 %38, label %39, label %40, !dbg !67

39:                                               ; preds = %25
  br label %41, !dbg !68

40:                                               ; preds = %25
  br label %17, !dbg !51, !llvm.loop !70

41:                                               ; preds = %39, %17
  %42 = load i32, i32* %7, align 4, !dbg !73
  %43 = load i32, i32* %6, align 4, !dbg !75
  %44 = icmp ult i32 %42, %43, !dbg !76
  br i1 %44, label %45, label %64, !dbg !77

45:                                               ; preds = %41
  %46 = load i8*, i8** %4, align 8, !dbg !78
  %47 = load i32, i32* %6, align 4, !dbg !80
  %48 = load i32, i32* %7, align 4, !dbg !81
  %49 = sub i32 %47, %48, !dbg !82
  %50 = zext i32 %49 to i64, !dbg !83
  %51 = getelementptr inbounds i8, i8* %46, i64 %50, !dbg !83
  %52 = load i8*, i8** %4, align 8, !dbg !84
  %53 = load i32, i32* %7, align 4, !dbg !85
  %54 = add i32 %53, 1, !dbg !86
  %55 = zext i32 %54 to i64, !dbg !85
  %56 = call i8* @memmove(i8* %51, i8* %52, i64 %55), !dbg !87
  %57 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !88
  %58 = load i8*, i8** %4, align 8, !dbg !89
  %59 = load i32, i32* %6, align 4, !dbg !90
  %60 = load i32, i32* %7, align 4, !dbg !91
  %61 = sub i32 %59, %60, !dbg !92
  %62 = zext i32 %61 to i64, !dbg !90
  %63 = call i8* @memset(i8* %58, i32 48, i64 %62), !dbg !93
  br label %64, !dbg !94

64:                                               ; preds = %45, %41
  ret i32 0, !dbg !95
}

declare void @xmlSchemaInitTypes() #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !96 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !106, metadata !DIExpression()), !dbg !107
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !108, metadata !DIExpression()), !dbg !109
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i8** %8, metadata !112, metadata !DIExpression()), !dbg !113
  %10 = load i8*, i8** %5, align 8, !dbg !114
  store i8* %10, i8** %8, align 8, !dbg !113
  call void @llvm.dbg.declare(metadata i8** %9, metadata !115, metadata !DIExpression()), !dbg !118
  %11 = load i8*, i8** %6, align 8, !dbg !119
  store i8* %11, i8** %9, align 8, !dbg !118
  %12 = load i8*, i8** %6, align 8, !dbg !120
  %13 = load i8*, i8** %5, align 8, !dbg !122
  %14 = icmp eq i8* %12, %13, !dbg !123
  br i1 %14, label %15, label %17, !dbg !124

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !125
  store i8* %16, i8** %4, align 8, !dbg !126
  br label %52, !dbg !126

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !127
  %19 = load i8*, i8** %5, align 8, !dbg !129
  %20 = icmp ugt i8* %18, %19, !dbg !130
  br i1 %20, label %21, label %31, !dbg !131

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !132
  %23 = add i64 %22, -1, !dbg !132
  store i64 %23, i64* %7, align 8, !dbg !132
  %24 = icmp ne i64 %22, 0, !dbg !134
  br i1 %24, label %25, label %50, !dbg !134

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !135
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !135
  store i8* %27, i8** %9, align 8, !dbg !135
  %28 = load i8, i8* %26, align 1, !dbg !136
  %29 = load i8*, i8** %8, align 8, !dbg !137
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !137
  store i8* %30, i8** %8, align 8, !dbg !137
  store i8 %28, i8* %29, align 1, !dbg !138
  br label %21, !dbg !134, !llvm.loop !139

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !140
  %33 = sub i64 %32, 1, !dbg !142
  %34 = load i8*, i8** %8, align 8, !dbg !143
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !143
  store i8* %35, i8** %8, align 8, !dbg !143
  %36 = load i64, i64* %7, align 8, !dbg !144
  %37 = sub i64 %36, 1, !dbg !145
  %38 = load i8*, i8** %9, align 8, !dbg !146
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !146
  store i8* %39, i8** %9, align 8, !dbg !146
  br label %40, !dbg !147

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !148
  %42 = add i64 %41, -1, !dbg !148
  store i64 %42, i64* %7, align 8, !dbg !148
  %43 = icmp ne i64 %41, 0, !dbg !147
  br i1 %43, label %44, label %50, !dbg !147

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !149
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !149
  store i8* %46, i8** %9, align 8, !dbg !149
  %47 = load i8, i8* %45, align 1, !dbg !150
  %48 = load i8*, i8** %8, align 8, !dbg !151
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !151
  store i8* %49, i8** %8, align 8, !dbg !151
  store i8 %47, i8* %48, align 1, !dbg !152
  br label %40, !dbg !147, !llvm.loop !153

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !154
  store i8* %51, i8** %4, align 8, !dbg !155
  br label %52, !dbg !155

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !156
  ret i8* %53, !dbg !156
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !157 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !161, metadata !DIExpression()), !dbg !162
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !163, metadata !DIExpression()), !dbg !164
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata i8** %7, metadata !167, metadata !DIExpression()), !dbg !168
  %8 = load i8*, i8** %4, align 8, !dbg !169
  store i8* %8, i8** %7, align 8, !dbg !168
  br label %9, !dbg !170

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !171
  %11 = add i64 %10, -1, !dbg !171
  store i64 %11, i64* %6, align 8, !dbg !171
  %12 = icmp ugt i64 %10, 0, !dbg !172
  br i1 %12, label %13, label %18, !dbg !170

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !173
  %15 = trunc i32 %14 to i8, !dbg !173
  %16 = load i8*, i8** %7, align 8, !dbg !174
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !174
  store i8* %17, i8** %7, align 8, !dbg !174
  store i8 %15, i8* %16, align 1, !dbg !175
  br label %9, !dbg !170, !llvm.loop !176

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !177
  ret i8* %19, !dbg !178
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/284_xmlschemastypes.c_6061_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "17c4af10d17cc68ba8656d599358f27b")
!2 = !{!3}
!3 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
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
!16 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !17, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{}
!21 = !DILocation(line: 7, column: 5, scope: !16)
!22 = !DILocalVariable(name: "buf", scope: !16, file: !1, line: 9, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2048, elements: !25)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !{!26}
!26 = !DISubrange(count: 256)
!27 = !DILocation(line: 9, column: 10, scope: !16)
!28 = !DILocalVariable(name: "bufsize", scope: !16, file: !1, line: 10, type: !3)
!29 = !DILocation(line: 10, column: 18, scope: !16)
!30 = !DILocalVariable(name: "offs", scope: !16, file: !1, line: 11, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!32 = !DILocation(line: 11, column: 11, scope: !16)
!33 = !DILocalVariable(name: "i_symbolic", scope: !16, file: !1, line: 12, type: !19)
!34 = !DILocation(line: 12, column: 9, scope: !16)
!35 = !DILocalVariable(name: "dec_total", scope: !16, file: !1, line: 13, type: !3)
!36 = !DILocation(line: 13, column: 18, scope: !16)
!37 = !DILocation(line: 15, column: 24, scope: !16)
!38 = !DILocation(line: 15, column: 5, scope: !16)
!39 = !DILocation(line: 16, column: 24, scope: !16)
!40 = !DILocation(line: 16, column: 5, scope: !16)
!41 = !DILocation(line: 17, column: 24, scope: !16)
!42 = !DILocation(line: 17, column: 5, scope: !16)
!43 = !DILocation(line: 19, column: 12, scope: !16)
!44 = !DILocation(line: 19, column: 19, scope: !16)
!45 = !DILocation(line: 19, column: 27, scope: !16)
!46 = !DILocation(line: 19, column: 16, scope: !16)
!47 = !DILocation(line: 19, column: 10, scope: !16)
!48 = !DILocalVariable(name: "i", scope: !16, file: !1, line: 20, type: !3)
!49 = !DILocation(line: 20, column: 18, scope: !16)
!50 = !DILocation(line: 20, column: 36, scope: !16)
!51 = !DILocation(line: 21, column: 5, scope: !16)
!52 = !DILocation(line: 21, column: 14, scope: !16)
!53 = !DILocation(line: 21, column: 21, scope: !16)
!54 = !DILocation(line: 21, column: 19, scope: !16)
!55 = !DILocation(line: 21, column: 12, scope: !16)
!56 = !DILocation(line: 21, column: 24, scope: !16)
!57 = !DILocation(line: 22, column: 10, scope: !58)
!58 = distinct !DILexicalBlock(scope: !16, file: !1, line: 21, column: 30)
!59 = !DILocation(line: 23, column: 13, scope: !60)
!60 = distinct !DILexicalBlock(scope: !58, file: !1, line: 23, column: 13)
!61 = !DILocation(line: 23, column: 18, scope: !60)
!62 = !DILocation(line: 23, column: 29, scope: !60)
!63 = !DILocation(line: 23, column: 36, scope: !60)
!64 = !DILocation(line: 23, column: 34, scope: !60)
!65 = !DILocation(line: 23, column: 26, scope: !60)
!66 = !DILocation(line: 23, column: 15, scope: !60)
!67 = !DILocation(line: 23, column: 13, scope: !58)
!68 = !DILocation(line: 24, column: 13, scope: !69)
!69 = distinct !DILexicalBlock(scope: !60, file: !1, line: 23, column: 42)
!70 = distinct !{!70, !51, !71, !72}
!71 = !DILocation(line: 26, column: 5, scope: !16)
!72 = !{!"llvm.loop.mustprogress"}
!73 = !DILocation(line: 28, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !16, file: !1, line: 28, column: 9)
!75 = !DILocation(line: 28, column: 13, scope: !74)
!76 = !DILocation(line: 28, column: 11, scope: !74)
!77 = !DILocation(line: 28, column: 9, scope: !16)
!78 = !DILocation(line: 29, column: 17, scope: !79)
!79 = distinct !DILexicalBlock(scope: !74, file: !1, line: 28, column: 24)
!80 = !DILocation(line: 29, column: 25, scope: !79)
!81 = !DILocation(line: 29, column: 37, scope: !79)
!82 = !DILocation(line: 29, column: 35, scope: !79)
!83 = !DILocation(line: 29, column: 22, scope: !79)
!84 = !DILocation(line: 29, column: 41, scope: !79)
!85 = !DILocation(line: 29, column: 47, scope: !79)
!86 = !DILocation(line: 29, column: 49, scope: !79)
!87 = !DILocation(line: 29, column: 9, scope: !79)
!88 = !DILocation(line: 30, column: 9, scope: !79)
!89 = !DILocation(line: 31, column: 16, scope: !79)
!90 = !DILocation(line: 31, column: 27, scope: !79)
!91 = !DILocation(line: 31, column: 39, scope: !79)
!92 = !DILocation(line: 31, column: 37, scope: !79)
!93 = !DILocation(line: 31, column: 9, scope: !79)
!94 = !DILocation(line: 32, column: 5, scope: !79)
!95 = !DILocation(line: 34, column: 5, scope: !16)
!96 = distinct !DISubprogram(name: "memmove", scope: !97, file: !97, line: 12, type: !98, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !20)
!97 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!98 = !DISubroutineType(types: !99)
!99 = !{!100, !100, !101, !103}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 46, baseType: !105)
!104 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!105 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!106 = !DILocalVariable(name: "dst", arg: 1, scope: !96, file: !97, line: 12, type: !100)
!107 = !DILocation(line: 12, column: 21, scope: !96)
!108 = !DILocalVariable(name: "src", arg: 2, scope: !96, file: !97, line: 12, type: !101)
!109 = !DILocation(line: 12, column: 38, scope: !96)
!110 = !DILocalVariable(name: "count", arg: 3, scope: !96, file: !97, line: 12, type: !103)
!111 = !DILocation(line: 12, column: 50, scope: !96)
!112 = !DILocalVariable(name: "a", scope: !96, file: !97, line: 13, type: !31)
!113 = !DILocation(line: 13, column: 9, scope: !96)
!114 = !DILocation(line: 13, column: 13, scope: !96)
!115 = !DILocalVariable(name: "b", scope: !96, file: !97, line: 14, type: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!118 = !DILocation(line: 14, column: 15, scope: !96)
!119 = !DILocation(line: 14, column: 19, scope: !96)
!120 = !DILocation(line: 16, column: 7, scope: !121)
!121 = distinct !DILexicalBlock(scope: !96, file: !97, line: 16, column: 7)
!122 = !DILocation(line: 16, column: 14, scope: !121)
!123 = !DILocation(line: 16, column: 11, scope: !121)
!124 = !DILocation(line: 16, column: 7, scope: !96)
!125 = !DILocation(line: 17, column: 12, scope: !121)
!126 = !DILocation(line: 17, column: 5, scope: !121)
!127 = !DILocation(line: 19, column: 7, scope: !128)
!128 = distinct !DILexicalBlock(scope: !96, file: !97, line: 19, column: 7)
!129 = !DILocation(line: 19, column: 13, scope: !128)
!130 = !DILocation(line: 19, column: 11, scope: !128)
!131 = !DILocation(line: 19, column: 7, scope: !96)
!132 = !DILocation(line: 20, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !128, file: !97, line: 19, column: 18)
!134 = !DILocation(line: 20, column: 5, scope: !133)
!135 = !DILocation(line: 21, column: 16, scope: !133)
!136 = !DILocation(line: 21, column: 14, scope: !133)
!137 = !DILocation(line: 21, column: 9, scope: !133)
!138 = !DILocation(line: 21, column: 12, scope: !133)
!139 = distinct !{!139, !134, !135, !72}
!140 = !DILocation(line: 23, column: 10, scope: !141)
!141 = distinct !DILexicalBlock(scope: !128, file: !97, line: 22, column: 10)
!142 = !DILocation(line: 23, column: 16, scope: !141)
!143 = !DILocation(line: 23, column: 7, scope: !141)
!144 = !DILocation(line: 24, column: 10, scope: !141)
!145 = !DILocation(line: 24, column: 16, scope: !141)
!146 = !DILocation(line: 24, column: 7, scope: !141)
!147 = !DILocation(line: 25, column: 5, scope: !141)
!148 = !DILocation(line: 25, column: 17, scope: !141)
!149 = !DILocation(line: 26, column: 16, scope: !141)
!150 = !DILocation(line: 26, column: 14, scope: !141)
!151 = !DILocation(line: 26, column: 9, scope: !141)
!152 = !DILocation(line: 26, column: 12, scope: !141)
!153 = distinct !{!153, !147, !149, !72}
!154 = !DILocation(line: 29, column: 10, scope: !96)
!155 = !DILocation(line: 29, column: 3, scope: !96)
!156 = !DILocation(line: 30, column: 1, scope: !96)
!157 = distinct !DISubprogram(name: "memset", scope: !158, file: !158, line: 12, type: !159, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !20)
!158 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!159 = !DISubroutineType(types: !160)
!160 = !{!100, !100, !19, !103}
!161 = !DILocalVariable(name: "dst", arg: 1, scope: !157, file: !158, line: 12, type: !100)
!162 = !DILocation(line: 12, column: 20, scope: !157)
!163 = !DILocalVariable(name: "s", arg: 2, scope: !157, file: !158, line: 12, type: !19)
!164 = !DILocation(line: 12, column: 29, scope: !157)
!165 = !DILocalVariable(name: "count", arg: 3, scope: !157, file: !158, line: 12, type: !103)
!166 = !DILocation(line: 12, column: 39, scope: !157)
!167 = !DILocalVariable(name: "a", scope: !157, file: !158, line: 13, type: !31)
!168 = !DILocation(line: 13, column: 9, scope: !157)
!169 = !DILocation(line: 13, column: 13, scope: !157)
!170 = !DILocation(line: 14, column: 3, scope: !157)
!171 = !DILocation(line: 14, column: 15, scope: !157)
!172 = !DILocation(line: 14, column: 18, scope: !157)
!173 = !DILocation(line: 15, column: 12, scope: !157)
!174 = !DILocation(line: 15, column: 7, scope: !157)
!175 = !DILocation(line: 15, column: 10, scope: !157)
!176 = distinct !{!176, !170, !173, !72}
!177 = !DILocation(line: 16, column: 10, scope: !157)
!178 = !DILocation(line: 16, column: 3, scope: !157)
