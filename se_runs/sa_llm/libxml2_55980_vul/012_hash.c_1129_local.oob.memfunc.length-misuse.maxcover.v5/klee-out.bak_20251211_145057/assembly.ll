; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/012_hash.c_1129_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/012_hash.c_1129_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlHashTable = type { %struct._xmlHashEntry*, i32 }
%struct._xmlHashEntry = type { i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [117 x i8] c"((void*)entry < (void*)&table->table[key] || (void*)entry >= (void*)(&table->table[key] + 1)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/012_hash.c_1129_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlHashRemoveEntry = private unnamed_addr constant [61 x i8] c"int xmlHashRemoveEntry(xmlHashTable *, const char *, void *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"next_entry\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !29 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !33, metadata !DIExpression()), !dbg !34
  %3 = load i8*, i8** %2, align 8, !dbg !35
  call void @free(i8* noundef %3) #7, !dbg !36
  ret void, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlHashRemoveEntry(%struct._xmlHashTable* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !38 {
  %4 = alloca %struct._xmlHashTable*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._xmlHashEntry*, align 8
  %9 = alloca %struct._xmlHashEntry*, align 8
  store %struct._xmlHashTable* %0, %struct._xmlHashTable** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %4, metadata !43, metadata !DIExpression()), !dbg !44
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !45, metadata !DIExpression()), !dbg !46
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i32* %7, metadata !49, metadata !DIExpression()), !dbg !51
  store i32 0, i32* %7, align 4, !dbg !51
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %8, metadata !52, metadata !DIExpression()), !dbg !53
  %10 = load %struct._xmlHashTable*, %struct._xmlHashTable** %4, align 8, !dbg !54
  %11 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %10, i32 0, i32 0, !dbg !55
  %12 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %11, align 8, !dbg !55
  %13 = load i32, i32* %7, align 4, !dbg !56
  %14 = zext i32 %13 to i64, !dbg !54
  %15 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %12, i64 %14, !dbg !54
  store %struct._xmlHashEntry* %15, %struct._xmlHashEntry** %8, align 8, !dbg !53
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %9, metadata !57, metadata !DIExpression()), !dbg !58
  store %struct._xmlHashEntry* null, %struct._xmlHashEntry** %9, align 8, !dbg !58
  %16 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %9, align 8, !dbg !59
  %17 = icmp ne %struct._xmlHashEntry* %16, null, !dbg !59
  br i1 %17, label %18, label %19, !dbg !61

18:                                               ; preds = %3
  br label %73, !dbg !62

19:                                               ; preds = %3
  %20 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %8, align 8, !dbg !64
  %21 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %20, i32 0, i32 0, !dbg !67
  %22 = load i8*, i8** %21, align 8, !dbg !67
  %23 = icmp eq i8* %22, null, !dbg !68
  br i1 %23, label %24, label %27, !dbg !69

24:                                               ; preds = %19
  %25 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %8, align 8, !dbg !70
  %26 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %25, i32 0, i32 1, !dbg !72
  store i32 0, i32* %26, align 8, !dbg !73
  br label %72, !dbg !74

27:                                               ; preds = %19
  %28 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %8, align 8, !dbg !75
  %29 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %28, i32 0, i32 0, !dbg !77
  %30 = load i8*, i8** %29, align 8, !dbg !77
  %31 = bitcast i8* %30 to %struct._xmlHashEntry*, !dbg !75
  store %struct._xmlHashEntry* %31, %struct._xmlHashEntry** %8, align 8, !dbg !78
  %32 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %8, align 8, !dbg !79
  %33 = bitcast %struct._xmlHashEntry* %32 to i8*, !dbg !79
  %34 = load %struct._xmlHashTable*, %struct._xmlHashTable** %4, align 8, !dbg !79
  %35 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %34, i32 0, i32 0, !dbg !79
  %36 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %35, align 8, !dbg !79
  %37 = load i32, i32* %7, align 4, !dbg !79
  %38 = zext i32 %37 to i64, !dbg !79
  %39 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %36, i64 %38, !dbg !79
  %40 = bitcast %struct._xmlHashEntry* %39 to i8*, !dbg !79
  %41 = icmp ult i8* %33, %40, !dbg !79
  br i1 %41, label %54, label %42, !dbg !79

42:                                               ; preds = %27
  %43 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %8, align 8, !dbg !79
  %44 = bitcast %struct._xmlHashEntry* %43 to i8*, !dbg !79
  %45 = load %struct._xmlHashTable*, %struct._xmlHashTable** %4, align 8, !dbg !79
  %46 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %45, i32 0, i32 0, !dbg !79
  %47 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %46, align 8, !dbg !79
  %48 = load i32, i32* %7, align 4, !dbg !79
  %49 = zext i32 %48 to i64, !dbg !79
  %50 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %47, i64 %49, !dbg !79
  %51 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %50, i64 1, !dbg !79
  %52 = bitcast %struct._xmlHashEntry* %51 to i8*, !dbg !79
  %53 = icmp uge i8* %44, %52, !dbg !79
  br i1 %53, label %54, label %56, !dbg !79

54:                                               ; preds = %42, %27
  br i1 true, label %55, label %56, !dbg !79

55:                                               ; preds = %54
  br label %58, !dbg !79

56:                                               ; preds = %54, %42
  %57 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([117 x i8], [117 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.xmlHashRemoveEntry, i64 0, i64 0)), !dbg !79
  br label %58, !dbg !79

58:                                               ; preds = %56, %55
  %59 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.xmlHashRemoveEntry, i64 0, i64 0)), !dbg !80
  %60 = load %struct._xmlHashTable*, %struct._xmlHashTable** %4, align 8, !dbg !81
  %61 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %60, i32 0, i32 0, !dbg !82
  %62 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %61, align 8, !dbg !82
  %63 = load i32, i32* %7, align 4, !dbg !83
  %64 = zext i32 %63 to i64, !dbg !81
  %65 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %62, i64 %64, !dbg !81
  %66 = bitcast %struct._xmlHashEntry* %65 to i8*, !dbg !84
  %67 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %8, align 8, !dbg !85
  %68 = bitcast %struct._xmlHashEntry* %67 to i8*, !dbg !84
  %69 = call i8* @memcpy(i8* %66, i8* %68, i64 16), !dbg !84
  %70 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %8, align 8, !dbg !86
  %71 = bitcast %struct._xmlHashEntry* %70 to i8*, !dbg !86
  call void @xmlFree(i8* noundef %71), !dbg !87
  br label %72

72:                                               ; preds = %58, %24
  br label %73

73:                                               ; preds = %72, %18
  %74 = load %struct._xmlHashTable*, %struct._xmlHashTable** %4, align 8, !dbg !88
  %75 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %74, i32 0, i32 1, !dbg !89
  %76 = load i32, i32* %75, align 8, !dbg !90
  %77 = add nsw i32 %76, -1, !dbg !90
  store i32 %77, i32* %75, align 8, !dbg !90
  ret i32 0, !dbg !91
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !92 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlHashTable*, align 8
  %3 = alloca %struct._xmlHashEntry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %2, metadata !95, metadata !DIExpression()), !dbg !96
  %6 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !97
  %7 = bitcast i8* %6 to %struct._xmlHashTable*, !dbg !98
  store %struct._xmlHashTable* %7, %struct._xmlHashTable** %2, align 8, !dbg !96
  %8 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !99
  %9 = bitcast i8* %8 to %struct._xmlHashEntry*, !dbg !100
  %10 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !101
  %11 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %10, i32 0, i32 0, !dbg !102
  store %struct._xmlHashEntry* %9, %struct._xmlHashEntry** %11, align 8, !dbg !103
  %12 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !104
  %13 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %12, i32 0, i32 1, !dbg !105
  store i32 1, i32* %13, align 8, !dbg !106
  %14 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !107
  %15 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %14, i32 0, i32 0, !dbg !108
  %16 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %15, align 8, !dbg !108
  %17 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %16, i64 0, !dbg !107
  %18 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %17, i32 0, i32 1, !dbg !109
  store i32 1, i32* %18, align 8, !dbg !110
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %3, metadata !111, metadata !DIExpression()), !dbg !112
  %19 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !113
  %20 = bitcast i8* %19 to %struct._xmlHashEntry*, !dbg !114
  store %struct._xmlHashEntry* %20, %struct._xmlHashEntry** %3, align 8, !dbg !112
  %21 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !115
  %22 = bitcast %struct._xmlHashEntry* %21 to i8*, !dbg !115
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef 16, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)), !dbg !116
  %23 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !117
  %24 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %23, i32 0, i32 1, !dbg !118
  %25 = load i32, i32* %24, align 8, !dbg !118
  %26 = icmp eq i32 %25, 1, !dbg !119
  %27 = zext i1 %26 to i32, !dbg !119
  %28 = sext i32 %27 to i64, !dbg !117
  call void @klee_assume(i64 noundef %28), !dbg !120
  %29 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !121
  %30 = bitcast %struct._xmlHashEntry* %29 to i8*, !dbg !121
  %31 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !122
  %32 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %31, i32 0, i32 0, !dbg !123
  %33 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %32, align 8, !dbg !123
  %34 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %33, i64 0, !dbg !122
  %35 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %34, i32 0, i32 0, !dbg !124
  store i8* %30, i8** %35, align 8, !dbg !125
  %36 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !126
  %37 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %36, i32 0, i32 0, !dbg !127
  store i8* null, i8** %37, align 8, !dbg !128
  call void @llvm.dbg.declare(metadata i8** %4, metadata !129, metadata !DIExpression()), !dbg !130
  %38 = call noalias i8* @malloc(i64 noundef 10) #7, !dbg !131
  store i8* %38, i8** %4, align 8, !dbg !130
  call void @llvm.dbg.declare(metadata i8** %5, metadata !132, metadata !DIExpression()), !dbg !133
  store i8* null, i8** %5, align 8, !dbg !133
  %39 = load i8*, i8** %4, align 8, !dbg !134
  call void @klee_make_symbolic(i8* noundef %39, i64 noundef 10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !135
  %40 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !136
  %41 = load i8*, i8** %4, align 8, !dbg !137
  %42 = load i8*, i8** %5, align 8, !dbg !138
  %43 = call i32 @xmlHashRemoveEntry(%struct._xmlHashTable* noundef %40, i8* noundef %41, i8* noundef %42), !dbg !139
  %44 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !140
  %45 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %44, i32 0, i32 0, !dbg !141
  %46 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %45, align 8, !dbg !141
  %47 = bitcast %struct._xmlHashEntry* %46 to i8*, !dbg !140
  call void @free(i8* noundef %47) #7, !dbg !142
  %48 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !143
  %49 = bitcast %struct._xmlHashTable* %48 to i8*, !dbg !143
  call void @free(i8* noundef %49) #7, !dbg !144
  %50 = load i8*, i8** %4, align 8, !dbg !145
  call void @free(i8* noundef %50) #7, !dbg !146
  ret i32 0, !dbg !147
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !148 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !157, metadata !DIExpression()), !dbg !158
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !159, metadata !DIExpression()), !dbg !160
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata i8** %7, metadata !163, metadata !DIExpression()), !dbg !164
  %9 = load i8*, i8** %4, align 8, !dbg !165
  store i8* %9, i8** %7, align 8, !dbg !164
  call void @llvm.dbg.declare(metadata i8** %8, metadata !166, metadata !DIExpression()), !dbg !167
  %10 = load i8*, i8** %5, align 8, !dbg !168
  store i8* %10, i8** %8, align 8, !dbg !167
  br label %11, !dbg !169

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !170
  %13 = add i64 %12, -1, !dbg !170
  store i64 %13, i64* %6, align 8, !dbg !170
  %14 = icmp ugt i64 %12, 0, !dbg !171
  br i1 %14, label %15, label %21, !dbg !169

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !172
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !172
  store i8* %17, i8** %8, align 8, !dbg !172
  %18 = load i8, i8* %16, align 1, !dbg !173
  %19 = load i8*, i8** %7, align 8, !dbg !174
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !174
  store i8* %20, i8** %7, align 8, !dbg !174
  store i8 %18, i8* %19, align 1, !dbg !175
  br label %11, !dbg !169, !llvm.loop !176

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !178
  ret i8* %22, !dbg !179
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28, !28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/012_hash.c_1129_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "8b71c92ce7134589b67cb9630b7eb6c5")
!2 = !{!3, !4, !9, !17}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !1, line: 11, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !1, line: 19, size: 128, elements: !7)
!7 = !{!8, !16}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !6, file: !1, line: 20, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashEntry", file: !1, line: 10, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashEntry", file: !1, line: 13, size: 128, elements: !12)
!12 = !{!13, !14}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !11, file: !1, line: 14, baseType: !3, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !11, file: !1, line: 15, baseType: !15, size: 32, offset: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "nbElems", scope: !6, file: !1, line: 21, baseType: !15, size: 32, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!29 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 26, type: !30, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !3}
!32 = !{}
!33 = !DILocalVariable(name: "ptr", arg: 1, scope: !29, file: !1, line: 26, type: !3)
!34 = !DILocation(line: 26, column: 20, scope: !29)
!35 = !DILocation(line: 27, column: 10, scope: !29)
!36 = !DILocation(line: 27, column: 5, scope: !29)
!37 = !DILocation(line: 28, column: 1, scope: !29)
!38 = distinct !DISubprogram(name: "xmlHashRemoveEntry", scope: !1, file: !1, line: 34, type: !39, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!39 = !DISubroutineType(types: !40)
!40 = !{!15, !4, !41, !3}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!43 = !DILocalVariable(name: "table", arg: 1, scope: !38, file: !1, line: 34, type: !4)
!44 = !DILocation(line: 34, column: 38, scope: !38)
!45 = !DILocalVariable(name: "name", arg: 2, scope: !38, file: !1, line: 34, type: !41)
!46 = !DILocation(line: 34, column: 57, scope: !38)
!47 = !DILocalVariable(name: "f", arg: 3, scope: !38, file: !1, line: 34, type: !3)
!48 = !DILocation(line: 34, column: 69, scope: !38)
!49 = !DILocalVariable(name: "key", scope: !38, file: !1, line: 36, type: !50)
!50 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!51 = !DILocation(line: 36, column: 18, scope: !38)
!52 = !DILocalVariable(name: "entry", scope: !38, file: !1, line: 37, type: !9)
!53 = !DILocation(line: 37, column: 19, scope: !38)
!54 = !DILocation(line: 37, column: 28, scope: !38)
!55 = !DILocation(line: 37, column: 35, scope: !38)
!56 = !DILocation(line: 37, column: 41, scope: !38)
!57 = !DILocalVariable(name: "prev", scope: !38, file: !1, line: 38, type: !9)
!58 = !DILocation(line: 38, column: 19, scope: !38)
!59 = !DILocation(line: 41, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !38, file: !1, line: 41, column: 9)
!61 = !DILocation(line: 41, column: 9, scope: !38)
!62 = !DILocation(line: 43, column: 5, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 41, column: 15)
!64 = !DILocation(line: 44, column: 13, scope: !65)
!65 = distinct !DILexicalBlock(scope: !66, file: !1, line: 44, column: 13)
!66 = distinct !DILexicalBlock(scope: !60, file: !1, line: 43, column: 12)
!67 = !DILocation(line: 44, column: 20, scope: !65)
!68 = !DILocation(line: 44, column: 25, scope: !65)
!69 = !DILocation(line: 44, column: 13, scope: !66)
!70 = !DILocation(line: 45, column: 13, scope: !71)
!71 = distinct !DILexicalBlock(scope: !65, file: !1, line: 44, column: 34)
!72 = !DILocation(line: 45, column: 20, scope: !71)
!73 = !DILocation(line: 45, column: 26, scope: !71)
!74 = !DILocation(line: 46, column: 9, scope: !71)
!75 = !DILocation(line: 47, column: 21, scope: !76)
!76 = distinct !DILexicalBlock(scope: !65, file: !1, line: 46, column: 16)
!77 = !DILocation(line: 47, column: 28, scope: !76)
!78 = !DILocation(line: 47, column: 19, scope: !76)
!79 = !DILocation(line: 55, column: 13, scope: !76)
!80 = !DILocation(line: 59, column: 13, scope: !76)
!81 = !DILocation(line: 61, column: 22, scope: !76)
!82 = !DILocation(line: 61, column: 29, scope: !76)
!83 = !DILocation(line: 61, column: 35, scope: !76)
!84 = !DILocation(line: 61, column: 13, scope: !76)
!85 = !DILocation(line: 61, column: 42, scope: !76)
!86 = !DILocation(line: 62, column: 21, scope: !76)
!87 = !DILocation(line: 62, column: 13, scope: !76)
!88 = !DILocation(line: 65, column: 5, scope: !38)
!89 = !DILocation(line: 65, column: 12, scope: !38)
!90 = !DILocation(line: 65, column: 19, scope: !38)
!91 = !DILocation(line: 66, column: 5, scope: !38)
!92 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 69, type: !93, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!93 = !DISubroutineType(types: !94)
!94 = !{!15}
!95 = !DILocalVariable(name: "table", scope: !92, file: !1, line: 71, type: !4)
!96 = !DILocation(line: 71, column: 19, scope: !92)
!97 = !DILocation(line: 71, column: 42, scope: !92)
!98 = !DILocation(line: 71, column: 27, scope: !92)
!99 = !DILocation(line: 72, column: 35, scope: !92)
!100 = !DILocation(line: 72, column: 20, scope: !92)
!101 = !DILocation(line: 72, column: 5, scope: !92)
!102 = !DILocation(line: 72, column: 12, scope: !92)
!103 = !DILocation(line: 72, column: 18, scope: !92)
!104 = !DILocation(line: 73, column: 5, scope: !92)
!105 = !DILocation(line: 73, column: 12, scope: !92)
!106 = !DILocation(line: 73, column: 20, scope: !92)
!107 = !DILocation(line: 76, column: 5, scope: !92)
!108 = !DILocation(line: 76, column: 12, scope: !92)
!109 = !DILocation(line: 76, column: 21, scope: !92)
!110 = !DILocation(line: 76, column: 27, scope: !92)
!111 = !DILocalVariable(name: "next_entry", scope: !92, file: !1, line: 79, type: !9)
!112 = !DILocation(line: 79, column: 19, scope: !92)
!113 = !DILocation(line: 79, column: 47, scope: !92)
!114 = !DILocation(line: 79, column: 32, scope: !92)
!115 = !DILocation(line: 80, column: 24, scope: !92)
!116 = !DILocation(line: 80, column: 5, scope: !92)
!117 = !DILocation(line: 83, column: 17, scope: !92)
!118 = !DILocation(line: 83, column: 29, scope: !92)
!119 = !DILocation(line: 83, column: 35, scope: !92)
!120 = !DILocation(line: 83, column: 5, scope: !92)
!121 = !DILocation(line: 86, column: 28, scope: !92)
!122 = !DILocation(line: 86, column: 5, scope: !92)
!123 = !DILocation(line: 86, column: 12, scope: !92)
!124 = !DILocation(line: 86, column: 21, scope: !92)
!125 = !DILocation(line: 86, column: 26, scope: !92)
!126 = !DILocation(line: 89, column: 5, scope: !92)
!127 = !DILocation(line: 89, column: 17, scope: !92)
!128 = !DILocation(line: 89, column: 22, scope: !92)
!129 = !DILocalVariable(name: "name", scope: !92, file: !1, line: 92, type: !17)
!130 = !DILocation(line: 92, column: 11, scope: !92)
!131 = !DILocation(line: 92, column: 25, scope: !92)
!132 = !DILocalVariable(name: "f", scope: !92, file: !1, line: 93, type: !3)
!133 = !DILocation(line: 93, column: 11, scope: !92)
!134 = !DILocation(line: 94, column: 24, scope: !92)
!135 = !DILocation(line: 94, column: 5, scope: !92)
!136 = !DILocation(line: 97, column: 24, scope: !92)
!137 = !DILocation(line: 97, column: 31, scope: !92)
!138 = !DILocation(line: 97, column: 37, scope: !92)
!139 = !DILocation(line: 97, column: 5, scope: !92)
!140 = !DILocation(line: 100, column: 10, scope: !92)
!141 = !DILocation(line: 100, column: 17, scope: !92)
!142 = !DILocation(line: 100, column: 5, scope: !92)
!143 = !DILocation(line: 101, column: 10, scope: !92)
!144 = !DILocation(line: 101, column: 5, scope: !92)
!145 = !DILocation(line: 102, column: 10, scope: !92)
!146 = !DILocation(line: 102, column: 5, scope: !92)
!147 = !DILocation(line: 104, column: 5, scope: !92)
!148 = distinct !DISubprogram(name: "memcpy", scope: !149, file: !149, line: 12, type: !150, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !32)
!149 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!150 = !DISubroutineType(types: !151)
!151 = !{!3, !3, !152, !154}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !155, line: 46, baseType: !156)
!155 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!156 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!157 = !DILocalVariable(name: "destaddr", arg: 1, scope: !148, file: !149, line: 12, type: !3)
!158 = !DILocation(line: 12, column: 20, scope: !148)
!159 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !148, file: !149, line: 12, type: !152)
!160 = !DILocation(line: 12, column: 42, scope: !148)
!161 = !DILocalVariable(name: "len", arg: 3, scope: !148, file: !149, line: 12, type: !154)
!162 = !DILocation(line: 12, column: 58, scope: !148)
!163 = !DILocalVariable(name: "dest", scope: !148, file: !149, line: 13, type: !17)
!164 = !DILocation(line: 13, column: 9, scope: !148)
!165 = !DILocation(line: 13, column: 16, scope: !148)
!166 = !DILocalVariable(name: "src", scope: !148, file: !149, line: 14, type: !41)
!167 = !DILocation(line: 14, column: 15, scope: !148)
!168 = !DILocation(line: 14, column: 21, scope: !148)
!169 = !DILocation(line: 16, column: 3, scope: !148)
!170 = !DILocation(line: 16, column: 13, scope: !148)
!171 = !DILocation(line: 16, column: 16, scope: !148)
!172 = !DILocation(line: 17, column: 19, scope: !148)
!173 = !DILocation(line: 17, column: 15, scope: !148)
!174 = !DILocation(line: 17, column: 10, scope: !148)
!175 = !DILocation(line: 17, column: 13, scope: !148)
!176 = distinct !{!176, !169, !172, !177}
!177 = !{!"llvm.loop.mustprogress"}
!178 = !DILocation(line: 18, column: 10, scope: !148)
!179 = !DILocation(line: 18, column: 3, scope: !148)
