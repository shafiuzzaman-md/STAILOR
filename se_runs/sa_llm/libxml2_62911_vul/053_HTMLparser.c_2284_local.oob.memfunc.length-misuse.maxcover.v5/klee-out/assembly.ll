; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/053_HTMLparser.c_2284_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/053_HTMLparser.c_2284_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { i32 }
%struct._xmlEntity = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"inputNr\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ent_name\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"(len <= (outend - out)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/053_HTMLparser.c_2284_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.htmlParseComment = private unnamed_addr constant [39 x i8] c"void htmlParseComment(xmlParserCtxt *)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !28 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt* %2, metadata !32, metadata !DIExpression()), !dbg !37
  %3 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !38
  %4 = bitcast i32* %3 to i8*, !dbg !39
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !40
  %5 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !41
  %6 = load i32, i32* %5, align 4, !dbg !41
  %7 = icmp sge i32 %6, 0, !dbg !42
  %8 = zext i1 %7 to i32, !dbg !42
  %9 = sext i32 %8 to i64, !dbg !43
  call void @klee_assume(i64 noundef %9), !dbg !44
  call void @htmlParseComment(%struct._xmlParserCtxt* noundef %2), !dbg !45
  ret i32 0, !dbg !46
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htmlParseComment(%struct._xmlParserCtxt* noundef %0) #0 !dbg !47 {
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlEntity*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i8** %3, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i8** %4, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i8** %5, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata %struct._xmlEntity** %6, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i8** %7, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %8, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %9, metadata !65, metadata !DIExpression()), !dbg !66
  %10 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !67
  %11 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %10, i32 0, i32 0, !dbg !68
  %12 = load i32, i32* %11, align 4, !dbg !68
  %13 = icmp sgt i32 %12, 0, !dbg !69
  br i1 %13, label %14, label %16, !dbg !67

14:                                               ; preds = %1
  %15 = load i8*, i8** null, align 8, !dbg !70
  br label %17, !dbg !67

16:                                               ; preds = %1
  br label %17, !dbg !67

17:                                               ; preds = %16, %14
  %18 = phi i8* [ %15, %14 ], [ null, %16 ], !dbg !67
  store i8* %18, i8** %3, align 8, !dbg !71
  %19 = call noalias i8* @malloc(i64 noundef 256) #8, !dbg !72
  store i8* %19, i8** %4, align 8, !dbg !73
  %20 = load i8*, i8** %4, align 8, !dbg !74
  %21 = getelementptr inbounds i8, i8* %20, i64 256, !dbg !75
  store i8* %21, i8** %5, align 8, !dbg !76
  %22 = call noalias i8* @malloc(i64 noundef 8) #8, !dbg !77
  %23 = bitcast i8* %22 to %struct._xmlEntity*, !dbg !78
  store %struct._xmlEntity* %23, %struct._xmlEntity** %6, align 8, !dbg !79
  %24 = load %struct._xmlEntity*, %struct._xmlEntity** %6, align 8, !dbg !80
  %25 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %24, i32 0, i32 0, !dbg !81
  %26 = bitcast i8** %25 to i8*, !dbg !82
  call void @klee_make_symbolic(i8* noundef %26, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !83
  %27 = load %struct._xmlEntity*, %struct._xmlEntity** %6, align 8, !dbg !84
  %28 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %27, i32 0, i32 0, !dbg !85
  %29 = load i8*, i8** %28, align 8, !dbg !85
  %30 = icmp ne i8* %29, null, !dbg !86
  %31 = zext i1 %30 to i32, !dbg !86
  %32 = sext i32 %31 to i64, !dbg !84
  call void @klee_assume(i64 noundef %32), !dbg !87
  %33 = load %struct._xmlEntity*, %struct._xmlEntity** %6, align 8, !dbg !88
  %34 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %33, i32 0, i32 0, !dbg !89
  %35 = load i8*, i8** %34, align 8, !dbg !89
  store i8* %35, i8** %7, align 8, !dbg !90
  %36 = load i8*, i8** %7, align 8, !dbg !91
  %37 = call i64 @strlen(i8* noundef %36) #9, !dbg !92
  %38 = trunc i64 %37 to i32, !dbg !92
  store i32 %38, i32* %8, align 4, !dbg !93
  %39 = load i8*, i8** %5, align 8, !dbg !94
  %40 = load i8*, i8** %4, align 8, !dbg !96
  %41 = ptrtoint i8* %39 to i64, !dbg !97
  %42 = ptrtoint i8* %40 to i64, !dbg !97
  %43 = sub i64 %41, %42, !dbg !97
  %44 = load i32, i32* %8, align 4, !dbg !98
  %45 = add nsw i32 %44, 2, !dbg !99
  %46 = sext i32 %45 to i64, !dbg !98
  %47 = icmp slt i64 %43, %46, !dbg !100
  br i1 %47, label %48, label %52, !dbg !101

48:                                               ; preds = %17
  %49 = load i8*, i8** %4, align 8, !dbg !102
  call void @free(i8* noundef %49) #8, !dbg !104
  %50 = load %struct._xmlEntity*, %struct._xmlEntity** %6, align 8, !dbg !105
  %51 = bitcast %struct._xmlEntity* %50 to i8*, !dbg !105
  call void @free(i8* noundef %51) #8, !dbg !106
  br label %92, !dbg !107

52:                                               ; preds = %17
  %53 = load i8*, i8** %4, align 8, !dbg !108
  %54 = getelementptr inbounds i8, i8* %53, i32 1, !dbg !108
  store i8* %54, i8** %4, align 8, !dbg !108
  store i8 38, i8* %53, align 1, !dbg !109
  %55 = load i32, i32* %8, align 4, !dbg !110
  %56 = sext i32 %55 to i64, !dbg !110
  %57 = load i8*, i8** %5, align 8, !dbg !110
  %58 = load i8*, i8** %4, align 8, !dbg !110
  %59 = ptrtoint i8* %57 to i64, !dbg !110
  %60 = ptrtoint i8* %58 to i64, !dbg !110
  %61 = sub i64 %59, %60, !dbg !110
  %62 = icmp sle i64 %56, %61, !dbg !110
  br i1 %62, label %63, label %65, !dbg !110

63:                                               ; preds = %52
  br i1 true, label %64, label %65, !dbg !110

64:                                               ; preds = %63
  br label %67, !dbg !110

65:                                               ; preds = %63, %52
  %66 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.htmlParseComment, i64 0, i64 0)), !dbg !110
  br label %67, !dbg !110

67:                                               ; preds = %65, %64
  %68 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.htmlParseComment, i64 0, i64 0)), !dbg !111
  %69 = load i8*, i8** %4, align 8, !dbg !112
  %70 = load i8*, i8** %7, align 8, !dbg !113
  %71 = load i32, i32* %8, align 4, !dbg !114
  %72 = sext i32 %71 to i64, !dbg !114
  %73 = call i8* @memcpy(i8* %69, i8* %70, i64 %72), !dbg !115
  %74 = load i32, i32* %8, align 4, !dbg !116
  %75 = load i8*, i8** %4, align 8, !dbg !117
  %76 = sext i32 %74 to i64, !dbg !117
  %77 = getelementptr inbounds i8, i8* %75, i64 %76, !dbg !117
  store i8* %77, i8** %4, align 8, !dbg !117
  %78 = load i8*, i8** %4, align 8, !dbg !118
  %79 = getelementptr inbounds i8, i8* %78, i32 1, !dbg !118
  store i8* %79, i8** %4, align 8, !dbg !118
  store i8 59, i8* %78, align 1, !dbg !119
  %80 = load i8*, i8** %3, align 8, !dbg !120
  %81 = ptrtoint i8* %80 to i64, !dbg !121
  %82 = sub i64 %81, 0, !dbg !121
  %83 = trunc i64 %82 to i32, !dbg !122
  store i32 %83, i32* %9, align 4, !dbg !123
  %84 = load i8*, i8** %4, align 8, !dbg !124
  %85 = load i32, i32* %8, align 4, !dbg !125
  %86 = sext i32 %85 to i64, !dbg !126
  %87 = sub i64 0, %86, !dbg !126
  %88 = getelementptr inbounds i8, i8* %84, i64 %87, !dbg !126
  %89 = getelementptr inbounds i8, i8* %88, i64 -2, !dbg !127
  call void @free(i8* noundef %89) #8, !dbg !128
  %90 = load %struct._xmlEntity*, %struct._xmlEntity** %6, align 8, !dbg !129
  %91 = bitcast %struct._xmlEntity* %90 to i8*, !dbg !129
  call void @free(i8* noundef %91) #8, !dbg !130
  br label %92, !dbg !131

92:                                               ; preds = %67, %48
  ret void, !dbg !131
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !132 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !141, metadata !DIExpression()), !dbg !142
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !143, metadata !DIExpression()), !dbg !144
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i8** %7, metadata !147, metadata !DIExpression()), !dbg !148
  %9 = load i8*, i8** %4, align 8, !dbg !149
  store i8* %9, i8** %7, align 8, !dbg !148
  call void @llvm.dbg.declare(metadata i8** %8, metadata !150, metadata !DIExpression()), !dbg !153
  %10 = load i8*, i8** %5, align 8, !dbg !154
  store i8* %10, i8** %8, align 8, !dbg !153
  br label %11, !dbg !155

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !156
  %13 = add i64 %12, -1, !dbg !156
  store i64 %13, i64* %6, align 8, !dbg !156
  %14 = icmp ugt i64 %12, 0, !dbg !157
  br i1 %14, label %15, label %21, !dbg !155

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !158
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !158
  store i8* %17, i8** %8, align 8, !dbg !158
  %18 = load i8, i8* %16, align 1, !dbg !159
  %19 = load i8*, i8** %7, align 8, !dbg !160
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !160
  store i8* %20, i8** %7, align 8, !dbg !160
  store i8 %18, i8* %19, align 1, !dbg !161
  br label %11, !dbg !155, !llvm.loop !162

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !164
  ret i8* %22, !dbg !165
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27, !27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/053_HTMLparser.c_2284_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3f9a0fffe0889ff1dd8b9cc03985fe17")
!2 = !{!3, !8, !11, !16, !17}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInput", file: !1, line: 20, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInput", file: !1, line: 17, size: 128, elements: !6)
!6 = !{!7, !10}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !5, file: !1, line: 18, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5, file: !1, line: 19, baseType: !8, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntity", file: !1, line: 11, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEntity", file: !1, line: 9, size: 64, elements: !14)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !13, file: !1, line: 10, baseType: !8, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 61, type: !29, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!29 = !DISubroutineType(types: !30)
!30 = !{!17}
!31 = !{}
!32 = !DILocalVariable(name: "ctxt", scope: !28, file: !1, line: 62, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 15, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 13, size: 32, elements: !35)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "inputNr", scope: !34, file: !1, line: 14, baseType: !17, size: 32)
!37 = !DILocation(line: 62, column: 19, scope: !28)
!38 = !DILocation(line: 64, column: 30, scope: !28)
!39 = !DILocation(line: 64, column: 24, scope: !28)
!40 = !DILocation(line: 64, column: 5, scope: !28)
!41 = !DILocation(line: 65, column: 22, scope: !28)
!42 = !DILocation(line: 65, column: 30, scope: !28)
!43 = !DILocation(line: 65, column: 17, scope: !28)
!44 = !DILocation(line: 65, column: 5, scope: !28)
!45 = !DILocation(line: 67, column: 5, scope: !28)
!46 = !DILocation(line: 69, column: 5, scope: !28)
!47 = distinct !DISubprogram(name: "htmlParseComment", scope: !1, file: !1, line: 22, type: !48, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !31)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!51 = !DILocalVariable(name: "ctxt", arg: 1, scope: !47, file: !1, line: 22, type: !50)
!52 = !DILocation(line: 22, column: 45, scope: !47)
!53 = !DILocalVariable(name: "in", scope: !47, file: !1, line: 23, type: !8)
!54 = !DILocation(line: 23, column: 11, scope: !47)
!55 = !DILocalVariable(name: "out", scope: !47, file: !1, line: 23, type: !8)
!56 = !DILocation(line: 23, column: 16, scope: !47)
!57 = !DILocalVariable(name: "outend", scope: !47, file: !1, line: 23, type: !8)
!58 = !DILocation(line: 23, column: 22, scope: !47)
!59 = !DILocalVariable(name: "ent", scope: !47, file: !1, line: 24, type: !11)
!60 = !DILocation(line: 24, column: 16, scope: !47)
!61 = !DILocalVariable(name: "cp", scope: !47, file: !1, line: 25, type: !8)
!62 = !DILocation(line: 25, column: 11, scope: !47)
!63 = !DILocalVariable(name: "len", scope: !47, file: !1, line: 26, type: !17)
!64 = !DILocation(line: 26, column: 9, scope: !47)
!65 = !DILocalVariable(name: "processed", scope: !47, file: !1, line: 27, type: !17)
!66 = !DILocation(line: 27, column: 9, scope: !47)
!67 = !DILocation(line: 29, column: 10, scope: !47)
!68 = !DILocation(line: 29, column: 16, scope: !47)
!69 = !DILocation(line: 29, column: 24, scope: !47)
!70 = !DILocation(line: 29, column: 52, scope: !47)
!71 = !DILocation(line: 29, column: 8, scope: !47)
!72 = !DILocation(line: 30, column: 18, scope: !47)
!73 = !DILocation(line: 30, column: 9, scope: !47)
!74 = !DILocation(line: 31, column: 14, scope: !47)
!75 = !DILocation(line: 31, column: 18, scope: !47)
!76 = !DILocation(line: 31, column: 12, scope: !47)
!77 = !DILocation(line: 32, column: 23, scope: !47)
!78 = !DILocation(line: 32, column: 11, scope: !47)
!79 = !DILocation(line: 32, column: 9, scope: !47)
!80 = !DILocation(line: 34, column: 25, scope: !47)
!81 = !DILocation(line: 34, column: 30, scope: !47)
!82 = !DILocation(line: 34, column: 24, scope: !47)
!83 = !DILocation(line: 34, column: 5, scope: !47)
!84 = !DILocation(line: 35, column: 17, scope: !47)
!85 = !DILocation(line: 35, column: 22, scope: !47)
!86 = !DILocation(line: 35, column: 27, scope: !47)
!87 = !DILocation(line: 35, column: 5, scope: !47)
!88 = !DILocation(line: 37, column: 10, scope: !47)
!89 = !DILocation(line: 37, column: 15, scope: !47)
!90 = !DILocation(line: 37, column: 8, scope: !47)
!91 = !DILocation(line: 38, column: 18, scope: !47)
!92 = !DILocation(line: 38, column: 11, scope: !47)
!93 = !DILocation(line: 38, column: 9, scope: !47)
!94 = !DILocation(line: 40, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !47, file: !1, line: 40, column: 9)
!96 = !DILocation(line: 40, column: 18, scope: !95)
!97 = !DILocation(line: 40, column: 16, scope: !95)
!98 = !DILocation(line: 40, column: 24, scope: !95)
!99 = !DILocation(line: 40, column: 28, scope: !95)
!100 = !DILocation(line: 40, column: 22, scope: !95)
!101 = !DILocation(line: 40, column: 9, scope: !47)
!102 = !DILocation(line: 41, column: 14, scope: !103)
!103 = distinct !DILexicalBlock(scope: !95, file: !1, line: 40, column: 33)
!104 = !DILocation(line: 41, column: 9, scope: !103)
!105 = !DILocation(line: 42, column: 14, scope: !103)
!106 = !DILocation(line: 42, column: 9, scope: !103)
!107 = !DILocation(line: 43, column: 9, scope: !103)
!108 = !DILocation(line: 46, column: 9, scope: !47)
!109 = !DILocation(line: 46, column: 12, scope: !47)
!110 = !DILocation(line: 48, column: 5, scope: !47)
!111 = !DILocation(line: 49, column: 5, scope: !47)
!112 = !DILocation(line: 51, column: 12, scope: !47)
!113 = !DILocation(line: 51, column: 17, scope: !47)
!114 = !DILocation(line: 51, column: 21, scope: !47)
!115 = !DILocation(line: 51, column: 5, scope: !47)
!116 = !DILocation(line: 52, column: 12, scope: !47)
!117 = !DILocation(line: 52, column: 9, scope: !47)
!118 = !DILocation(line: 53, column: 9, scope: !47)
!119 = !DILocation(line: 53, column: 12, scope: !47)
!120 = !DILocation(line: 55, column: 23, scope: !47)
!121 = !DILocation(line: 55, column: 26, scope: !47)
!122 = !DILocation(line: 55, column: 17, scope: !47)
!123 = !DILocation(line: 55, column: 15, scope: !47)
!124 = !DILocation(line: 57, column: 10, scope: !47)
!125 = !DILocation(line: 57, column: 16, scope: !47)
!126 = !DILocation(line: 57, column: 14, scope: !47)
!127 = !DILocation(line: 57, column: 20, scope: !47)
!128 = !DILocation(line: 57, column: 5, scope: !47)
!129 = !DILocation(line: 58, column: 10, scope: !47)
!130 = !DILocation(line: 58, column: 5, scope: !47)
!131 = !DILocation(line: 59, column: 1, scope: !47)
!132 = distinct !DISubprogram(name: "memcpy", scope: !133, file: !133, line: 12, type: !134, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !31)
!133 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!134 = !DISubroutineType(types: !135)
!135 = !{!16, !16, !136, !138}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !139, line: 46, baseType: !140)
!139 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!140 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!141 = !DILocalVariable(name: "destaddr", arg: 1, scope: !132, file: !133, line: 12, type: !16)
!142 = !DILocation(line: 12, column: 20, scope: !132)
!143 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !132, file: !133, line: 12, type: !136)
!144 = !DILocation(line: 12, column: 42, scope: !132)
!145 = !DILocalVariable(name: "len", arg: 3, scope: !132, file: !133, line: 12, type: !138)
!146 = !DILocation(line: 12, column: 58, scope: !132)
!147 = !DILocalVariable(name: "dest", scope: !132, file: !133, line: 13, type: !8)
!148 = !DILocation(line: 13, column: 9, scope: !132)
!149 = !DILocation(line: 13, column: 16, scope: !132)
!150 = !DILocalVariable(name: "src", scope: !132, file: !133, line: 14, type: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!153 = !DILocation(line: 14, column: 15, scope: !132)
!154 = !DILocation(line: 14, column: 21, scope: !132)
!155 = !DILocation(line: 16, column: 3, scope: !132)
!156 = !DILocation(line: 16, column: 13, scope: !132)
!157 = !DILocation(line: 16, column: 16, scope: !132)
!158 = !DILocation(line: 17, column: 19, scope: !132)
!159 = !DILocation(line: 17, column: 15, scope: !132)
!160 = !DILocation(line: 17, column: 10, scope: !132)
!161 = !DILocation(line: 17, column: 13, scope: !132)
!162 = distinct !{!162, !155, !158, !163}
!163 = !{!"llvm.loop.mustprogress"}
!164 = !DILocation(line: 18, column: 10, scope: !132)
!165 = !DILocation(line: 18, column: 3, scope: !132)
