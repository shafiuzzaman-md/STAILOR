; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/096_runtest.c_3531_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/096_runtest.c_3531_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/096_runtest.c_3531_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"./test/schemas/%s_*.xml\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !17 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca [500 x i8], align 16
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !21, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata [500 x i8]* %4, metadata !29, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %5, metadata !34, metadata !DIExpression()), !dbg !35
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !36
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !37
  %7 = bitcast i32* %5 to i8*, !dbg !38
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !39
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !40
  store i8 0, i8* %8, align 1, !dbg !41
  %9 = load i32, i32* %5, align 4, !dbg !42
  %10 = icmp slt i32 %9, 4, !dbg !44
  br i1 %10, label %11, label %12, !dbg !45

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !46
  br label %81, !dbg !46

12:                                               ; preds = %0
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !48
  %14 = call i64 @strlen(i8* noundef %13) #8, !dbg !50
  %15 = load i32, i32* %5, align 4, !dbg !51
  %16 = sext i32 %15 to i64, !dbg !52
  %17 = icmp ult i64 %14, %16, !dbg !53
  br i1 %17, label %18, label %19, !dbg !54

18:                                               ; preds = %12
  store i32 0, i32* %1, align 4, !dbg !55
  br label %81, !dbg !55

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4, !dbg !57
  %21 = sub nsw i32 %20, 4, !dbg !59
  %22 = icmp slt i32 %21, 0, !dbg !60
  br i1 %22, label %23, label %24, !dbg !61

23:                                               ; preds = %19
  store i32 0, i32* %1, align 4, !dbg !62
  br label %81, !dbg !62

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4, !dbg !64
  %26 = sub nsw i32 %25, 4, !dbg !64
  store i32 %26, i32* %5, align 4, !dbg !64
  %27 = load i32, i32* %5, align 4, !dbg !65
  %28 = sub nsw i32 %27, 2, !dbg !67
  %29 = icmp sge i32 %28, 0, !dbg !68
  br i1 %29, label %30, label %41, !dbg !69

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4, !dbg !70
  %32 = sub nsw i32 %31, 2, !dbg !71
  %33 = sext i32 %32 to i64, !dbg !72
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %33, !dbg !72
  %35 = load i8, i8* %34, align 1, !dbg !72
  %36 = sext i8 %35 to i32, !dbg !72
  %37 = icmp eq i32 %36, 95, !dbg !73
  br i1 %37, label %38, label %41, !dbg !74

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4, !dbg !75
  %40 = sub nsw i32 %39, 2, !dbg !75
  store i32 %40, i32* %5, align 4, !dbg !75
  br label %41, !dbg !77

41:                                               ; preds = %38, %30, %24
  %42 = load i32, i32* %5, align 4, !dbg !78
  %43 = sub nsw i32 %42, 2, !dbg !80
  %44 = icmp sge i32 %43, 0, !dbg !81
  br i1 %44, label %45, label %56, !dbg !82

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4, !dbg !83
  %47 = sub nsw i32 %46, 2, !dbg !84
  %48 = sext i32 %47 to i64, !dbg !85
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %48, !dbg !85
  %50 = load i8, i8* %49, align 1, !dbg !85
  %51 = sext i8 %50 to i32, !dbg !85
  %52 = icmp eq i32 %51, 95, !dbg !86
  br i1 %52, label %53, label %56, !dbg !87

53:                                               ; preds = %45
  %54 = load i32, i32* %5, align 4, !dbg !88
  %55 = sub nsw i32 %54, 2, !dbg !88
  store i32 %55, i32* %5, align 4, !dbg !88
  br label %56, !dbg !90

56:                                               ; preds = %53, %45, %41
  %57 = load i32, i32* %5, align 4, !dbg !91
  %58 = icmp slt i32 %57, 0, !dbg !93
  br i1 %58, label %59, label %60, !dbg !94

59:                                               ; preds = %56
  store i32 0, i32* %1, align 4, !dbg !95
  br label %81, !dbg !95

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4, !dbg !97
  %62 = icmp sge i32 %61, 256, !dbg !99
  br i1 %62, label %63, label %64, !dbg !100

63:                                               ; preds = %60
  store i32 0, i32* %1, align 4, !dbg !101
  br label %81, !dbg !101

64:                                               ; preds = %60
  %65 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !103
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !104
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !104
  %68 = load i32, i32* %5, align 4, !dbg !105
  %69 = sext i32 %68 to i64, !dbg !105
  %70 = call i8* @memcpy(i8* %66, i8* %67, i64 %69), !dbg !104
  %71 = load i32, i32* %5, align 4, !dbg !106
  %72 = sext i32 %71 to i64, !dbg !107
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %72, !dbg !107
  store i8 0, i8* %73, align 1, !dbg !108
  %74 = getelementptr inbounds [500 x i8], [500 x i8]* %4, i64 0, i64 0, !dbg !109
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !111
  %76 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %74, i64 noundef 499, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* noundef %75) #9, !dbg !112
  %77 = icmp sge i32 %76, 499, !dbg !113
  br i1 %77, label %78, label %80, !dbg !114

78:                                               ; preds = %64
  %79 = getelementptr inbounds [500 x i8], [500 x i8]* %4, i64 0, i64 499, !dbg !115
  store i8 0, i8* %79, align 1, !dbg !116
  br label %80, !dbg !115

80:                                               ; preds = %78, %64
  store i32 0, i32* %1, align 4, !dbg !117
  br label %81, !dbg !117

81:                                               ; preds = %80, %63, %59, %23, %18, %11
  %82 = load i32, i32* %1, align 4, !dbg !118
  ret i32 %82, !dbg !118
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !119 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !126, metadata !DIExpression()), !dbg !127
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !128, metadata !DIExpression()), !dbg !129
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i8** %7, metadata !132, metadata !DIExpression()), !dbg !134
  %9 = load i8*, i8** %4, align 8, !dbg !135
  store i8* %9, i8** %7, align 8, !dbg !134
  call void @llvm.dbg.declare(metadata i8** %8, metadata !136, metadata !DIExpression()), !dbg !139
  %10 = load i8*, i8** %5, align 8, !dbg !140
  store i8* %10, i8** %8, align 8, !dbg !139
  br label %11, !dbg !141

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !142
  %13 = add i64 %12, -1, !dbg !142
  store i64 %13, i64* %6, align 8, !dbg !142
  %14 = icmp ugt i64 %12, 0, !dbg !143
  br i1 %14, label %15, label %21, !dbg !141

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !144
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !144
  store i8* %17, i8** %8, align 8, !dbg !144
  %18 = load i8, i8* %16, align 1, !dbg !145
  %19 = load i8*, i8** %7, align 8, !dbg !146
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !146
  store i8* %20, i8** %7, align 8, !dbg !146
  store i8 %18, i8* %19, align 1, !dbg !147
  br label %11, !dbg !141, !llvm.loop !148

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !150
  ret i8* %22, !dbg !151
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/096_runtest.c_3531_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "9d794612cef1ffda26ff1d0fce2debb9")
!2 = !{!3, !6}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !4, line: 46, baseType: !5)
!4 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!5 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !18, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!18 = !DISubroutineType(types: !19)
!19 = !{!6}
!20 = !{}
!21 = !DILocalVariable(name: "base", scope: !17, file: !1, line: 11, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !24)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !{!25}
!25 = !DISubrange(count: 256)
!26 = !DILocation(line: 11, column: 10, scope: !17)
!27 = !DILocalVariable(name: "prefix", scope: !17, file: !1, line: 12, type: !22)
!28 = !DILocation(line: 12, column: 10, scope: !17)
!29 = !DILocalVariable(name: "pattern", scope: !17, file: !1, line: 13, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 4000, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 500)
!33 = !DILocation(line: 13, column: 10, scope: !17)
!34 = !DILocalVariable(name: "len", scope: !17, file: !1, line: 14, type: !6)
!35 = !DILocation(line: 14, column: 9, scope: !17)
!36 = !DILocation(line: 16, column: 24, scope: !17)
!37 = !DILocation(line: 16, column: 5, scope: !17)
!38 = !DILocation(line: 17, column: 24, scope: !17)
!39 = !DILocation(line: 17, column: 5, scope: !17)
!40 = !DILocation(line: 19, column: 5, scope: !17)
!41 = !DILocation(line: 19, column: 28, scope: !17)
!42 = !DILocation(line: 21, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !17, file: !1, line: 21, column: 9)
!44 = !DILocation(line: 21, column: 13, scope: !43)
!45 = !DILocation(line: 21, column: 9, scope: !17)
!46 = !DILocation(line: 22, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 21, column: 18)
!48 = !DILocation(line: 24, column: 16, scope: !49)
!49 = distinct !DILexicalBlock(scope: !17, file: !1, line: 24, column: 9)
!50 = !DILocation(line: 24, column: 9, scope: !49)
!51 = !DILocation(line: 24, column: 32, scope: !49)
!52 = !DILocation(line: 24, column: 24, scope: !49)
!53 = !DILocation(line: 24, column: 22, scope: !49)
!54 = !DILocation(line: 24, column: 9, scope: !17)
!55 = !DILocation(line: 25, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !49, file: !1, line: 24, column: 37)
!57 = !DILocation(line: 27, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !17, file: !1, line: 27, column: 9)
!59 = !DILocation(line: 27, column: 13, scope: !58)
!60 = !DILocation(line: 27, column: 17, scope: !58)
!61 = !DILocation(line: 27, column: 9, scope: !17)
!62 = !DILocation(line: 28, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !58, file: !1, line: 27, column: 22)
!64 = !DILocation(line: 30, column: 9, scope: !17)
!65 = !DILocation(line: 32, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !17, file: !1, line: 32, column: 9)
!67 = !DILocation(line: 32, column: 13, scope: !66)
!68 = !DILocation(line: 32, column: 17, scope: !66)
!69 = !DILocation(line: 32, column: 22, scope: !66)
!70 = !DILocation(line: 32, column: 30, scope: !66)
!71 = !DILocation(line: 32, column: 34, scope: !66)
!72 = !DILocation(line: 32, column: 25, scope: !66)
!73 = !DILocation(line: 32, column: 39, scope: !66)
!74 = !DILocation(line: 32, column: 9, scope: !17)
!75 = !DILocation(line: 33, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !66, file: !1, line: 32, column: 47)
!77 = !DILocation(line: 34, column: 5, scope: !76)
!78 = !DILocation(line: 35, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !17, file: !1, line: 35, column: 9)
!80 = !DILocation(line: 35, column: 13, scope: !79)
!81 = !DILocation(line: 35, column: 17, scope: !79)
!82 = !DILocation(line: 35, column: 22, scope: !79)
!83 = !DILocation(line: 35, column: 30, scope: !79)
!84 = !DILocation(line: 35, column: 34, scope: !79)
!85 = !DILocation(line: 35, column: 25, scope: !79)
!86 = !DILocation(line: 35, column: 39, scope: !79)
!87 = !DILocation(line: 35, column: 9, scope: !17)
!88 = !DILocation(line: 36, column: 13, scope: !89)
!89 = distinct !DILexicalBlock(scope: !79, file: !1, line: 35, column: 47)
!90 = !DILocation(line: 37, column: 5, scope: !89)
!91 = !DILocation(line: 39, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !17, file: !1, line: 39, column: 9)
!93 = !DILocation(line: 39, column: 13, scope: !92)
!94 = !DILocation(line: 39, column: 9, scope: !17)
!95 = !DILocation(line: 40, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !1, line: 39, column: 18)
!97 = !DILocation(line: 42, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !17, file: !1, line: 42, column: 9)
!99 = !DILocation(line: 42, column: 13, scope: !98)
!100 = !DILocation(line: 42, column: 9, scope: !17)
!101 = !DILocation(line: 43, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 42, column: 37)
!103 = !DILocation(line: 46, column: 5, scope: !17)
!104 = !DILocation(line: 47, column: 5, scope: !17)
!105 = !DILocation(line: 47, column: 26, scope: !17)
!106 = !DILocation(line: 48, column: 12, scope: !17)
!107 = !DILocation(line: 48, column: 5, scope: !17)
!108 = !DILocation(line: 48, column: 17, scope: !17)
!109 = !DILocation(line: 50, column: 18, scope: !110)
!110 = distinct !DILexicalBlock(scope: !17, file: !1, line: 50, column: 9)
!111 = !DILocation(line: 50, column: 59, scope: !110)
!112 = !DILocation(line: 50, column: 9, scope: !110)
!113 = !DILocation(line: 50, column: 67, scope: !110)
!114 = !DILocation(line: 50, column: 9, scope: !17)
!115 = !DILocation(line: 51, column: 9, scope: !110)
!116 = !DILocation(line: 51, column: 22, scope: !110)
!117 = !DILocation(line: 53, column: 5, scope: !17)
!118 = !DILocation(line: 54, column: 1, scope: !17)
!119 = distinct !DISubprogram(name: "memcpy", scope: !120, file: !120, line: 12, type: !121, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !20)
!120 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !123, !124, !3}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!126 = !DILocalVariable(name: "destaddr", arg: 1, scope: !119, file: !120, line: 12, type: !123)
!127 = !DILocation(line: 12, column: 20, scope: !119)
!128 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !119, file: !120, line: 12, type: !124)
!129 = !DILocation(line: 12, column: 42, scope: !119)
!130 = !DILocalVariable(name: "len", arg: 3, scope: !119, file: !120, line: 12, type: !3)
!131 = !DILocation(line: 12, column: 58, scope: !119)
!132 = !DILocalVariable(name: "dest", scope: !119, file: !120, line: 13, type: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!134 = !DILocation(line: 13, column: 9, scope: !119)
!135 = !DILocation(line: 13, column: 16, scope: !119)
!136 = !DILocalVariable(name: "src", scope: !119, file: !120, line: 14, type: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!139 = !DILocation(line: 14, column: 15, scope: !119)
!140 = !DILocation(line: 14, column: 21, scope: !119)
!141 = !DILocation(line: 16, column: 3, scope: !119)
!142 = !DILocation(line: 16, column: 13, scope: !119)
!143 = !DILocation(line: 16, column: 16, scope: !119)
!144 = !DILocation(line: 17, column: 19, scope: !119)
!145 = !DILocation(line: 17, column: 15, scope: !119)
!146 = !DILocation(line: 17, column: 10, scope: !119)
!147 = !DILocation(line: 17, column: 13, scope: !119)
!148 = distinct !{!148, !141, !144, !149}
!149 = !{!"llvm.loop.mustprogress"}
!150 = !DILocation(line: 18, column: 10, scope: !119)
!151 = !DILocation(line: 18, column: 3, scope: !119)
