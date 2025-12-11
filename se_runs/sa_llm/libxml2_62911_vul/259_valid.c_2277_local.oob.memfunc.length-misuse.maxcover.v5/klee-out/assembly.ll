; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/259_valid.c_2277_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/259_valid.c_2277_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlValidCtxt = type { i8* }
%struct._xmlNotation = type { i8*, i8*, i8* }
%struct._xmlElement = type { i8* }
%struct._xmlElementContent = type { i8* }
%struct._xmlEnumeration = type { i8* }

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/259_valid.c_2277_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlAddNotationDecl = private unnamed_addr constant [65 x i8] c"xmlNotationPtr xmlAddNotationDecl(xmlValidCtxtPtr, const char *)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlVErrMemory(%struct._xmlValidCtxt* noundef %0, i8* noundef %1) #0 !dbg !28 {
  %3 = alloca %struct._xmlValidCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlValidCtxt* %0, %struct._xmlValidCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlValidCtxt** %3, metadata !38, metadata !DIExpression()), !dbg !39
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !40, metadata !DIExpression()), !dbg !41
  ret void, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !43 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !49, metadata !DIExpression()), !dbg !50
  %3 = load i64, i64* %2, align 8, !dbg !51
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !52
  ret i8* %4, !dbg !53
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !54 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !57, metadata !DIExpression()), !dbg !58
  %6 = load i8*, i8** %3, align 8, !dbg !59
  %7 = icmp eq i8* %6, null, !dbg !61
  br i1 %7, label %8, label %9, !dbg !62

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !63
  br label %24, !dbg !63

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !64, metadata !DIExpression()), !dbg !65
  %10 = load i8*, i8** %3, align 8, !dbg !66
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !67
  %12 = add i64 %11, 1, !dbg !68
  store i64 %12, i64* %4, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i8** %5, metadata !69, metadata !DIExpression()), !dbg !70
  %13 = load i64, i64* %4, align 8, !dbg !71
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !72
  store i8* %14, i8** %5, align 8, !dbg !70
  %15 = load i8*, i8** %5, align 8, !dbg !73
  %16 = icmp ne i8* %15, null, !dbg !73
  br i1 %16, label %17, label %22, !dbg !75

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !76
  %19 = load i8*, i8** %3, align 8, !dbg !77
  %20 = load i64, i64* %4, align 8, !dbg !78
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !79
  br label %22, !dbg !79

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !80
  store i8* %23, i8** %2, align 8, !dbg !81
  br label %24, !dbg !81

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !82
  ret i8* %25, !dbg !82
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNotation* @xmlAddNotationDecl(%struct._xmlValidCtxt* noundef %0, i8* noundef %1) #0 !dbg !83 {
  %3 = alloca %struct._xmlNotation*, align 8
  %4 = alloca %struct._xmlValidCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlNotation*, align 8
  store %struct._xmlValidCtxt* %0, %struct._xmlValidCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlValidCtxt** %4, metadata !86, metadata !DIExpression()), !dbg !87
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata %struct._xmlNotation** %6, metadata !90, metadata !DIExpression()), !dbg !91
  %7 = call i8* @xmlMalloc(i64 noundef 24), !dbg !92
  %8 = bitcast i8* %7 to %struct._xmlNotation*, !dbg !93
  store %struct._xmlNotation* %8, %struct._xmlNotation** %6, align 8, !dbg !94
  %9 = load %struct._xmlNotation*, %struct._xmlNotation** %6, align 8, !dbg !95
  %10 = icmp eq %struct._xmlNotation* %9, null, !dbg !97
  br i1 %10, label %11, label %13, !dbg !98

11:                                               ; preds = %2
  %12 = load %struct._xmlValidCtxt*, %struct._xmlValidCtxt** %4, align 8, !dbg !99
  call void @xmlVErrMemory(%struct._xmlValidCtxt* noundef %12, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !101
  store %struct._xmlNotation* null, %struct._xmlNotation** %3, align 8, !dbg !102
  br label %23, !dbg !102

13:                                               ; preds = %2
  %14 = load %struct._xmlNotation*, %struct._xmlNotation** %6, align 8, !dbg !103
  %15 = bitcast %struct._xmlNotation* %14 to i8*, !dbg !104
  %16 = call i8* @memset(i8* %15, i32 0, i64 24), !dbg !104
  %17 = load i8*, i8** %5, align 8, !dbg !105
  %18 = call i8* @xmlStrdup(i8* noundef %17), !dbg !106
  %19 = load %struct._xmlNotation*, %struct._xmlNotation** %6, align 8, !dbg !107
  %20 = getelementptr inbounds %struct._xmlNotation, %struct._xmlNotation* %19, i32 0, i32 0, !dbg !108
  store i8* %18, i8** %20, align 8, !dbg !109
  %21 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.xmlAddNotationDecl, i64 0, i64 0)), !dbg !110
  %22 = load %struct._xmlNotation*, %struct._xmlNotation** %6, align 8, !dbg !111
  store %struct._xmlNotation* %22, %struct._xmlNotation** %3, align 8, !dbg !112
  br label %23, !dbg !112

23:                                               ; preds = %13, %11
  %24 = load %struct._xmlNotation*, %struct._xmlNotation** %3, align 8, !dbg !113
  ret %struct._xmlNotation* %24, !dbg !113
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlElement* @xmlAddElementDecl(%struct._xmlValidCtxt* noundef %0, i8* noundef %1, i32 noundef %2, %struct._xmlElementContent* noundef %3, %struct._xmlEnumeration* noundef %4) #0 !dbg !114 {
  %6 = alloca %struct._xmlValidCtxt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._xmlElementContent*, align 8
  %10 = alloca %struct._xmlEnumeration*, align 8
  store %struct._xmlValidCtxt* %0, %struct._xmlValidCtxt** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlValidCtxt** %6, metadata !136, metadata !DIExpression()), !dbg !137
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !138, metadata !DIExpression()), !dbg !139
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !140, metadata !DIExpression()), !dbg !141
  store %struct._xmlElementContent* %3, %struct._xmlElementContent** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %9, metadata !142, metadata !DIExpression()), !dbg !143
  store %struct._xmlEnumeration* %4, %struct._xmlEnumeration** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlEnumeration** %10, metadata !144, metadata !DIExpression()), !dbg !145
  %11 = load %struct._xmlValidCtxt*, %struct._xmlValidCtxt** %6, align 8, !dbg !146
  %12 = load i8*, i8** %7, align 8, !dbg !147
  %13 = call %struct._xmlNotation* @xmlAddNotationDecl(%struct._xmlValidCtxt* noundef %11, i8* noundef %12), !dbg !148
  ret %struct._xmlElement* null, !dbg !149
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !150 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct._xmlValidCtxt, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !153, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata %struct._xmlValidCtxt* %3, metadata !158, metadata !DIExpression()), !dbg !159
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !160
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !161
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !162
  %6 = load i8, i8* %5, align 1, !dbg !162
  %7 = sext i8 %6 to i32, !dbg !162
  %8 = icmp eq i32 %7, 0, !dbg !163
  %9 = zext i1 %8 to i32, !dbg !163
  %10 = sext i32 %9 to i64, !dbg !162
  call void @klee_assume(i64 noundef %10), !dbg !164
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !165
  %12 = call %struct._xmlElement* @xmlAddElementDecl(%struct._xmlValidCtxt* noundef %3, i8* noundef %11, i32 noundef 0, %struct._xmlElementContent* noundef null, %struct._xmlEnumeration* noundef null), !dbg !166
  ret i32 0, !dbg !167
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #7

declare void @klee_assume(i64 noundef) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !168 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !174, metadata !DIExpression()), !dbg !175
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !176, metadata !DIExpression()), !dbg !177
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i8** %7, metadata !180, metadata !DIExpression()), !dbg !181
  %9 = load i8*, i8** %4, align 8, !dbg !182
  store i8* %9, i8** %7, align 8, !dbg !181
  call void @llvm.dbg.declare(metadata i8** %8, metadata !183, metadata !DIExpression()), !dbg !184
  %10 = load i8*, i8** %5, align 8, !dbg !185
  store i8* %10, i8** %8, align 8, !dbg !184
  br label %11, !dbg !186

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !187
  %13 = add i64 %12, -1, !dbg !187
  store i64 %13, i64* %6, align 8, !dbg !187
  %14 = icmp ugt i64 %12, 0, !dbg !188
  br i1 %14, label %15, label %21, !dbg !186

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !189
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !189
  store i8* %17, i8** %8, align 8, !dbg !189
  %18 = load i8, i8* %16, align 1, !dbg !190
  %19 = load i8*, i8** %7, align 8, !dbg !191
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !191
  store i8* %20, i8** %7, align 8, !dbg !191
  store i8 %18, i8* %19, align 1, !dbg !192
  br label %11, !dbg !186, !llvm.loop !193

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !195
  ret i8* %22, !dbg !196
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !197 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !201, metadata !DIExpression()), !dbg !202
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !203, metadata !DIExpression()), !dbg !204
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata i8** %7, metadata !207, metadata !DIExpression()), !dbg !208
  %8 = load i8*, i8** %4, align 8, !dbg !209
  store i8* %8, i8** %7, align 8, !dbg !208
  br label %9, !dbg !210

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !211
  %11 = add i64 %10, -1, !dbg !211
  store i64 %11, i64* %6, align 8, !dbg !211
  %12 = icmp ugt i64 %10, 0, !dbg !212
  br i1 %12, label %13, label %18, !dbg !210

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !213
  %15 = trunc i32 %14 to i8, !dbg !213
  %16 = load i8*, i8** %7, align 8, !dbg !214
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !214
  store i8* %17, i8** %7, align 8, !dbg !214
  store i8 %15, i8* %16, align 1, !dbg !215
  br label %9, !dbg !210, !llvm.loop !216

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !217
  ret i8* %19, !dbg !218
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

!llvm.dbg.cu = !{!0, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27, !27, !27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/259_valid.c_2277_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "5ffd26ec9ab7ce5f0d265285c62ddd72")
!2 = !{!3, !4, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNotationPtr", file: !1, line: 11, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNotation", file: !1, line: 10, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNotation", file: !1, line: 43, size: 192, elements: !10)
!10 = !{!11, !14, !15}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !9, file: !1, line: 44, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "PublicID", scope: !9, file: !1, line: 45, baseType: !12, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !9, file: !1, line: 46, baseType: !12, size: 64, offset: 128)
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = distinct !DISubprogram(name: "xmlVErrMemory", scope: !1, file: !1, line: 26, type: !29, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !12}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidCtxtPtr", file: !1, line: 14, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidCtxt", file: !1, line: 13, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidCtxt", file: !1, line: 65, size: 64, elements: !35)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !34, file: !1, line: 66, baseType: !3, size: 64)
!37 = !{}
!38 = !DILocalVariable(name: "ctxt", arg: 1, scope: !28, file: !1, line: 26, type: !31)
!39 = !DILocation(line: 26, column: 36, scope: !28)
!40 = !DILocalVariable(name: "msg", arg: 2, scope: !28, file: !1, line: 26, type: !12)
!41 = !DILocation(line: 26, column: 54, scope: !28)
!42 = !DILocation(line: 28, column: 1, scope: !28)
!43 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 30, type: !44, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!44 = !DISubroutineType(types: !45)
!45 = !{!3, !46}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 46, baseType: !48)
!47 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DILocalVariable(name: "size", arg: 1, scope: !43, file: !1, line: 30, type: !46)
!50 = !DILocation(line: 30, column: 24, scope: !43)
!51 = !DILocation(line: 31, column: 19, scope: !43)
!52 = !DILocation(line: 31, column: 12, scope: !43)
!53 = !DILocation(line: 31, column: 5, scope: !43)
!54 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 34, type: !55, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!55 = !DISubroutineType(types: !56)
!56 = !{!4, !12}
!57 = !DILocalVariable(name: "cur", arg: 1, scope: !54, file: !1, line: 34, type: !12)
!58 = !DILocation(line: 34, column: 29, scope: !54)
!59 = !DILocation(line: 35, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !54, file: !1, line: 35, column: 9)
!61 = !DILocation(line: 35, column: 13, scope: !60)
!62 = !DILocation(line: 35, column: 9, scope: !54)
!63 = !DILocation(line: 35, column: 22, scope: !60)
!64 = !DILocalVariable(name: "len", scope: !54, file: !1, line: 36, type: !46)
!65 = !DILocation(line: 36, column: 12, scope: !54)
!66 = !DILocation(line: 36, column: 25, scope: !54)
!67 = !DILocation(line: 36, column: 18, scope: !54)
!68 = !DILocation(line: 36, column: 30, scope: !54)
!69 = !DILocalVariable(name: "copy", scope: !54, file: !1, line: 37, type: !4)
!70 = !DILocation(line: 37, column: 11, scope: !54)
!71 = !DILocation(line: 37, column: 33, scope: !54)
!72 = !DILocation(line: 37, column: 26, scope: !54)
!73 = !DILocation(line: 38, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !54, file: !1, line: 38, column: 9)
!75 = !DILocation(line: 38, column: 9, scope: !54)
!76 = !DILocation(line: 38, column: 22, scope: !74)
!77 = !DILocation(line: 38, column: 28, scope: !74)
!78 = !DILocation(line: 38, column: 33, scope: !74)
!79 = !DILocation(line: 38, column: 15, scope: !74)
!80 = !DILocation(line: 39, column: 12, scope: !54)
!81 = !DILocation(line: 39, column: 5, scope: !54)
!82 = !DILocation(line: 40, column: 1, scope: !54)
!83 = distinct !DISubprogram(name: "xmlAddNotationDecl", scope: !1, file: !1, line: 70, type: !84, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!84 = !DISubroutineType(types: !85)
!85 = !{!6, !31, !12}
!86 = !DILocalVariable(name: "ctxt", arg: 1, scope: !83, file: !1, line: 70, type: !31)
!87 = !DILocation(line: 70, column: 51, scope: !83)
!88 = !DILocalVariable(name: "name", arg: 2, scope: !83, file: !1, line: 70, type: !12)
!89 = !DILocation(line: 70, column: 69, scope: !83)
!90 = !DILocalVariable(name: "ret", scope: !83, file: !1, line: 71, type: !6)
!91 = !DILocation(line: 71, column: 20, scope: !83)
!92 = !DILocation(line: 74, column: 28, scope: !83)
!93 = !DILocation(line: 74, column: 11, scope: !83)
!94 = !DILocation(line: 74, column: 9, scope: !83)
!95 = !DILocation(line: 75, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !83, file: !1, line: 75, column: 9)
!97 = !DILocation(line: 75, column: 13, scope: !96)
!98 = !DILocation(line: 75, column: 9, scope: !83)
!99 = !DILocation(line: 76, column: 23, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !1, line: 75, column: 22)
!101 = !DILocation(line: 76, column: 9, scope: !100)
!102 = !DILocation(line: 77, column: 9, scope: !100)
!103 = !DILocation(line: 81, column: 12, scope: !83)
!104 = !DILocation(line: 81, column: 5, scope: !83)
!105 = !DILocation(line: 86, column: 27, scope: !83)
!106 = !DILocation(line: 86, column: 17, scope: !83)
!107 = !DILocation(line: 86, column: 5, scope: !83)
!108 = !DILocation(line: 86, column: 10, scope: !83)
!109 = !DILocation(line: 86, column: 15, scope: !83)
!110 = !DILocation(line: 92, column: 5, scope: !83)
!111 = !DILocation(line: 94, column: 12, scope: !83)
!112 = !DILocation(line: 94, column: 5, scope: !83)
!113 = !DILocation(line: 95, column: 1, scope: !83)
!114 = distinct !DISubprogram(name: "xmlAddElementDecl", scope: !1, file: !1, line: 98, type: !115, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!115 = !DISubroutineType(types: !116)
!116 = !{!117, !31, !12, !123, !124, !130}
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementPtr", file: !1, line: 17, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElement", file: !1, line: 16, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElement", file: !1, line: 50, size: 64, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !120, file: !1, line: 51, baseType: !3, size: 64)
!123 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !1, line: 20, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !1, line: 19, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !1, line: 55, size: 64, elements: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !127, file: !1, line: 56, baseType: !3, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumerationPtr", file: !1, line: 23, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumeration", file: !1, line: 22, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEnumeration", file: !1, line: 60, size: 64, elements: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !133, file: !1, line: 61, baseType: !3, size: 64)
!136 = !DILocalVariable(name: "ctxt", arg: 1, scope: !114, file: !1, line: 98, type: !31)
!137 = !DILocation(line: 98, column: 49, scope: !114)
!138 = !DILocalVariable(name: "name", arg: 2, scope: !114, file: !1, line: 98, type: !12)
!139 = !DILocation(line: 98, column: 67, scope: !114)
!140 = !DILocalVariable(name: "type", arg: 3, scope: !114, file: !1, line: 99, type: !123)
!141 = !DILocation(line: 99, column: 37, scope: !114)
!142 = !DILocalVariable(name: "content", arg: 4, scope: !114, file: !1, line: 99, type: !124)
!143 = !DILocation(line: 99, column: 64, scope: !114)
!144 = !DILocalVariable(name: "tree", arg: 5, scope: !114, file: !1, line: 100, type: !130)
!145 = !DILocation(line: 100, column: 51, scope: !114)
!146 = !DILocation(line: 103, column: 24, scope: !114)
!147 = !DILocation(line: 103, column: 30, scope: !114)
!148 = !DILocation(line: 103, column: 5, scope: !114)
!149 = !DILocation(line: 104, column: 5, scope: !114)
!150 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 107, type: !151, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!151 = !DISubroutineType(types: !152)
!152 = !{!123}
!153 = !DILocalVariable(name: "name", scope: !150, file: !1, line: 109, type: !154)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 256)
!157 = !DILocation(line: 109, column: 10, scope: !150)
!158 = !DILocalVariable(name: "ctxt", scope: !150, file: !1, line: 110, type: !33)
!159 = !DILocation(line: 110, column: 18, scope: !150)
!160 = !DILocation(line: 113, column: 24, scope: !150)
!161 = !DILocation(line: 113, column: 5, scope: !150)
!162 = !DILocation(line: 115, column: 17, scope: !150)
!163 = !DILocation(line: 115, column: 27, scope: !150)
!164 = !DILocation(line: 115, column: 5, scope: !150)
!165 = !DILocation(line: 118, column: 30, scope: !150)
!166 = !DILocation(line: 118, column: 5, scope: !150)
!167 = !DILocation(line: 120, column: 5, scope: !150)
!168 = distinct !DISubprogram(name: "memcpy", scope: !169, file: !169, line: 12, type: !170, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !37)
!169 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!170 = !DISubroutineType(types: !171)
!171 = !{!3, !3, !172, !46}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!174 = !DILocalVariable(name: "destaddr", arg: 1, scope: !168, file: !169, line: 12, type: !3)
!175 = !DILocation(line: 12, column: 20, scope: !168)
!176 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !168, file: !169, line: 12, type: !172)
!177 = !DILocation(line: 12, column: 42, scope: !168)
!178 = !DILocalVariable(name: "len", arg: 3, scope: !168, file: !169, line: 12, type: !46)
!179 = !DILocation(line: 12, column: 58, scope: !168)
!180 = !DILocalVariable(name: "dest", scope: !168, file: !169, line: 13, type: !4)
!181 = !DILocation(line: 13, column: 9, scope: !168)
!182 = !DILocation(line: 13, column: 16, scope: !168)
!183 = !DILocalVariable(name: "src", scope: !168, file: !169, line: 14, type: !12)
!184 = !DILocation(line: 14, column: 15, scope: !168)
!185 = !DILocation(line: 14, column: 21, scope: !168)
!186 = !DILocation(line: 16, column: 3, scope: !168)
!187 = !DILocation(line: 16, column: 13, scope: !168)
!188 = !DILocation(line: 16, column: 16, scope: !168)
!189 = !DILocation(line: 17, column: 19, scope: !168)
!190 = !DILocation(line: 17, column: 15, scope: !168)
!191 = !DILocation(line: 17, column: 10, scope: !168)
!192 = !DILocation(line: 17, column: 13, scope: !168)
!193 = distinct !{!193, !186, !189, !194}
!194 = !{!"llvm.loop.mustprogress"}
!195 = !DILocation(line: 18, column: 10, scope: !168)
!196 = !DILocation(line: 18, column: 3, scope: !168)
!197 = distinct !DISubprogram(name: "memset", scope: !198, file: !198, line: 12, type: !199, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !37)
!198 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!199 = !DISubroutineType(types: !200)
!200 = !{!3, !3, !123, !46}
!201 = !DILocalVariable(name: "dst", arg: 1, scope: !197, file: !198, line: 12, type: !3)
!202 = !DILocation(line: 12, column: 20, scope: !197)
!203 = !DILocalVariable(name: "s", arg: 2, scope: !197, file: !198, line: 12, type: !123)
!204 = !DILocation(line: 12, column: 29, scope: !197)
!205 = !DILocalVariable(name: "count", arg: 3, scope: !197, file: !198, line: 12, type: !46)
!206 = !DILocation(line: 12, column: 39, scope: !197)
!207 = !DILocalVariable(name: "a", scope: !197, file: !198, line: 13, type: !4)
!208 = !DILocation(line: 13, column: 9, scope: !197)
!209 = !DILocation(line: 13, column: 13, scope: !197)
!210 = !DILocation(line: 14, column: 3, scope: !197)
!211 = !DILocation(line: 14, column: 15, scope: !197)
!212 = !DILocation(line: 14, column: 18, scope: !197)
!213 = !DILocation(line: 15, column: 12, scope: !197)
!214 = !DILocation(line: 15, column: 7, scope: !197)
!215 = !DILocation(line: 15, column: 10, scope: !197)
!216 = distinct !{!216, !210, !213, !194}
!217 = !DILocation(line: 16, column: 10, scope: !197)
!218 = !DILocation(line: 16, column: 3, scope: !197)
