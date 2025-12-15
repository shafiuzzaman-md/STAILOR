; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/012_hash.c_1129_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/012_hash.c_1129_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlHashTable = type { %struct._xmlHashEntry*, i32 }
%struct._xmlHashEntry = type { i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"(table->table != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/012_hash.c_1129_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlHashRemoveEntry = private unnamed_addr constant [61 x i8] c"int xmlHashRemoveEntry(xmlHashTable *, const void *, void *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !21 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !25, metadata !DIExpression()), !dbg !26
  %3 = load i8*, i8** %2, align 8, !dbg !27
  call void @free(i8* noundef %3) #7, !dbg !28
  ret void, !dbg !29
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlHashRemoveEntry(%struct._xmlHashTable* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !30 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlHashTable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._xmlHashEntry*, align 8
  %10 = alloca %struct._xmlHashEntry*, align 8
  store %struct._xmlHashTable* %0, %struct._xmlHashTable** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %5, metadata !41, metadata !DIExpression()), !dbg !42
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !43, metadata !DIExpression()), !dbg !44
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %8, metadata !47, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %9, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %10, metadata !52, metadata !DIExpression()), !dbg !53
  store %struct._xmlHashEntry* null, %struct._xmlHashEntry** %10, align 8, !dbg !53
  store i32 0, i32* %8, align 4, !dbg !54
  %11 = load %struct._xmlHashTable*, %struct._xmlHashTable** %5, align 8, !dbg !55
  %12 = icmp eq %struct._xmlHashTable* %11, null, !dbg !57
  br i1 %12, label %18, label %13, !dbg !58

13:                                               ; preds = %3
  %14 = load %struct._xmlHashTable*, %struct._xmlHashTable** %5, align 8, !dbg !59
  %15 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %14, i32 0, i32 0, !dbg !60
  %16 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %15, align 8, !dbg !60
  %17 = icmp eq %struct._xmlHashEntry* %16, null, !dbg !61
  br i1 %17, label %18, label %19, !dbg !62

18:                                               ; preds = %13, %3
  store i32 -1, i32* %4, align 4, !dbg !63
  br label %77, !dbg !63

19:                                               ; preds = %13
  %20 = load %struct._xmlHashTable*, %struct._xmlHashTable** %5, align 8, !dbg !64
  %21 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %20, i32 0, i32 0, !dbg !65
  %22 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %21, align 8, !dbg !65
  %23 = load i32, i32* %8, align 4, !dbg !66
  %24 = zext i32 %23 to i64, !dbg !64
  %25 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %22, i64 %24, !dbg !64
  store %struct._xmlHashEntry* %25, %struct._xmlHashEntry** %9, align 8, !dbg !67
  %26 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %10, align 8, !dbg !68
  %27 = icmp ne %struct._xmlHashEntry* %26, null, !dbg !68
  br i1 %27, label %28, label %36, !dbg !70

28:                                               ; preds = %19
  %29 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %9, align 8, !dbg !71
  %30 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %29, i32 0, i32 0, !dbg !73
  %31 = load i8*, i8** %30, align 8, !dbg !73
  %32 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %10, align 8, !dbg !74
  %33 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %32, i32 0, i32 0, !dbg !75
  store i8* %31, i8** %33, align 8, !dbg !76
  %34 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %9, align 8, !dbg !77
  %35 = bitcast %struct._xmlHashEntry* %34 to i8*, !dbg !77
  call void @xmlFree(i8* noundef %35), !dbg !78
  br label %72, !dbg !79

36:                                               ; preds = %19
  %37 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %9, align 8, !dbg !80
  %38 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %37, i32 0, i32 0, !dbg !83
  %39 = load i8*, i8** %38, align 8, !dbg !83
  %40 = icmp eq i8* %39, null, !dbg !84
  br i1 %40, label %41, label %44, !dbg !85

41:                                               ; preds = %36
  %42 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %9, align 8, !dbg !86
  %43 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %42, i32 0, i32 1, !dbg !88
  store i32 0, i32* %43, align 8, !dbg !89
  br label %71, !dbg !90

44:                                               ; preds = %36
  %45 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %9, align 8, !dbg !91
  %46 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %45, i32 0, i32 0, !dbg !93
  %47 = load i8*, i8** %46, align 8, !dbg !93
  %48 = bitcast i8* %47 to %struct._xmlHashEntry*, !dbg !91
  store %struct._xmlHashEntry* %48, %struct._xmlHashEntry** %9, align 8, !dbg !94
  %49 = load %struct._xmlHashTable*, %struct._xmlHashTable** %5, align 8, !dbg !95
  %50 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %49, i32 0, i32 0, !dbg !95
  %51 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %50, align 8, !dbg !95
  %52 = icmp ne %struct._xmlHashEntry* %51, null, !dbg !95
  br i1 %52, label %53, label %55, !dbg !95

53:                                               ; preds = %44
  br i1 true, label %54, label %55, !dbg !95

54:                                               ; preds = %53
  br label %57, !dbg !95

55:                                               ; preds = %53, %44
  %56 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.xmlHashRemoveEntry, i64 0, i64 0)), !dbg !95
  br label %57, !dbg !95

57:                                               ; preds = %55, %54
  %58 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.xmlHashRemoveEntry, i64 0, i64 0)), !dbg !96
  %59 = load %struct._xmlHashTable*, %struct._xmlHashTable** %5, align 8, !dbg !97
  %60 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %59, i32 0, i32 0, !dbg !98
  %61 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %60, align 8, !dbg !98
  %62 = load i32, i32* %8, align 4, !dbg !99
  %63 = zext i32 %62 to i64, !dbg !97
  %64 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %61, i64 %63, !dbg !97
  %65 = bitcast %struct._xmlHashEntry* %64 to i8*, !dbg !100
  %66 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %9, align 8, !dbg !101
  %67 = bitcast %struct._xmlHashEntry* %66 to i8*, !dbg !100
  %68 = call i8* @memcpy(i8* %65, i8* %67, i64 16), !dbg !100
  %69 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %9, align 8, !dbg !102
  %70 = bitcast %struct._xmlHashEntry* %69 to i8*, !dbg !102
  call void @xmlFree(i8* noundef %70), !dbg !103
  br label %71

71:                                               ; preds = %57, %41
  br label %72

72:                                               ; preds = %71, %28
  %73 = load %struct._xmlHashTable*, %struct._xmlHashTable** %5, align 8, !dbg !104
  %74 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %73, i32 0, i32 1, !dbg !105
  %75 = load i32, i32* %74, align 8, !dbg !106
  %76 = add nsw i32 %75, -1, !dbg !106
  store i32 %76, i32* %74, align 8, !dbg !106
  store i32 0, i32* %4, align 4, !dbg !107
  br label %77, !dbg !107

77:                                               ; preds = %72, %18
  %78 = load i32, i32* %4, align 4, !dbg !108
  ret i32 %78, !dbg !108
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !109 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlHashTable, align 8
  %3 = alloca %struct._xmlHashEntry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable* %2, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %3, metadata !114, metadata !DIExpression()), !dbg !115
  %6 = bitcast %struct._xmlHashTable* %2 to i8*, !dbg !116
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)), !dbg !117
  %7 = call noalias i8* @malloc(i64 noundef 32) #7, !dbg !118
  %8 = bitcast i8* %7 to %struct._xmlHashEntry*, !dbg !119
  store %struct._xmlHashEntry* %8, %struct._xmlHashEntry** %3, align 8, !dbg !120
  %9 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !121
  %10 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %9, i64 1, !dbg !121
  %11 = bitcast %struct._xmlHashEntry* %10 to i8*, !dbg !122
  %12 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !123
  %13 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %12, i64 0, !dbg !123
  %14 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %13, i32 0, i32 0, !dbg !124
  store i8* %11, i8** %14, align 8, !dbg !125
  %15 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !126
  %16 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %15, i64 0, !dbg !126
  %17 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %16, i32 0, i32 1, !dbg !127
  store i32 1, i32* %17, align 8, !dbg !128
  %18 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !129
  %19 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %18, i64 1, !dbg !129
  %20 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %19, i32 0, i32 0, !dbg !130
  store i8* null, i8** %20, align 8, !dbg !131
  %21 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !132
  %22 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %21, i64 1, !dbg !132
  %23 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %22, i32 0, i32 1, !dbg !133
  store i32 1, i32* %23, align 8, !dbg !134
  %24 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !135
  %25 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 0, !dbg !136
  store %struct._xmlHashEntry* %24, %struct._xmlHashEntry** %25, align 8, !dbg !137
  %26 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 1, !dbg !138
  store i32 2, i32* %26, align 8, !dbg !139
  call void @llvm.dbg.declare(metadata i8** %4, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i8** %5, metadata !142, metadata !DIExpression()), !dbg !143
  %27 = bitcast i8** %4 to i8*, !dbg !144
  call void @klee_make_symbolic(i8* noundef %27, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !145
  %28 = bitcast i8** %5 to i8*, !dbg !146
  call void @klee_make_symbolic(i8* noundef %28, i64 noundef 8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)), !dbg !147
  %29 = load i8*, i8** %4, align 8, !dbg !148
  %30 = load i8*, i8** %5, align 8, !dbg !149
  %31 = call i32 @xmlHashRemoveEntry(%struct._xmlHashTable* noundef %2, i8* noundef %29, i8* noundef %30), !dbg !150
  %32 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !151
  %33 = bitcast %struct._xmlHashEntry* %32 to i8*, !dbg !151
  call void @free(i8* noundef %33) #7, !dbg !152
  ret i32 0, !dbg !153
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !154 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !161, metadata !DIExpression()), !dbg !162
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !163, metadata !DIExpression()), !dbg !164
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata i8** %7, metadata !167, metadata !DIExpression()), !dbg !170
  %9 = load i8*, i8** %4, align 8, !dbg !171
  store i8* %9, i8** %7, align 8, !dbg !170
  call void @llvm.dbg.declare(metadata i8** %8, metadata !172, metadata !DIExpression()), !dbg !175
  %10 = load i8*, i8** %5, align 8, !dbg !176
  store i8* %10, i8** %8, align 8, !dbg !175
  br label %11, !dbg !177

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !178
  %13 = add i64 %12, -1, !dbg !178
  store i64 %13, i64* %6, align 8, !dbg !178
  %14 = icmp ugt i64 %12, 0, !dbg !179
  br i1 %14, label %15, label %21, !dbg !177

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !180
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !180
  store i8* %17, i8** %8, align 8, !dbg !180
  %18 = load i8, i8* %16, align 1, !dbg !181
  %19 = load i8*, i8** %7, align 8, !dbg !182
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !182
  store i8* %20, i8** %7, align 8, !dbg !182
  store i8 %18, i8* %19, align 1, !dbg !183
  br label %11, !dbg !177, !llvm.loop !184

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !186
  ret i8* %22, !dbg !187
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20, !20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/012_hash.c_1129_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "fc5090e19eec1ba98e3aed80224bf119")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashEntry", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashEntry", file: !1, line: 13, size: 128, elements: !7)
!7 = !{!8, !9}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6, file: !1, line: 14, baseType: !3, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !6, file: !1, line: 15, baseType: !10, size: 32, offset: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"Ubuntu clang version 14.0.6"}
!21 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 26, type: !22, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !3}
!24 = !{}
!25 = !DILocalVariable(name: "ptr", arg: 1, scope: !21, file: !1, line: 26, type: !3)
!26 = !DILocation(line: 26, column: 20, scope: !21)
!27 = !DILocation(line: 27, column: 10, scope: !21)
!28 = !DILocation(line: 27, column: 5, scope: !21)
!29 = !DILocation(line: 28, column: 1, scope: !21)
!30 = distinct !DISubprogram(name: "xmlHashRemoveEntry", scope: !1, file: !1, line: 34, type: !31, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!31 = !DISubroutineType(types: !32)
!32 = !{!10, !33, !39, !3}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !1, line: 11, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !1, line: 19, size: 128, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !35, file: !1, line: 20, baseType: !4, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "nbElems", scope: !35, file: !1, line: 21, baseType: !10, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!41 = !DILocalVariable(name: "table", arg: 1, scope: !30, file: !1, line: 34, type: !33)
!42 = !DILocation(line: 34, column: 38, scope: !30)
!43 = !DILocalVariable(name: "name", arg: 2, scope: !30, file: !1, line: 34, type: !39)
!44 = !DILocation(line: 34, column: 57, scope: !30)
!45 = !DILocalVariable(name: "f", arg: 3, scope: !30, file: !1, line: 34, type: !3)
!46 = !DILocation(line: 34, column: 69, scope: !30)
!47 = !DILocalVariable(name: "key", scope: !30, file: !1, line: 36, type: !48)
!48 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!49 = !DILocation(line: 36, column: 18, scope: !30)
!50 = !DILocalVariable(name: "entry", scope: !30, file: !1, line: 37, type: !4)
!51 = !DILocation(line: 37, column: 19, scope: !30)
!52 = !DILocalVariable(name: "prev", scope: !30, file: !1, line: 37, type: !4)
!53 = !DILocation(line: 37, column: 27, scope: !30)
!54 = !DILocation(line: 40, column: 9, scope: !30)
!55 = !DILocation(line: 42, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !30, file: !1, line: 42, column: 9)
!57 = !DILocation(line: 42, column: 15, scope: !56)
!58 = !DILocation(line: 42, column: 23, scope: !56)
!59 = !DILocation(line: 42, column: 26, scope: !56)
!60 = !DILocation(line: 42, column: 33, scope: !56)
!61 = !DILocation(line: 42, column: 39, scope: !56)
!62 = !DILocation(line: 42, column: 9, scope: !30)
!63 = !DILocation(line: 43, column: 9, scope: !56)
!64 = !DILocation(line: 45, column: 15, scope: !30)
!65 = !DILocation(line: 45, column: 22, scope: !30)
!66 = !DILocation(line: 45, column: 28, scope: !30)
!67 = !DILocation(line: 45, column: 11, scope: !30)
!68 = !DILocation(line: 48, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !30, file: !1, line: 48, column: 9)
!70 = !DILocation(line: 48, column: 9, scope: !30)
!71 = !DILocation(line: 50, column: 22, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !1, line: 48, column: 15)
!73 = !DILocation(line: 50, column: 29, scope: !72)
!74 = !DILocation(line: 50, column: 9, scope: !72)
!75 = !DILocation(line: 50, column: 15, scope: !72)
!76 = !DILocation(line: 50, column: 20, scope: !72)
!77 = !DILocation(line: 51, column: 17, scope: !72)
!78 = !DILocation(line: 51, column: 9, scope: !72)
!79 = !DILocation(line: 52, column: 5, scope: !72)
!80 = !DILocation(line: 54, column: 13, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 54, column: 13)
!82 = distinct !DILexicalBlock(scope: !69, file: !1, line: 52, column: 12)
!83 = !DILocation(line: 54, column: 20, scope: !81)
!84 = !DILocation(line: 54, column: 25, scope: !81)
!85 = !DILocation(line: 54, column: 13, scope: !82)
!86 = !DILocation(line: 55, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !81, file: !1, line: 54, column: 34)
!88 = !DILocation(line: 55, column: 20, scope: !87)
!89 = !DILocation(line: 55, column: 26, scope: !87)
!90 = !DILocation(line: 56, column: 9, scope: !87)
!91 = !DILocation(line: 58, column: 21, scope: !92)
!92 = distinct !DILexicalBlock(scope: !81, file: !1, line: 56, column: 16)
!93 = !DILocation(line: 58, column: 28, scope: !92)
!94 = !DILocation(line: 58, column: 19, scope: !92)
!95 = !DILocation(line: 66, column: 13, scope: !92)
!96 = !DILocation(line: 69, column: 13, scope: !92)
!97 = !DILocation(line: 71, column: 22, scope: !92)
!98 = !DILocation(line: 71, column: 29, scope: !92)
!99 = !DILocation(line: 71, column: 35, scope: !92)
!100 = !DILocation(line: 71, column: 13, scope: !92)
!101 = !DILocation(line: 71, column: 42, scope: !92)
!102 = !DILocation(line: 72, column: 21, scope: !92)
!103 = !DILocation(line: 72, column: 13, scope: !92)
!104 = !DILocation(line: 75, column: 5, scope: !30)
!105 = !DILocation(line: 75, column: 12, scope: !30)
!106 = !DILocation(line: 75, column: 19, scope: !30)
!107 = !DILocation(line: 76, column: 5, scope: !30)
!108 = !DILocation(line: 77, column: 1, scope: !30)
!109 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 79, type: !110, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!110 = !DISubroutineType(types: !111)
!111 = !{!10}
!112 = !DILocalVariable(name: "table", scope: !109, file: !1, line: 80, type: !34)
!113 = !DILocation(line: 80, column: 18, scope: !109)
!114 = !DILocalVariable(name: "entries", scope: !109, file: !1, line: 81, type: !4)
!115 = !DILocation(line: 81, column: 19, scope: !109)
!116 = !DILocation(line: 84, column: 24, scope: !109)
!117 = !DILocation(line: 84, column: 5, scope: !109)
!118 = !DILocation(line: 87, column: 31, scope: !109)
!119 = !DILocation(line: 87, column: 15, scope: !109)
!120 = !DILocation(line: 87, column: 13, scope: !109)
!121 = !DILocation(line: 90, column: 24, scope: !109)
!122 = !DILocation(line: 90, column: 23, scope: !109)
!123 = !DILocation(line: 90, column: 5, scope: !109)
!124 = !DILocation(line: 90, column: 16, scope: !109)
!125 = !DILocation(line: 90, column: 21, scope: !109)
!126 = !DILocation(line: 91, column: 5, scope: !109)
!127 = !DILocation(line: 91, column: 16, scope: !109)
!128 = !DILocation(line: 91, column: 22, scope: !109)
!129 = !DILocation(line: 92, column: 5, scope: !109)
!130 = !DILocation(line: 92, column: 16, scope: !109)
!131 = !DILocation(line: 92, column: 21, scope: !109)
!132 = !DILocation(line: 93, column: 5, scope: !109)
!133 = !DILocation(line: 93, column: 16, scope: !109)
!134 = !DILocation(line: 93, column: 22, scope: !109)
!135 = !DILocation(line: 95, column: 19, scope: !109)
!136 = !DILocation(line: 95, column: 11, scope: !109)
!137 = !DILocation(line: 95, column: 17, scope: !109)
!138 = !DILocation(line: 96, column: 11, scope: !109)
!139 = !DILocation(line: 96, column: 19, scope: !109)
!140 = !DILocalVariable(name: "name", scope: !109, file: !1, line: 99, type: !39)
!141 = !DILocation(line: 99, column: 17, scope: !109)
!142 = !DILocalVariable(name: "f", scope: !109, file: !1, line: 100, type: !3)
!143 = !DILocation(line: 100, column: 11, scope: !109)
!144 = !DILocation(line: 102, column: 24, scope: !109)
!145 = !DILocation(line: 102, column: 5, scope: !109)
!146 = !DILocation(line: 103, column: 24, scope: !109)
!147 = !DILocation(line: 103, column: 5, scope: !109)
!148 = !DILocation(line: 110, column: 32, scope: !109)
!149 = !DILocation(line: 110, column: 38, scope: !109)
!150 = !DILocation(line: 110, column: 5, scope: !109)
!151 = !DILocation(line: 112, column: 10, scope: !109)
!152 = !DILocation(line: 112, column: 5, scope: !109)
!153 = !DILocation(line: 113, column: 5, scope: !109)
!154 = distinct !DISubprogram(name: "memcpy", scope: !155, file: !155, line: 12, type: !156, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !24)
!155 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!156 = !DISubroutineType(types: !157)
!157 = !{!3, !3, !39, !158}
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !159, line: 46, baseType: !160)
!159 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!160 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!161 = !DILocalVariable(name: "destaddr", arg: 1, scope: !154, file: !155, line: 12, type: !3)
!162 = !DILocation(line: 12, column: 20, scope: !154)
!163 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !154, file: !155, line: 12, type: !39)
!164 = !DILocation(line: 12, column: 42, scope: !154)
!165 = !DILocalVariable(name: "len", arg: 3, scope: !154, file: !155, line: 12, type: !158)
!166 = !DILocation(line: 12, column: 58, scope: !154)
!167 = !DILocalVariable(name: "dest", scope: !154, file: !155, line: 13, type: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!170 = !DILocation(line: 13, column: 9, scope: !154)
!171 = !DILocation(line: 13, column: 16, scope: !154)
!172 = !DILocalVariable(name: "src", scope: !154, file: !155, line: 14, type: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!175 = !DILocation(line: 14, column: 15, scope: !154)
!176 = !DILocation(line: 14, column: 21, scope: !154)
!177 = !DILocation(line: 16, column: 3, scope: !154)
!178 = !DILocation(line: 16, column: 13, scope: !154)
!179 = !DILocation(line: 16, column: 16, scope: !154)
!180 = !DILocation(line: 17, column: 19, scope: !154)
!181 = !DILocation(line: 17, column: 15, scope: !154)
!182 = !DILocation(line: 17, column: 10, scope: !154)
!183 = !DILocation(line: 17, column: 13, scope: !154)
!184 = distinct !{!184, !177, !180, !185}
!185 = !{!"llvm.loop.mustprogress"}
!186 = !DILocation(line: 18, column: 10, scope: !154)
!187 = !DILocation(line: 18, column: 3, scope: !154)
