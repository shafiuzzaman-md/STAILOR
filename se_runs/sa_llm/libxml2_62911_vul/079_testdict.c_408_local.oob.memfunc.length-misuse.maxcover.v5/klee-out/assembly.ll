; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/079_testdict.c_408_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/079_testdict.c_408_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [7 x i8] c"seeds1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"seeds2\00", align 1
@xmlMalloc = external global i8* (i64)*, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/079_testdict.c_408_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@xmlFree = external global void (i8*)*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !17 {
  %1 = alloca i32, align 4
  %2 = alloca [100 x i8*], align 16
  %3 = alloca [100 x i8*], align 16
  %4 = alloca [100 x i8*], align 16
  %5 = alloca [100 x i8*], align 16
  %6 = alloca %struct._xmlDict*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [100 x i8*]* %2, metadata !22, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata [100 x i8*]* %3, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata [100 x i8*]* %4, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata [100 x i8*]* %5, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %6, metadata !33, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata [256 x i8]* %7, metadata !40, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata [256 x i8]* %8, metadata !45, metadata !DIExpression()), !dbg !46
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !47
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !48
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0, !dbg !49
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !50
  %11 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !51
  %12 = call i8* %11(i64 noundef 800), !dbg !51
  %13 = getelementptr inbounds [100 x i8*], [100 x i8*]* %2, i64 0, i64 0, !dbg !52
  store i8* %12, i8** %13, align 16, !dbg !53
  %14 = getelementptr inbounds [100 x i8*], [100 x i8*]* %2, i64 0, i64 0, !dbg !54
  %15 = load i8*, i8** %14, align 16, !dbg !54
  %16 = icmp ne i8* %15, null, !dbg !55
  %17 = zext i1 %16 to i32, !dbg !55
  %18 = sext i32 %17 to i64, !dbg !54
  call void @klee_assume(i64 noundef %18), !dbg !56
  %19 = getelementptr inbounds [100 x i8*], [100 x i8*]* %2, i64 0, i64 0, !dbg !57
  %20 = load i8*, i8** %19, align 16, !dbg !57
  %21 = call i8* @memset(i8* %20, i32 0, i64 800), !dbg !58
  %22 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !59
  %23 = call i8* %22(i64 noundef 800), !dbg !59
  %24 = getelementptr inbounds [100 x i8*], [100 x i8*]* %3, i64 0, i64 0, !dbg !60
  store i8* %23, i8** %24, align 16, !dbg !61
  %25 = getelementptr inbounds [100 x i8*], [100 x i8*]* %3, i64 0, i64 0, !dbg !62
  %26 = load i8*, i8** %25, align 16, !dbg !62
  %27 = icmp ne i8* %26, null, !dbg !63
  %28 = zext i1 %27 to i32, !dbg !63
  %29 = sext i32 %28 to i64, !dbg !62
  call void @klee_assume(i64 noundef %29), !dbg !64
  %30 = getelementptr inbounds [100 x i8*], [100 x i8*]* %3, i64 0, i64 0, !dbg !65
  %31 = load i8*, i8** %30, align 16, !dbg !65
  %32 = call i8* @memset(i8* %31, i32 0, i64 800), !dbg !66
  %33 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !67
  %34 = call i8* %33(i64 noundef 800), !dbg !67
  %35 = getelementptr inbounds [100 x i8*], [100 x i8*]* %4, i64 0, i64 0, !dbg !68
  store i8* %34, i8** %35, align 16, !dbg !69
  %36 = getelementptr inbounds [100 x i8*], [100 x i8*]* %4, i64 0, i64 0, !dbg !70
  %37 = load i8*, i8** %36, align 16, !dbg !70
  %38 = icmp ne i8* %37, null, !dbg !71
  %39 = zext i1 %38 to i32, !dbg !71
  %40 = sext i32 %39 to i64, !dbg !70
  call void @klee_assume(i64 noundef %40), !dbg !72
  %41 = getelementptr inbounds [100 x i8*], [100 x i8*]* %4, i64 0, i64 0, !dbg !73
  %42 = load i8*, i8** %41, align 16, !dbg !73
  %43 = call i8* @memset(i8* %42, i32 0, i64 800), !dbg !74
  %44 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !75
  %45 = call i8* %44(i64 noundef 800), !dbg !75
  %46 = getelementptr inbounds [100 x i8*], [100 x i8*]* %5, i64 0, i64 0, !dbg !76
  store i8* %45, i8** %46, align 16, !dbg !77
  %47 = getelementptr inbounds [100 x i8*], [100 x i8*]* %5, i64 0, i64 0, !dbg !78
  %48 = load i8*, i8** %47, align 16, !dbg !78
  %49 = icmp ne i8* %48, null, !dbg !79
  %50 = zext i1 %49 to i32, !dbg !79
  %51 = sext i32 %50 to i64, !dbg !78
  call void @klee_assume(i64 noundef %51), !dbg !80
  %52 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !81
  %53 = getelementptr inbounds [100 x i8*], [100 x i8*]* %5, i64 0, i64 0, !dbg !82
  %54 = load i8*, i8** %53, align 16, !dbg !82
  %55 = call i8* @memset(i8* %54, i32 0, i64 800), !dbg !83
  %56 = getelementptr inbounds [100 x i8*], [100 x i8*]* %2, i64 0, i64 0, !dbg !84
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !85
  call void @fill_string_pool(i8** noundef %56, i8* noundef %57), !dbg !86
  %58 = getelementptr inbounds [100 x i8*], [100 x i8*]* %3, i64 0, i64 0, !dbg !87
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0, !dbg !88
  call void @fill_string_pool(i8** noundef %58, i8* noundef %59), !dbg !89
  %60 = call %struct._xmlDict* @xmlDictCreate(), !dbg !90
  store %struct._xmlDict* %60, %struct._xmlDict** %6, align 8, !dbg !91
  %61 = load %struct._xmlDict*, %struct._xmlDict** %6, align 8, !dbg !92
  %62 = icmp ne %struct._xmlDict* %61, null, !dbg !94
  br i1 %62, label %63, label %65, !dbg !95

63:                                               ; preds = %0
  %64 = load %struct._xmlDict*, %struct._xmlDict** %6, align 8, !dbg !96
  call void @xmlDictFree(%struct._xmlDict* noundef %64), !dbg !98
  br label %65, !dbg !99

65:                                               ; preds = %63, %0
  %66 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !100
  %67 = getelementptr inbounds [100 x i8*], [100 x i8*]* %2, i64 0, i64 0, !dbg !101
  %68 = load i8*, i8** %67, align 16, !dbg !101
  call void %66(i8* noundef %68), !dbg !100
  %69 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !102
  %70 = getelementptr inbounds [100 x i8*], [100 x i8*]* %3, i64 0, i64 0, !dbg !103
  %71 = load i8*, i8** %70, align 16, !dbg !103
  call void %69(i8* noundef %71), !dbg !102
  %72 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !104
  %73 = getelementptr inbounds [100 x i8*], [100 x i8*]* %4, i64 0, i64 0, !dbg !105
  %74 = load i8*, i8** %73, align 16, !dbg !105
  call void %72(i8* noundef %74), !dbg !104
  %75 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !106
  %76 = getelementptr inbounds [100 x i8*], [100 x i8*]* %5, i64 0, i64 0, !dbg !107
  %77 = load i8*, i8** %76, align 16, !dbg !107
  call void %75(i8* noundef %77), !dbg !106
  ret i32 0, !dbg !108
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @fill_string_pool(i8** noundef, i8* noundef) #2

declare %struct._xmlDict* @xmlDictCreate() #2

declare void @xmlDictFree(%struct._xmlDict* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !109 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !116, metadata !DIExpression()), !dbg !117
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !118, metadata !DIExpression()), !dbg !119
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata i8** %7, metadata !122, metadata !DIExpression()), !dbg !124
  %8 = load i8*, i8** %4, align 8, !dbg !125
  store i8* %8, i8** %7, align 8, !dbg !124
  br label %9, !dbg !126

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !127
  %11 = add i64 %10, -1, !dbg !127
  store i64 %11, i64* %6, align 8, !dbg !127
  %12 = icmp ugt i64 %10, 0, !dbg !128
  br i1 %12, label %13, label %18, !dbg !126

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !129
  %15 = trunc i32 %14 to i8, !dbg !129
  %16 = load i8*, i8** %7, align 8, !dbg !130
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !130
  store i8* %17, i8** %7, align 8, !dbg !130
  store i8 %15, i8* %16, align 1, !dbg !131
  br label %9, !dbg !126, !llvm.loop !132

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !134
  ret i8* %19, !dbg !135
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/079_testdict.c_408_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "9d88422df4d51c0d96c600c2b4771a1f")
!2 = !{!3, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !18, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{}
!22 = !DILocalVariable(name: "strings1", scope: !17, file: !1, line: 12, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 6400, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 12, column: 17, scope: !17)
!27 = !DILocalVariable(name: "strings2", scope: !17, file: !1, line: 13, type: !23)
!28 = !DILocation(line: 13, column: 17, scope: !17)
!29 = !DILocalVariable(name: "test1", scope: !17, file: !1, line: 14, type: !23)
!30 = !DILocation(line: 14, column: 17, scope: !17)
!31 = !DILocalVariable(name: "test2", scope: !17, file: !1, line: 15, type: !23)
!32 = !DILocation(line: 15, column: 17, scope: !17)
!33 = !DILocalVariable(name: "dict", scope: !17, file: !1, line: 16, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !35, line: 25, baseType: !36)
!35 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !35, line: 24, baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !35, line: 24, flags: DIFlagFwdDecl)
!39 = !DILocation(line: 16, column: 16, scope: !17)
!40 = !DILocalVariable(name: "seeds1", scope: !17, file: !1, line: 18, type: !41)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 256)
!44 = !DILocation(line: 18, column: 10, scope: !17)
!45 = !DILocalVariable(name: "seeds2", scope: !17, file: !1, line: 19, type: !41)
!46 = !DILocation(line: 19, column: 10, scope: !17)
!47 = !DILocation(line: 21, column: 24, scope: !17)
!48 = !DILocation(line: 21, column: 5, scope: !17)
!49 = !DILocation(line: 22, column: 24, scope: !17)
!50 = !DILocation(line: 22, column: 5, scope: !17)
!51 = !DILocation(line: 24, column: 33, scope: !17)
!52 = !DILocation(line: 24, column: 5, scope: !17)
!53 = !DILocation(line: 24, column: 17, scope: !17)
!54 = !DILocation(line: 25, column: 17, scope: !17)
!55 = !DILocation(line: 25, column: 29, scope: !17)
!56 = !DILocation(line: 25, column: 5, scope: !17)
!57 = !DILocation(line: 26, column: 12, scope: !17)
!58 = !DILocation(line: 26, column: 5, scope: !17)
!59 = !DILocation(line: 28, column: 33, scope: !17)
!60 = !DILocation(line: 28, column: 5, scope: !17)
!61 = !DILocation(line: 28, column: 17, scope: !17)
!62 = !DILocation(line: 29, column: 17, scope: !17)
!63 = !DILocation(line: 29, column: 29, scope: !17)
!64 = !DILocation(line: 29, column: 5, scope: !17)
!65 = !DILocation(line: 30, column: 12, scope: !17)
!66 = !DILocation(line: 30, column: 5, scope: !17)
!67 = !DILocation(line: 32, column: 30, scope: !17)
!68 = !DILocation(line: 32, column: 5, scope: !17)
!69 = !DILocation(line: 32, column: 14, scope: !17)
!70 = !DILocation(line: 33, column: 17, scope: !17)
!71 = !DILocation(line: 33, column: 26, scope: !17)
!72 = !DILocation(line: 33, column: 5, scope: !17)
!73 = !DILocation(line: 34, column: 12, scope: !17)
!74 = !DILocation(line: 34, column: 5, scope: !17)
!75 = !DILocation(line: 36, column: 30, scope: !17)
!76 = !DILocation(line: 36, column: 5, scope: !17)
!77 = !DILocation(line: 36, column: 14, scope: !17)
!78 = !DILocation(line: 37, column: 17, scope: !17)
!79 = !DILocation(line: 37, column: 26, scope: !17)
!80 = !DILocation(line: 37, column: 5, scope: !17)
!81 = !DILocation(line: 38, column: 5, scope: !17)
!82 = !DILocation(line: 39, column: 12, scope: !17)
!83 = !DILocation(line: 39, column: 5, scope: !17)
!84 = !DILocation(line: 41, column: 22, scope: !17)
!85 = !DILocation(line: 41, column: 32, scope: !17)
!86 = !DILocation(line: 41, column: 5, scope: !17)
!87 = !DILocation(line: 42, column: 22, scope: !17)
!88 = !DILocation(line: 42, column: 32, scope: !17)
!89 = !DILocation(line: 42, column: 5, scope: !17)
!90 = !DILocation(line: 44, column: 12, scope: !17)
!91 = !DILocation(line: 44, column: 10, scope: !17)
!92 = !DILocation(line: 45, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !17, file: !1, line: 45, column: 9)
!94 = !DILocation(line: 45, column: 14, scope: !93)
!95 = !DILocation(line: 45, column: 9, scope: !17)
!96 = !DILocation(line: 46, column: 21, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !1, line: 45, column: 23)
!98 = !DILocation(line: 46, column: 9, scope: !97)
!99 = !DILocation(line: 47, column: 5, scope: !97)
!100 = !DILocation(line: 49, column: 5, scope: !17)
!101 = !DILocation(line: 49, column: 21, scope: !17)
!102 = !DILocation(line: 50, column: 5, scope: !17)
!103 = !DILocation(line: 50, column: 21, scope: !17)
!104 = !DILocation(line: 51, column: 5, scope: !17)
!105 = !DILocation(line: 51, column: 21, scope: !17)
!106 = !DILocation(line: 52, column: 5, scope: !17)
!107 = !DILocation(line: 52, column: 21, scope: !17)
!108 = !DILocation(line: 54, column: 5, scope: !17)
!109 = distinct !DISubprogram(name: "memset", scope: !110, file: !110, line: 12, type: !111, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !21)
!110 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!111 = !DISubroutineType(types: !112)
!112 = !{!6, !6, !20, !113}
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !114, line: 46, baseType: !115)
!114 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!115 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!116 = !DILocalVariable(name: "dst", arg: 1, scope: !109, file: !110, line: 12, type: !6)
!117 = !DILocation(line: 12, column: 20, scope: !109)
!118 = !DILocalVariable(name: "s", arg: 2, scope: !109, file: !110, line: 12, type: !20)
!119 = !DILocation(line: 12, column: 29, scope: !109)
!120 = !DILocalVariable(name: "count", arg: 3, scope: !109, file: !110, line: 12, type: !113)
!121 = !DILocation(line: 12, column: 39, scope: !109)
!122 = !DILocalVariable(name: "a", scope: !109, file: !110, line: 13, type: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!124 = !DILocation(line: 13, column: 9, scope: !109)
!125 = !DILocation(line: 13, column: 13, scope: !109)
!126 = !DILocation(line: 14, column: 3, scope: !109)
!127 = !DILocation(line: 14, column: 15, scope: !109)
!128 = !DILocation(line: 14, column: 18, scope: !109)
!129 = !DILocation(line: 15, column: 12, scope: !109)
!130 = !DILocation(line: 15, column: 7, scope: !109)
!131 = !DILocation(line: 15, column: 10, scope: !109)
!132 = distinct !{!132, !126, !129, !133}
!133 = !{!"llvm.loop.mustprogress"}
!134 = !DILocation(line: 16, column: 10, scope: !109)
!135 = !DILocation(line: 16, column: 3, scope: !109)
