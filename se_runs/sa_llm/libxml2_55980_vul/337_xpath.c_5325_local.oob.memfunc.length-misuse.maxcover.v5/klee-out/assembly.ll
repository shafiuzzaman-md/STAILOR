; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/337_xpath.c_5325_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/337_xpath.c_5325_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlXPathObject = type { i32, i8* }

@.str = private unnamed_addr constant [24 x i8] c"creating string object\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/337_xpath.c_5325_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !26 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !33, metadata !DIExpression()), !dbg !34
  %3 = load i64, i64* %2, align 8, !dbg !35
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !36
  ret i8* %4, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !38 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !43, metadata !DIExpression()), !dbg !44
  %6 = load i8*, i8** %3, align 8, !dbg !45
  %7 = icmp eq i8* %6, null, !dbg !47
  br i1 %7, label %8, label %9, !dbg !48

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !49
  br label %24, !dbg !49

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !50, metadata !DIExpression()), !dbg !51
  %10 = load i8*, i8** %3, align 8, !dbg !52
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !53
  %12 = add i64 %11, 1, !dbg !54
  store i64 %12, i64* %4, align 8, !dbg !51
  call void @llvm.dbg.declare(metadata i8** %5, metadata !55, metadata !DIExpression()), !dbg !56
  %13 = load i64, i64* %4, align 8, !dbg !57
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !58
  store i8* %14, i8** %5, align 8, !dbg !56
  %15 = load i8*, i8** %5, align 8, !dbg !59
  %16 = icmp ne i8* %15, null, !dbg !59
  br i1 %16, label %17, label %22, !dbg !61

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !62
  %19 = load i8*, i8** %3, align 8, !dbg !63
  %20 = load i64, i64* %4, align 8, !dbg !64
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !65
  br label %22, !dbg !65

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !66
  store i8* %23, i8** %2, align 8, !dbg !67
  br label %24, !dbg !67

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !68
  ret i8* %25, !dbg !68
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !69 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !72, metadata !DIExpression()), !dbg !73
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !74, metadata !DIExpression()), !dbg !75
  ret void, !dbg !76
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathDebugObjUsageRequested(i8* noundef %0, i32 noundef %1) #0 !dbg !77 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !80, metadata !DIExpression()), !dbg !81
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !82, metadata !DIExpression()), !dbg !83
  ret void, !dbg !84
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlXPathObject* @xmlXPathNewCString(i8* noundef %0) #0 !dbg !85 {
  %2 = alloca %struct._xmlXPathObject*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlXPathObject*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %4, metadata !90, metadata !DIExpression()), !dbg !91
  %5 = call i8* @xmlMalloc(i64 noundef 16), !dbg !92
  %6 = bitcast i8* %5 to %struct._xmlXPathObject*, !dbg !93
  store %struct._xmlXPathObject* %6, %struct._xmlXPathObject** %4, align 8, !dbg !94
  %7 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !95
  %8 = icmp eq %struct._xmlXPathObject* %7, null, !dbg !97
  br i1 %8, label %9, label %10, !dbg !98

9:                                                ; preds = %1
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)), !dbg !99
  store %struct._xmlXPathObject* null, %struct._xmlXPathObject** %2, align 8, !dbg !101
  br label %21, !dbg !101

10:                                               ; preds = %1
  %11 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !102
  %12 = bitcast %struct._xmlXPathObject* %11 to i8*, !dbg !103
  %13 = call i8* @memset(i8* %12, i32 0, i64 16), !dbg !103
  %14 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !104
  %15 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %14, i32 0, i32 0, !dbg !105
  store i32 4, i32* %15, align 8, !dbg !106
  %16 = load i8*, i8** %3, align 8, !dbg !107
  %17 = call i8* @xmlStrdup(i8* noundef %16), !dbg !108
  %18 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !109
  %19 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %18, i32 0, i32 1, !dbg !110
  store i8* %17, i8** %19, align 8, !dbg !111
  %20 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !112
  store %struct._xmlXPathObject* %20, %struct._xmlXPathObject** %2, align 8, !dbg !113
  br label %21, !dbg !113

21:                                               ; preds = %10, %9
  %22 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !114
  ret %struct._xmlXPathObject* %22, !dbg !114
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !115 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct._xmlXPathObject*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !118, metadata !DIExpression()), !dbg !122
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !123
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !124
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !125
  %6 = load i8, i8* %5, align 1, !dbg !125
  %7 = sext i8 %6 to i32, !dbg !125
  %8 = icmp eq i32 %7, 0, !dbg !126
  %9 = zext i1 %8 to i32, !dbg !126
  %10 = sext i32 %9 to i64, !dbg !125
  call void @klee_assume(i64 noundef %10), !dbg !127
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %3, metadata !128, metadata !DIExpression()), !dbg !129
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !130
  %12 = call %struct._xmlXPathObject* @xmlXPathNewCString(i8* noundef %11), !dbg !131
  store %struct._xmlXPathObject* %12, %struct._xmlXPathObject** %3, align 8, !dbg !129
  %13 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !132
  %14 = icmp ne %struct._xmlXPathObject* %13, null, !dbg !134
  br i1 %14, label %15, label %28, !dbg !135

15:                                               ; preds = %0
  %16 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !136
  %17 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !138
  %18 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %17, i32 0, i32 1, !dbg !140
  %19 = load i8*, i8** %18, align 8, !dbg !140
  %20 = icmp ne i8* %19, null, !dbg !138
  br i1 %20, label %21, label %25, !dbg !141

21:                                               ; preds = %15
  %22 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !142
  %23 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %22, i32 0, i32 1, !dbg !143
  %24 = load i8*, i8** %23, align 8, !dbg !143
  call void @free(i8* noundef %24) #9, !dbg !144
  br label %25, !dbg !144

25:                                               ; preds = %21, %15
  %26 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !145
  %27 = bitcast %struct._xmlXPathObject* %26 to i8*, !dbg !145
  call void @free(i8* noundef %27) #9, !dbg !146
  br label %28, !dbg !147

28:                                               ; preds = %25, %0
  ret i32 0, !dbg !148
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !149 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !155, metadata !DIExpression()), !dbg !156
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !157, metadata !DIExpression()), !dbg !158
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata i8** %7, metadata !161, metadata !DIExpression()), !dbg !162
  %9 = load i8*, i8** %4, align 8, !dbg !163
  store i8* %9, i8** %7, align 8, !dbg !162
  call void @llvm.dbg.declare(metadata i8** %8, metadata !164, metadata !DIExpression()), !dbg !165
  %10 = load i8*, i8** %5, align 8, !dbg !166
  store i8* %10, i8** %8, align 8, !dbg !165
  br label %11, !dbg !167

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !168
  %13 = add i64 %12, -1, !dbg !168
  store i64 %13, i64* %6, align 8, !dbg !168
  %14 = icmp ugt i64 %12, 0, !dbg !169
  br i1 %14, label %15, label %21, !dbg !167

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !170
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !170
  store i8* %17, i8** %8, align 8, !dbg !170
  %18 = load i8, i8* %16, align 1, !dbg !171
  %19 = load i8*, i8** %7, align 8, !dbg !172
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !172
  store i8* %20, i8** %7, align 8, !dbg !172
  store i8 %18, i8* %19, align 1, !dbg !173
  br label %11, !dbg !167, !llvm.loop !174

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !176
  ret i8* %22, !dbg !177
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !178 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !182, metadata !DIExpression()), !dbg !183
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !184, metadata !DIExpression()), !dbg !185
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata i8** %7, metadata !188, metadata !DIExpression()), !dbg !189
  %8 = load i8*, i8** %4, align 8, !dbg !190
  store i8* %8, i8** %7, align 8, !dbg !189
  br label %9, !dbg !191

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !192
  %11 = add i64 %10, -1, !dbg !192
  store i64 %11, i64* %6, align 8, !dbg !192
  %12 = icmp ugt i64 %10, 0, !dbg !193
  br i1 %12, label %13, label %18, !dbg !191

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !194
  %15 = trunc i32 %14 to i8, !dbg !194
  %16 = load i8*, i8** %7, align 8, !dbg !195
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !195
  store i8* %17, i8** %7, align 8, !dbg !195
  store i8 %15, i8* %16, align 1, !dbg !196
  br label %9, !dbg !191, !llvm.loop !197

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !198
  ret i8* %19, !dbg !199
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25, !25, !25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/337_xpath.c_5325_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "01768061cd6c14a74dd17abd19ac551e")
!2 = !{!3, !4, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !1, line: 11, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !1, line: 10, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !1, line: 43, size: 128, elements: !10)
!10 = !{!11, !13}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !9, file: !1, line: 44, baseType: !12, size: 32)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "stringval", scope: !9, file: !1, line: 45, baseType: !4, size: 64, offset: 64)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!18 = !{i32 7, !"Dwarf Version", i32 5}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{i32 7, !"PIC Level", i32 2}
!22 = !{i32 7, !"PIE Level", i32 2}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"Ubuntu clang version 14.0.6"}
!26 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 16, type: !27, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!27 = !DISubroutineType(types: !28)
!28 = !{!3, !29}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 46, baseType: !31)
!30 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !{}
!33 = !DILocalVariable(name: "size", arg: 1, scope: !26, file: !1, line: 16, type: !29)
!34 = !DILocation(line: 16, column: 24, scope: !26)
!35 = !DILocation(line: 17, column: 19, scope: !26)
!36 = !DILocation(line: 17, column: 12, scope: !26)
!37 = !DILocation(line: 17, column: 5, scope: !26)
!38 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 21, type: !39, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!39 = !DISubroutineType(types: !40)
!40 = !{!4, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!43 = !DILocalVariable(name: "cur", arg: 1, scope: !38, file: !1, line: 21, type: !41)
!44 = !DILocation(line: 21, column: 29, scope: !38)
!45 = !DILocation(line: 22, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !38, file: !1, line: 22, column: 9)
!47 = !DILocation(line: 22, column: 13, scope: !46)
!48 = !DILocation(line: 22, column: 9, scope: !38)
!49 = !DILocation(line: 22, column: 22, scope: !46)
!50 = !DILocalVariable(name: "len", scope: !38, file: !1, line: 23, type: !29)
!51 = !DILocation(line: 23, column: 12, scope: !38)
!52 = !DILocation(line: 23, column: 25, scope: !38)
!53 = !DILocation(line: 23, column: 18, scope: !38)
!54 = !DILocation(line: 23, column: 30, scope: !38)
!55 = !DILocalVariable(name: "copy", scope: !38, file: !1, line: 24, type: !4)
!56 = !DILocation(line: 24, column: 11, scope: !38)
!57 = !DILocation(line: 24, column: 33, scope: !38)
!58 = !DILocation(line: 24, column: 26, scope: !38)
!59 = !DILocation(line: 25, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !38, file: !1, line: 25, column: 9)
!61 = !DILocation(line: 25, column: 9, scope: !38)
!62 = !DILocation(line: 25, column: 22, scope: !60)
!63 = !DILocation(line: 25, column: 28, scope: !60)
!64 = !DILocation(line: 25, column: 33, scope: !60)
!65 = !DILocation(line: 25, column: 15, scope: !60)
!66 = !DILocation(line: 26, column: 12, scope: !38)
!67 = !DILocation(line: 26, column: 5, scope: !38)
!68 = !DILocation(line: 27, column: 1, scope: !38)
!69 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 30, type: !70, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !3, !41}
!72 = !DILocalVariable(name: "ctxt", arg: 1, scope: !69, file: !1, line: 30, type: !3)
!73 = !DILocation(line: 30, column: 30, scope: !69)
!74 = !DILocalVariable(name: "extra", arg: 2, scope: !69, file: !1, line: 30, type: !41)
!75 = !DILocation(line: 30, column: 48, scope: !69)
!76 = !DILocation(line: 32, column: 1, scope: !69)
!77 = distinct !DISubprogram(name: "xmlXPathDebugObjUsageRequested", scope: !1, file: !1, line: 35, type: !78, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !3, !12}
!80 = !DILocalVariable(name: "ctxt", arg: 1, scope: !77, file: !1, line: 35, type: !3)
!81 = !DILocation(line: 35, column: 43, scope: !77)
!82 = !DILocalVariable(name: "type", arg: 2, scope: !77, file: !1, line: 35, type: !12)
!83 = !DILocation(line: 35, column: 53, scope: !77)
!84 = !DILocation(line: 37, column: 1, scope: !77)
!85 = distinct !DISubprogram(name: "xmlXPathNewCString", scope: !1, file: !1, line: 50, type: !86, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!86 = !DISubroutineType(types: !87)
!87 = !{!6, !41}
!88 = !DILocalVariable(name: "val", arg: 1, scope: !85, file: !1, line: 50, type: !41)
!89 = !DILocation(line: 50, column: 50, scope: !85)
!90 = !DILocalVariable(name: "ret", scope: !85, file: !1, line: 51, type: !6)
!91 = !DILocation(line: 51, column: 23, scope: !85)
!92 = !DILocation(line: 53, column: 31, scope: !85)
!93 = !DILocation(line: 53, column: 11, scope: !85)
!94 = !DILocation(line: 53, column: 9, scope: !85)
!95 = !DILocation(line: 54, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !85, file: !1, line: 54, column: 9)
!97 = !DILocation(line: 54, column: 13, scope: !96)
!98 = !DILocation(line: 54, column: 9, scope: !85)
!99 = !DILocation(line: 55, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !1, line: 54, column: 22)
!101 = !DILocation(line: 56, column: 9, scope: !100)
!102 = !DILocation(line: 59, column: 12, scope: !85)
!103 = !DILocation(line: 59, column: 5, scope: !85)
!104 = !DILocation(line: 60, column: 5, scope: !85)
!105 = !DILocation(line: 60, column: 10, scope: !85)
!106 = !DILocation(line: 60, column: 15, scope: !85)
!107 = !DILocation(line: 61, column: 41, scope: !85)
!108 = !DILocation(line: 61, column: 22, scope: !85)
!109 = !DILocation(line: 61, column: 5, scope: !85)
!110 = !DILocation(line: 61, column: 10, scope: !85)
!111 = !DILocation(line: 61, column: 20, scope: !85)
!112 = !DILocation(line: 65, column: 12, scope: !85)
!113 = !DILocation(line: 65, column: 5, scope: !85)
!114 = !DILocation(line: 66, column: 1, scope: !85)
!115 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 68, type: !116, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!116 = !DISubroutineType(types: !117)
!117 = !{!12}
!118 = !DILocalVariable(name: "input", scope: !115, file: !1, line: 70, type: !119)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 256)
!122 = !DILocation(line: 70, column: 10, scope: !115)
!123 = !DILocation(line: 71, column: 24, scope: !115)
!124 = !DILocation(line: 71, column: 5, scope: !115)
!125 = !DILocation(line: 73, column: 17, scope: !115)
!126 = !DILocation(line: 73, column: 28, scope: !115)
!127 = !DILocation(line: 73, column: 5, scope: !115)
!128 = !DILocalVariable(name: "obj", scope: !115, file: !1, line: 76, type: !6)
!129 = !DILocation(line: 76, column: 23, scope: !115)
!130 = !DILocation(line: 76, column: 48, scope: !115)
!131 = !DILocation(line: 76, column: 29, scope: !115)
!132 = !DILocation(line: 79, column: 9, scope: !133)
!133 = distinct !DILexicalBlock(scope: !115, file: !1, line: 79, column: 9)
!134 = !DILocation(line: 79, column: 13, scope: !133)
!135 = !DILocation(line: 79, column: 9, scope: !115)
!136 = !DILocation(line: 89, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !1, line: 79, column: 22)
!138 = !DILocation(line: 92, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !137, file: !1, line: 92, column: 13)
!140 = !DILocation(line: 92, column: 18, scope: !139)
!141 = !DILocation(line: 92, column: 13, scope: !137)
!142 = !DILocation(line: 92, column: 34, scope: !139)
!143 = !DILocation(line: 92, column: 39, scope: !139)
!144 = !DILocation(line: 92, column: 29, scope: !139)
!145 = !DILocation(line: 93, column: 14, scope: !137)
!146 = !DILocation(line: 93, column: 9, scope: !137)
!147 = !DILocation(line: 94, column: 5, scope: !137)
!148 = !DILocation(line: 96, column: 5, scope: !115)
!149 = distinct !DISubprogram(name: "memcpy", scope: !150, file: !150, line: 12, type: !151, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !32)
!150 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!151 = !DISubroutineType(types: !152)
!152 = !{!3, !3, !153, !29}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!155 = !DILocalVariable(name: "destaddr", arg: 1, scope: !149, file: !150, line: 12, type: !3)
!156 = !DILocation(line: 12, column: 20, scope: !149)
!157 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !149, file: !150, line: 12, type: !153)
!158 = !DILocation(line: 12, column: 42, scope: !149)
!159 = !DILocalVariable(name: "len", arg: 3, scope: !149, file: !150, line: 12, type: !29)
!160 = !DILocation(line: 12, column: 58, scope: !149)
!161 = !DILocalVariable(name: "dest", scope: !149, file: !150, line: 13, type: !4)
!162 = !DILocation(line: 13, column: 9, scope: !149)
!163 = !DILocation(line: 13, column: 16, scope: !149)
!164 = !DILocalVariable(name: "src", scope: !149, file: !150, line: 14, type: !41)
!165 = !DILocation(line: 14, column: 15, scope: !149)
!166 = !DILocation(line: 14, column: 21, scope: !149)
!167 = !DILocation(line: 16, column: 3, scope: !149)
!168 = !DILocation(line: 16, column: 13, scope: !149)
!169 = !DILocation(line: 16, column: 16, scope: !149)
!170 = !DILocation(line: 17, column: 19, scope: !149)
!171 = !DILocation(line: 17, column: 15, scope: !149)
!172 = !DILocation(line: 17, column: 10, scope: !149)
!173 = !DILocation(line: 17, column: 13, scope: !149)
!174 = distinct !{!174, !167, !170, !175}
!175 = !{!"llvm.loop.mustprogress"}
!176 = !DILocation(line: 18, column: 10, scope: !149)
!177 = !DILocation(line: 18, column: 3, scope: !149)
!178 = distinct !DISubprogram(name: "memset", scope: !179, file: !179, line: 12, type: !180, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !32)
!179 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!180 = !DISubroutineType(types: !181)
!181 = !{!3, !3, !12, !29}
!182 = !DILocalVariable(name: "dst", arg: 1, scope: !178, file: !179, line: 12, type: !3)
!183 = !DILocation(line: 12, column: 20, scope: !178)
!184 = !DILocalVariable(name: "s", arg: 2, scope: !178, file: !179, line: 12, type: !12)
!185 = !DILocation(line: 12, column: 29, scope: !178)
!186 = !DILocalVariable(name: "count", arg: 3, scope: !178, file: !179, line: 12, type: !29)
!187 = !DILocation(line: 12, column: 39, scope: !178)
!188 = !DILocalVariable(name: "a", scope: !178, file: !179, line: 13, type: !4)
!189 = !DILocation(line: 13, column: 9, scope: !178)
!190 = !DILocation(line: 13, column: 13, scope: !178)
!191 = !DILocation(line: 14, column: 3, scope: !178)
!192 = !DILocation(line: 14, column: 15, scope: !178)
!193 = !DILocation(line: 14, column: 18, scope: !178)
!194 = !DILocation(line: 15, column: 12, scope: !178)
!195 = !DILocation(line: 15, column: 7, scope: !178)
!196 = !DILocation(line: 15, column: 10, scope: !178)
!197 = distinct !{!197, !191, !194, !175}
!198 = !DILocation(line: 16, column: 10, scope: !178)
!199 = !DILocation(line: 16, column: 3, scope: !178)
