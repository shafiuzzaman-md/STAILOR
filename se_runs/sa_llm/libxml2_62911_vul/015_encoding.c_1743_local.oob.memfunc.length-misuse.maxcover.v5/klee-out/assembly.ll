; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/015_encoding.c_1743_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/015_encoding.c_1743_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlCharEncodingHandler = type { i8*, i32 (i8*, i32*, i8*, i32*)*, i32 (i8*, i32*, i8*, i32*)*, i8*, i8*, %struct._uconv_t*, %struct._uconv_t* }
%struct._uconv_t = type { %struct.UConverter*, %struct.UConverter*, [1024 x i16], i16*, i16* }
%struct.UConverter = type opaque

@.str = private unnamed_addr constant [9 x i8] c"name_buf\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ISO-8859-1\00", align 1
@xmlMalloc = external global i8* (i64)*, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/015_encoding.c_1743_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@xmlMemStrdup = external global i8* (i8*)*, align 8
@xmlFree = external global void (i8*)*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !66 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlCharEncodingHandler*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !70, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !74, metadata !DIExpression()), !dbg !78
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !79
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !80
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !81
  store i8 0, i8* %8, align 1, !dbg !82
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !83
  store i8* %9, i8** %2, align 8, !dbg !84
  call void @llvm.dbg.declare(metadata i8** %4, metadata !85, metadata !DIExpression()), !dbg !86
  %10 = call noalias i8* @iconv_open(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)), !dbg !87
  store i8* %10, i8** %4, align 8, !dbg !86
  call void @llvm.dbg.declare(metadata i8** %5, metadata !88, metadata !DIExpression()), !dbg !89
  %11 = call noalias i8* @iconv_open(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !90
  store i8* %11, i8** %5, align 8, !dbg !89
  %12 = load i8*, i8** %4, align 8, !dbg !91
  %13 = icmp ne i8* %12, inttoptr (i64 -1 to i8*), !dbg !93
  br i1 %13, label %14, label %55, !dbg !94

14:                                               ; preds = %0
  %15 = load i8*, i8** %5, align 8, !dbg !95
  %16 = icmp ne i8* %15, inttoptr (i64 -1 to i8*), !dbg !96
  br i1 %16, label %17, label %55, !dbg !97

17:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata %struct._xmlCharEncodingHandler** %6, metadata !98, metadata !DIExpression()), !dbg !100
  %18 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !101
  %19 = call i8* %18(i64 noundef 56), !dbg !101
  %20 = bitcast i8* %19 to %struct._xmlCharEncodingHandler*, !dbg !102
  store %struct._xmlCharEncodingHandler* %20, %struct._xmlCharEncodingHandler** %6, align 8, !dbg !100
  %21 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %6, align 8, !dbg !103
  %22 = icmp eq %struct._xmlCharEncodingHandler* %21, null, !dbg !105
  br i1 %22, label %23, label %28, !dbg !106

23:                                               ; preds = %17
  %24 = load i8*, i8** %4, align 8, !dbg !107
  %25 = call i32 @iconv_close(i8* noundef %24), !dbg !109
  %26 = load i8*, i8** %5, align 8, !dbg !110
  %27 = call i32 @iconv_close(i8* noundef %26), !dbg !111
  store i32 0, i32* %1, align 4, !dbg !112
  br label %68, !dbg !112

28:                                               ; preds = %17
  %29 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 noundef 26, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !113
  %30 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %6, align 8, !dbg !114
  %31 = bitcast %struct._xmlCharEncodingHandler* %30 to i8*, !dbg !115
  %32 = call i8* @memset(i8* %31, i32 0, i64 56), !dbg !115
  %33 = load i8* (i8*)*, i8* (i8*)** @xmlMemStrdup, align 8, !dbg !116
  %34 = load i8*, i8** %2, align 8, !dbg !117
  %35 = call i8* %33(i8* noundef %34), !dbg !116
  %36 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %6, align 8, !dbg !118
  %37 = getelementptr inbounds %struct._xmlCharEncodingHandler, %struct._xmlCharEncodingHandler* %36, i32 0, i32 0, !dbg !119
  store i8* %35, i8** %37, align 8, !dbg !120
  %38 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %6, align 8, !dbg !121
  %39 = getelementptr inbounds %struct._xmlCharEncodingHandler, %struct._xmlCharEncodingHandler* %38, i32 0, i32 0, !dbg !123
  %40 = load i8*, i8** %39, align 8, !dbg !123
  %41 = icmp eq i8* %40, null, !dbg !124
  br i1 %41, label %42, label %50, !dbg !125

42:                                               ; preds = %28
  %43 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !126
  %44 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %6, align 8, !dbg !128
  %45 = bitcast %struct._xmlCharEncodingHandler* %44 to i8*, !dbg !128
  call void %43(i8* noundef %45), !dbg !126
  %46 = load i8*, i8** %4, align 8, !dbg !129
  %47 = call i32 @iconv_close(i8* noundef %46), !dbg !130
  %48 = load i8*, i8** %5, align 8, !dbg !131
  %49 = call i32 @iconv_close(i8* noundef %48), !dbg !132
  store i32 0, i32* %1, align 4, !dbg !133
  br label %68, !dbg !133

50:                                               ; preds = %28
  %51 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %6, align 8, !dbg !134
  %52 = getelementptr inbounds %struct._xmlCharEncodingHandler, %struct._xmlCharEncodingHandler* %51, i32 0, i32 1, !dbg !135
  store i32 (i8*, i32*, i8*, i32*)* null, i32 (i8*, i32*, i8*, i32*)** %52, align 8, !dbg !136
  %53 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %6, align 8, !dbg !137
  %54 = call i32 (%struct._xmlCharEncodingHandler*, ...) bitcast (i32 (...)* @xmlFreeEncHandler to i32 (%struct._xmlCharEncodingHandler*, ...)*)(%struct._xmlCharEncodingHandler* noundef %53), !dbg !138
  br label %55, !dbg !139

55:                                               ; preds = %50, %14, %0
  %56 = load i8*, i8** %4, align 8, !dbg !140
  %57 = icmp ne i8* %56, inttoptr (i64 -1 to i8*), !dbg !142
  br i1 %57, label %58, label %61, !dbg !143

58:                                               ; preds = %55
  %59 = load i8*, i8** %4, align 8, !dbg !144
  %60 = call i32 @iconv_close(i8* noundef %59), !dbg !145
  br label %61, !dbg !145

61:                                               ; preds = %58, %55
  %62 = load i8*, i8** %5, align 8, !dbg !146
  %63 = icmp ne i8* %62, inttoptr (i64 -1 to i8*), !dbg !148
  br i1 %63, label %64, label %67, !dbg !149

64:                                               ; preds = %61
  %65 = load i8*, i8** %5, align 8, !dbg !150
  %66 = call i32 @iconv_close(i8* noundef %65), !dbg !151
  br label %67, !dbg !151

67:                                               ; preds = %64, %61
  store i32 0, i32* %1, align 4, !dbg !152
  br label %68, !dbg !152

68:                                               ; preds = %67, %42, %23
  %69 = load i32, i32* %1, align 4, !dbg !153
  ret i32 %69, !dbg !153
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare noalias i8* @iconv_open(i8* noundef, i8* noundef) #2

declare i32 @iconv_close(i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @xmlFreeEncHandler(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !154 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !161, metadata !DIExpression()), !dbg !162
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !163, metadata !DIExpression()), !dbg !164
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata i8** %7, metadata !167, metadata !DIExpression()), !dbg !168
  %8 = load i8*, i8** %4, align 8, !dbg !169
  store i8* %8, i8** %7, align 8, !dbg !168
  br label %9, !dbg !170

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !171
  %11 = add i64 %10, -1, !dbg !171
  store i64 %11, i64* %6, align 8, !dbg !171
  %12 = icmp ugt i64 %10, 0, !dbg !172
  br i1 %12, label %13, label %18, !dbg !170

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !173
  %15 = trunc i32 %14 to i8, !dbg !173
  %16 = load i8*, i8** %7, align 8, !dbg !174
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !174
  store i8* %17, i8** %7, align 8, !dbg !174
  store i8 %15, i8* %16, align 1, !dbg !175
  br label %9, !dbg !170, !llvm.loop !176

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !178
  ret i8* %19, !dbg !179
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65, !65}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/015_encoding.c_1743_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "cc92a3a099ed7c5b5e0c0d76ffb525f6")
!2 = !{!3, !6, !5}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !4, line: 29, baseType: !5)
!4 = !DIFile(filename: "/usr/include/iconv.h", directory: "", checksumkind: CSK_MD5, checksum: "edfee9bcfa398c9184cc8f95deb97c16")
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !7, line: 145, baseType: !8)
!7 = !DIFile(filename: "/usr/include/libxml2/libxml/encoding.h", directory: "", checksumkind: CSK_MD5, checksum: "807b84fade38abad3ae0d9b6af714dbc")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !7, line: 144, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !7, line: 146, size: 448, elements: !11)
!11 = !{!12, !15, !26, !28, !29, !30, !55}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !10, file: !7, line: 147, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !10, file: !7, line: 148, baseType: !16, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingInputFunc", file: !7, line: 101, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !21, !23, !24, !23}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !10, file: !7, line: 149, baseType: !27, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingOutputFunc", file: !7, line: 123, baseType: !17)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_in", scope: !10, file: !7, line: 151, baseType: !3, size: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "iconv_out", scope: !10, file: !7, line: 152, baseType: !3, size: 64, offset: 256)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_in", scope: !10, file: !7, line: 155, baseType: !31, size: 64, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uconv_t", file: !7, line: 141, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_uconv_t", file: !7, line: 134, size: 16640, elements: !34)
!34 = !{!35, !40, !41, !52, !54}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "uconv", scope: !33, file: !7, line: 135, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "UConverter", file: !38, line: 96, baseType: !39)
!38 = !DIFile(filename: "/usr/include/unicode/ucnv_err.h", directory: "", checksumkind: CSK_MD5, checksum: "a507bbb125e54d860485ec054a4a55ed")
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "UConverter", file: !38, line: 93, flags: DIFlagFwdDecl)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !33, file: !7, line: 136, baseType: !36, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_buf", scope: !33, file: !7, line: 137, baseType: !42, size: 16384, offset: 128)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 16384, elements: !50)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !44, line: 388, baseType: !45)
!44 = !DIFile(filename: "/usr/include/unicode/umachine.h", directory: "", checksumkind: CSK_MD5, checksum: "2d902ff00eac765b305cb113b74d34df")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !46, line: 25, baseType: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !48, line: 40, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !{!51}
!51 = !DISubrange(count: 1024)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_source", scope: !33, file: !7, line: 138, baseType: !53, size: 64, offset: 16512)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "pivot_target", scope: !33, file: !7, line: 139, baseType: !53, size: 64, offset: 16576)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "uconv_out", scope: !10, file: !7, line: 156, baseType: !31, size: 64, offset: 384)
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!58 = !{i32 7, !"Dwarf Version", i32 5}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = !{i32 7, !"PIC Level", i32 2}
!62 = !{i32 7, !"PIE Level", i32 2}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"Ubuntu clang version 14.0.6"}
!66 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !67, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !69)
!67 = !DISubroutineType(types: !68)
!68 = !{!20}
!69 = !{}
!70 = !DILocalVariable(name: "name", scope: !66, file: !1, line: 10, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!73 = !DILocation(line: 10, column: 17, scope: !66)
!74 = !DILocalVariable(name: "name_buf", scope: !66, file: !1, line: 11, type: !75)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 256)
!78 = !DILocation(line: 11, column: 10, scope: !66)
!79 = !DILocation(line: 12, column: 24, scope: !66)
!80 = !DILocation(line: 12, column: 5, scope: !66)
!81 = !DILocation(line: 13, column: 5, scope: !66)
!82 = !DILocation(line: 13, column: 19, scope: !66)
!83 = !DILocation(line: 14, column: 12, scope: !66)
!84 = !DILocation(line: 14, column: 10, scope: !66)
!85 = !DILocalVariable(name: "icv_in", scope: !66, file: !1, line: 16, type: !3)
!86 = !DILocation(line: 16, column: 13, scope: !66)
!87 = !DILocation(line: 16, column: 22, scope: !66)
!88 = !DILocalVariable(name: "icv_out", scope: !66, file: !1, line: 17, type: !3)
!89 = !DILocation(line: 17, column: 13, scope: !66)
!90 = !DILocation(line: 17, column: 23, scope: !66)
!91 = !DILocation(line: 19, column: 10, scope: !92)
!92 = distinct !DILexicalBlock(scope: !66, file: !1, line: 19, column: 9)
!93 = !DILocation(line: 19, column: 17, scope: !92)
!94 = !DILocation(line: 19, column: 33, scope: !92)
!95 = !DILocation(line: 19, column: 37, scope: !92)
!96 = !DILocation(line: 19, column: 45, scope: !92)
!97 = !DILocation(line: 19, column: 9, scope: !66)
!98 = !DILocalVariable(name: "enc", scope: !99, file: !1, line: 20, type: !6)
!99 = distinct !DILexicalBlock(scope: !92, file: !1, line: 19, column: 62)
!100 = !DILocation(line: 20, column: 35, scope: !99)
!101 = !DILocation(line: 20, column: 69, scope: !99)
!102 = !DILocation(line: 20, column: 41, scope: !99)
!103 = !DILocation(line: 21, column: 13, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !1, line: 21, column: 13)
!105 = !DILocation(line: 21, column: 17, scope: !104)
!106 = !DILocation(line: 21, column: 13, scope: !99)
!107 = !DILocation(line: 22, column: 25, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 21, column: 26)
!109 = !DILocation(line: 22, column: 13, scope: !108)
!110 = !DILocation(line: 23, column: 25, scope: !108)
!111 = !DILocation(line: 23, column: 13, scope: !108)
!112 = !DILocation(line: 24, column: 13, scope: !108)
!113 = !DILocation(line: 26, column: 9, scope: !99)
!114 = !DILocation(line: 27, column: 16, scope: !99)
!115 = !DILocation(line: 27, column: 9, scope: !99)
!116 = !DILocation(line: 28, column: 21, scope: !99)
!117 = !DILocation(line: 28, column: 34, scope: !99)
!118 = !DILocation(line: 28, column: 9, scope: !99)
!119 = !DILocation(line: 28, column: 14, scope: !99)
!120 = !DILocation(line: 28, column: 19, scope: !99)
!121 = !DILocation(line: 29, column: 13, scope: !122)
!122 = distinct !DILexicalBlock(scope: !99, file: !1, line: 29, column: 13)
!123 = !DILocation(line: 29, column: 18, scope: !122)
!124 = !DILocation(line: 29, column: 23, scope: !122)
!125 = !DILocation(line: 29, column: 13, scope: !99)
!126 = !DILocation(line: 30, column: 13, scope: !127)
!127 = distinct !DILexicalBlock(scope: !122, file: !1, line: 29, column: 32)
!128 = !DILocation(line: 30, column: 21, scope: !127)
!129 = !DILocation(line: 31, column: 25, scope: !127)
!130 = !DILocation(line: 31, column: 13, scope: !127)
!131 = !DILocation(line: 32, column: 25, scope: !127)
!132 = !DILocation(line: 32, column: 13, scope: !127)
!133 = !DILocation(line: 33, column: 13, scope: !127)
!134 = !DILocation(line: 35, column: 9, scope: !99)
!135 = !DILocation(line: 35, column: 14, scope: !99)
!136 = !DILocation(line: 35, column: 20, scope: !99)
!137 = !DILocation(line: 36, column: 27, scope: !99)
!138 = !DILocation(line: 36, column: 9, scope: !99)
!139 = !DILocation(line: 37, column: 5, scope: !99)
!140 = !DILocation(line: 39, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !66, file: !1, line: 39, column: 9)
!142 = !DILocation(line: 39, column: 16, scope: !141)
!143 = !DILocation(line: 39, column: 9, scope: !66)
!144 = !DILocation(line: 39, column: 44, scope: !141)
!145 = !DILocation(line: 39, column: 32, scope: !141)
!146 = !DILocation(line: 40, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !66, file: !1, line: 40, column: 9)
!148 = !DILocation(line: 40, column: 17, scope: !147)
!149 = !DILocation(line: 40, column: 9, scope: !66)
!150 = !DILocation(line: 40, column: 45, scope: !147)
!151 = !DILocation(line: 40, column: 33, scope: !147)
!152 = !DILocation(line: 41, column: 5, scope: !66)
!153 = !DILocation(line: 42, column: 1, scope: !66)
!154 = distinct !DISubprogram(name: "memset", scope: !155, file: !155, line: 12, type: !156, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !69)
!155 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!156 = !DISubroutineType(types: !157)
!157 = !{!5, !5, !20, !158}
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !159, line: 46, baseType: !160)
!159 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!160 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!161 = !DILocalVariable(name: "dst", arg: 1, scope: !154, file: !155, line: 12, type: !5)
!162 = !DILocation(line: 12, column: 20, scope: !154)
!163 = !DILocalVariable(name: "s", arg: 2, scope: !154, file: !155, line: 12, type: !20)
!164 = !DILocation(line: 12, column: 29, scope: !154)
!165 = !DILocalVariable(name: "count", arg: 3, scope: !154, file: !155, line: 12, type: !158)
!166 = !DILocation(line: 12, column: 39, scope: !154)
!167 = !DILocalVariable(name: "a", scope: !154, file: !155, line: 13, type: !13)
!168 = !DILocation(line: 13, column: 9, scope: !154)
!169 = !DILocation(line: 13, column: 13, scope: !154)
!170 = !DILocation(line: 14, column: 3, scope: !154)
!171 = !DILocation(line: 14, column: 15, scope: !154)
!172 = !DILocation(line: 14, column: 18, scope: !154)
!173 = !DILocation(line: 15, column: 12, scope: !154)
!174 = !DILocation(line: 15, column: 7, scope: !154)
!175 = !DILocation(line: 15, column: 10, scope: !154)
!176 = distinct !{!176, !170, !173, !177}
!177 = !{!"llvm.loop.mustprogress"}
!178 = !DILocation(line: 16, column: 10, scope: !154)
!179 = !DILocation(line: 16, column: 3, scope: !154)
