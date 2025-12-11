; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/212_tree.c_5917_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/212_tree.c_5917_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type opaque
%struct._xmlDtd = type opaque
%struct._xmlDict = type opaque
%struct._xmlNs = type { i8*, i32, i8*, i8*, i8*, %struct._xmlDoc* }

@.str = private unnamed_addr constant [29 x i8] c"allocating the XML namespace\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"http://www.w3.org/XML/1998/namespace\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"old_ns\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/212_tree.c_5917_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !65 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !69, metadata !DIExpression()), !dbg !70
  ret void, !dbg !71
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !72 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !75, metadata !DIExpression()), !dbg !76
  %6 = load i8*, i8** %3, align 8, !dbg !77
  %7 = icmp eq i8* %6, null, !dbg !79
  br i1 %7, label %8, label %9, !dbg !80

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !81
  br label %24, !dbg !81

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !82, metadata !DIExpression()), !dbg !86
  %10 = load i8*, i8** %3, align 8, !dbg !87
  %11 = call i64 @strlen(i8* noundef %10) #9, !dbg !88
  %12 = add i64 %11, 1, !dbg !89
  store i64 %12, i64* %4, align 8, !dbg !86
  call void @llvm.dbg.declare(metadata i8** %5, metadata !90, metadata !DIExpression()), !dbg !91
  %13 = load i64, i64* %4, align 8, !dbg !92
  %14 = call noalias i8* @malloc(i64 noundef %13) #10, !dbg !93
  store i8* %14, i8** %5, align 8, !dbg !91
  %15 = load i8*, i8** %5, align 8, !dbg !94
  %16 = icmp ne i8* %15, null, !dbg !94
  br i1 %16, label %17, label %22, !dbg !96

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !97
  %19 = load i8*, i8** %3, align 8, !dbg !99
  %20 = load i64, i64* %4, align 8, !dbg !100
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !101
  br label %22, !dbg !102

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !103
  store i8* %23, i8** %2, align 8, !dbg !104
  br label %24, !dbg !104

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !105
  ret i8* %25, !dbg !105
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNs* @xmlNewReconciliedNs(%struct._xmlDoc* noundef %0, %struct._xmlNs* noundef %1) #0 !dbg !106 {
  %3 = alloca %struct._xmlNs*, align 8
  %4 = alloca %struct._xmlDoc*, align 8
  %5 = alloca %struct._xmlNs*, align 8
  %6 = alloca %struct._xmlNs*, align 8
  store %struct._xmlDoc* %0, %struct._xmlDoc** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %4, metadata !111, metadata !DIExpression()), !dbg !112
  store %struct._xmlNs* %1, %struct._xmlNs** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %5, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %6, metadata !115, metadata !DIExpression()), !dbg !116
  %7 = call noalias i8* @malloc(i64 noundef 48) #10, !dbg !117
  %8 = bitcast i8* %7 to %struct._xmlNs*, !dbg !118
  store %struct._xmlNs* %8, %struct._xmlNs** %6, align 8, !dbg !119
  %9 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !120
  %10 = icmp eq %struct._xmlNs* %9, null, !dbg !122
  br i1 %10, label %11, label %12, !dbg !123

11:                                               ; preds = %2
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0)), !dbg !124
  store %struct._xmlNs* null, %struct._xmlNs** %3, align 8, !dbg !126
  br label %28, !dbg !126

12:                                               ; preds = %2
  %13 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !127
  %14 = bitcast %struct._xmlNs* %13 to i8*, !dbg !128
  %15 = call i8* @memset(i8* %14, i32 0, i64 48), !dbg !128
  %16 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !129
  %17 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %16, i32 0, i32 1, !dbg !130
  store i32 2, i32* %17, align 8, !dbg !131
  %18 = call i8* @xmlStrdup(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0)), !dbg !132
  %19 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !133
  %20 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %19, i32 0, i32 2, !dbg !134
  store i8* %18, i8** %20, align 8, !dbg !135
  %21 = call i8* @xmlStrdup(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !136
  %22 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !137
  %23 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %22, i32 0, i32 3, !dbg !138
  store i8* %21, i8** %23, align 8, !dbg !139
  %24 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !140
  %25 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !141
  %26 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %25, i32 0, i32 13, !dbg !142
  store %struct._xmlNs* %24, %struct._xmlNs** %26, align 8, !dbg !143
  %27 = load %struct._xmlNs*, %struct._xmlNs** %6, align 8, !dbg !144
  store %struct._xmlNs* %27, %struct._xmlNs** %3, align 8, !dbg !145
  br label %28, !dbg !145

28:                                               ; preds = %12, %11
  %29 = load %struct._xmlNs*, %struct._xmlNs** %3, align 8, !dbg !146
  ret %struct._xmlNs* %29, !dbg !146
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !147 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc, align 8
  %3 = alloca %struct._xmlNs, align 8
  %4 = alloca %struct._xmlNs*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc* %2, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata %struct._xmlNs* %3, metadata !152, metadata !DIExpression()), !dbg !153
  %5 = bitcast %struct._xmlDoc* %2 to i8*, !dbg !154
  %6 = call i8* @memset(i8* %5, i32 0, i64 176), !dbg !154
  %7 = bitcast %struct._xmlNs* %3 to i8*, !dbg !155
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 48, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !156
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %4, metadata !157, metadata !DIExpression()), !dbg !158
  %8 = call %struct._xmlNs* @xmlNewReconciliedNs(%struct._xmlDoc* noundef %2, %struct._xmlNs* noundef %3), !dbg !159
  store %struct._xmlNs* %8, %struct._xmlNs** %4, align 8, !dbg !158
  %9 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !160
  %10 = icmp ne %struct._xmlNs* %9, null, !dbg !162
  br i1 %10, label %11, label %33, !dbg !163

11:                                               ; preds = %0
  %12 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !164
  %13 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !166
  %14 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %13, i32 0, i32 2, !dbg !168
  %15 = load i8*, i8** %14, align 8, !dbg !168
  %16 = icmp ne i8* %15, null, !dbg !166
  br i1 %16, label %17, label %21, !dbg !169

17:                                               ; preds = %11
  %18 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !170
  %19 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %18, i32 0, i32 2, !dbg !171
  %20 = load i8*, i8** %19, align 8, !dbg !171
  call void @free(i8* noundef %20) #10, !dbg !172
  br label %21, !dbg !172

21:                                               ; preds = %17, %11
  %22 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !173
  %23 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %22, i32 0, i32 3, !dbg !175
  %24 = load i8*, i8** %23, align 8, !dbg !175
  %25 = icmp ne i8* %24, null, !dbg !173
  br i1 %25, label %26, label %30, !dbg !176

26:                                               ; preds = %21
  %27 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !177
  %28 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %27, i32 0, i32 3, !dbg !178
  %29 = load i8*, i8** %28, align 8, !dbg !178
  call void @free(i8* noundef %29) #10, !dbg !179
  br label %30, !dbg !179

30:                                               ; preds = %26, %21
  %31 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !180
  %32 = bitcast %struct._xmlNs* %31 to i8*, !dbg !180
  call void @free(i8* noundef %32) #10, !dbg !181
  br label %33, !dbg !182

33:                                               ; preds = %30, %0
  ret i32 0, !dbg !183
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !184 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !190, metadata !DIExpression()), !dbg !191
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !192, metadata !DIExpression()), !dbg !193
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata i8** %7, metadata !196, metadata !DIExpression()), !dbg !197
  %9 = load i8*, i8** %4, align 8, !dbg !198
  store i8* %9, i8** %7, align 8, !dbg !197
  call void @llvm.dbg.declare(metadata i8** %8, metadata !199, metadata !DIExpression()), !dbg !200
  %10 = load i8*, i8** %5, align 8, !dbg !201
  store i8* %10, i8** %8, align 8, !dbg !200
  br label %11, !dbg !202

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !203
  %13 = add i64 %12, -1, !dbg !203
  store i64 %13, i64* %6, align 8, !dbg !203
  %14 = icmp ugt i64 %12, 0, !dbg !204
  br i1 %14, label %15, label %21, !dbg !202

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !205
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !205
  store i8* %17, i8** %8, align 8, !dbg !205
  %18 = load i8, i8* %16, align 1, !dbg !206
  %19 = load i8*, i8** %7, align 8, !dbg !207
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !207
  store i8* %20, i8** %7, align 8, !dbg !207
  store i8 %18, i8* %19, align 1, !dbg !208
  br label %11, !dbg !202, !llvm.loop !209

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !211
  ret i8* %22, !dbg !212
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !213 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !217, metadata !DIExpression()), !dbg !218
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !219, metadata !DIExpression()), !dbg !220
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata i8** %7, metadata !223, metadata !DIExpression()), !dbg !224
  %8 = load i8*, i8** %4, align 8, !dbg !225
  store i8* %8, i8** %7, align 8, !dbg !224
  br label %9, !dbg !226

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !227
  %11 = add i64 %10, -1, !dbg !227
  store i64 %11, i64* %6, align 8, !dbg !227
  %12 = icmp ugt i64 %10, 0, !dbg !228
  br i1 %12, label %13, label %18, !dbg !226

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !229
  %15 = trunc i32 %14 to i8, !dbg !229
  %16 = load i8*, i8** %7, align 8, !dbg !230
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !230
  store i8* %17, i8** %7, align 8, !dbg !230
  store i8 %15, i8* %16, align 1, !dbg !231
  br label %9, !dbg !226, !llvm.loop !232

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !233
  ret i8* %19, !dbg !234
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64, !64, !64}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/212_tree.c_5917_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "4efde3de2cd89aa102014f7bfb5d936f")
!2 = !{!3, !4, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 10, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 13, size: 384, elements: !9)
!9 = !{!10, !11, !13, !16, !17, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !8, file: !1, line: 14, baseType: !3, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !8, file: !1, line: 15, baseType: !12, size: 32, offset: 64)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !8, file: !1, line: 16, baseType: !14, size: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !8, file: !1, line: 17, baseType: !14, size: 64, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !8, file: !1, line: 18, baseType: !3, size: 64, offset: 256)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !8, file: !1, line: 19, baseType: !19, size: 64, offset: 320)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 22, size: 1408, elements: !21)
!21 = !{!22, !23, !24, !25, !28, !29, !30, !31, !32, !33, !34, !35, !38, !39, !41, !42, !43, !44, !45, !46, !47, !50, !51, !52}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !20, file: !1, line: 23, baseType: !3, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !20, file: !1, line: 24, baseType: !12, size: 32, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !20, file: !1, line: 25, baseType: !4, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !20, file: !1, line: 26, baseType: !26, size: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 26, flags: DIFlagFwdDecl)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !20, file: !1, line: 27, baseType: !26, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !20, file: !1, line: 28, baseType: !26, size: 64, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !20, file: !1, line: 29, baseType: !26, size: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !20, file: !1, line: 30, baseType: !26, size: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !20, file: !1, line: 31, baseType: !19, size: 64, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !20, file: !1, line: 32, baseType: !12, size: 32, offset: 576)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !20, file: !1, line: 33, baseType: !12, size: 32, offset: 608)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !20, file: !1, line: 34, baseType: !36, size: 64, offset: 640)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !1, line: 34, flags: DIFlagFwdDecl)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !20, file: !1, line: 35, baseType: !36, size: 64, offset: 704)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !20, file: !1, line: 36, baseType: !40, size: 64, offset: 768)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !20, file: !1, line: 37, baseType: !14, size: 64, offset: 832)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !20, file: !1, line: 38, baseType: !14, size: 64, offset: 896)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !20, file: !1, line: 39, baseType: !3, size: 64, offset: 960)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !20, file: !1, line: 40, baseType: !3, size: 64, offset: 1024)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !20, file: !1, line: 41, baseType: !14, size: 64, offset: 1088)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !20, file: !1, line: 42, baseType: !12, size: 32, offset: 1152)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !20, file: !1, line: 43, baseType: !48, size: 64, offset: 1216)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !1, line: 43, flags: DIFlagFwdDecl)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !20, file: !1, line: 44, baseType: !3, size: 64, offset: 1280)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !20, file: !1, line: 45, baseType: !12, size: 32, offset: 1344)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !20, file: !1, line: 46, baseType: !12, size: 32, offset: 1376)
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!54 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!57 = !{i32 7, !"Dwarf Version", i32 5}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = !{i32 7, !"PIC Level", i32 2}
!61 = !{i32 7, !"PIE Level", i32 2}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"Ubuntu clang version 14.0.6"}
!65 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 50, type: !66, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !68)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !14}
!68 = !{}
!69 = !DILocalVariable(name: "msg", arg: 1, scope: !65, file: !1, line: 50, type: !14)
!70 = !DILocation(line: 50, column: 35, scope: !65)
!71 = !DILocation(line: 52, column: 1, scope: !65)
!72 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 54, type: !73, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !68)
!73 = !DISubroutineType(types: !74)
!74 = !{!4, !14}
!75 = !DILocalVariable(name: "cur", arg: 1, scope: !72, file: !1, line: 54, type: !14)
!76 = !DILocation(line: 54, column: 29, scope: !72)
!77 = !DILocation(line: 55, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !72, file: !1, line: 55, column: 9)
!79 = !DILocation(line: 55, column: 13, scope: !78)
!80 = !DILocation(line: 55, column: 9, scope: !72)
!81 = !DILocation(line: 55, column: 22, scope: !78)
!82 = !DILocalVariable(name: "len", scope: !72, file: !1, line: 56, type: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !84, line: 46, baseType: !85)
!84 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!85 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!86 = !DILocation(line: 56, column: 12, scope: !72)
!87 = !DILocation(line: 56, column: 25, scope: !72)
!88 = !DILocation(line: 56, column: 18, scope: !72)
!89 = !DILocation(line: 56, column: 30, scope: !72)
!90 = !DILocalVariable(name: "copy", scope: !72, file: !1, line: 57, type: !4)
!91 = !DILocation(line: 57, column: 11, scope: !72)
!92 = !DILocation(line: 57, column: 33, scope: !72)
!93 = !DILocation(line: 57, column: 26, scope: !72)
!94 = !DILocation(line: 58, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !72, file: !1, line: 58, column: 9)
!96 = !DILocation(line: 58, column: 9, scope: !72)
!97 = !DILocation(line: 59, column: 16, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !1, line: 58, column: 15)
!99 = !DILocation(line: 59, column: 22, scope: !98)
!100 = !DILocation(line: 59, column: 27, scope: !98)
!101 = !DILocation(line: 59, column: 9, scope: !98)
!102 = !DILocation(line: 60, column: 5, scope: !98)
!103 = !DILocation(line: 61, column: 12, scope: !72)
!104 = !DILocation(line: 61, column: 5, scope: !72)
!105 = !DILocation(line: 62, column: 1, scope: !72)
!106 = distinct !DISubprogram(name: "xmlNewReconciliedNs", scope: !1, file: !1, line: 65, type: !107, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !68)
!107 = !DISubroutineType(types: !108)
!108 = !{!6, !109, !6}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 11, baseType: !20)
!111 = !DILocalVariable(name: "doc", arg: 1, scope: !106, file: !1, line: 65, type: !109)
!112 = !DILocation(line: 65, column: 36, scope: !106)
!113 = !DILocalVariable(name: "old", arg: 2, scope: !106, file: !1, line: 65, type: !6)
!114 = !DILocation(line: 65, column: 48, scope: !106)
!115 = !DILocalVariable(name: "ns", scope: !106, file: !1, line: 66, type: !6)
!116 = !DILocation(line: 66, column: 12, scope: !106)
!117 = !DILocation(line: 69, column: 19, scope: !106)
!118 = !DILocation(line: 69, column: 10, scope: !106)
!119 = !DILocation(line: 69, column: 8, scope: !106)
!120 = !DILocation(line: 70, column: 9, scope: !121)
!121 = distinct !DILexicalBlock(scope: !106, file: !1, line: 70, column: 9)
!122 = !DILocation(line: 70, column: 12, scope: !121)
!123 = !DILocation(line: 70, column: 9, scope: !106)
!124 = !DILocation(line: 71, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !1, line: 70, column: 21)
!126 = !DILocation(line: 72, column: 9, scope: !125)
!127 = !DILocation(line: 76, column: 12, scope: !106)
!128 = !DILocation(line: 76, column: 5, scope: !106)
!129 = !DILocation(line: 79, column: 5, scope: !106)
!130 = !DILocation(line: 79, column: 9, scope: !106)
!131 = !DILocation(line: 79, column: 14, scope: !106)
!132 = !DILocation(line: 80, column: 16, scope: !106)
!133 = !DILocation(line: 80, column: 5, scope: !106)
!134 = !DILocation(line: 80, column: 9, scope: !106)
!135 = !DILocation(line: 80, column: 14, scope: !106)
!136 = !DILocation(line: 81, column: 18, scope: !106)
!137 = !DILocation(line: 81, column: 5, scope: !106)
!138 = !DILocation(line: 81, column: 9, scope: !106)
!139 = !DILocation(line: 81, column: 16, scope: !106)
!140 = !DILocation(line: 82, column: 18, scope: !106)
!141 = !DILocation(line: 82, column: 5, scope: !106)
!142 = !DILocation(line: 82, column: 10, scope: !106)
!143 = !DILocation(line: 82, column: 16, scope: !106)
!144 = !DILocation(line: 83, column: 13, scope: !106)
!145 = !DILocation(line: 83, column: 5, scope: !106)
!146 = !DILocation(line: 84, column: 1, scope: !106)
!147 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 87, type: !148, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !68)
!148 = !DISubroutineType(types: !149)
!149 = !{!12}
!150 = !DILocalVariable(name: "doc", scope: !147, file: !1, line: 89, type: !110)
!151 = !DILocation(line: 89, column: 12, scope: !147)
!152 = !DILocalVariable(name: "old_ns", scope: !147, file: !1, line: 90, type: !7)
!153 = !DILocation(line: 90, column: 11, scope: !147)
!154 = !DILocation(line: 93, column: 5, scope: !147)
!155 = !DILocation(line: 96, column: 24, scope: !147)
!156 = !DILocation(line: 96, column: 5, scope: !147)
!157 = !DILocalVariable(name: "result", scope: !147, file: !1, line: 99, type: !6)
!158 = !DILocation(line: 99, column: 12, scope: !147)
!159 = !DILocation(line: 99, column: 21, scope: !147)
!160 = !DILocation(line: 102, column: 9, scope: !161)
!161 = distinct !DILexicalBlock(scope: !147, file: !1, line: 102, column: 9)
!162 = !DILocation(line: 102, column: 16, scope: !161)
!163 = !DILocation(line: 102, column: 9, scope: !147)
!164 = !DILocation(line: 110, column: 9, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 102, column: 25)
!166 = !DILocation(line: 113, column: 13, scope: !167)
!167 = distinct !DILexicalBlock(scope: !165, file: !1, line: 113, column: 13)
!168 = !DILocation(line: 113, column: 21, scope: !167)
!169 = !DILocation(line: 113, column: 13, scope: !165)
!170 = !DILocation(line: 113, column: 40, scope: !167)
!171 = !DILocation(line: 113, column: 48, scope: !167)
!172 = !DILocation(line: 113, column: 27, scope: !167)
!173 = !DILocation(line: 114, column: 13, scope: !174)
!174 = distinct !DILexicalBlock(scope: !165, file: !1, line: 114, column: 13)
!175 = !DILocation(line: 114, column: 21, scope: !174)
!176 = !DILocation(line: 114, column: 13, scope: !165)
!177 = !DILocation(line: 114, column: 42, scope: !174)
!178 = !DILocation(line: 114, column: 50, scope: !174)
!179 = !DILocation(line: 114, column: 29, scope: !174)
!180 = !DILocation(line: 115, column: 14, scope: !165)
!181 = !DILocation(line: 115, column: 9, scope: !165)
!182 = !DILocation(line: 116, column: 5, scope: !165)
!183 = !DILocation(line: 118, column: 5, scope: !147)
!184 = distinct !DISubprogram(name: "memcpy", scope: !185, file: !185, line: 12, type: !186, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !68)
!185 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!186 = !DISubroutineType(types: !187)
!187 = !{!3, !3, !188, !83}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!190 = !DILocalVariable(name: "destaddr", arg: 1, scope: !184, file: !185, line: 12, type: !3)
!191 = !DILocation(line: 12, column: 20, scope: !184)
!192 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !184, file: !185, line: 12, type: !188)
!193 = !DILocation(line: 12, column: 42, scope: !184)
!194 = !DILocalVariable(name: "len", arg: 3, scope: !184, file: !185, line: 12, type: !83)
!195 = !DILocation(line: 12, column: 58, scope: !184)
!196 = !DILocalVariable(name: "dest", scope: !184, file: !185, line: 13, type: !4)
!197 = !DILocation(line: 13, column: 9, scope: !184)
!198 = !DILocation(line: 13, column: 16, scope: !184)
!199 = !DILocalVariable(name: "src", scope: !184, file: !185, line: 14, type: !14)
!200 = !DILocation(line: 14, column: 15, scope: !184)
!201 = !DILocation(line: 14, column: 21, scope: !184)
!202 = !DILocation(line: 16, column: 3, scope: !184)
!203 = !DILocation(line: 16, column: 13, scope: !184)
!204 = !DILocation(line: 16, column: 16, scope: !184)
!205 = !DILocation(line: 17, column: 19, scope: !184)
!206 = !DILocation(line: 17, column: 15, scope: !184)
!207 = !DILocation(line: 17, column: 10, scope: !184)
!208 = !DILocation(line: 17, column: 13, scope: !184)
!209 = distinct !{!209, !202, !205, !210}
!210 = !{!"llvm.loop.mustprogress"}
!211 = !DILocation(line: 18, column: 10, scope: !184)
!212 = !DILocation(line: 18, column: 3, scope: !184)
!213 = distinct !DISubprogram(name: "memset", scope: !214, file: !214, line: 12, type: !215, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !68)
!214 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!215 = !DISubroutineType(types: !216)
!216 = !{!3, !3, !12, !83}
!217 = !DILocalVariable(name: "dst", arg: 1, scope: !213, file: !214, line: 12, type: !3)
!218 = !DILocation(line: 12, column: 20, scope: !213)
!219 = !DILocalVariable(name: "s", arg: 2, scope: !213, file: !214, line: 12, type: !12)
!220 = !DILocation(line: 12, column: 29, scope: !213)
!221 = !DILocalVariable(name: "count", arg: 3, scope: !213, file: !214, line: 12, type: !83)
!222 = !DILocation(line: 12, column: 39, scope: !213)
!223 = !DILocalVariable(name: "a", scope: !213, file: !214, line: 13, type: !4)
!224 = !DILocation(line: 13, column: 9, scope: !213)
!225 = !DILocation(line: 13, column: 13, scope: !213)
!226 = !DILocation(line: 14, column: 3, scope: !213)
!227 = !DILocation(line: 14, column: 15, scope: !213)
!228 = !DILocation(line: 14, column: 18, scope: !213)
!229 = !DILocation(line: 15, column: 12, scope: !213)
!230 = !DILocation(line: 15, column: 7, scope: !213)
!231 = !DILocation(line: 15, column: 10, scope: !213)
!232 = distinct !{!232, !226, !229, !210}
!233 = !DILocation(line: 16, column: 10, scope: !213)
!234 = !DILocation(line: 16, column: 3, scope: !213)
