; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/307_xmlschemastypes.c_232_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/307_xmlschemastypes.c_232_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaVal = type { i32, i8*, %struct._xmlSchemaVal* }
%struct._xmlSchemaFacet = type { i32, i32, %struct._xmlSchemaFacet* }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [113 x i8] c"se_runs/sa_llm/libxml2_55980_vul/307_xmlschemastypes.c_232_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"facet_value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !116 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !123, metadata !DIExpression()), !dbg !124
  %3 = load i64, i64* %2, align 8, !dbg !125
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !126
  ret i8* %4, !dbg !127
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !128 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlSchemaVal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlSchemaFacet*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaVal** %3, metadata !133, metadata !DIExpression()), !dbg !134
  %6 = bitcast i32* %2 to i8*, !dbg !135
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !136
  %7 = load i32, i32* %2, align 4, !dbg !137
  %8 = icmp uge i32 %7, 1, !dbg !138
  br i1 %8, label %9, label %12, !dbg !139

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4, !dbg !140
  %11 = icmp ule i32 %10, 64, !dbg !141
  br label %12

12:                                               ; preds = %9, %0
  %13 = phi i1 [ false, %0 ], [ %11, %9 ], !dbg !142
  %14 = zext i1 %13 to i32, !dbg !139
  %15 = sext i32 %14 to i64, !dbg !137
  call void @klee_assume(i64 noundef %15), !dbg !143
  %16 = load i32, i32* %2, align 4, !dbg !144
  %17 = call %struct._xmlSchemaVal* @xmlSchemaNewValue(i32 noundef %16), !dbg !145
  store %struct._xmlSchemaVal* %17, %struct._xmlSchemaVal** %3, align 8, !dbg !146
  %18 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !147
  %19 = icmp ne %struct._xmlSchemaVal* %18, null, !dbg !149
  br i1 %19, label %20, label %24, !dbg !150

20:                                               ; preds = %12
  %21 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.2, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !151
  %22 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !153
  %23 = bitcast %struct._xmlSchemaVal* %22 to i8*, !dbg !153
  call void @free(i8* noundef %23) #7, !dbg !154
  br label %24, !dbg !155

24:                                               ; preds = %20, %12
  call void @llvm.dbg.declare(metadata i32* %4, metadata !156, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaFacet** %5, metadata !159, metadata !DIExpression()), !dbg !160
  %25 = bitcast i32* %4 to i8*, !dbg !161
  call void @klee_make_symbolic(i8* noundef %25, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)), !dbg !162
  %26 = load i32, i32* %4, align 4, !dbg !163
  %27 = call %struct._xmlSchemaFacet* @xmlSchemaNewMinLengthFacet(i32 noundef %26), !dbg !164
  store %struct._xmlSchemaFacet* %27, %struct._xmlSchemaFacet** %5, align 8, !dbg !165
  %28 = load %struct._xmlSchemaFacet*, %struct._xmlSchemaFacet** %5, align 8, !dbg !166
  %29 = icmp ne %struct._xmlSchemaFacet* %28, null, !dbg !168
  br i1 %29, label %30, label %33, !dbg !169

30:                                               ; preds = %24
  %31 = load %struct._xmlSchemaFacet*, %struct._xmlSchemaFacet** %5, align 8, !dbg !170
  %32 = bitcast %struct._xmlSchemaFacet* %31 to i8*, !dbg !170
  call void @free(i8* noundef %32) #7, !dbg !172
  br label %33, !dbg !173

33:                                               ; preds = %30, %24
  ret i32 0, !dbg !174
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlSchemaVal* @xmlSchemaNewValue(i32 noundef %0) #0 !dbg !175 {
  %2 = alloca %struct._xmlSchemaVal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlSchemaVal*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaVal** %4, metadata !180, metadata !DIExpression()), !dbg !181
  %5 = call i8* @xmlMalloc(i64 noundef 24), !dbg !182
  %6 = bitcast i8* %5 to %struct._xmlSchemaVal*, !dbg !183
  store %struct._xmlSchemaVal* %6, %struct._xmlSchemaVal** %4, align 8, !dbg !184
  %7 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !185
  %8 = icmp eq %struct._xmlSchemaVal* %7, null, !dbg !187
  br i1 %8, label %9, label %10, !dbg !188

9:                                                ; preds = %1
  store %struct._xmlSchemaVal* null, %struct._xmlSchemaVal** %2, align 8, !dbg !189
  br label %18, !dbg !189

10:                                               ; preds = %1
  %11 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !191
  %12 = bitcast %struct._xmlSchemaVal* %11 to i8*, !dbg !192
  %13 = call i8* @memset(i8* %12, i32 0, i64 24), !dbg !192
  %14 = load i32, i32* %3, align 4, !dbg !193
  %15 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !194
  %16 = getelementptr inbounds %struct._xmlSchemaVal, %struct._xmlSchemaVal* %15, i32 0, i32 0, !dbg !195
  store i32 %14, i32* %16, align 8, !dbg !196
  %17 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !197
  store %struct._xmlSchemaVal* %17, %struct._xmlSchemaVal** %2, align 8, !dbg !198
  br label %18, !dbg !198

18:                                               ; preds = %10, %9
  %19 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %2, align 8, !dbg !199
  ret %struct._xmlSchemaVal* %19, !dbg !199
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlSchemaFacet* @xmlSchemaNewMinLengthFacet(i32 noundef %0) #0 !dbg !200 {
  %2 = alloca %struct._xmlSchemaFacet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlSchemaFacet*, align 8
  %5 = alloca %struct._xmlSchemaVal*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaFacet** %4, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaVal** %5, metadata !207, metadata !DIExpression()), !dbg !208
  %6 = call %struct._xmlSchemaVal* @xmlSchemaNewValue(i32 noundef 22), !dbg !209
  store %struct._xmlSchemaVal* %6, %struct._xmlSchemaVal** %5, align 8, !dbg !210
  %7 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %5, align 8, !dbg !211
  %8 = icmp eq %struct._xmlSchemaVal* %7, null, !dbg !213
  br i1 %8, label %9, label %10, !dbg !214

9:                                                ; preds = %1
  store %struct._xmlSchemaFacet* null, %struct._xmlSchemaFacet** %2, align 8, !dbg !215
  br label %29, !dbg !215

10:                                               ; preds = %1
  %11 = call i8* @xmlMalloc(i64 noundef 16), !dbg !217
  %12 = bitcast i8* %11 to %struct._xmlSchemaFacet*, !dbg !218
  store %struct._xmlSchemaFacet* %12, %struct._xmlSchemaFacet** %4, align 8, !dbg !219
  %13 = load %struct._xmlSchemaFacet*, %struct._xmlSchemaFacet** %4, align 8, !dbg !220
  %14 = icmp eq %struct._xmlSchemaFacet* %13, null, !dbg !222
  br i1 %14, label %15, label %18, !dbg !223

15:                                               ; preds = %10
  %16 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %5, align 8, !dbg !224
  %17 = bitcast %struct._xmlSchemaVal* %16 to i8*, !dbg !224
  call void @free(i8* noundef %17) #7, !dbg !226
  store %struct._xmlSchemaFacet* null, %struct._xmlSchemaFacet** %2, align 8, !dbg !227
  br label %29, !dbg !227

18:                                               ; preds = %10
  %19 = load %struct._xmlSchemaFacet*, %struct._xmlSchemaFacet** %4, align 8, !dbg !228
  %20 = getelementptr inbounds %struct._xmlSchemaFacet, %struct._xmlSchemaFacet* %19, i32 0, i32 0, !dbg !229
  store i32 2, i32* %20, align 8, !dbg !230
  %21 = load i32, i32* %3, align 4, !dbg !231
  %22 = load %struct._xmlSchemaFacet*, %struct._xmlSchemaFacet** %4, align 8, !dbg !232
  %23 = getelementptr inbounds %struct._xmlSchemaFacet, %struct._xmlSchemaFacet* %22, i32 0, i32 1, !dbg !233
  store i32 %21, i32* %23, align 4, !dbg !234
  %24 = load %struct._xmlSchemaFacet*, %struct._xmlSchemaFacet** %4, align 8, !dbg !235
  %25 = getelementptr inbounds %struct._xmlSchemaFacet, %struct._xmlSchemaFacet* %24, i32 0, i32 2, !dbg !236
  store %struct._xmlSchemaFacet* null, %struct._xmlSchemaFacet** %25, align 8, !dbg !237
  %26 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %5, align 8, !dbg !238
  %27 = bitcast %struct._xmlSchemaVal* %26 to i8*, !dbg !238
  call void @free(i8* noundef %27) #7, !dbg !239
  %28 = load %struct._xmlSchemaFacet*, %struct._xmlSchemaFacet** %4, align 8, !dbg !240
  store %struct._xmlSchemaFacet* %28, %struct._xmlSchemaFacet** %2, align 8, !dbg !241
  br label %29, !dbg !241

29:                                               ; preds = %18, %15, %9
  %30 = load %struct._xmlSchemaFacet*, %struct._xmlSchemaFacet** %2, align 8, !dbg !242
  ret %struct._xmlSchemaFacet* %30, !dbg !242
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !243 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !247, metadata !DIExpression()), !dbg !248
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !249, metadata !DIExpression()), !dbg !250
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !251, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata i8** %7, metadata !253, metadata !DIExpression()), !dbg !256
  %8 = load i8*, i8** %4, align 8, !dbg !257
  store i8* %8, i8** %7, align 8, !dbg !256
  br label %9, !dbg !258

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !259
  %11 = add i64 %10, -1, !dbg !259
  store i64 %11, i64* %6, align 8, !dbg !259
  %12 = icmp ugt i64 %10, 0, !dbg !260
  br i1 %12, label %13, label %18, !dbg !258

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !261
  %15 = trunc i32 %14 to i8, !dbg !261
  %16 = load i8*, i8** %7, align 8, !dbg !262
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !262
  store i8* %17, i8** %7, align 8, !dbg !262
  store i8 %15, i8* %16, align 1, !dbg !263
  br label %9, !dbg !258, !llvm.loop !264

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !266
  ret i8* %19, !dbg !267
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115, !115}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !85, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/307_xmlschemastypes.c_232_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "5024d5d5b3a20be430c3ced6652d7155")
!2 = !{!3, !70}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 26, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!6 = !DIEnumerator(name: "XML_SCHEMA_TYPE_BASIC", value: 1)
!7 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ANY", value: 2)
!8 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ANYTYPE", value: 3)
!9 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ANYATTRIBUTE", value: 4)
!10 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ANYURI", value: 5)
!11 = !DIEnumerator(name: "XML_SCHEMA_TYPE_STRING", value: 6)
!12 = !DIEnumerator(name: "XML_SCHEMA_TYPE_NORMALIZEDSTRING", value: 7)
!13 = !DIEnumerator(name: "XML_SCHEMA_TYPE_TOKEN", value: 8)
!14 = !DIEnumerator(name: "XML_SCHEMA_TYPE_LANGUAGE", value: 9)
!15 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ID", value: 10)
!16 = !DIEnumerator(name: "XML_SCHEMA_TYPE_IDREF", value: 11)
!17 = !DIEnumerator(name: "XML_SCHEMA_TYPE_IDREFS", value: 12)
!18 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ENTITY", value: 13)
!19 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ENTITIES", value: 14)
!20 = !DIEnumerator(name: "XML_SCHEMA_TYPE_NMTOKEN", value: 15)
!21 = !DIEnumerator(name: "XML_SCHEMA_TYPE_NMTOKENS", value: 16)
!22 = !DIEnumerator(name: "XML_SCHEMA_TYPE_NAME", value: 17)
!23 = !DIEnumerator(name: "XML_SCHEMA_TYPE_QNAME", value: 18)
!24 = !DIEnumerator(name: "XML_SCHEMA_TYPE_NCNAME", value: 19)
!25 = !DIEnumerator(name: "XML_SCHEMA_TYPE_BOOLEAN", value: 20)
!26 = !DIEnumerator(name: "XML_SCHEMA_TYPE_INTEGER", value: 21)
!27 = !DIEnumerator(name: "XML_SCHEMA_TYPE_INT", value: 22)
!28 = !DIEnumerator(name: "XML_SCHEMA_TYPE_BYTE", value: 23)
!29 = !DIEnumerator(name: "XML_SCHEMA_TYPE_SHORT", value: 24)
!30 = !DIEnumerator(name: "XML_SCHEMA_TYPE_LONG", value: 25)
!31 = !DIEnumerator(name: "XML_SCHEMA_TYPE_NEGATIVEINTEGER", value: 26)
!32 = !DIEnumerator(name: "XML_SCHEMA_TYPE_NONNEGATIVEINTEGER", value: 27)
!33 = !DIEnumerator(name: "XML_SCHEMA_TYPE_POSITIVEINTEGER", value: 28)
!34 = !DIEnumerator(name: "XML_SCHEMA_TYPE_NONPOSITIVEINTEGER", value: 29)
!35 = !DIEnumerator(name: "XML_SCHEMA_TYPE_UNSIGNEDLONG", value: 30)
!36 = !DIEnumerator(name: "XML_SCHEMA_TYPE_UNSIGNEDINT", value: 31)
!37 = !DIEnumerator(name: "XML_SCHEMA_TYPE_UNSIGNEDSHORT", value: 32)
!38 = !DIEnumerator(name: "XML_SCHEMA_TYPE_UNSIGNEDBYTE", value: 33)
!39 = !DIEnumerator(name: "XML_SCHEMA_TYPE_DECIMAL", value: 34)
!40 = !DIEnumerator(name: "XML_SCHEMA_TYPE_FLOAT", value: 35)
!41 = !DIEnumerator(name: "XML_SCHEMA_TYPE_DOUBLE", value: 36)
!42 = !DIEnumerator(name: "XML_SCHEMA_TYPE_DATETIME", value: 37)
!43 = !DIEnumerator(name: "XML_SCHEMA_TYPE_TIME", value: 38)
!44 = !DIEnumerator(name: "XML_SCHEMA_TYPE_DATE", value: 39)
!45 = !DIEnumerator(name: "XML_SCHEMA_TYPE_GYEARMONTH", value: 40)
!46 = !DIEnumerator(name: "XML_SCHEMA_TYPE_GYEAR", value: 41)
!47 = !DIEnumerator(name: "XML_SCHEMA_TYPE_GMONTHDAY", value: 42)
!48 = !DIEnumerator(name: "XML_SCHEMA_TYPE_GDAY", value: 43)
!49 = !DIEnumerator(name: "XML_SCHEMA_TYPE_GMONTH", value: 44)
!50 = !DIEnumerator(name: "XML_SCHEMA_TYPE_HEXBINARY", value: 45)
!51 = !DIEnumerator(name: "XML_SCHEMA_TYPE_BASE64BINARY", value: 46)
!52 = !DIEnumerator(name: "XML_SCHEMA_TYPE_DURATION", value: 47)
!53 = !DIEnumerator(name: "XML_SCHEMA_TYPE_NOTATION", value: 48)
!54 = !DIEnumerator(name: "XML_SCHEMA_TYPE_LIST", value: 49)
!55 = !DIEnumerator(name: "XML_SCHEMA_TYPE_UNION", value: 50)
!56 = !DIEnumerator(name: "XML_SCHEMA_TYPE_SIMPLE", value: 51)
!57 = !DIEnumerator(name: "XML_SCHEMA_TYPE_COMPLEX", value: 52)
!58 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ELEMENT", value: 53)
!59 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ATTRIBUTE", value: 54)
!60 = !DIEnumerator(name: "XML_SCHEMA_TYPE_GROUP", value: 55)
!61 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ATTRIBUTEGROUP", value: 56)
!62 = !DIEnumerator(name: "XML_SCHEMA_TYPE_SEQUENCE", value: 57)
!63 = !DIEnumerator(name: "XML_SCHEMA_TYPE_CHOICE", value: 58)
!64 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ALL", value: 59)
!65 = !DIEnumerator(name: "XML_SCHEMA_TYPE_RESTRICTION", value: 60)
!66 = !DIEnumerator(name: "XML_SCHEMA_TYPE_EXTENSION", value: 61)
!67 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ANNOTATION", value: 62)
!68 = !DIEnumerator(name: "XML_SCHEMA_TYPE_FACET", value: 63)
!69 = !DIEnumerator(name: "XML_SCHEMA_TYPE_ANYELEMENT", value: 64)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 10, baseType: !4, size: 32, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!72 = !DIEnumerator(name: "XML_SCHEMAFACET_UNKNOWN", value: 0)
!73 = !DIEnumerator(name: "XML_SCHEMAFACET_LENGTH", value: 1)
!74 = !DIEnumerator(name: "XML_SCHEMAFACET_MINLENGTH", value: 2)
!75 = !DIEnumerator(name: "XML_SCHEMAFACET_MAXLENGTH", value: 3)
!76 = !DIEnumerator(name: "XML_SCHEMAFACET_PATTERN", value: 4)
!77 = !DIEnumerator(name: "XML_SCHEMAFACET_ENUMERATION", value: 5)
!78 = !DIEnumerator(name: "XML_SCHEMAFACET_WHITESPACE", value: 6)
!79 = !DIEnumerator(name: "XML_SCHEMAFACET_MAXINCLUSIVE", value: 7)
!80 = !DIEnumerator(name: "XML_SCHEMAFACET_MAXEXCLUSIVE", value: 8)
!81 = !DIEnumerator(name: "XML_SCHEMAFACET_MININCLUSIVE", value: 9)
!82 = !DIEnumerator(name: "XML_SCHEMAFACET_MINEXCLUSIVE", value: 10)
!83 = !DIEnumerator(name: "XML_SCHEMAFACET_TOTALDIGITS", value: 11)
!84 = !DIEnumerator(name: "XML_SCHEMAFACET_FRACTIONDIGITS", value: 12)
!85 = !{!86, !87, !96}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValPtr", file: !1, line: 94, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaVal", file: !1, line: 93, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaVal", file: !1, line: 96, size: 192, elements: !91)
!91 = !{!92, !94, !95}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !1, line: 97, baseType: !93, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValType", file: !1, line: 91, baseType: !3)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !90, file: !1, line: 98, baseType: !86, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !90, file: !1, line: 99, baseType: !87, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaFacetPtr", file: !1, line: 103, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaFacet", file: !1, line: 102, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaFacet", file: !1, line: 105, size: 128, elements: !100)
!100 = !{!101, !103, !105}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !99, file: !1, line: 106, baseType: !102, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaFacetType", file: !1, line: 24, baseType: !70)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !99, file: !1, line: 107, baseType: !104, size: 32, offset: 32)
!104 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !99, file: !1, line: 108, baseType: !96, size: 64, offset: 64)
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!108 = !{i32 7, !"Dwarf Version", i32 5}
!109 = !{i32 2, !"Debug Info Version", i32 3}
!110 = !{i32 1, !"wchar_size", i32 4}
!111 = !{i32 7, !"PIC Level", i32 2}
!112 = !{i32 7, !"PIE Level", i32 2}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"Ubuntu clang version 14.0.6"}
!116 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 112, type: !117, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !122)
!117 = !DISubroutineType(types: !118)
!118 = !{!86, !119}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !121)
!120 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!121 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!122 = !{}
!123 = !DILocalVariable(name: "size", arg: 1, scope: !116, file: !1, line: 112, type: !119)
!124 = !DILocation(line: 112, column: 24, scope: !116)
!125 = !DILocation(line: 113, column: 19, scope: !116)
!126 = !DILocation(line: 113, column: 12, scope: !116)
!127 = !DILocation(line: 113, column: 5, scope: !116)
!128 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 157, type: !129, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !122)
!129 = !DISubroutineType(types: !130)
!130 = !{!104}
!131 = !DILocalVariable(name: "type", scope: !128, file: !1, line: 158, type: !93)
!132 = !DILocation(line: 158, column: 22, scope: !128)
!133 = !DILocalVariable(name: "result", scope: !128, file: !1, line: 159, type: !87)
!134 = !DILocation(line: 159, column: 21, scope: !128)
!135 = !DILocation(line: 162, column: 24, scope: !128)
!136 = !DILocation(line: 162, column: 5, scope: !128)
!137 = !DILocation(line: 165, column: 17, scope: !128)
!138 = !DILocation(line: 165, column: 22, scope: !128)
!139 = !DILocation(line: 165, column: 47, scope: !128)
!140 = !DILocation(line: 165, column: 50, scope: !128)
!141 = !DILocation(line: 165, column: 55, scope: !128)
!142 = !DILocation(line: 0, scope: !128)
!143 = !DILocation(line: 165, column: 5, scope: !128)
!144 = !DILocation(line: 168, column: 32, scope: !128)
!145 = !DILocation(line: 168, column: 14, scope: !128)
!146 = !DILocation(line: 168, column: 12, scope: !128)
!147 = !DILocation(line: 176, column: 9, scope: !148)
!148 = distinct !DILexicalBlock(scope: !128, file: !1, line: 176, column: 9)
!149 = !DILocation(line: 176, column: 16, scope: !148)
!150 = !DILocation(line: 176, column: 9, scope: !128)
!151 = !DILocation(line: 181, column: 9, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 176, column: 25)
!153 = !DILocation(line: 184, column: 14, scope: !152)
!154 = !DILocation(line: 184, column: 9, scope: !152)
!155 = !DILocation(line: 185, column: 5, scope: !152)
!156 = !DILocalVariable(name: "facet_value", scope: !157, file: !1, line: 189, type: !104)
!157 = distinct !DILexicalBlock(scope: !128, file: !1, line: 188, column: 5)
!158 = !DILocation(line: 189, column: 13, scope: !157)
!159 = !DILocalVariable(name: "facet", scope: !157, file: !1, line: 190, type: !96)
!160 = !DILocation(line: 190, column: 27, scope: !157)
!161 = !DILocation(line: 192, column: 28, scope: !157)
!162 = !DILocation(line: 192, column: 9, scope: !157)
!163 = !DILocation(line: 193, column: 44, scope: !157)
!164 = !DILocation(line: 193, column: 17, scope: !157)
!165 = !DILocation(line: 193, column: 15, scope: !157)
!166 = !DILocation(line: 195, column: 13, scope: !167)
!167 = distinct !DILexicalBlock(scope: !157, file: !1, line: 195, column: 13)
!168 = !DILocation(line: 195, column: 19, scope: !167)
!169 = !DILocation(line: 195, column: 13, scope: !157)
!170 = !DILocation(line: 196, column: 18, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !1, line: 195, column: 28)
!172 = !DILocation(line: 196, column: 13, scope: !171)
!173 = !DILocation(line: 197, column: 9, scope: !171)
!174 = !DILocation(line: 200, column: 5, scope: !128)
!175 = distinct !DISubprogram(name: "xmlSchemaNewValue", scope: !1, file: !1, line: 118, type: !176, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !122)
!176 = !DISubroutineType(types: !177)
!177 = !{!87, !93}
!178 = !DILocalVariable(name: "type", arg: 1, scope: !175, file: !1, line: 118, type: !93)
!179 = !DILocation(line: 118, column: 36, scope: !175)
!180 = !DILocalVariable(name: "value", scope: !175, file: !1, line: 119, type: !87)
!181 = !DILocation(line: 119, column: 21, scope: !175)
!182 = !DILocation(line: 121, column: 31, scope: !175)
!183 = !DILocation(line: 121, column: 13, scope: !175)
!184 = !DILocation(line: 121, column: 11, scope: !175)
!185 = !DILocation(line: 122, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !175, file: !1, line: 122, column: 9)
!187 = !DILocation(line: 122, column: 15, scope: !186)
!188 = !DILocation(line: 122, column: 9, scope: !175)
!189 = !DILocation(line: 123, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !1, line: 122, column: 24)
!191 = !DILocation(line: 125, column: 12, scope: !175)
!192 = !DILocation(line: 125, column: 5, scope: !175)
!193 = !DILocation(line: 126, column: 19, scope: !175)
!194 = !DILocation(line: 126, column: 5, scope: !175)
!195 = !DILocation(line: 126, column: 12, scope: !175)
!196 = !DILocation(line: 126, column: 17, scope: !175)
!197 = !DILocation(line: 127, column: 12, scope: !175)
!198 = !DILocation(line: 127, column: 5, scope: !175)
!199 = !DILocation(line: 128, column: 1, scope: !175)
!200 = distinct !DISubprogram(name: "xmlSchemaNewMinLengthFacet", scope: !1, file: !1, line: 132, type: !201, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !122)
!201 = !DISubroutineType(types: !202)
!202 = !{!96, !104}
!203 = !DILocalVariable(name: "value", arg: 1, scope: !200, file: !1, line: 132, type: !104)
!204 = !DILocation(line: 132, column: 32, scope: !200)
!205 = !DILocalVariable(name: "ret", scope: !200, file: !1, line: 133, type: !96)
!206 = !DILocation(line: 133, column: 23, scope: !200)
!207 = !DILocalVariable(name: "val", scope: !200, file: !1, line: 134, type: !87)
!208 = !DILocation(line: 134, column: 21, scope: !200)
!209 = !DILocation(line: 137, column: 11, scope: !200)
!210 = !DILocation(line: 137, column: 9, scope: !200)
!211 = !DILocation(line: 138, column: 9, scope: !212)
!212 = distinct !DILexicalBlock(scope: !200, file: !1, line: 138, column: 9)
!213 = !DILocation(line: 138, column: 13, scope: !212)
!214 = !DILocation(line: 138, column: 9, scope: !200)
!215 = !DILocation(line: 139, column: 9, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !1, line: 138, column: 22)
!217 = !DILocation(line: 143, column: 31, scope: !200)
!218 = !DILocation(line: 143, column: 11, scope: !200)
!219 = !DILocation(line: 143, column: 9, scope: !200)
!220 = !DILocation(line: 144, column: 9, scope: !221)
!221 = distinct !DILexicalBlock(scope: !200, file: !1, line: 144, column: 9)
!222 = !DILocation(line: 144, column: 13, scope: !221)
!223 = !DILocation(line: 144, column: 9, scope: !200)
!224 = !DILocation(line: 145, column: 14, scope: !225)
!225 = distinct !DILexicalBlock(scope: !221, file: !1, line: 144, column: 22)
!226 = !DILocation(line: 145, column: 9, scope: !225)
!227 = !DILocation(line: 146, column: 9, scope: !225)
!228 = !DILocation(line: 149, column: 5, scope: !200)
!229 = !DILocation(line: 149, column: 10, scope: !200)
!230 = !DILocation(line: 149, column: 15, scope: !200)
!231 = !DILocation(line: 150, column: 18, scope: !200)
!232 = !DILocation(line: 150, column: 5, scope: !200)
!233 = !DILocation(line: 150, column: 10, scope: !200)
!234 = !DILocation(line: 150, column: 16, scope: !200)
!235 = !DILocation(line: 151, column: 5, scope: !200)
!236 = !DILocation(line: 151, column: 10, scope: !200)
!237 = !DILocation(line: 151, column: 15, scope: !200)
!238 = !DILocation(line: 153, column: 10, scope: !200)
!239 = !DILocation(line: 153, column: 5, scope: !200)
!240 = !DILocation(line: 154, column: 12, scope: !200)
!241 = !DILocation(line: 154, column: 5, scope: !200)
!242 = !DILocation(line: 155, column: 1, scope: !200)
!243 = distinct !DISubprogram(name: "memset", scope: !244, file: !244, line: 12, type: !245, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !122)
!244 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!245 = !DISubroutineType(types: !246)
!246 = !{!86, !86, !104, !119}
!247 = !DILocalVariable(name: "dst", arg: 1, scope: !243, file: !244, line: 12, type: !86)
!248 = !DILocation(line: 12, column: 20, scope: !243)
!249 = !DILocalVariable(name: "s", arg: 2, scope: !243, file: !244, line: 12, type: !104)
!250 = !DILocation(line: 12, column: 29, scope: !243)
!251 = !DILocalVariable(name: "count", arg: 3, scope: !243, file: !244, line: 12, type: !119)
!252 = !DILocation(line: 12, column: 39, scope: !243)
!253 = !DILocalVariable(name: "a", scope: !243, file: !244, line: 13, type: !254)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!256 = !DILocation(line: 13, column: 9, scope: !243)
!257 = !DILocation(line: 13, column: 13, scope: !243)
!258 = !DILocation(line: 14, column: 3, scope: !243)
!259 = !DILocation(line: 14, column: 15, scope: !243)
!260 = !DILocation(line: 14, column: 18, scope: !243)
!261 = !DILocation(line: 15, column: 12, scope: !243)
!262 = !DILocation(line: 15, column: 7, scope: !243)
!263 = !DILocation(line: 15, column: 10, scope: !243)
!264 = distinct !{!264, !258, !261, !265}
!265 = !{!"llvm.loop.mustprogress"}
!266 = !DILocation(line: 16, column: 10, scope: !243)
!267 = !DILocation(line: 16, column: 3, scope: !243)
