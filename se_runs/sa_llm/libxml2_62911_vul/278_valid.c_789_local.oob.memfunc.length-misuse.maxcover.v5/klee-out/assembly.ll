; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/278_valid.c_789_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/278_valid.c_789_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlElementContent = type { i32, i32, i8*, %struct._xmlElementContent*, %struct._xmlElementContent*, %struct._xmlElementContent* }

@.str = private unnamed_addr constant [14 x i8] c"xmlMalloc_mem\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"(0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/278_valid.c_789_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !38 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i8** %3, metadata !47, metadata !DIExpression()), !dbg !48
  %4 = load i64, i64* %2, align 8, !dbg !49
  %5 = call i8* @malloc(i64 noundef %4), !dbg !50
  store i8* %5, i8** %3, align 8, !dbg !48
  %6 = load i8*, i8** %3, align 8, !dbg !51
  %7 = icmp ne i8* %6, null, !dbg !51
  br i1 %7, label %8, label %11, !dbg !53

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !54
  %10 = load i64, i64* %2, align 8, !dbg !56
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef %10, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !57
  br label %11, !dbg !58

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8, !dbg !59
  ret i8* %12, !dbg !60
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlVErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !61 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !67, metadata !DIExpression()), !dbg !68
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !69, metadata !DIExpression()), !dbg !70
  ret void, !dbg !71
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlElementContent* @xmlNewElementContent(i8* noundef %0, i32 noundef %1) #0 !dbg !72 {
  %3 = alloca %struct._xmlElementContent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlElementContent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !75, metadata !DIExpression()), !dbg !76
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %6, metadata !79, metadata !DIExpression()), !dbg !80
  %9 = call i8* @xmlMalloc(i64 noundef 40), !dbg !81
  %10 = bitcast i8* %9 to %struct._xmlElementContent*, !dbg !82
  store %struct._xmlElementContent* %10, %struct._xmlElementContent** %6, align 8, !dbg !83
  %11 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !84
  %12 = icmp eq %struct._xmlElementContent* %11, null, !dbg !86
  br i1 %12, label %13, label %14, !dbg !87

13:                                               ; preds = %2
  call void @xmlVErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)), !dbg !88
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %3, align 8, !dbg !90
  br label %51, !dbg !90

14:                                               ; preds = %2
  %15 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !91
  %16 = bitcast %struct._xmlElementContent* %15 to i8*, !dbg !92
  %17 = call i8* @memset(i8* %16, i32 0, i64 40), !dbg !92
  %18 = load i32, i32* %5, align 4, !dbg !93
  %19 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !94
  %20 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %19, i32 0, i32 0, !dbg !95
  store i32 %18, i32* %20, align 8, !dbg !96
  %21 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !97
  %22 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %21, i32 0, i32 1, !dbg !98
  store i32 0, i32* %22, align 4, !dbg !99
  %23 = load i8*, i8** %4, align 8, !dbg !100
  %24 = icmp ne i8* %23, null, !dbg !102
  br i1 %24, label %25, label %49, !dbg !103

25:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata i32* %7, metadata !104, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata i8** %8, metadata !107, metadata !DIExpression()), !dbg !108
  %26 = load i8*, i8** %4, align 8, !dbg !109
  store i8* %26, i8** %8, align 8, !dbg !110
  br label %27, !dbg !111

27:                                               ; preds = %32, %25
  %28 = load i8*, i8** %8, align 8, !dbg !112
  %29 = load i8, i8* %28, align 1, !dbg !113
  %30 = zext i8 %29 to i32, !dbg !113
  %31 = icmp ne i32 %30, 0, !dbg !114
  br i1 %31, label %32, label %35, !dbg !111

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8, !dbg !115
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !115
  store i8* %34, i8** %8, align 8, !dbg !115
  br label %27, !dbg !111, !llvm.loop !117

35:                                               ; preds = %27
  %36 = load i8*, i8** %8, align 8, !dbg !120
  %37 = load i8*, i8** %4, align 8, !dbg !121
  %38 = ptrtoint i8* %36 to i64, !dbg !122
  %39 = ptrtoint i8* %37 to i64, !dbg !122
  %40 = sub i64 %38, %39, !dbg !122
  %41 = trunc i64 %40 to i32, !dbg !120
  store i32 %41, i32* %7, align 4, !dbg !123
  %42 = load i32, i32* %7, align 4, !dbg !124
  %43 = icmp sgt i32 %42, 0, !dbg !126
  br i1 %43, label %44, label %48, !dbg !127

44:                                               ; preds = %35
  %45 = load i8*, i8** %4, align 8, !dbg !128
  %46 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !130
  %47 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %46, i32 0, i32 2, !dbg !131
  store i8* %45, i8** %47, align 8, !dbg !132
  br label %48, !dbg !133

48:                                               ; preds = %44, %35
  br label %49, !dbg !134

49:                                               ; preds = %48, %14
  %50 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !135
  store %struct._xmlElementContent* %50, %struct._xmlElementContent** %3, align 8, !dbg !136
  br label %51, !dbg !136

51:                                               ; preds = %49, %13
  %52 = load %struct._xmlElementContent*, %struct._xmlElementContent** %3, align 8, !dbg !137
  ret %struct._xmlElementContent* %52, !dbg !137
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !138 {
  %1 = alloca i32, align 4
  %2 = alloca [100 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlElementContent*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [100 x i8]* %2, metadata !141, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %3, metadata !146, metadata !DIExpression()), !dbg !147
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0, !dbg !148
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !149
  %7 = bitcast i32* %3 to i8*, !dbg !150
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !151
  %8 = load i32, i32* %3, align 4, !dbg !152
  %9 = icmp eq i32 %8, 0, !dbg !153
  %10 = zext i1 %9 to i32, !dbg !153
  %11 = sext i32 %10 to i64, !dbg !152
  call void @klee_assume(i64 noundef %11), !dbg !154
  call void @llvm.dbg.declare(metadata i32* %4, metadata !155, metadata !DIExpression()), !dbg !157
  store i32 0, i32* %4, align 4, !dbg !157
  br label %12, !dbg !158

12:                                               ; preds = %24, %0
  %13 = load i32, i32* %4, align 4, !dbg !159
  %14 = icmp slt i32 %13, 99, !dbg !161
  br i1 %14, label %15, label %27, !dbg !162

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4, !dbg !163
  %17 = sext i32 %16 to i64, !dbg !165
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 %17, !dbg !165
  %19 = load i8, i8* %18, align 1, !dbg !165
  %20 = zext i8 %19 to i32, !dbg !165
  %21 = icmp ne i32 %20, 0, !dbg !166
  %22 = zext i1 %21 to i32, !dbg !166
  %23 = sext i32 %22 to i64, !dbg !165
  call void @klee_assume(i64 noundef %23), !dbg !167
  br label %24, !dbg !168

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4, !dbg !169
  %26 = add nsw i32 %25, 1, !dbg !169
  store i32 %26, i32* %4, align 4, !dbg !169
  br label %12, !dbg !170, !llvm.loop !171

27:                                               ; preds = %12
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 99, !dbg !173
  store i8 0, i8* %28, align 1, !dbg !174
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %5, metadata !175, metadata !DIExpression()), !dbg !176
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0, !dbg !177
  %30 = load i32, i32* %3, align 4, !dbg !178
  %31 = call %struct._xmlElementContent* @xmlNewElementContent(i8* noundef %29, i32 noundef %30), !dbg !179
  store %struct._xmlElementContent* %31, %struct._xmlElementContent** %5, align 8, !dbg !176
  %32 = load %struct._xmlElementContent*, %struct._xmlElementContent** %5, align 8, !dbg !180
  %33 = icmp ne %struct._xmlElementContent* %32, null, !dbg !182
  br i1 %33, label %34, label %37, !dbg !183

34:                                               ; preds = %27
  %35 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !184
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !186
  br label %37, !dbg !187

37:                                               ; preds = %34, %27
  ret i32 0, !dbg !188
}

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !189 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !193, metadata !DIExpression()), !dbg !194
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !195, metadata !DIExpression()), !dbg !196
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata i8** %7, metadata !199, metadata !DIExpression()), !dbg !201
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
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37, !37}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/278_valid.c_789_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9894997a555a6122607370055d99a4b5")
!2 = !{!3, !7}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 11, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_ONCE", value: 0)
!7 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 15, baseType: !4, size: 32, elements: !8)
!8 = !{!9}
!9 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_PCDATA", value: 0)
!10 = !{!11, !27}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !1, line: 8, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !1, line: 7, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !1, line: 19, size: 320, elements: !15)
!15 = !{!16, !18, !19, !24, !25, !26}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !14, file: !1, line: 20, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !14, file: !1, line: 21, baseType: !17, size: 32, offset: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !1, line: 22, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 9, baseType: !23)
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !14, file: !1, line: 23, baseType: !11, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !14, file: !1, line: 24, baseType: !11, size: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !14, file: !1, line: 25, baseType: !11, size: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!30 = !{i32 7, !"Dwarf Version", i32 5}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 4}
!33 = !{i32 7, !"PIC Level", i32 2}
!34 = !{i32 7, !"PIE Level", i32 2}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"Ubuntu clang version 14.0.6"}
!38 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 28, type: !39, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !44)
!39 = !DISubroutineType(types: !40)
!40 = !{!27, !41}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 46, baseType: !43)
!42 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!43 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!44 = !{}
!45 = !DILocalVariable(name: "size", arg: 1, scope: !38, file: !1, line: 28, type: !41)
!46 = !DILocation(line: 28, column: 24, scope: !38)
!47 = !DILocalVariable(name: "ptr", scope: !38, file: !1, line: 29, type: !27)
!48 = !DILocation(line: 29, column: 11, scope: !38)
!49 = !DILocation(line: 29, column: 24, scope: !38)
!50 = !DILocation(line: 29, column: 17, scope: !38)
!51 = !DILocation(line: 30, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !38, file: !1, line: 30, column: 9)
!53 = !DILocation(line: 30, column: 9, scope: !38)
!54 = !DILocation(line: 31, column: 28, scope: !55)
!55 = distinct !DILexicalBlock(scope: !52, file: !1, line: 30, column: 14)
!56 = !DILocation(line: 31, column: 33, scope: !55)
!57 = !DILocation(line: 31, column: 9, scope: !55)
!58 = !DILocation(line: 32, column: 5, scope: !55)
!59 = !DILocation(line: 33, column: 12, scope: !38)
!60 = !DILocation(line: 33, column: 5, scope: !38)
!61 = distinct !DISubprogram(name: "xmlVErrMemory", scope: !1, file: !1, line: 36, type: !62, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !44)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !27, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!67 = !DILocalVariable(name: "ctx", arg: 1, scope: !61, file: !1, line: 36, type: !27)
!68 = !DILocation(line: 36, column: 26, scope: !61)
!69 = !DILocalVariable(name: "msg", arg: 2, scope: !61, file: !1, line: 36, type: !64)
!70 = !DILocation(line: 36, column: 43, scope: !61)
!71 = !DILocation(line: 37, column: 1, scope: !61)
!72 = distinct !DISubprogram(name: "xmlNewElementContent", scope: !1, file: !1, line: 39, type: !73, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !44)
!73 = !DISubroutineType(types: !74)
!74 = !{!11, !20, !17}
!75 = !DILocalVariable(name: "name", arg: 1, scope: !72, file: !1, line: 39, type: !20)
!76 = !DILocation(line: 39, column: 58, scope: !72)
!77 = !DILocalVariable(name: "type", arg: 2, scope: !72, file: !1, line: 39, type: !17)
!78 = !DILocation(line: 39, column: 68, scope: !72)
!79 = !DILocalVariable(name: "ret", scope: !72, file: !1, line: 40, type: !11)
!80 = !DILocation(line: 40, column: 26, scope: !72)
!81 = !DILocation(line: 41, column: 34, scope: !72)
!82 = !DILocation(line: 41, column: 11, scope: !72)
!83 = !DILocation(line: 41, column: 9, scope: !72)
!84 = !DILocation(line: 42, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !72, file: !1, line: 42, column: 9)
!86 = !DILocation(line: 42, column: 13, scope: !85)
!87 = !DILocation(line: 42, column: 9, scope: !72)
!88 = !DILocation(line: 43, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 42, column: 22)
!90 = !DILocation(line: 44, column: 9, scope: !89)
!91 = !DILocation(line: 46, column: 12, scope: !72)
!92 = !DILocation(line: 46, column: 5, scope: !72)
!93 = !DILocation(line: 47, column: 17, scope: !72)
!94 = !DILocation(line: 47, column: 5, scope: !72)
!95 = !DILocation(line: 47, column: 10, scope: !72)
!96 = !DILocation(line: 47, column: 15, scope: !72)
!97 = !DILocation(line: 48, column: 5, scope: !72)
!98 = !DILocation(line: 48, column: 10, scope: !72)
!99 = !DILocation(line: 48, column: 15, scope: !72)
!100 = !DILocation(line: 49, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !72, file: !1, line: 49, column: 9)
!102 = !DILocation(line: 49, column: 14, scope: !101)
!103 = !DILocation(line: 49, column: 9, scope: !72)
!104 = !DILocalVariable(name: "l", scope: !105, file: !1, line: 50, type: !17)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 49, column: 23)
!106 = !DILocation(line: 50, column: 13, scope: !105)
!107 = !DILocalVariable(name: "tmp", scope: !105, file: !1, line: 51, type: !20)
!108 = !DILocation(line: 51, column: 24, scope: !105)
!109 = !DILocation(line: 52, column: 15, scope: !105)
!110 = !DILocation(line: 52, column: 13, scope: !105)
!111 = !DILocation(line: 53, column: 9, scope: !105)
!112 = !DILocation(line: 53, column: 17, scope: !105)
!113 = !DILocation(line: 53, column: 16, scope: !105)
!114 = !DILocation(line: 53, column: 21, scope: !105)
!115 = !DILocation(line: 54, column: 16, scope: !116)
!116 = distinct !DILexicalBlock(scope: !105, file: !1, line: 53, column: 27)
!117 = distinct !{!117, !111, !118, !119}
!118 = !DILocation(line: 55, column: 9, scope: !105)
!119 = !{!"llvm.loop.mustprogress"}
!120 = !DILocation(line: 56, column: 13, scope: !105)
!121 = !DILocation(line: 56, column: 19, scope: !105)
!122 = !DILocation(line: 56, column: 17, scope: !105)
!123 = !DILocation(line: 56, column: 11, scope: !105)
!124 = !DILocation(line: 57, column: 13, scope: !125)
!125 = distinct !DILexicalBlock(scope: !105, file: !1, line: 57, column: 13)
!126 = !DILocation(line: 57, column: 15, scope: !125)
!127 = !DILocation(line: 57, column: 13, scope: !105)
!128 = !DILocation(line: 58, column: 25, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 57, column: 20)
!130 = !DILocation(line: 58, column: 13, scope: !129)
!131 = !DILocation(line: 58, column: 18, scope: !129)
!132 = !DILocation(line: 58, column: 23, scope: !129)
!133 = !DILocation(line: 59, column: 9, scope: !129)
!134 = !DILocation(line: 60, column: 5, scope: !105)
!135 = !DILocation(line: 61, column: 12, scope: !72)
!136 = !DILocation(line: 61, column: 5, scope: !72)
!137 = !DILocation(line: 62, column: 1, scope: !72)
!138 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 64, type: !139, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !44)
!139 = !DISubroutineType(types: !140)
!140 = !{!17}
!141 = !DILocalVariable(name: "name", scope: !138, file: !1, line: 65, type: !142)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 800, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 100)
!145 = !DILocation(line: 65, column: 13, scope: !138)
!146 = !DILocalVariable(name: "type", scope: !138, file: !1, line: 66, type: !17)
!147 = !DILocation(line: 66, column: 9, scope: !138)
!148 = !DILocation(line: 67, column: 24, scope: !138)
!149 = !DILocation(line: 67, column: 5, scope: !138)
!150 = !DILocation(line: 68, column: 24, scope: !138)
!151 = !DILocation(line: 68, column: 5, scope: !138)
!152 = !DILocation(line: 69, column: 17, scope: !138)
!153 = !DILocation(line: 69, column: 22, scope: !138)
!154 = !DILocation(line: 69, column: 5, scope: !138)
!155 = !DILocalVariable(name: "i", scope: !156, file: !1, line: 70, type: !17)
!156 = distinct !DILexicalBlock(scope: !138, file: !1, line: 70, column: 5)
!157 = !DILocation(line: 70, column: 14, scope: !156)
!158 = !DILocation(line: 70, column: 10, scope: !156)
!159 = !DILocation(line: 70, column: 21, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !1, line: 70, column: 5)
!161 = !DILocation(line: 70, column: 23, scope: !160)
!162 = !DILocation(line: 70, column: 5, scope: !156)
!163 = !DILocation(line: 71, column: 26, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 70, column: 34)
!165 = !DILocation(line: 71, column: 21, scope: !164)
!166 = !DILocation(line: 71, column: 29, scope: !164)
!167 = !DILocation(line: 71, column: 9, scope: !164)
!168 = !DILocation(line: 72, column: 5, scope: !164)
!169 = !DILocation(line: 70, column: 30, scope: !160)
!170 = !DILocation(line: 70, column: 5, scope: !160)
!171 = distinct !{!171, !162, !172, !119}
!172 = !DILocation(line: 72, column: 5, scope: !156)
!173 = !DILocation(line: 73, column: 5, scope: !138)
!174 = !DILocation(line: 73, column: 14, scope: !138)
!175 = !DILocalVariable(name: "ret", scope: !138, file: !1, line: 74, type: !11)
!176 = !DILocation(line: 74, column: 26, scope: !138)
!177 = !DILocation(line: 74, column: 53, scope: !138)
!178 = !DILocation(line: 74, column: 59, scope: !138)
!179 = !DILocation(line: 74, column: 32, scope: !138)
!180 = !DILocation(line: 75, column: 9, scope: !181)
!181 = distinct !DILexicalBlock(scope: !138, file: !1, line: 75, column: 9)
!182 = !DILocation(line: 75, column: 13, scope: !181)
!183 = !DILocation(line: 75, column: 9, scope: !138)
!184 = !DILocation(line: 76, column: 9, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !1, line: 75, column: 22)
!186 = !DILocation(line: 77, column: 9, scope: !185)
!187 = !DILocation(line: 78, column: 5, scope: !185)
!188 = !DILocation(line: 79, column: 5, scope: !138)
!189 = distinct !DISubprogram(name: "memset", scope: !190, file: !190, line: 12, type: !191, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !44)
!190 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!191 = !DISubroutineType(types: !192)
!192 = !{!27, !27, !17, !41}
!193 = !DILocalVariable(name: "dst", arg: 1, scope: !189, file: !190, line: 12, type: !27)
!194 = !DILocation(line: 12, column: 20, scope: !189)
!195 = !DILocalVariable(name: "s", arg: 2, scope: !189, file: !190, line: 12, type: !17)
!196 = !DILocation(line: 12, column: 29, scope: !189)
!197 = !DILocalVariable(name: "count", arg: 3, scope: !189, file: !190, line: 12, type: !41)
!198 = !DILocation(line: 12, column: 39, scope: !189)
!199 = !DILocalVariable(name: "a", scope: !189, file: !190, line: 13, type: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!201 = !DILocation(line: 13, column: 9, scope: !189)
!202 = !DILocation(line: 13, column: 13, scope: !189)
!203 = !DILocation(line: 14, column: 3, scope: !189)
!204 = !DILocation(line: 14, column: 15, scope: !189)
!205 = !DILocation(line: 14, column: 18, scope: !189)
!206 = !DILocation(line: 15, column: 12, scope: !189)
!207 = !DILocation(line: 15, column: 7, scope: !189)
!208 = !DILocation(line: 15, column: 10, scope: !189)
!209 = distinct !{!209, !203, !206, !119}
!210 = !DILocation(line: 16, column: 10, scope: !189)
!211 = !DILocation(line: 16, column: 3, scope: !189)
