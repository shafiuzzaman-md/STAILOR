; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/302_tree.c_940_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/302_tree.c_940_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDtd = type { i32, i8* }

@.str = private unnamed_addr constant [25 x i8] c"building internal subset\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/302_tree.c_940_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNewDtd = private unnamed_addr constant [70 x i8] c"xmlDtdPtr xmlNewDtd(void *, const char *, const char *, const char *)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !31 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !37, metadata !DIExpression()), !dbg !38
  ret void, !dbg !39
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !40 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !46, metadata !DIExpression()), !dbg !47
  %3 = load i64, i64* %2, align 8, !dbg !48
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !49
  ret i8* %4, !dbg !50
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !51 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !54, metadata !DIExpression()), !dbg !55
  %6 = load i8*, i8** %3, align 8, !dbg !56
  %7 = icmp eq i8* %6, null, !dbg !58
  br i1 %7, label %8, label %9, !dbg !59

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !60
  br label %24, !dbg !60

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !61, metadata !DIExpression()), !dbg !62
  %10 = load i8*, i8** %3, align 8, !dbg !63
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !64
  %12 = add i64 %11, 1, !dbg !65
  store i64 %12, i64* %4, align 8, !dbg !62
  call void @llvm.dbg.declare(metadata i8** %5, metadata !66, metadata !DIExpression()), !dbg !67
  %13 = load i64, i64* %4, align 8, !dbg !68
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !69
  store i8* %14, i8** %5, align 8, !dbg !67
  %15 = load i8*, i8** %5, align 8, !dbg !70
  %16 = icmp ne i8* %15, null, !dbg !70
  br i1 %16, label %17, label %22, !dbg !72

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !73
  %19 = load i8*, i8** %3, align 8, !dbg !74
  %20 = load i64, i64* %4, align 8, !dbg !75
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !76
  br label %22, !dbg !76

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !77
  store i8* %23, i8** %2, align 8, !dbg !78
  br label %24, !dbg !78

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !79
  ret i8* %25, !dbg !79
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlDtd* @xmlNewDtd(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 !dbg !80 {
  %5 = alloca %struct._xmlDtd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._xmlDtd*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !83, metadata !DIExpression()), !dbg !84
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !85, metadata !DIExpression()), !dbg !86
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !87, metadata !DIExpression()), !dbg !88
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata %struct._xmlDtd** %10, metadata !91, metadata !DIExpression()), !dbg !92
  %11 = call i8* @xmlMalloc(i64 noundef 16), !dbg !93
  %12 = bitcast i8* %11 to %struct._xmlDtd*, !dbg !94
  store %struct._xmlDtd* %12, %struct._xmlDtd** %10, align 8, !dbg !95
  %13 = load %struct._xmlDtd*, %struct._xmlDtd** %10, align 8, !dbg !96
  %14 = icmp eq %struct._xmlDtd* %13, null, !dbg !98
  br i1 %14, label %15, label %16, !dbg !99

15:                                               ; preds = %4
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0)), !dbg !100
  store %struct._xmlDtd* null, %struct._xmlDtd** %5, align 8, !dbg !102
  br label %38, !dbg !102

16:                                               ; preds = %4
  %17 = load %struct._xmlDtd*, %struct._xmlDtd** %10, align 8, !dbg !103
  %18 = bitcast %struct._xmlDtd* %17 to i8*, !dbg !104
  %19 = call i8* @memset(i8* %18, i32 0, i64 16), !dbg !104
  %20 = load %struct._xmlDtd*, %struct._xmlDtd** %10, align 8, !dbg !105
  %21 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %20, i32 0, i32 0, !dbg !106
  store i32 10, i32* %21, align 8, !dbg !107
  %22 = load i8*, i8** %7, align 8, !dbg !108
  %23 = icmp ne i8* %22, null, !dbg !110
  br i1 %23, label %24, label %36, !dbg !111

24:                                               ; preds = %16
  %25 = load i8*, i8** %7, align 8, !dbg !112
  %26 = call i8* @xmlStrdup(i8* noundef %25), !dbg !114
  %27 = load %struct._xmlDtd*, %struct._xmlDtd** %10, align 8, !dbg !115
  %28 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %27, i32 0, i32 1, !dbg !116
  store i8* %26, i8** %28, align 8, !dbg !117
  %29 = load %struct._xmlDtd*, %struct._xmlDtd** %10, align 8, !dbg !118
  %30 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %29, i32 0, i32 1, !dbg !120
  %31 = load i8*, i8** %30, align 8, !dbg !120
  %32 = icmp eq i8* %31, null, !dbg !121
  br i1 %32, label %33, label %35, !dbg !122

33:                                               ; preds = %24
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__.xmlNewDtd, i64 0, i64 0)), !dbg !123
  br label %35, !dbg !125

35:                                               ; preds = %33, %24
  br label %36, !dbg !126

36:                                               ; preds = %35, %16
  %37 = load %struct._xmlDtd*, %struct._xmlDtd** %10, align 8, !dbg !127
  store %struct._xmlDtd* %37, %struct._xmlDtd** %5, align 8, !dbg !128
  br label %38, !dbg !128

38:                                               ; preds = %36, %15
  %39 = load %struct._xmlDtd*, %struct._xmlDtd** %5, align 8, !dbg !129
  ret %struct._xmlDtd* %39, !dbg !129
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !130 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct._xmlDtd*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !133, metadata !DIExpression()), !dbg !137
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !138
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !139
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !140
  store i8 0, i8* %5, align 1, !dbg !141
  call void @llvm.dbg.declare(metadata %struct._xmlDtd** %3, metadata !142, metadata !DIExpression()), !dbg !143
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !144
  %7 = call %struct._xmlDtd* @xmlNewDtd(i8* noundef null, i8* noundef %6, i8* noundef null, i8* noundef null), !dbg !145
  store %struct._xmlDtd* %7, %struct._xmlDtd** %3, align 8, !dbg !143
  %8 = load %struct._xmlDtd*, %struct._xmlDtd** %3, align 8, !dbg !146
  %9 = icmp ne %struct._xmlDtd* %8, null, !dbg !146
  br i1 %9, label %10, label %22, !dbg !148

10:                                               ; preds = %0
  %11 = load %struct._xmlDtd*, %struct._xmlDtd** %3, align 8, !dbg !149
  %12 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %11, i32 0, i32 1, !dbg !152
  %13 = load i8*, i8** %12, align 8, !dbg !152
  %14 = icmp ne i8* %13, null, !dbg !149
  br i1 %14, label %15, label %19, !dbg !153

15:                                               ; preds = %10
  %16 = load %struct._xmlDtd*, %struct._xmlDtd** %3, align 8, !dbg !154
  %17 = getelementptr inbounds %struct._xmlDtd, %struct._xmlDtd* %16, i32 0, i32 1, !dbg !155
  %18 = load i8*, i8** %17, align 8, !dbg !155
  call void @free(i8* noundef %18) #9, !dbg !156
  br label %19, !dbg !156

19:                                               ; preds = %15, %10
  %20 = load %struct._xmlDtd*, %struct._xmlDtd** %3, align 8, !dbg !157
  %21 = bitcast %struct._xmlDtd* %20 to i8*, !dbg !157
  call void @free(i8* noundef %21) #9, !dbg !158
  br label %22, !dbg !159

22:                                               ; preds = %19, %0
  ret i32 0, !dbg !160
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !161 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !167, metadata !DIExpression()), !dbg !168
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !169, metadata !DIExpression()), !dbg !170
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata i8** %7, metadata !173, metadata !DIExpression()), !dbg !174
  %9 = load i8*, i8** %4, align 8, !dbg !175
  store i8* %9, i8** %7, align 8, !dbg !174
  call void @llvm.dbg.declare(metadata i8** %8, metadata !176, metadata !DIExpression()), !dbg !177
  %10 = load i8*, i8** %5, align 8, !dbg !178
  store i8* %10, i8** %8, align 8, !dbg !177
  br label %11, !dbg !179

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !180
  %13 = add i64 %12, -1, !dbg !180
  store i64 %13, i64* %6, align 8, !dbg !180
  %14 = icmp ugt i64 %12, 0, !dbg !181
  br i1 %14, label %15, label %21, !dbg !179

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !182
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !182
  store i8* %17, i8** %8, align 8, !dbg !182
  %18 = load i8, i8* %16, align 1, !dbg !183
  %19 = load i8*, i8** %7, align 8, !dbg !184
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !184
  store i8* %20, i8** %7, align 8, !dbg !184
  store i8 %18, i8* %19, align 1, !dbg !185
  br label %11, !dbg !179, !llvm.loop !186

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !188
  ret i8* %22, !dbg !189
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !190 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !194, metadata !DIExpression()), !dbg !195
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !196, metadata !DIExpression()), !dbg !197
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata i8** %7, metadata !200, metadata !DIExpression()), !dbg !201
  %8 = load i8*, i8** %4, align 8, !dbg !202
  store i8* %8, i8** %7, align 8, !dbg !201
  br label %9, !dbg !203

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !204
  %11 = add i64 %10, -1, !dbg !204
  store i64 %11, i64* %6, align 8, !dbg !204
  %12 = icmp ugt i64 %10, 0, !dbg !205
  br i1 %12, label %13, label %18, !dbg !203

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !206
  %15 = trunc i32 %14 to i8, !dbg !206
  %16 = load i8*, i8** %7, align 8, !dbg !207
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !207
  store i8* %17, i8** %7, align 8, !dbg !207
  store i8 %15, i8* %16, align 1, !dbg !208
  br label %9, !dbg !203, !llvm.loop !209

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !210
  ret i8* %19, !dbg !211
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30, !30, !30}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/302_tree.c_940_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d96a5e7d6b691480a9c37b8b0b3718d6")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 13, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_DTD_NODE", value: 10)
!7 = !{!8, !9, !11}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDtdPtr", file: !1, line: 11, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDtd", file: !1, line: 10, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !1, line: 17, size: 128, elements: !15)
!15 = !{!16, !18}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !14, file: !1, line: 18, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !1, line: 19, baseType: !9, size: 64, offset: 64)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !22, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!22 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{i32 7, !"PIC Level", i32 2}
!27 = !{i32 7, !"PIE Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"Ubuntu clang version 14.0.6"}
!31 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 24, type: !32, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!36 = !{}
!37 = !DILocalVariable(name: "msg", arg: 1, scope: !31, file: !1, line: 24, type: !34)
!38 = !DILocation(line: 24, column: 35, scope: !31)
!39 = !DILocation(line: 26, column: 1, scope: !31)
!40 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 28, type: !41, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!41 = !DISubroutineType(types: !42)
!42 = !{!8, !43}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 46, baseType: !45)
!44 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!45 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!46 = !DILocalVariable(name: "size", arg: 1, scope: !40, file: !1, line: 28, type: !43)
!47 = !DILocation(line: 28, column: 24, scope: !40)
!48 = !DILocation(line: 29, column: 19, scope: !40)
!49 = !DILocation(line: 29, column: 12, scope: !40)
!50 = !DILocation(line: 29, column: 5, scope: !40)
!51 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 32, type: !52, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!52 = !DISubroutineType(types: !53)
!53 = !{!9, !34}
!54 = !DILocalVariable(name: "cur", arg: 1, scope: !51, file: !1, line: 32, type: !34)
!55 = !DILocation(line: 32, column: 29, scope: !51)
!56 = !DILocation(line: 33, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !51, file: !1, line: 33, column: 9)
!58 = !DILocation(line: 33, column: 13, scope: !57)
!59 = !DILocation(line: 33, column: 9, scope: !51)
!60 = !DILocation(line: 33, column: 22, scope: !57)
!61 = !DILocalVariable(name: "len", scope: !51, file: !1, line: 34, type: !43)
!62 = !DILocation(line: 34, column: 12, scope: !51)
!63 = !DILocation(line: 34, column: 25, scope: !51)
!64 = !DILocation(line: 34, column: 18, scope: !51)
!65 = !DILocation(line: 34, column: 30, scope: !51)
!66 = !DILocalVariable(name: "res", scope: !51, file: !1, line: 35, type: !9)
!67 = !DILocation(line: 35, column: 11, scope: !51)
!68 = !DILocation(line: 35, column: 31, scope: !51)
!69 = !DILocation(line: 35, column: 24, scope: !51)
!70 = !DILocation(line: 36, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !51, file: !1, line: 36, column: 9)
!72 = !DILocation(line: 36, column: 9, scope: !51)
!73 = !DILocation(line: 36, column: 21, scope: !71)
!74 = !DILocation(line: 36, column: 26, scope: !71)
!75 = !DILocation(line: 36, column: 31, scope: !71)
!76 = !DILocation(line: 36, column: 14, scope: !71)
!77 = !DILocation(line: 37, column: 12, scope: !51)
!78 = !DILocation(line: 37, column: 5, scope: !51)
!79 = !DILocation(line: 38, column: 1, scope: !51)
!80 = distinct !DISubprogram(name: "xmlNewDtd", scope: !1, file: !1, line: 41, type: !81, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!81 = !DISubroutineType(types: !82)
!82 = !{!11, !8, !34, !34, !34}
!83 = !DILocalVariable(name: "doc", arg: 1, scope: !80, file: !1, line: 41, type: !8)
!84 = !DILocation(line: 41, column: 27, scope: !80)
!85 = !DILocalVariable(name: "name", arg: 2, scope: !80, file: !1, line: 41, type: !34)
!86 = !DILocation(line: 41, column: 44, scope: !80)
!87 = !DILocalVariable(name: "ExternalID", arg: 3, scope: !80, file: !1, line: 41, type: !34)
!88 = !DILocation(line: 41, column: 62, scope: !80)
!89 = !DILocalVariable(name: "SystemID", arg: 4, scope: !80, file: !1, line: 41, type: !34)
!90 = !DILocation(line: 41, column: 86, scope: !80)
!91 = !DILocalVariable(name: "cur", scope: !80, file: !1, line: 42, type: !11)
!92 = !DILocation(line: 42, column: 15, scope: !80)
!93 = !DILocation(line: 44, column: 23, scope: !80)
!94 = !DILocation(line: 44, column: 11, scope: !80)
!95 = !DILocation(line: 44, column: 9, scope: !80)
!96 = !DILocation(line: 45, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !80, file: !1, line: 45, column: 9)
!98 = !DILocation(line: 45, column: 13, scope: !97)
!99 = !DILocation(line: 45, column: 9, scope: !80)
!100 = !DILocation(line: 46, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 45, column: 22)
!102 = !DILocation(line: 47, column: 9, scope: !101)
!103 = !DILocation(line: 49, column: 12, scope: !80)
!104 = !DILocation(line: 49, column: 5, scope: !80)
!105 = !DILocation(line: 50, column: 5, scope: !80)
!106 = !DILocation(line: 50, column: 10, scope: !80)
!107 = !DILocation(line: 50, column: 15, scope: !80)
!108 = !DILocation(line: 52, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !80, file: !1, line: 52, column: 9)
!110 = !DILocation(line: 52, column: 14, scope: !109)
!111 = !DILocation(line: 52, column: 9, scope: !80)
!112 = !DILocation(line: 53, column: 31, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !1, line: 52, column: 23)
!114 = !DILocation(line: 53, column: 21, scope: !113)
!115 = !DILocation(line: 53, column: 9, scope: !113)
!116 = !DILocation(line: 53, column: 14, scope: !113)
!117 = !DILocation(line: 53, column: 19, scope: !113)
!118 = !DILocation(line: 54, column: 13, scope: !119)
!119 = distinct !DILexicalBlock(scope: !113, file: !1, line: 54, column: 13)
!120 = !DILocation(line: 54, column: 18, scope: !119)
!121 = !DILocation(line: 54, column: 23, scope: !119)
!122 = !DILocation(line: 54, column: 13, scope: !113)
!123 = !DILocation(line: 59, column: 13, scope: !124)
!124 = distinct !DILexicalBlock(scope: !119, file: !1, line: 54, column: 32)
!125 = !DILocation(line: 60, column: 9, scope: !124)
!126 = !DILocation(line: 61, column: 5, scope: !113)
!127 = !DILocation(line: 63, column: 12, scope: !80)
!128 = !DILocation(line: 63, column: 5, scope: !80)
!129 = !DILocation(line: 64, column: 1, scope: !80)
!130 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 67, type: !131, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!131 = !DISubroutineType(types: !132)
!132 = !{!17}
!133 = !DILocalVariable(name: "name", scope: !130, file: !1, line: 69, type: !134)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 256)
!137 = !DILocation(line: 69, column: 10, scope: !130)
!138 = !DILocation(line: 70, column: 24, scope: !130)
!139 = !DILocation(line: 70, column: 5, scope: !130)
!140 = !DILocation(line: 73, column: 5, scope: !130)
!141 = !DILocation(line: 73, column: 15, scope: !130)
!142 = !DILocalVariable(name: "dtd", scope: !130, file: !1, line: 76, type: !11)
!143 = !DILocation(line: 76, column: 15, scope: !130)
!144 = !DILocation(line: 76, column: 37, scope: !130)
!145 = !DILocation(line: 76, column: 21, scope: !130)
!146 = !DILocation(line: 79, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !130, file: !1, line: 79, column: 9)
!148 = !DILocation(line: 79, column: 9, scope: !130)
!149 = !DILocation(line: 80, column: 13, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !1, line: 80, column: 13)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 79, column: 14)
!152 = !DILocation(line: 80, column: 18, scope: !150)
!153 = !DILocation(line: 80, column: 13, scope: !151)
!154 = !DILocation(line: 80, column: 29, scope: !150)
!155 = !DILocation(line: 80, column: 34, scope: !150)
!156 = !DILocation(line: 80, column: 24, scope: !150)
!157 = !DILocation(line: 81, column: 14, scope: !151)
!158 = !DILocation(line: 81, column: 9, scope: !151)
!159 = !DILocation(line: 82, column: 5, scope: !151)
!160 = !DILocation(line: 84, column: 5, scope: !130)
!161 = distinct !DISubprogram(name: "memcpy", scope: !162, file: !162, line: 12, type: !163, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !36)
!162 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!163 = !DISubroutineType(types: !164)
!164 = !{!8, !8, !165, !43}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!167 = !DILocalVariable(name: "destaddr", arg: 1, scope: !161, file: !162, line: 12, type: !8)
!168 = !DILocation(line: 12, column: 20, scope: !161)
!169 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !161, file: !162, line: 12, type: !165)
!170 = !DILocation(line: 12, column: 42, scope: !161)
!171 = !DILocalVariable(name: "len", arg: 3, scope: !161, file: !162, line: 12, type: !43)
!172 = !DILocation(line: 12, column: 58, scope: !161)
!173 = !DILocalVariable(name: "dest", scope: !161, file: !162, line: 13, type: !9)
!174 = !DILocation(line: 13, column: 9, scope: !161)
!175 = !DILocation(line: 13, column: 16, scope: !161)
!176 = !DILocalVariable(name: "src", scope: !161, file: !162, line: 14, type: !34)
!177 = !DILocation(line: 14, column: 15, scope: !161)
!178 = !DILocation(line: 14, column: 21, scope: !161)
!179 = !DILocation(line: 16, column: 3, scope: !161)
!180 = !DILocation(line: 16, column: 13, scope: !161)
!181 = !DILocation(line: 16, column: 16, scope: !161)
!182 = !DILocation(line: 17, column: 19, scope: !161)
!183 = !DILocation(line: 17, column: 15, scope: !161)
!184 = !DILocation(line: 17, column: 10, scope: !161)
!185 = !DILocation(line: 17, column: 13, scope: !161)
!186 = distinct !{!186, !179, !182, !187}
!187 = !{!"llvm.loop.mustprogress"}
!188 = !DILocation(line: 18, column: 10, scope: !161)
!189 = !DILocation(line: 18, column: 3, scope: !161)
!190 = distinct !DISubprogram(name: "memset", scope: !191, file: !191, line: 12, type: !192, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !36)
!191 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!192 = !DISubroutineType(types: !193)
!193 = !{!8, !8, !17, !43}
!194 = !DILocalVariable(name: "dst", arg: 1, scope: !190, file: !191, line: 12, type: !8)
!195 = !DILocation(line: 12, column: 20, scope: !190)
!196 = !DILocalVariable(name: "s", arg: 2, scope: !190, file: !191, line: 12, type: !17)
!197 = !DILocation(line: 12, column: 29, scope: !190)
!198 = !DILocalVariable(name: "count", arg: 3, scope: !190, file: !191, line: 12, type: !43)
!199 = !DILocation(line: 12, column: 39, scope: !190)
!200 = !DILocalVariable(name: "a", scope: !190, file: !191, line: 13, type: !9)
!201 = !DILocation(line: 13, column: 9, scope: !190)
!202 = !DILocation(line: 13, column: 13, scope: !190)
!203 = !DILocation(line: 14, column: 3, scope: !190)
!204 = !DILocation(line: 14, column: 15, scope: !190)
!205 = !DILocation(line: 14, column: 18, scope: !190)
!206 = !DILocation(line: 15, column: 12, scope: !190)
!207 = !DILocation(line: 15, column: 7, scope: !190)
!208 = !DILocation(line: 15, column: 10, scope: !190)
!209 = distinct !{!209, !203, !206, !187}
!210 = !DILocation(line: 16, column: 10, scope: !190)
!211 = !DILocation(line: 16, column: 3, scope: !190)
