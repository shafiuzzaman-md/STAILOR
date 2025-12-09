; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/283_xmlschemastypes.c_6060_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/283_xmlschemastypes.c_6060_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"i_symbolic\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"dec_total\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_62911_vul/283_xmlschemastypes.c_6060_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @xmlSchemaInitTypes(), !dbg !19
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !20, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %3, metadata !26, metadata !DIExpression()), !dbg !28
  store i32 256, i32* %3, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i8** %4, metadata !29, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %5, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %6, metadata !34, metadata !DIExpression()), !dbg !35
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !36
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !37
  %9 = bitcast i32* %5 to i8*, !dbg !38
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !39
  %10 = bitcast i32* %6 to i8*, !dbg !40
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)), !dbg !41
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !42
  %12 = load i32, i32* %3, align 4, !dbg !43
  %13 = udiv i32 %12, 2, !dbg !44
  %14 = zext i32 %13 to i64, !dbg !45
  %15 = getelementptr inbounds i8, i8* %11, i64 %14, !dbg !45
  store i8* %15, i8** %4, align 8, !dbg !46
  %16 = load i8*, i8** %4, align 8, !dbg !47
  store i8 0, i8* %16, align 1, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %7, metadata !49, metadata !DIExpression()), !dbg !50
  store i32 0, i32* %7, align 4, !dbg !50
  br label %17, !dbg !51

17:                                               ; preds = %32, %0
  %18 = load i8*, i8** %4, align 8, !dbg !52
  %19 = load i32, i32* %7, align 4, !dbg !53
  %20 = zext i32 %19 to i64, !dbg !54
  %21 = getelementptr inbounds i8, i8* %18, i64 %20, !dbg !54
  %22 = load i8, i8* %21, align 1, !dbg !55
  %23 = sext i8 %22 to i32, !dbg !55
  %24 = icmp ne i32 %23, 0, !dbg !56
  br i1 %24, label %25, label %33, !dbg !51

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4, !dbg !57
  %27 = add i32 %26, 1, !dbg !57
  store i32 %27, i32* %7, align 4, !dbg !57
  %28 = load i32, i32* %7, align 4, !dbg !59
  %29 = load i32, i32* %3, align 4, !dbg !61
  %30 = icmp uge i32 %28, %29, !dbg !62
  br i1 %30, label %31, label %32, !dbg !63

31:                                               ; preds = %25
  br label %33, !dbg !64

32:                                               ; preds = %25
  br label %17, !dbg !51, !llvm.loop !65

33:                                               ; preds = %31, %17
  %34 = load i32, i32* %7, align 4, !dbg !68
  %35 = load i32, i32* %6, align 4, !dbg !70
  %36 = icmp ult i32 %34, %35, !dbg !71
  br i1 %36, label %37, label %56, !dbg !72

37:                                               ; preds = %33
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !73
  %39 = load i8*, i8** %4, align 8, !dbg !75
  %40 = load i32, i32* %6, align 4, !dbg !76
  %41 = load i32, i32* %7, align 4, !dbg !77
  %42 = sub i32 %40, %41, !dbg !78
  %43 = zext i32 %42 to i64, !dbg !79
  %44 = getelementptr inbounds i8, i8* %39, i64 %43, !dbg !79
  %45 = load i8*, i8** %4, align 8, !dbg !80
  %46 = load i32, i32* %7, align 4, !dbg !81
  %47 = add i32 %46, 1, !dbg !82
  %48 = zext i32 %47 to i64, !dbg !81
  %49 = call i8* @memmove(i8* %44, i8* %45, i64 %48), !dbg !83
  %50 = load i8*, i8** %4, align 8, !dbg !84
  %51 = load i32, i32* %6, align 4, !dbg !85
  %52 = load i32, i32* %7, align 4, !dbg !86
  %53 = sub i32 %51, %52, !dbg !87
  %54 = zext i32 %53 to i64, !dbg !85
  %55 = call i8* @memset(i8* %50, i32 48, i64 %54), !dbg !88
  br label %56, !dbg !89

56:                                               ; preds = %37, %33
  ret i32 0, !dbg !90
}

declare void @xmlSchemaInitTypes() #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !91 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !101, metadata !DIExpression()), !dbg !102
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !103, metadata !DIExpression()), !dbg !104
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata i8** %8, metadata !107, metadata !DIExpression()), !dbg !108
  %10 = load i8*, i8** %5, align 8, !dbg !109
  store i8* %10, i8** %8, align 8, !dbg !108
  call void @llvm.dbg.declare(metadata i8** %9, metadata !110, metadata !DIExpression()), !dbg !113
  %11 = load i8*, i8** %6, align 8, !dbg !114
  store i8* %11, i8** %9, align 8, !dbg !113
  %12 = load i8*, i8** %6, align 8, !dbg !115
  %13 = load i8*, i8** %5, align 8, !dbg !117
  %14 = icmp eq i8* %12, %13, !dbg !118
  br i1 %14, label %15, label %17, !dbg !119

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !120
  store i8* %16, i8** %4, align 8, !dbg !121
  br label %52, !dbg !121

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !122
  %19 = load i8*, i8** %5, align 8, !dbg !124
  %20 = icmp ugt i8* %18, %19, !dbg !125
  br i1 %20, label %21, label %31, !dbg !126

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !127
  %23 = add i64 %22, -1, !dbg !127
  store i64 %23, i64* %7, align 8, !dbg !127
  %24 = icmp ne i64 %22, 0, !dbg !129
  br i1 %24, label %25, label %50, !dbg !129

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !130
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !130
  store i8* %27, i8** %9, align 8, !dbg !130
  %28 = load i8, i8* %26, align 1, !dbg !131
  %29 = load i8*, i8** %8, align 8, !dbg !132
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !132
  store i8* %30, i8** %8, align 8, !dbg !132
  store i8 %28, i8* %29, align 1, !dbg !133
  br label %21, !dbg !129, !llvm.loop !134

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !135
  %33 = sub i64 %32, 1, !dbg !137
  %34 = load i8*, i8** %8, align 8, !dbg !138
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !138
  store i8* %35, i8** %8, align 8, !dbg !138
  %36 = load i64, i64* %7, align 8, !dbg !139
  %37 = sub i64 %36, 1, !dbg !140
  %38 = load i8*, i8** %9, align 8, !dbg !141
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !141
  store i8* %39, i8** %9, align 8, !dbg !141
  br label %40, !dbg !142

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !143
  %42 = add i64 %41, -1, !dbg !143
  store i64 %42, i64* %7, align 8, !dbg !143
  %43 = icmp ne i64 %41, 0, !dbg !142
  br i1 %43, label %44, label %50, !dbg !142

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !144
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !144
  store i8* %46, i8** %9, align 8, !dbg !144
  %47 = load i8, i8* %45, align 1, !dbg !145
  %48 = load i8*, i8** %8, align 8, !dbg !146
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !146
  store i8* %49, i8** %8, align 8, !dbg !146
  store i8 %47, i8* %48, align 1, !dbg !147
  br label %40, !dbg !142, !llvm.loop !148

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !149
  store i8* %51, i8** %4, align 8, !dbg !150
  br label %52, !dbg !150

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !151
  ret i8* %53, !dbg !151
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !152 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !156, metadata !DIExpression()), !dbg !157
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !158, metadata !DIExpression()), !dbg !159
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata i8** %7, metadata !162, metadata !DIExpression()), !dbg !163
  %8 = load i8*, i8** %4, align 8, !dbg !164
  store i8* %8, i8** %7, align 8, !dbg !163
  br label %9, !dbg !165

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !166
  %11 = add i64 %10, -1, !dbg !166
  store i64 %11, i64* %6, align 8, !dbg !166
  %12 = icmp ugt i64 %10, 0, !dbg !167
  br i1 %12, label %13, label %18, !dbg !165

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !168
  %15 = trunc i32 %14 to i8, !dbg !168
  %16 = load i8*, i8** %7, align 8, !dbg !169
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !169
  store i8* %17, i8** %7, align 8, !dbg !169
  store i8 %15, i8* %16, align 1, !dbg !170
  br label %9, !dbg !165, !llvm.loop !171

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !172
  ret i8* %19, !dbg !173
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/283_xmlschemastypes.c_6060_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "b29077c8fe29567b77f893a846fdc7c4")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
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
!14 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !15, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{}
!19 = !DILocation(line: 8, column: 5, scope: !14)
!20 = !DILocalVariable(name: "buf", scope: !14, file: !1, line: 10, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !23)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !{!24}
!24 = !DISubrange(count: 256)
!25 = !DILocation(line: 10, column: 10, scope: !14)
!26 = !DILocalVariable(name: "bufsize", scope: !14, file: !1, line: 11, type: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 11, column: 18, scope: !14)
!29 = !DILocalVariable(name: "offs", scope: !14, file: !1, line: 12, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!31 = !DILocation(line: 12, column: 11, scope: !14)
!32 = !DILocalVariable(name: "i_symbolic", scope: !14, file: !1, line: 13, type: !17)
!33 = !DILocation(line: 13, column: 9, scope: !14)
!34 = !DILocalVariable(name: "dec_total", scope: !14, file: !1, line: 14, type: !27)
!35 = !DILocation(line: 14, column: 18, scope: !14)
!36 = !DILocation(line: 16, column: 24, scope: !14)
!37 = !DILocation(line: 16, column: 5, scope: !14)
!38 = !DILocation(line: 17, column: 24, scope: !14)
!39 = !DILocation(line: 17, column: 5, scope: !14)
!40 = !DILocation(line: 18, column: 24, scope: !14)
!41 = !DILocation(line: 18, column: 5, scope: !14)
!42 = !DILocation(line: 20, column: 12, scope: !14)
!43 = !DILocation(line: 20, column: 19, scope: !14)
!44 = !DILocation(line: 20, column: 27, scope: !14)
!45 = !DILocation(line: 20, column: 16, scope: !14)
!46 = !DILocation(line: 20, column: 10, scope: !14)
!47 = !DILocation(line: 21, column: 6, scope: !14)
!48 = !DILocation(line: 21, column: 11, scope: !14)
!49 = !DILocalVariable(name: "i", scope: !14, file: !1, line: 23, type: !27)
!50 = !DILocation(line: 23, column: 18, scope: !14)
!51 = !DILocation(line: 24, column: 5, scope: !14)
!52 = !DILocation(line: 24, column: 14, scope: !14)
!53 = !DILocation(line: 24, column: 21, scope: !14)
!54 = !DILocation(line: 24, column: 19, scope: !14)
!55 = !DILocation(line: 24, column: 12, scope: !14)
!56 = !DILocation(line: 24, column: 24, scope: !14)
!57 = !DILocation(line: 25, column: 10, scope: !58)
!58 = distinct !DILexicalBlock(scope: !14, file: !1, line: 24, column: 30)
!59 = !DILocation(line: 26, column: 13, scope: !60)
!60 = distinct !DILexicalBlock(scope: !58, file: !1, line: 26, column: 13)
!61 = !DILocation(line: 26, column: 18, scope: !60)
!62 = !DILocation(line: 26, column: 15, scope: !60)
!63 = !DILocation(line: 26, column: 13, scope: !58)
!64 = !DILocation(line: 26, column: 27, scope: !60)
!65 = distinct !{!65, !51, !66, !67}
!66 = !DILocation(line: 27, column: 5, scope: !14)
!67 = !{!"llvm.loop.mustprogress"}
!68 = !DILocation(line: 29, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !14, file: !1, line: 29, column: 9)
!70 = !DILocation(line: 29, column: 13, scope: !69)
!71 = !DILocation(line: 29, column: 11, scope: !69)
!72 = !DILocation(line: 29, column: 9, scope: !14)
!73 = !DILocation(line: 30, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !69, file: !1, line: 29, column: 24)
!75 = !DILocation(line: 31, column: 17, scope: !74)
!76 = !DILocation(line: 31, column: 25, scope: !74)
!77 = !DILocation(line: 31, column: 37, scope: !74)
!78 = !DILocation(line: 31, column: 35, scope: !74)
!79 = !DILocation(line: 31, column: 22, scope: !74)
!80 = !DILocation(line: 31, column: 41, scope: !74)
!81 = !DILocation(line: 31, column: 47, scope: !74)
!82 = !DILocation(line: 31, column: 49, scope: !74)
!83 = !DILocation(line: 31, column: 9, scope: !74)
!84 = !DILocation(line: 32, column: 16, scope: !74)
!85 = !DILocation(line: 32, column: 27, scope: !74)
!86 = !DILocation(line: 32, column: 39, scope: !74)
!87 = !DILocation(line: 32, column: 37, scope: !74)
!88 = !DILocation(line: 32, column: 9, scope: !74)
!89 = !DILocation(line: 33, column: 5, scope: !74)
!90 = !DILocation(line: 35, column: 5, scope: !14)
!91 = distinct !DISubprogram(name: "memmove", scope: !92, file: !92, line: 12, type: !93, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!92 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!93 = !DISubroutineType(types: !94)
!94 = !{!95, !95, !96, !98}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !99, line: 46, baseType: !100)
!99 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!100 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!101 = !DILocalVariable(name: "dst", arg: 1, scope: !91, file: !92, line: 12, type: !95)
!102 = !DILocation(line: 12, column: 21, scope: !91)
!103 = !DILocalVariable(name: "src", arg: 2, scope: !91, file: !92, line: 12, type: !96)
!104 = !DILocation(line: 12, column: 38, scope: !91)
!105 = !DILocalVariable(name: "count", arg: 3, scope: !91, file: !92, line: 12, type: !98)
!106 = !DILocation(line: 12, column: 50, scope: !91)
!107 = !DILocalVariable(name: "a", scope: !91, file: !92, line: 13, type: !30)
!108 = !DILocation(line: 13, column: 9, scope: !91)
!109 = !DILocation(line: 13, column: 13, scope: !91)
!110 = !DILocalVariable(name: "b", scope: !91, file: !92, line: 14, type: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!113 = !DILocation(line: 14, column: 15, scope: !91)
!114 = !DILocation(line: 14, column: 19, scope: !91)
!115 = !DILocation(line: 16, column: 7, scope: !116)
!116 = distinct !DILexicalBlock(scope: !91, file: !92, line: 16, column: 7)
!117 = !DILocation(line: 16, column: 14, scope: !116)
!118 = !DILocation(line: 16, column: 11, scope: !116)
!119 = !DILocation(line: 16, column: 7, scope: !91)
!120 = !DILocation(line: 17, column: 12, scope: !116)
!121 = !DILocation(line: 17, column: 5, scope: !116)
!122 = !DILocation(line: 19, column: 7, scope: !123)
!123 = distinct !DILexicalBlock(scope: !91, file: !92, line: 19, column: 7)
!124 = !DILocation(line: 19, column: 13, scope: !123)
!125 = !DILocation(line: 19, column: 11, scope: !123)
!126 = !DILocation(line: 19, column: 7, scope: !91)
!127 = !DILocation(line: 20, column: 17, scope: !128)
!128 = distinct !DILexicalBlock(scope: !123, file: !92, line: 19, column: 18)
!129 = !DILocation(line: 20, column: 5, scope: !128)
!130 = !DILocation(line: 21, column: 16, scope: !128)
!131 = !DILocation(line: 21, column: 14, scope: !128)
!132 = !DILocation(line: 21, column: 9, scope: !128)
!133 = !DILocation(line: 21, column: 12, scope: !128)
!134 = distinct !{!134, !129, !130, !67}
!135 = !DILocation(line: 23, column: 10, scope: !136)
!136 = distinct !DILexicalBlock(scope: !123, file: !92, line: 22, column: 10)
!137 = !DILocation(line: 23, column: 16, scope: !136)
!138 = !DILocation(line: 23, column: 7, scope: !136)
!139 = !DILocation(line: 24, column: 10, scope: !136)
!140 = !DILocation(line: 24, column: 16, scope: !136)
!141 = !DILocation(line: 24, column: 7, scope: !136)
!142 = !DILocation(line: 25, column: 5, scope: !136)
!143 = !DILocation(line: 25, column: 17, scope: !136)
!144 = !DILocation(line: 26, column: 16, scope: !136)
!145 = !DILocation(line: 26, column: 14, scope: !136)
!146 = !DILocation(line: 26, column: 9, scope: !136)
!147 = !DILocation(line: 26, column: 12, scope: !136)
!148 = distinct !{!148, !142, !144, !67}
!149 = !DILocation(line: 29, column: 10, scope: !91)
!150 = !DILocation(line: 29, column: 3, scope: !91)
!151 = !DILocation(line: 30, column: 1, scope: !91)
!152 = distinct !DISubprogram(name: "memset", scope: !153, file: !153, line: 12, type: !154, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !18)
!153 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!154 = !DISubroutineType(types: !155)
!155 = !{!95, !95, !17, !98}
!156 = !DILocalVariable(name: "dst", arg: 1, scope: !152, file: !153, line: 12, type: !95)
!157 = !DILocation(line: 12, column: 20, scope: !152)
!158 = !DILocalVariable(name: "s", arg: 2, scope: !152, file: !153, line: 12, type: !17)
!159 = !DILocation(line: 12, column: 29, scope: !152)
!160 = !DILocalVariable(name: "count", arg: 3, scope: !152, file: !153, line: 12, type: !98)
!161 = !DILocation(line: 12, column: 39, scope: !152)
!162 = !DILocalVariable(name: "a", scope: !152, file: !153, line: 13, type: !30)
!163 = !DILocation(line: 13, column: 9, scope: !152)
!164 = !DILocation(line: 13, column: 13, scope: !152)
!165 = !DILocation(line: 14, column: 3, scope: !152)
!166 = !DILocation(line: 14, column: 15, scope: !152)
!167 = !DILocation(line: 14, column: 18, scope: !152)
!168 = !DILocation(line: 15, column: 12, scope: !152)
!169 = !DILocation(line: 15, column: 7, scope: !152)
!170 = !DILocation(line: 15, column: 10, scope: !152)
!171 = distinct !{!171, !165, !168, !67}
!172 = !DILocation(line: 16, column: 10, scope: !152)
!173 = !DILocation(line: 16, column: 3, scope: !152)
