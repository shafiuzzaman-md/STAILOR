; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/277_valid.c_883_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/277_valid.c_883_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlElementContent = type { i32, i32, i8*, %struct._xmlElementContent*, %struct._xmlElementContent*, %struct._xmlElementContent*, i8* }
%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@xmlMalloc = external global i8* (i64)*, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/277_valid.c_883_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@xmlFree = external global void (i8*)*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !49 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlElementContent*, align 8
  %3 = alloca %struct._xmlElementContent*, align 8
  %4 = alloca %struct._xmlElementContent*, align 8
  %5 = alloca %struct._xmlElementContent*, align 8
  %6 = alloca %struct._xmlDict*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %2, metadata !54, metadata !DIExpression()), !dbg !55
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %2, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %3, metadata !56, metadata !DIExpression()), !dbg !57
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %3, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %4, metadata !58, metadata !DIExpression()), !dbg !59
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %4, align 8, !dbg !59
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %5, metadata !60, metadata !DIExpression()), !dbg !61
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %5, align 8, !dbg !61
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %6, metadata !62, metadata !DIExpression()), !dbg !68
  store %struct._xmlDict* null, %struct._xmlDict** %6, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %7, metadata !69, metadata !DIExpression()), !dbg !70
  call void @xmlInitParser(), !dbg !71
  %8 = bitcast i32* %7 to i8*, !dbg !72
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !73
  %9 = bitcast %struct._xmlElementContent** %2 to i8*, !dbg !74
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !75
  %10 = bitcast %struct._xmlElementContent** %3 to i8*, !dbg !76
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !77
  %11 = bitcast %struct._xmlElementContent** %4 to i8*, !dbg !78
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !79
  %12 = bitcast %struct._xmlDict** %6 to i8*, !dbg !80
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !81
  %13 = load i32, i32* %7, align 4, !dbg !82
  %14 = icmp sge i32 %13, 0, !dbg !83
  %15 = zext i1 %14 to i32, !dbg !83
  %16 = sext i32 %15 to i64, !dbg !82
  call void @klee_assume(i64 noundef %16), !dbg !84
  %17 = call %struct._xmlElementContent* @xmlNewElementContent(i8* noundef inttoptr (i64 2 to i8*), i32 noundef 0), !dbg !85
  store %struct._xmlElementContent* %17, %struct._xmlElementContent** %3, align 8, !dbg !86
  %18 = load %struct._xmlElementContent*, %struct._xmlElementContent** %3, align 8, !dbg !87
  %19 = icmp eq %struct._xmlElementContent* %18, null, !dbg !89
  br i1 %19, label %20, label %21, !dbg !90

20:                                               ; preds = %0
  call void @xmlCleanupParser(), !dbg !91
  store i32 0, i32* %1, align 4, !dbg !93
  br label %99, !dbg !93

21:                                               ; preds = %0
  %22 = call %struct._xmlElementContent* @xmlNewElementContent(i8* noundef inttoptr (i64 2 to i8*), i32 noundef 0), !dbg !94
  store %struct._xmlElementContent* %22, %struct._xmlElementContent** %4, align 8, !dbg !95
  %23 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !96
  %24 = icmp eq %struct._xmlElementContent* %23, null, !dbg !98
  br i1 %24, label %25, label %27, !dbg !99

25:                                               ; preds = %21
  %26 = load %struct._xmlElementContent*, %struct._xmlElementContent** %3, align 8, !dbg !100
  call void @xmlFreeElementContent(%struct._xmlElementContent* noundef %26), !dbg !102
  call void @xmlCleanupParser(), !dbg !103
  store i32 0, i32* %1, align 4, !dbg !104
  br label %99, !dbg !104

27:                                               ; preds = %21
  %28 = call %struct._xmlDict* @xmlDictCreate(), !dbg !105
  store %struct._xmlDict* %28, %struct._xmlDict** %6, align 8, !dbg !106
  %29 = load %struct._xmlElementContent*, %struct._xmlElementContent** %3, align 8, !dbg !107
  %30 = icmp ne %struct._xmlElementContent* %29, null, !dbg !109
  br i1 %30, label %31, label %91, !dbg !110

31:                                               ; preds = %27
  %32 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !111
  %33 = call i8* %32(i64 noundef 48), !dbg !111
  %34 = bitcast i8* %33 to %struct._xmlElementContent*, !dbg !113
  store %struct._xmlElementContent* %34, %struct._xmlElementContent** %5, align 8, !dbg !114
  %35 = load %struct._xmlElementContent*, %struct._xmlElementContent** %5, align 8, !dbg !115
  %36 = icmp eq %struct._xmlElementContent* %35, null, !dbg !117
  br i1 %36, label %37, label %43, !dbg !118

37:                                               ; preds = %31
  %38 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @xmlVErrMemory to i32 (i8*, i8*, ...)*)(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)), !dbg !119
  %39 = load %struct._xmlElementContent*, %struct._xmlElementContent** %5, align 8, !dbg !121
  %40 = icmp ne %struct._xmlElementContent* %39, null, !dbg !122
  %41 = zext i1 %40 to i32, !dbg !122
  %42 = sext i32 %41 to i64, !dbg !121
  call void @klee_assume(i64 noundef %42), !dbg !123
  br label %43, !dbg !124

43:                                               ; preds = %37, %31
  %44 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !125
  %45 = load %struct._xmlElementContent*, %struct._xmlElementContent** %5, align 8, !dbg !126
  %46 = bitcast %struct._xmlElementContent* %45 to i8*, !dbg !127
  %47 = call i8* @memset(i8* %46, i32 0, i64 48), !dbg !127
  %48 = load %struct._xmlElementContent*, %struct._xmlElementContent** %3, align 8, !dbg !128
  %49 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %48, i32 0, i32 0, !dbg !129
  %50 = load i32, i32* %49, align 8, !dbg !129
  %51 = load %struct._xmlElementContent*, %struct._xmlElementContent** %5, align 8, !dbg !130
  %52 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %51, i32 0, i32 0, !dbg !131
  store i32 %50, i32* %52, align 8, !dbg !132
  %53 = load %struct._xmlElementContent*, %struct._xmlElementContent** %3, align 8, !dbg !133
  %54 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %53, i32 0, i32 1, !dbg !134
  %55 = load i32, i32* %54, align 4, !dbg !134
  %56 = load %struct._xmlElementContent*, %struct._xmlElementContent** %5, align 8, !dbg !135
  %57 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %56, i32 0, i32 1, !dbg !136
  store i32 %55, i32* %57, align 4, !dbg !137
  %58 = load %struct._xmlElementContent*, %struct._xmlElementContent** %5, align 8, !dbg !138
  %59 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !139
  %60 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %59, i32 0, i32 4, !dbg !140
  store %struct._xmlElementContent* %58, %struct._xmlElementContent** %60, align 8, !dbg !141
  %61 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !142
  %62 = load %struct._xmlElementContent*, %struct._xmlElementContent** %5, align 8, !dbg !143
  %63 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %62, i32 0, i32 5, !dbg !144
  store %struct._xmlElementContent* %61, %struct._xmlElementContent** %63, align 8, !dbg !145
  %64 = load %struct._xmlElementContent*, %struct._xmlElementContent** %3, align 8, !dbg !146
  %65 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %64, i32 0, i32 2, !dbg !148
  %66 = load i8*, i8** %65, align 8, !dbg !148
  %67 = icmp ne i8* %66, null, !dbg !149
  br i1 %67, label %68, label %87, !dbg !150

68:                                               ; preds = %43
  %69 = load %struct._xmlDict*, %struct._xmlDict** %6, align 8, !dbg !151
  %70 = icmp ne %struct._xmlDict* %69, null, !dbg !151
  br i1 %70, label %71, label %79, !dbg !154

71:                                               ; preds = %68
  %72 = load %struct._xmlDict*, %struct._xmlDict** %6, align 8, !dbg !155
  %73 = load %struct._xmlElementContent*, %struct._xmlElementContent** %3, align 8, !dbg !156
  %74 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %73, i32 0, i32 2, !dbg !157
  %75 = load i8*, i8** %74, align 8, !dbg !157
  %76 = call i8* @xmlDictLookup(%struct._xmlDict* noundef %72, i8* noundef %75, i32 noundef -1), !dbg !158
  %77 = load %struct._xmlElementContent*, %struct._xmlElementContent** %5, align 8, !dbg !159
  %78 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %77, i32 0, i32 2, !dbg !160
  store i8* %76, i8** %78, align 8, !dbg !161
  br label %86, !dbg !159

79:                                               ; preds = %68
  %80 = load %struct._xmlElementContent*, %struct._xmlElementContent** %3, align 8, !dbg !162
  %81 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %80, i32 0, i32 2, !dbg !163
  %82 = load i8*, i8** %81, align 8, !dbg !163
  %83 = call i8* @xmlStrdup(i8* noundef %82), !dbg !164
  %84 = load %struct._xmlElementContent*, %struct._xmlElementContent** %5, align 8, !dbg !165
  %85 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %84, i32 0, i32 2, !dbg !166
  store i8* %83, i8** %85, align 8, !dbg !167
  br label %86

86:                                               ; preds = %79, %71
  br label %87, !dbg !168

87:                                               ; preds = %86, %43
  %88 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !169
  %89 = load %struct._xmlElementContent*, %struct._xmlElementContent** %5, align 8, !dbg !170
  %90 = bitcast %struct._xmlElementContent* %89 to i8*, !dbg !170
  call void %88(i8* noundef %90), !dbg !169
  br label %91, !dbg !171

91:                                               ; preds = %87, %27
  %92 = load %struct._xmlElementContent*, %struct._xmlElementContent** %3, align 8, !dbg !172
  call void @xmlFreeElementContent(%struct._xmlElementContent* noundef %92), !dbg !173
  %93 = load %struct._xmlElementContent*, %struct._xmlElementContent** %4, align 8, !dbg !174
  call void @xmlFreeElementContent(%struct._xmlElementContent* noundef %93), !dbg !175
  %94 = load %struct._xmlDict*, %struct._xmlDict** %6, align 8, !dbg !176
  %95 = icmp ne %struct._xmlDict* %94, null, !dbg !176
  br i1 %95, label %96, label %98, !dbg !178

96:                                               ; preds = %91
  %97 = load %struct._xmlDict*, %struct._xmlDict** %6, align 8, !dbg !179
  call void @xmlDictFree(%struct._xmlDict* noundef %97), !dbg !180
  br label %98, !dbg !180

98:                                               ; preds = %96, %91
  call void @xmlCleanupParser(), !dbg !181
  store i32 0, i32* %1, align 4, !dbg !182
  br label %99, !dbg !182

99:                                               ; preds = %98, %25, %20
  %100 = load i32, i32* %1, align 4, !dbg !183
  ret i32 %100, !dbg !183
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare %struct._xmlElementContent* @xmlNewElementContent(i8* noundef, i32 noundef) #2

declare void @xmlCleanupParser() #2

declare void @xmlFreeElementContent(%struct._xmlElementContent* noundef) #2

declare %struct._xmlDict* @xmlDictCreate() #2

declare i32 @xmlVErrMemory(...) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare i8* @xmlDictLookup(%struct._xmlDict* noundef, i8* noundef, i32 noundef) #2

declare i8* @xmlStrdup(i8* noundef) #2

declare void @xmlDictFree(%struct._xmlDict* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !184 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !191, metadata !DIExpression()), !dbg !192
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !193, metadata !DIExpression()), !dbg !194
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata i8** %7, metadata !197, metadata !DIExpression()), !dbg !200
  %8 = load i8*, i8** %4, align 8, !dbg !201
  store i8* %8, i8** %7, align 8, !dbg !200
  br label %9, !dbg !202

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !203
  %11 = add i64 %10, -1, !dbg !203
  store i64 %11, i64* %6, align 8, !dbg !203
  %12 = icmp ugt i64 %10, 0, !dbg !204
  br i1 %12, label %13, label %18, !dbg !202

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !205
  %15 = trunc i32 %14 to i8, !dbg !205
  %16 = load i8*, i8** %7, align 8, !dbg !206
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !206
  store i8* %17, i8** %7, align 8, !dbg !206
  store i8 %15, i8* %16, align 1, !dbg !207
  br label %9, !dbg !202, !llvm.loop !208

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !210
  ret i8* %19, !dbg !211
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48, !48}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !17, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/277_valid.c_883_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "5cb7eb5e9c477b38850006821edb1343")
!2 = !{!3, !11}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 278, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/libxml2/libxml/tree.h", directory: "", checksumkind: CSK_MD5, checksum: "750bac4395c48684302094dba58dc4a1")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_PCDATA", value: 1)
!8 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_ELEMENT", value: 2)
!9 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_SEQ", value: 3)
!10 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_OR", value: 4)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 290, baseType: !5, size: 32, elements: !12)
!12 = !{!13, !14, !15, !16}
!13 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_ONCE", value: 1)
!14 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_OPT", value: 2)
!15 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_MULT", value: 3)
!16 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_PLUS", value: 4)
!17 = !{!18, !19}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !4, line: 305, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !4, line: 304, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !4, line: 306, size: 384, elements: !23)
!23 = !{!24, !26, !28, !34, !36, !37, !38}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !22, file: !4, line: 307, baseType: !25, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentType", file: !4, line: 283, baseType: !3)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !22, file: !4, line: 308, baseType: !27, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentOccur", file: !4, line: 295, baseType: !11)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !22, file: !4, line: 309, baseType: !29, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !32, line: 28, baseType: !33)
!32 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !22, file: !4, line: 310, baseType: !35, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !22, file: !4, line: 311, baseType: !35, size: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !22, file: !4, line: 312, baseType: !35, size: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !22, file: !4, line: 313, baseType: !29, size: 64, offset: 320)
!39 = distinct !DICompileUnit(language: DW_LANG_C99, file: !40, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!40 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!41 = !{i32 7, !"Dwarf Version", i32 5}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !{i32 7, !"PIC Level", i32 2}
!45 = !{i32 7, !"PIE Level", i32 2}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"Ubuntu clang version 14.0.6"}
!49 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !50, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !53)
!50 = !DISubroutineType(types: !51)
!51 = !{!52}
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !{}
!54 = !DILocalVariable(name: "content", scope: !49, file: !1, line: 8, type: !19)
!55 = !DILocation(line: 8, column: 26, scope: !49)
!56 = !DILocalVariable(name: "cur", scope: !49, file: !1, line: 9, type: !19)
!57 = !DILocation(line: 9, column: 26, scope: !49)
!58 = !DILocalVariable(name: "prev", scope: !49, file: !1, line: 10, type: !19)
!59 = !DILocation(line: 10, column: 26, scope: !49)
!60 = !DILocalVariable(name: "tmp", scope: !49, file: !1, line: 11, type: !19)
!61 = !DILocation(line: 11, column: 26, scope: !49)
!62 = !DILocalVariable(name: "dict", scope: !49, file: !1, line: 12, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !64, line: 25, baseType: !65)
!64 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !64, line: 24, baseType: !67)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !64, line: 24, flags: DIFlagFwdDecl)
!68 = !DILocation(line: 12, column: 16, scope: !49)
!69 = !DILocalVariable(name: "ret", scope: !49, file: !1, line: 13, type: !52)
!70 = !DILocation(line: 13, column: 9, scope: !49)
!71 = !DILocation(line: 16, column: 5, scope: !49)
!72 = !DILocation(line: 19, column: 24, scope: !49)
!73 = !DILocation(line: 19, column: 5, scope: !49)
!74 = !DILocation(line: 20, column: 24, scope: !49)
!75 = !DILocation(line: 20, column: 5, scope: !49)
!76 = !DILocation(line: 21, column: 24, scope: !49)
!77 = !DILocation(line: 21, column: 5, scope: !49)
!78 = !DILocation(line: 22, column: 24, scope: !49)
!79 = !DILocation(line: 22, column: 5, scope: !49)
!80 = !DILocation(line: 23, column: 24, scope: !49)
!81 = !DILocation(line: 23, column: 5, scope: !49)
!82 = !DILocation(line: 26, column: 17, scope: !49)
!83 = !DILocation(line: 26, column: 21, scope: !49)
!84 = !DILocation(line: 26, column: 5, scope: !49)
!85 = !DILocation(line: 34, column: 11, scope: !49)
!86 = !DILocation(line: 34, column: 9, scope: !49)
!87 = !DILocation(line: 35, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !49, file: !1, line: 35, column: 9)
!89 = !DILocation(line: 35, column: 13, scope: !88)
!90 = !DILocation(line: 35, column: 9, scope: !49)
!91 = !DILocation(line: 36, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 35, column: 22)
!93 = !DILocation(line: 37, column: 9, scope: !92)
!94 = !DILocation(line: 41, column: 12, scope: !49)
!95 = !DILocation(line: 41, column: 10, scope: !49)
!96 = !DILocation(line: 42, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !49, file: !1, line: 42, column: 9)
!98 = !DILocation(line: 42, column: 14, scope: !97)
!99 = !DILocation(line: 42, column: 9, scope: !49)
!100 = !DILocation(line: 43, column: 31, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 42, column: 23)
!102 = !DILocation(line: 43, column: 9, scope: !101)
!103 = !DILocation(line: 44, column: 9, scope: !101)
!104 = !DILocation(line: 45, column: 9, scope: !101)
!105 = !DILocation(line: 49, column: 12, scope: !49)
!106 = !DILocation(line: 49, column: 10, scope: !49)
!107 = !DILocation(line: 55, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !49, file: !1, line: 55, column: 9)
!109 = !DILocation(line: 55, column: 13, scope: !108)
!110 = !DILocation(line: 55, column: 9, scope: !49)
!111 = !DILocation(line: 57, column: 38, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 55, column: 22)
!113 = !DILocation(line: 57, column: 15, scope: !112)
!114 = !DILocation(line: 57, column: 13, scope: !112)
!115 = !DILocation(line: 58, column: 13, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !1, line: 58, column: 13)
!117 = !DILocation(line: 58, column: 17, scope: !116)
!118 = !DILocation(line: 58, column: 13, scope: !112)
!119 = !DILocation(line: 59, column: 13, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !1, line: 58, column: 26)
!121 = !DILocation(line: 62, column: 25, scope: !120)
!122 = !DILocation(line: 62, column: 29, scope: !120)
!123 = !DILocation(line: 62, column: 13, scope: !120)
!124 = !DILocation(line: 63, column: 9, scope: !120)
!125 = !DILocation(line: 65, column: 9, scope: !112)
!126 = !DILocation(line: 66, column: 16, scope: !112)
!127 = !DILocation(line: 66, column: 9, scope: !112)
!128 = !DILocation(line: 68, column: 21, scope: !112)
!129 = !DILocation(line: 68, column: 26, scope: !112)
!130 = !DILocation(line: 68, column: 9, scope: !112)
!131 = !DILocation(line: 68, column: 14, scope: !112)
!132 = !DILocation(line: 68, column: 19, scope: !112)
!133 = !DILocation(line: 69, column: 21, scope: !112)
!134 = !DILocation(line: 69, column: 26, scope: !112)
!135 = !DILocation(line: 69, column: 9, scope: !112)
!136 = !DILocation(line: 69, column: 14, scope: !112)
!137 = !DILocation(line: 69, column: 19, scope: !112)
!138 = !DILocation(line: 70, column: 20, scope: !112)
!139 = !DILocation(line: 70, column: 9, scope: !112)
!140 = !DILocation(line: 70, column: 15, scope: !112)
!141 = !DILocation(line: 70, column: 18, scope: !112)
!142 = !DILocation(line: 71, column: 23, scope: !112)
!143 = !DILocation(line: 71, column: 9, scope: !112)
!144 = !DILocation(line: 71, column: 14, scope: !112)
!145 = !DILocation(line: 71, column: 21, scope: !112)
!146 = !DILocation(line: 72, column: 13, scope: !147)
!147 = distinct !DILexicalBlock(scope: !112, file: !1, line: 72, column: 13)
!148 = !DILocation(line: 72, column: 18, scope: !147)
!149 = !DILocation(line: 72, column: 23, scope: !147)
!150 = !DILocation(line: 72, column: 13, scope: !112)
!151 = !DILocation(line: 73, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !1, line: 73, column: 17)
!153 = distinct !DILexicalBlock(scope: !147, file: !1, line: 72, column: 32)
!154 = !DILocation(line: 73, column: 17, scope: !153)
!155 = !DILocation(line: 74, column: 43, scope: !152)
!156 = !DILocation(line: 74, column: 49, scope: !152)
!157 = !DILocation(line: 74, column: 54, scope: !152)
!158 = !DILocation(line: 74, column: 29, scope: !152)
!159 = !DILocation(line: 74, column: 17, scope: !152)
!160 = !DILocation(line: 74, column: 22, scope: !152)
!161 = !DILocation(line: 74, column: 27, scope: !152)
!162 = !DILocation(line: 76, column: 39, scope: !152)
!163 = !DILocation(line: 76, column: 44, scope: !152)
!164 = !DILocation(line: 76, column: 29, scope: !152)
!165 = !DILocation(line: 76, column: 17, scope: !152)
!166 = !DILocation(line: 76, column: 22, scope: !152)
!167 = !DILocation(line: 76, column: 27, scope: !152)
!168 = !DILocation(line: 77, column: 9, scope: !153)
!169 = !DILocation(line: 79, column: 9, scope: !112)
!170 = !DILocation(line: 79, column: 17, scope: !112)
!171 = !DILocation(line: 80, column: 5, scope: !112)
!172 = !DILocation(line: 83, column: 27, scope: !49)
!173 = !DILocation(line: 83, column: 5, scope: !49)
!174 = !DILocation(line: 84, column: 27, scope: !49)
!175 = !DILocation(line: 84, column: 5, scope: !49)
!176 = !DILocation(line: 85, column: 9, scope: !177)
!177 = distinct !DILexicalBlock(scope: !49, file: !1, line: 85, column: 9)
!178 = !DILocation(line: 85, column: 9, scope: !49)
!179 = !DILocation(line: 85, column: 27, scope: !177)
!180 = !DILocation(line: 85, column: 15, scope: !177)
!181 = !DILocation(line: 86, column: 5, scope: !49)
!182 = !DILocation(line: 87, column: 5, scope: !49)
!183 = !DILocation(line: 88, column: 1, scope: !49)
!184 = distinct !DISubprogram(name: "memset", scope: !185, file: !185, line: 12, type: !186, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !53)
!185 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!186 = !DISubroutineType(types: !187)
!187 = !{!18, !18, !52, !188}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 46, baseType: !190)
!189 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!190 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!191 = !DILocalVariable(name: "dst", arg: 1, scope: !184, file: !185, line: 12, type: !18)
!192 = !DILocation(line: 12, column: 20, scope: !184)
!193 = !DILocalVariable(name: "s", arg: 2, scope: !184, file: !185, line: 12, type: !52)
!194 = !DILocation(line: 12, column: 29, scope: !184)
!195 = !DILocalVariable(name: "count", arg: 3, scope: !184, file: !185, line: 12, type: !188)
!196 = !DILocation(line: 12, column: 39, scope: !184)
!197 = !DILocalVariable(name: "a", scope: !184, file: !185, line: 13, type: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!200 = !DILocation(line: 13, column: 9, scope: !184)
!201 = !DILocation(line: 13, column: 13, scope: !184)
!202 = !DILocation(line: 14, column: 3, scope: !184)
!203 = !DILocation(line: 14, column: 15, scope: !184)
!204 = !DILocation(line: 14, column: 18, scope: !184)
!205 = !DILocation(line: 15, column: 12, scope: !184)
!206 = !DILocation(line: 15, column: 7, scope: !184)
!207 = !DILocation(line: 15, column: 10, scope: !184)
!208 = distinct !{!208, !202, !205, !209}
!209 = !{!"llvm.loop.mustprogress"}
!210 = !DILocation(line: 16, column: 10, scope: !184)
!211 = !DILocation(line: 16, column: 3, scope: !184)
