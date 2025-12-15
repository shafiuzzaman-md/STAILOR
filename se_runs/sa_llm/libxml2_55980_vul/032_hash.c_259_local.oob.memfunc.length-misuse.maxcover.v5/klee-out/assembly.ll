; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/032_hash.c_259_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/032_hash.c_259_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlHashTable = type { %struct._xmlHashEntry*, i32, i32, i8*, i32 ()*, %struct._xmlHashEntry* (i32)*, void (i8*)* }
%struct._xmlHashEntry = type { i8*, i8*, i32, i32, %struct._xmlHashEntry* }

@.str = private unnamed_addr constant [17 x i8] c"xmlMalloc_buffer\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [96 x i8] c"(size > 0 && size * sizeof(xmlHashEntry) / sizeof(xmlHashEntry) == size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/032_hash.c_259_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !27 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i8** %3, metadata !36, metadata !DIExpression()), !dbg !37
  %4 = load i64, i64* %2, align 8, !dbg !38
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !39
  store i8* %5, i8** %3, align 8, !dbg !37
  %6 = load i8*, i8** %3, align 8, !dbg !40
  %7 = icmp ne i8* %6, null, !dbg !40
  br i1 %7, label %8, label %11, !dbg !42

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !43
  %10 = load i64, i64* %2, align 8, !dbg !45
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef %10, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !46
  br label %11, !dbg !47

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8, !dbg !48
  ret i8* %12, !dbg !49
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !50 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlHashTable, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlHashEntry*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable* %2, metadata !53, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %3, metadata !75, metadata !DIExpression()), !dbg !76
  %6 = bitcast %struct._xmlHashTable* %2 to i8*, !dbg !77
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 48, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !78
  %7 = bitcast i32* %3 to i8*, !dbg !79
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !80
  %8 = load i32, i32* %3, align 4, !dbg !81
  %9 = icmp sgt i32 %8, 0, !dbg !82
  %10 = zext i1 %9 to i32, !dbg !82
  %11 = sext i32 %10 to i64, !dbg !81
  call void @klee_assume(i64 noundef %11), !dbg !83
  %12 = load i32, i32* %3, align 4, !dbg !84
  %13 = icmp slt i32 %12, 1000, !dbg !85
  %14 = zext i1 %13 to i32, !dbg !85
  %15 = sext i32 %14 to i64, !dbg !84
  call void @klee_assume(i64 noundef %15), !dbg !86
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %4, metadata !87, metadata !DIExpression()), !dbg !88
  %16 = call noalias i8* @malloc(i64 noundef 32) #7, !dbg !89
  %17 = bitcast i8* %16 to %struct._xmlHashEntry*, !dbg !90
  store %struct._xmlHashEntry* %17, %struct._xmlHashEntry** %4, align 8, !dbg !88
  %18 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !91
  %19 = icmp ne %struct._xmlHashEntry* %18, null, !dbg !92
  %20 = zext i1 %19 to i32, !dbg !92
  %21 = sext i32 %20 to i64, !dbg !91
  call void @klee_assume(i64 noundef %21), !dbg !93
  %22 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !94
  %23 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 0, !dbg !95
  store %struct._xmlHashEntry* %22, %struct._xmlHashEntry** %23, align 8, !dbg !96
  %24 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 1, !dbg !97
  store i32 1, i32* %24, align 8, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %5, metadata !99, metadata !DIExpression()), !dbg !100
  %25 = load i32, i32* %3, align 4, !dbg !101
  %26 = call i32 @xmlHashGrow(%struct._xmlHashTable* noundef %2, i32 noundef %25), !dbg !102
  store i32 %26, i32* %5, align 4, !dbg !100
  %27 = load i32, i32* %3, align 4, !dbg !103
  %28 = icmp sgt i32 %27, 0, !dbg !103
  br i1 %28, label %29, label %39, !dbg !103

29:                                               ; preds = %0
  %30 = load i32, i32* %3, align 4, !dbg !103
  %31 = sext i32 %30 to i64, !dbg !103
  %32 = mul i64 %31, 32, !dbg !103
  %33 = udiv i64 %32, 32, !dbg !103
  %34 = load i32, i32* %3, align 4, !dbg !103
  %35 = sext i32 %34 to i64, !dbg !103
  %36 = icmp eq i64 %33, %35, !dbg !103
  br i1 %36, label %37, label %39, !dbg !103

37:                                               ; preds = %29
  br i1 true, label %38, label %39, !dbg !103

38:                                               ; preds = %37
  br label %41, !dbg !103

39:                                               ; preds = %37, %29, %0
  %40 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.5, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !103
  br label %41, !dbg !103

41:                                               ; preds = %39, %38
  %42 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.5, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !104
  %43 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !105
  %44 = bitcast %struct._xmlHashEntry* %43 to i8*, !dbg !105
  call void @free(i8* noundef %44) #7, !dbg !106
  %45 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 0, !dbg !107
  %46 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %45, align 8, !dbg !107
  %47 = icmp ne %struct._xmlHashEntry* %46, null, !dbg !109
  br i1 %47, label %48, label %57, !dbg !110

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 0, !dbg !111
  %50 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %49, align 8, !dbg !111
  %51 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %4, align 8, !dbg !112
  %52 = icmp ne %struct._xmlHashEntry* %50, %51, !dbg !113
  br i1 %52, label %53, label %57, !dbg !114

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 0, !dbg !115
  %55 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %54, align 8, !dbg !115
  %56 = bitcast %struct._xmlHashEntry* %55 to i8*, !dbg !117
  call void @free(i8* noundef %56) #7, !dbg !118
  br label %57, !dbg !119

57:                                               ; preds = %53, %48, %41
  ret i32 0, !dbg !120
}

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlHashGrow(%struct._xmlHashTable* noundef %0, i32 noundef %1) #0 !dbg !121 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlHashTable*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlHashEntry*, align 8
  store %struct._xmlHashTable* %0, %struct._xmlHashTable** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %4, metadata !125, metadata !DIExpression()), !dbg !126
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %6, metadata !129, metadata !DIExpression()), !dbg !130
  %7 = load %struct._xmlHashTable*, %struct._xmlHashTable** %4, align 8, !dbg !131
  %8 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %7, i32 0, i32 0, !dbg !132
  %9 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %8, align 8, !dbg !132
  store %struct._xmlHashEntry* %9, %struct._xmlHashEntry** %6, align 8, !dbg !130
  %10 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %6, align 8, !dbg !133
  %11 = icmp eq %struct._xmlHashEntry* %10, null, !dbg !135
  br i1 %11, label %12, label %13, !dbg !136

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !137
  br label %43, !dbg !137

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4, !dbg !138
  %15 = sext i32 %14 to i64, !dbg !138
  %16 = mul i64 %15, 32, !dbg !139
  %17 = call i8* @xmlMalloc(i64 noundef %16), !dbg !140
  %18 = bitcast i8* %17 to %struct._xmlHashEntry*, !dbg !140
  %19 = load %struct._xmlHashTable*, %struct._xmlHashTable** %4, align 8, !dbg !141
  %20 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %19, i32 0, i32 0, !dbg !142
  store %struct._xmlHashEntry* %18, %struct._xmlHashEntry** %20, align 8, !dbg !143
  %21 = load %struct._xmlHashTable*, %struct._xmlHashTable** %4, align 8, !dbg !144
  %22 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %21, i32 0, i32 0, !dbg !146
  %23 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %22, align 8, !dbg !146
  %24 = icmp eq %struct._xmlHashEntry* %23, null, !dbg !147
  br i1 %24, label %25, label %29, !dbg !148

25:                                               ; preds = %13
  %26 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %6, align 8, !dbg !149
  %27 = load %struct._xmlHashTable*, %struct._xmlHashTable** %4, align 8, !dbg !151
  %28 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %27, i32 0, i32 0, !dbg !152
  store %struct._xmlHashEntry* %26, %struct._xmlHashEntry** %28, align 8, !dbg !153
  store i32 -1, i32* %3, align 4, !dbg !154
  br label %43, !dbg !154

29:                                               ; preds = %13
  %30 = load %struct._xmlHashTable*, %struct._xmlHashTable** %4, align 8, !dbg !155
  %31 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %30, i32 0, i32 0, !dbg !156
  %32 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %31, align 8, !dbg !156
  %33 = bitcast %struct._xmlHashEntry* %32 to i8*, !dbg !157
  %34 = load i32, i32* %5, align 4, !dbg !158
  %35 = sext i32 %34 to i64, !dbg !158
  %36 = mul i64 %35, 32, !dbg !159
  %37 = call i8* @memset(i8* %33, i32 0, i64 %36), !dbg !157
  %38 = load i32, i32* %5, align 4, !dbg !160
  %39 = load %struct._xmlHashTable*, %struct._xmlHashTable** %4, align 8, !dbg !161
  %40 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %39, i32 0, i32 1, !dbg !162
  store i32 %38, i32* %40, align 8, !dbg !163
  %41 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %6, align 8, !dbg !164
  %42 = bitcast %struct._xmlHashEntry* %41 to i8*, !dbg !164
  call void @free(i8* noundef %42) #7, !dbg !165
  store i32 0, i32* %3, align 4, !dbg !166
  br label %43, !dbg !166

43:                                               ; preds = %29, %25, %12
  %44 = load i32, i32* %3, align 4, !dbg !167
  ret i32 %44, !dbg !167
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !168 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !172, metadata !DIExpression()), !dbg !173
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !174, metadata !DIExpression()), !dbg !175
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata i8** %7, metadata !178, metadata !DIExpression()), !dbg !180
  %8 = load i8*, i8** %4, align 8, !dbg !181
  store i8* %8, i8** %7, align 8, !dbg !180
  br label %9, !dbg !182

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !183
  %11 = add i64 %10, -1, !dbg !183
  store i64 %11, i64* %6, align 8, !dbg !183
  %12 = icmp ugt i64 %10, 0, !dbg !184
  br i1 %12, label %13, label %18, !dbg !182

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !185
  %15 = trunc i32 %14 to i8, !dbg !185
  %16 = load i8*, i8** %7, align 8, !dbg !186
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !186
  store i8* %17, i8** %7, align 8, !dbg !186
  store i8 %15, i8* %16, align 1, !dbg !187
  br label %9, !dbg !182, !llvm.loop !188

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !190
  ret i8* %19, !dbg !191
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26, !26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/032_hash.c_259_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d820398b4f31d1ecc9eebf96ceed29d9")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashEntry", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashEntry", file: !1, line: 11, size: 256, elements: !6)
!6 = !{!7, !9, !12, !14, !15}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !5, file: !1, line: 12, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5, file: !1, line: 13, baseType: !10, size: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "name2", scope: !5, file: !1, line: 14, baseType: !13, size: 32, offset: 128)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "name3", scope: !5, file: !1, line: 15, baseType: !13, size: 32, offset: 160)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5, file: !1, line: 16, baseType: !16, size: 64, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"Ubuntu clang version 14.0.6"}
!27 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 31, type: !28, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!28 = !DISubroutineType(types: !29)
!29 = !{!8, !30}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !{}
!34 = !DILocalVariable(name: "size", arg: 1, scope: !27, file: !1, line: 31, type: !30)
!35 = !DILocation(line: 31, column: 24, scope: !27)
!36 = !DILocalVariable(name: "ptr", scope: !27, file: !1, line: 32, type: !8)
!37 = !DILocation(line: 32, column: 11, scope: !27)
!38 = !DILocation(line: 32, column: 24, scope: !27)
!39 = !DILocation(line: 32, column: 17, scope: !27)
!40 = !DILocation(line: 33, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !27, file: !1, line: 33, column: 9)
!42 = !DILocation(line: 33, column: 9, scope: !27)
!43 = !DILocation(line: 34, column: 28, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !1, line: 33, column: 14)
!45 = !DILocation(line: 34, column: 33, scope: !44)
!46 = !DILocation(line: 34, column: 9, scope: !44)
!47 = !DILocation(line: 35, column: 5, scope: !44)
!48 = !DILocation(line: 36, column: 12, scope: !27)
!49 = !DILocation(line: 36, column: 5, scope: !27)
!50 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 43, type: !51, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!51 = !DISubroutineType(types: !52)
!52 = !{!13}
!53 = !DILocalVariable(name: "table", scope: !50, file: !1, line: 44, type: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !1, line: 19, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !1, line: 20, size: 384, elements: !56)
!56 = !{!57, !58, !59, !60, !64, !66, !70}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !55, file: !1, line: 21, baseType: !3, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !55, file: !1, line: 22, baseType: !13, size: 32, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "nbElems", scope: !55, file: !1, line: 23, baseType: !13, size: 32, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !55, file: !1, line: 24, baseType: !61, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !55, file: !1, line: 25, baseType: !65, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !55, file: !1, line: 26, baseType: !67, size: 64, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!3, !13}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !55, file: !1, line: 27, baseType: !71, size: 64, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !8}
!74 = !DILocation(line: 44, column: 18, scope: !50)
!75 = !DILocalVariable(name: "size", scope: !50, file: !1, line: 45, type: !13)
!76 = !DILocation(line: 45, column: 9, scope: !50)
!77 = !DILocation(line: 48, column: 24, scope: !50)
!78 = !DILocation(line: 48, column: 5, scope: !50)
!79 = !DILocation(line: 49, column: 24, scope: !50)
!80 = !DILocation(line: 49, column: 5, scope: !50)
!81 = !DILocation(line: 52, column: 17, scope: !50)
!82 = !DILocation(line: 52, column: 22, scope: !50)
!83 = !DILocation(line: 52, column: 5, scope: !50)
!84 = !DILocation(line: 53, column: 17, scope: !50)
!85 = !DILocation(line: 53, column: 22, scope: !50)
!86 = !DILocation(line: 53, column: 5, scope: !50)
!87 = !DILocalVariable(name: "oldtable", scope: !50, file: !1, line: 56, type: !3)
!88 = !DILocation(line: 56, column: 19, scope: !50)
!89 = !DILocation(line: 56, column: 45, scope: !50)
!90 = !DILocation(line: 56, column: 30, scope: !50)
!91 = !DILocation(line: 57, column: 17, scope: !50)
!92 = !DILocation(line: 57, column: 26, scope: !50)
!93 = !DILocation(line: 57, column: 5, scope: !50)
!94 = !DILocation(line: 58, column: 19, scope: !50)
!95 = !DILocation(line: 58, column: 11, scope: !50)
!96 = !DILocation(line: 58, column: 17, scope: !50)
!97 = !DILocation(line: 59, column: 11, scope: !50)
!98 = !DILocation(line: 59, column: 16, scope: !50)
!99 = !DILocalVariable(name: "result", scope: !50, file: !1, line: 62, type: !13)
!100 = !DILocation(line: 62, column: 9, scope: !50)
!101 = !DILocation(line: 62, column: 38, scope: !50)
!102 = !DILocation(line: 62, column: 18, scope: !50)
!103 = !DILocation(line: 67, column: 5, scope: !50)
!104 = !DILocation(line: 70, column: 5, scope: !50)
!105 = !DILocation(line: 73, column: 10, scope: !50)
!106 = !DILocation(line: 73, column: 5, scope: !50)
!107 = !DILocation(line: 74, column: 15, scope: !108)
!108 = distinct !DILexicalBlock(scope: !50, file: !1, line: 74, column: 9)
!109 = !DILocation(line: 74, column: 9, scope: !108)
!110 = !DILocation(line: 74, column: 21, scope: !108)
!111 = !DILocation(line: 74, column: 30, scope: !108)
!112 = !DILocation(line: 74, column: 39, scope: !108)
!113 = !DILocation(line: 74, column: 36, scope: !108)
!114 = !DILocation(line: 74, column: 9, scope: !50)
!115 = !DILocation(line: 75, column: 20, scope: !116)
!116 = distinct !DILexicalBlock(scope: !108, file: !1, line: 74, column: 49)
!117 = !DILocation(line: 75, column: 14, scope: !116)
!118 = !DILocation(line: 75, column: 9, scope: !116)
!119 = !DILocation(line: 76, column: 5, scope: !116)
!120 = !DILocation(line: 78, column: 5, scope: !50)
!121 = distinct !DISubprogram(name: "xmlHashGrow", scope: !1, file: !1, line: 82, type: !122, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!122 = !DISubroutineType(types: !123)
!123 = !{!13, !124, !13}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!125 = !DILocalVariable(name: "table", arg: 1, scope: !121, file: !1, line: 82, type: !124)
!126 = !DILocation(line: 82, column: 31, scope: !121)
!127 = !DILocalVariable(name: "size", arg: 2, scope: !121, file: !1, line: 82, type: !13)
!128 = !DILocation(line: 82, column: 42, scope: !121)
!129 = !DILocalVariable(name: "oldtable", scope: !121, file: !1, line: 83, type: !3)
!130 = !DILocation(line: 83, column: 19, scope: !121)
!131 = !DILocation(line: 83, column: 30, scope: !121)
!132 = !DILocation(line: 83, column: 37, scope: !121)
!133 = !DILocation(line: 85, column: 9, scope: !134)
!134 = distinct !DILexicalBlock(scope: !121, file: !1, line: 85, column: 9)
!135 = !DILocation(line: 85, column: 18, scope: !134)
!136 = !DILocation(line: 85, column: 9, scope: !121)
!137 = !DILocation(line: 86, column: 9, scope: !134)
!138 = !DILocation(line: 88, column: 30, scope: !121)
!139 = !DILocation(line: 88, column: 35, scope: !121)
!140 = !DILocation(line: 88, column: 20, scope: !121)
!141 = !DILocation(line: 88, column: 5, scope: !121)
!142 = !DILocation(line: 88, column: 12, scope: !121)
!143 = !DILocation(line: 88, column: 18, scope: !121)
!144 = !DILocation(line: 89, column: 9, scope: !145)
!145 = distinct !DILexicalBlock(scope: !121, file: !1, line: 89, column: 9)
!146 = !DILocation(line: 89, column: 16, scope: !145)
!147 = !DILocation(line: 89, column: 22, scope: !145)
!148 = !DILocation(line: 89, column: 9, scope: !121)
!149 = !DILocation(line: 90, column: 24, scope: !150)
!150 = distinct !DILexicalBlock(scope: !145, file: !1, line: 89, column: 31)
!151 = !DILocation(line: 90, column: 9, scope: !150)
!152 = !DILocation(line: 90, column: 16, scope: !150)
!153 = !DILocation(line: 90, column: 22, scope: !150)
!154 = !DILocation(line: 91, column: 9, scope: !150)
!155 = !DILocation(line: 95, column: 12, scope: !121)
!156 = !DILocation(line: 95, column: 19, scope: !121)
!157 = !DILocation(line: 95, column: 5, scope: !121)
!158 = !DILocation(line: 95, column: 29, scope: !121)
!159 = !DILocation(line: 95, column: 34, scope: !121)
!160 = !DILocation(line: 96, column: 19, scope: !121)
!161 = !DILocation(line: 96, column: 5, scope: !121)
!162 = !DILocation(line: 96, column: 12, scope: !121)
!163 = !DILocation(line: 96, column: 17, scope: !121)
!164 = !DILocation(line: 99, column: 10, scope: !121)
!165 = !DILocation(line: 99, column: 5, scope: !121)
!166 = !DILocation(line: 100, column: 5, scope: !121)
!167 = !DILocation(line: 101, column: 1, scope: !121)
!168 = distinct !DISubprogram(name: "memset", scope: !169, file: !169, line: 12, type: !170, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !33)
!169 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!170 = !DISubroutineType(types: !171)
!171 = !{!8, !8, !13, !30}
!172 = !DILocalVariable(name: "dst", arg: 1, scope: !168, file: !169, line: 12, type: !8)
!173 = !DILocation(line: 12, column: 20, scope: !168)
!174 = !DILocalVariable(name: "s", arg: 2, scope: !168, file: !169, line: 12, type: !13)
!175 = !DILocation(line: 12, column: 29, scope: !168)
!176 = !DILocalVariable(name: "count", arg: 3, scope: !168, file: !169, line: 12, type: !30)
!177 = !DILocation(line: 12, column: 39, scope: !168)
!178 = !DILocalVariable(name: "a", scope: !168, file: !169, line: 13, type: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!180 = !DILocation(line: 13, column: 9, scope: !168)
!181 = !DILocation(line: 13, column: 13, scope: !168)
!182 = !DILocation(line: 14, column: 3, scope: !168)
!183 = !DILocation(line: 14, column: 15, scope: !168)
!184 = !DILocation(line: 14, column: 18, scope: !168)
!185 = !DILocation(line: 15, column: 12, scope: !168)
!186 = !DILocation(line: 15, column: 7, scope: !168)
!187 = !DILocation(line: 15, column: 10, scope: !168)
!188 = distinct !{!188, !182, !185, !189}
!189 = !{!"llvm.loop.mustprogress"}
!190 = !DILocation(line: 16, column: 10, scope: !168)
!191 = !DILocation(line: 16, column: 3, scope: !168)
