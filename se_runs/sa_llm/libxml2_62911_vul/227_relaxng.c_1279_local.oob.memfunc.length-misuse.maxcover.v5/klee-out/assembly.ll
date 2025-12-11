; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/227_relaxng.c_1279_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/227_relaxng.c_1279_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGValidCtxt = type {}
%struct._xmlRelaxNGValidState = type { i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"allocating states\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"(result != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/227_relaxng.c_1279_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRngVErrMemory(%struct._xmlRelaxNGValidCtxt* noundef %0, i8* noundef %1) #0 !dbg !23 {
  %3 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlRelaxNGValidCtxt* %0, %struct._xmlRelaxNGValidCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %3, metadata !33, metadata !DIExpression()), !dbg !34
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !35, metadata !DIExpression()), !dbg !36
  ret void, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !38 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !44, metadata !DIExpression()), !dbg !45
  %3 = load i64, i64* %2, align 8, !dbg !46
  %4 = call noalias i8* @malloc(i64 noundef %3) #8, !dbg !47
  ret i8* %4, !dbg !48
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRelaxNGValidState* @target_xmlRelaxNGFreeDefine(%struct._xmlRelaxNGValidCtxt* noundef %0, %struct._xmlRelaxNGValidState* noundef %1) #0 !dbg !49 {
  %3 = alloca %struct._xmlRelaxNGValidState*, align 8
  %4 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  %5 = alloca %struct._xmlRelaxNGValidState*, align 8
  %6 = alloca %struct._xmlRelaxNGValidState*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct._xmlRelaxNGValidCtxt* %0, %struct._xmlRelaxNGValidCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %4, metadata !52, metadata !DIExpression()), !dbg !53
  store %struct._xmlRelaxNGValidState* %1, %struct._xmlRelaxNGValidState** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %5, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %6, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i8** %7, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %8, metadata !60, metadata !DIExpression()), !dbg !61
  %9 = call i8* @xmlMalloc(i64 noundef 16), !dbg !62
  %10 = bitcast i8* %9 to %struct._xmlRelaxNGValidState*, !dbg !63
  store %struct._xmlRelaxNGValidState* %10, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !64
  %11 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !65
  %12 = icmp eq %struct._xmlRelaxNGValidState* %11, null, !dbg !67
  br i1 %12, label %13, label %15, !dbg !68

13:                                               ; preds = %2
  %14 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %4, align 8, !dbg !69
  call void @xmlRngVErrMemory(%struct._xmlRelaxNGValidCtxt* noundef %14, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)), !dbg !71
  store %struct._xmlRelaxNGValidState* null, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !72
  br label %34, !dbg !72

15:                                               ; preds = %2
  %16 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !73
  %17 = bitcast %struct._xmlRelaxNGValidState* %16 to i8*, !dbg !74
  %18 = call i8* @memset(i8* %17, i32 0, i64 16), !dbg !74
  %19 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !75
  %20 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %19, i32 0, i32 0, !dbg !76
  %21 = load i8*, i8** %20, align 8, !dbg !76
  store i8* %21, i8** %7, align 8, !dbg !77
  %22 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !78
  %23 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %22, i32 0, i32 1, !dbg !79
  %24 = load i32, i32* %23, align 8, !dbg !79
  store i32 %24, i32* %8, align 4, !dbg !80
  %25 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !81
  %26 = bitcast %struct._xmlRelaxNGValidState* %25 to i8*, !dbg !82
  %27 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !83
  %28 = bitcast %struct._xmlRelaxNGValidState* %27 to i8*, !dbg !82
  %29 = call i8* @memcpy(i8* %26, i8* %28, i64 16), !dbg !82
  %30 = load i8*, i8** %7, align 8, !dbg !84
  %31 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !85
  %32 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %31, i32 0, i32 0, !dbg !86
  store i8* %30, i8** %32, align 8, !dbg !87
  %33 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !88
  store %struct._xmlRelaxNGValidState* %33, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !89
  br label %34, !dbg !89

34:                                               ; preds = %15, %13
  %35 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !90
  ret %struct._xmlRelaxNGValidState* %35, !dbg !90
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !91 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNGValidCtxt, align 1
  %3 = alloca %struct._xmlRelaxNGValidState*, align 8
  %4 = alloca %struct._xmlRelaxNGValidState*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt* %2, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %3, metadata !96, metadata !DIExpression()), !dbg !97
  %5 = call noalias i8* @malloc(i64 noundef 16) #8, !dbg !98
  %6 = bitcast i8* %5 to %struct._xmlRelaxNGValidState*, !dbg !99
  store %struct._xmlRelaxNGValidState* %6, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !100
  %7 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !101
  %8 = bitcast %struct._xmlRelaxNGValidState* %7 to i8*, !dbg !101
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !102
  %9 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !103
  %10 = icmp ne %struct._xmlRelaxNGValidState* %9, null, !dbg !104
  %11 = zext i1 %10 to i32, !dbg !104
  %12 = sext i32 %11 to i64, !dbg !103
  call void @klee_assume(i64 noundef %12), !dbg !105
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %4, metadata !106, metadata !DIExpression()), !dbg !107
  %13 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !108
  %14 = call %struct._xmlRelaxNGValidState* @target_xmlRelaxNGFreeDefine(%struct._xmlRelaxNGValidCtxt* noundef %2, %struct._xmlRelaxNGValidState* noundef %13), !dbg !109
  store %struct._xmlRelaxNGValidState* %14, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !107
  %15 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !110
  %16 = icmp ne %struct._xmlRelaxNGValidState* %15, null, !dbg !110
  br i1 %16, label %17, label %19, !dbg !110

17:                                               ; preds = %0
  br i1 true, label %18, label %19, !dbg !110

18:                                               ; preds = %17
  br label %21, !dbg !110

19:                                               ; preds = %17, %0
  %20 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !110
  br label %21, !dbg !110

21:                                               ; preds = %19, %18
  %22 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !111
  %23 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !112
  %24 = bitcast %struct._xmlRelaxNGValidState* %23 to i8*, !dbg !112
  call void @free(i8* noundef %24) #8, !dbg !113
  %25 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !114
  %26 = icmp ne %struct._xmlRelaxNGValidState* %25, null, !dbg !116
  br i1 %26, label %27, label %30, !dbg !117

27:                                               ; preds = %21
  %28 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !118
  %29 = bitcast %struct._xmlRelaxNGValidState* %28 to i8*, !dbg !118
  call void @free(i8* noundef %29) #8, !dbg !120
  br label %30, !dbg !121

30:                                               ; preds = %27, %21
  ret i32 0, !dbg !122
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !123 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !129, metadata !DIExpression()), !dbg !130
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !131, metadata !DIExpression()), !dbg !132
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i8** %7, metadata !135, metadata !DIExpression()), !dbg !137
  %9 = load i8*, i8** %4, align 8, !dbg !138
  store i8* %9, i8** %7, align 8, !dbg !137
  call void @llvm.dbg.declare(metadata i8** %8, metadata !139, metadata !DIExpression()), !dbg !140
  %10 = load i8*, i8** %5, align 8, !dbg !141
  store i8* %10, i8** %8, align 8, !dbg !140
  br label %11, !dbg !142

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !143
  %13 = add i64 %12, -1, !dbg !143
  store i64 %13, i64* %6, align 8, !dbg !143
  %14 = icmp ugt i64 %12, 0, !dbg !144
  br i1 %14, label %15, label %21, !dbg !142

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !145
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !145
  store i8* %17, i8** %8, align 8, !dbg !145
  %18 = load i8, i8* %16, align 1, !dbg !146
  %19 = load i8*, i8** %7, align 8, !dbg !147
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !147
  store i8* %20, i8** %7, align 8, !dbg !147
  store i8 %18, i8* %19, align 1, !dbg !148
  br label %11, !dbg !142, !llvm.loop !149

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !151
  ret i8* %22, !dbg !152
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !153 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !157, metadata !DIExpression()), !dbg !158
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !159, metadata !DIExpression()), !dbg !160
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata i8** %7, metadata !163, metadata !DIExpression()), !dbg !164
  %8 = load i8*, i8** %4, align 8, !dbg !165
  store i8* %8, i8** %7, align 8, !dbg !164
  br label %9, !dbg !166

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !167
  %11 = add i64 %10, -1, !dbg !167
  store i64 %11, i64* %6, align 8, !dbg !167
  %12 = icmp ugt i64 %10, 0, !dbg !168
  br i1 %12, label %13, label %18, !dbg !166

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !169
  %15 = trunc i32 %14 to i8, !dbg !169
  %16 = load i8*, i8** %7, align 8, !dbg !170
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !170
  store i8* %17, i8** %7, align 8, !dbg !170
  store i8 %15, i8* %16, align 1, !dbg !171
  br label %9, !dbg !166, !llvm.loop !172

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !173
  ret i8* %19, !dbg !174
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22, !22, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/227_relaxng.c_1279_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "26c33b33ea4241818b2bad22410e2e59")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidState", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidState", file: !1, line: 14, size: 128, elements: !6)
!6 = !{!7, !9}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !5, file: !1, line: 15, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "maxAttrs", scope: !5, file: !1, line: 16, baseType: !10, size: 32, offset: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"Ubuntu clang version 14.0.6"}
!23 = distinct !DISubprogram(name: "xmlRngVErrMemory", scope: !1, file: !1, line: 26, type: !24, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26, !30}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxt", file: !1, line: 11, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidCtxt", file: !1, line: 21, elements: !29)
!29 = !{}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !DILocalVariable(name: "ctxt", arg: 1, scope: !23, file: !1, line: 26, type: !26)
!34 = !DILocation(line: 26, column: 44, scope: !23)
!35 = !DILocalVariable(name: "msg", arg: 2, scope: !23, file: !1, line: 26, type: !30)
!36 = !DILocation(line: 26, column: 62, scope: !23)
!37 = !DILocation(line: 28, column: 1, scope: !23)
!38 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 30, type: !39, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!39 = !DISubroutineType(types: !40)
!40 = !{!8, !41}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 46, baseType: !43)
!42 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!43 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!44 = !DILocalVariable(name: "size", arg: 1, scope: !38, file: !1, line: 30, type: !41)
!45 = !DILocation(line: 30, column: 24, scope: !38)
!46 = !DILocation(line: 31, column: 19, scope: !38)
!47 = !DILocation(line: 31, column: 12, scope: !38)
!48 = !DILocation(line: 31, column: 5, scope: !38)
!49 = distinct !DISubprogram(name: "target_xmlRelaxNGFreeDefine", scope: !1, file: !1, line: 35, type: !50, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!50 = !DISubroutineType(types: !51)
!51 = !{!3, !26, !3}
!52 = !DILocalVariable(name: "ctxt", arg: 1, scope: !49, file: !1, line: 35, type: !26)
!53 = !DILocation(line: 35, column: 72, scope: !49)
!54 = !DILocalVariable(name: "state", arg: 2, scope: !49, file: !1, line: 35, type: !3)
!55 = !DILocation(line: 35, column: 100, scope: !49)
!56 = !DILocalVariable(name: "ret", scope: !49, file: !1, line: 36, type: !3)
!57 = !DILocation(line: 36, column: 27, scope: !49)
!58 = !DILocalVariable(name: "attrs", scope: !49, file: !1, line: 37, type: !8)
!59 = !DILocation(line: 37, column: 11, scope: !49)
!60 = !DILocalVariable(name: "maxAttrs", scope: !49, file: !1, line: 38, type: !10)
!61 = !DILocation(line: 38, column: 9, scope: !49)
!62 = !DILocation(line: 40, column: 36, scope: !49)
!63 = !DILocation(line: 40, column: 11, scope: !49)
!64 = !DILocation(line: 40, column: 9, scope: !49)
!65 = !DILocation(line: 41, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !49, file: !1, line: 41, column: 9)
!67 = !DILocation(line: 41, column: 13, scope: !66)
!68 = !DILocation(line: 41, column: 9, scope: !49)
!69 = !DILocation(line: 42, column: 26, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 41, column: 22)
!71 = !DILocation(line: 42, column: 9, scope: !70)
!72 = !DILocation(line: 43, column: 9, scope: !70)
!73 = !DILocation(line: 47, column: 12, scope: !49)
!74 = !DILocation(line: 47, column: 5, scope: !49)
!75 = !DILocation(line: 49, column: 13, scope: !49)
!76 = !DILocation(line: 49, column: 18, scope: !49)
!77 = !DILocation(line: 49, column: 11, scope: !49)
!78 = !DILocation(line: 50, column: 16, scope: !49)
!79 = !DILocation(line: 50, column: 21, scope: !49)
!80 = !DILocation(line: 50, column: 14, scope: !49)
!81 = !DILocation(line: 51, column: 12, scope: !49)
!82 = !DILocation(line: 51, column: 5, scope: !49)
!83 = !DILocation(line: 51, column: 17, scope: !49)
!84 = !DILocation(line: 52, column: 18, scope: !49)
!85 = !DILocation(line: 52, column: 5, scope: !49)
!86 = !DILocation(line: 52, column: 10, scope: !49)
!87 = !DILocation(line: 52, column: 16, scope: !49)
!88 = !DILocation(line: 54, column: 12, scope: !49)
!89 = !DILocation(line: 54, column: 5, scope: !49)
!90 = !DILocation(line: 55, column: 1, scope: !49)
!91 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 57, type: !92, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!92 = !DISubroutineType(types: !93)
!93 = !{!10}
!94 = !DILocalVariable(name: "ctxt", scope: !91, file: !1, line: 58, type: !27)
!95 = !DILocation(line: 58, column: 25, scope: !91)
!96 = !DILocalVariable(name: "state", scope: !91, file: !1, line: 59, type: !3)
!97 = !DILocation(line: 59, column: 27, scope: !91)
!98 = !DILocation(line: 62, column: 38, scope: !91)
!99 = !DILocation(line: 62, column: 13, scope: !91)
!100 = !DILocation(line: 62, column: 11, scope: !91)
!101 = !DILocation(line: 63, column: 24, scope: !91)
!102 = !DILocation(line: 63, column: 5, scope: !91)
!103 = !DILocation(line: 66, column: 17, scope: !91)
!104 = !DILocation(line: 66, column: 23, scope: !91)
!105 = !DILocation(line: 66, column: 5, scope: !91)
!106 = !DILocalVariable(name: "result", scope: !91, file: !1, line: 69, type: !3)
!107 = !DILocation(line: 69, column: 27, scope: !91)
!108 = !DILocation(line: 69, column: 71, scope: !91)
!109 = !DILocation(line: 69, column: 36, scope: !91)
!110 = !DILocation(line: 73, column: 5, scope: !91)
!111 = !DILocation(line: 76, column: 5, scope: !91)
!112 = !DILocation(line: 79, column: 10, scope: !91)
!113 = !DILocation(line: 79, column: 5, scope: !91)
!114 = !DILocation(line: 80, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !91, file: !1, line: 80, column: 9)
!116 = !DILocation(line: 80, column: 16, scope: !115)
!117 = !DILocation(line: 80, column: 9, scope: !91)
!118 = !DILocation(line: 81, column: 14, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 80, column: 25)
!120 = !DILocation(line: 81, column: 9, scope: !119)
!121 = !DILocation(line: 82, column: 5, scope: !119)
!122 = !DILocation(line: 84, column: 5, scope: !91)
!123 = distinct !DISubprogram(name: "memcpy", scope: !124, file: !124, line: 12, type: !125, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !29)
!124 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!125 = !DISubroutineType(types: !126)
!126 = !{!8, !8, !127, !41}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!129 = !DILocalVariable(name: "destaddr", arg: 1, scope: !123, file: !124, line: 12, type: !8)
!130 = !DILocation(line: 12, column: 20, scope: !123)
!131 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !123, file: !124, line: 12, type: !127)
!132 = !DILocation(line: 12, column: 42, scope: !123)
!133 = !DILocalVariable(name: "len", arg: 3, scope: !123, file: !124, line: 12, type: !41)
!134 = !DILocation(line: 12, column: 58, scope: !123)
!135 = !DILocalVariable(name: "dest", scope: !123, file: !124, line: 13, type: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!137 = !DILocation(line: 13, column: 9, scope: !123)
!138 = !DILocation(line: 13, column: 16, scope: !123)
!139 = !DILocalVariable(name: "src", scope: !123, file: !124, line: 14, type: !30)
!140 = !DILocation(line: 14, column: 15, scope: !123)
!141 = !DILocation(line: 14, column: 21, scope: !123)
!142 = !DILocation(line: 16, column: 3, scope: !123)
!143 = !DILocation(line: 16, column: 13, scope: !123)
!144 = !DILocation(line: 16, column: 16, scope: !123)
!145 = !DILocation(line: 17, column: 19, scope: !123)
!146 = !DILocation(line: 17, column: 15, scope: !123)
!147 = !DILocation(line: 17, column: 10, scope: !123)
!148 = !DILocation(line: 17, column: 13, scope: !123)
!149 = distinct !{!149, !142, !145, !150}
!150 = !{!"llvm.loop.mustprogress"}
!151 = !DILocation(line: 18, column: 10, scope: !123)
!152 = !DILocation(line: 18, column: 3, scope: !123)
!153 = distinct !DISubprogram(name: "memset", scope: !154, file: !154, line: 12, type: !155, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !29)
!154 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!155 = !DISubroutineType(types: !156)
!156 = !{!8, !8, !10, !41}
!157 = !DILocalVariable(name: "dst", arg: 1, scope: !153, file: !154, line: 12, type: !8)
!158 = !DILocation(line: 12, column: 20, scope: !153)
!159 = !DILocalVariable(name: "s", arg: 2, scope: !153, file: !154, line: 12, type: !10)
!160 = !DILocation(line: 12, column: 29, scope: !153)
!161 = !DILocalVariable(name: "count", arg: 3, scope: !153, file: !154, line: 12, type: !41)
!162 = !DILocation(line: 12, column: 39, scope: !153)
!163 = !DILocalVariable(name: "a", scope: !153, file: !154, line: 13, type: !136)
!164 = !DILocation(line: 13, column: 9, scope: !153)
!165 = !DILocation(line: 13, column: 13, scope: !153)
!166 = !DILocation(line: 14, column: 3, scope: !153)
!167 = !DILocation(line: 14, column: 15, scope: !153)
!168 = !DILocation(line: 14, column: 18, scope: !153)
!169 = !DILocation(line: 15, column: 12, scope: !153)
!170 = !DILocation(line: 15, column: 7, scope: !153)
!171 = !DILocation(line: 15, column: 10, scope: !153)
!172 = distinct !{!172, !166, !169, !150}
!173 = !DILocation(line: 16, column: 10, scope: !153)
!174 = !DILocation(line: 16, column: 3, scope: !153)
