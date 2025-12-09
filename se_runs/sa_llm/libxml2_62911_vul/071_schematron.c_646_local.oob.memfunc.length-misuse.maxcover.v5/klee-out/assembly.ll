; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/071_schematron.c_646_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/071_schematron.c_646_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchematronParserCtxt = type opaque

@.str = private unnamed_addr constant [8 x i8] c"URL_len\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"URL\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/071_schematron.c_646_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !16 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._xmlSchematronParserCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i64* %3, metadata !23, metadata !DIExpression()), !dbg !27
  %5 = bitcast i64* %3 to i8*, !dbg !28
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !29
  %6 = load i64, i64* %3, align 8, !dbg !30
  %7 = icmp ult i64 %6, 1024, !dbg !31
  %8 = zext i1 %7 to i32, !dbg !31
  %9 = sext i32 %8 to i64, !dbg !30
  call void @klee_assume(i64 noundef %9), !dbg !32
  %10 = load i64, i64* %3, align 8, !dbg !33
  %11 = add i64 %10, 1, !dbg !34
  %12 = call i32 (i64, i8*, ...) bitcast (i32 (...)* @klee_make_symbolic_str to i32 (i64, i8*, ...)*)(i64 noundef %11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !35
  %13 = sext i32 %12 to i64, !dbg !36
  %14 = inttoptr i64 %13 to i8*, !dbg !36
  store i8* %14, i8** %2, align 8, !dbg !37
  %15 = load i8*, i8** %2, align 8, !dbg !38
  %16 = load i64, i64* %3, align 8, !dbg !39
  %17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !40
  store i8 0, i8* %17, align 1, !dbg !41
  call void @llvm.dbg.declare(metadata %struct._xmlSchematronParserCtxt** %4, metadata !42, metadata !DIExpression()), !dbg !48
  %18 = load i8*, i8** %2, align 8, !dbg !49
  %19 = call %struct._xmlSchematronParserCtxt* @xmlSchematronNewParserCtxt(i8* noundef %18), !dbg !50
  store %struct._xmlSchematronParserCtxt* %19, %struct._xmlSchematronParserCtxt** %4, align 8, !dbg !48
  %20 = load %struct._xmlSchematronParserCtxt*, %struct._xmlSchematronParserCtxt** %4, align 8, !dbg !51
  %21 = icmp ne %struct._xmlSchematronParserCtxt* %20, null, !dbg !53
  br i1 %21, label %22, label %25, !dbg !54

22:                                               ; preds = %0
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 17, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !55
  %24 = load %struct._xmlSchematronParserCtxt*, %struct._xmlSchematronParserCtxt** %4, align 8, !dbg !57
  call void @xmlSchematronFreeParserCtxt(%struct._xmlSchematronParserCtxt* noundef %24), !dbg !58
  br label %25, !dbg !59

25:                                               ; preds = %22, %0
  ret i32 0, !dbg !60
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare i32 @klee_make_symbolic_str(...) #2

declare %struct._xmlSchematronParserCtxt* @xmlSchematronNewParserCtxt(i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlSchematronFreeParserCtxt(%struct._xmlSchematronParserCtxt* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/071_schematron.c_646_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "2e27f52a669fa90312cafc03695bda1c")
!2 = !{!3, !6, !7}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !17, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{}
!21 = !DILocalVariable(name: "URL", scope: !16, file: !1, line: 7, type: !3)
!22 = !DILocation(line: 7, column: 17, scope: !16)
!23 = !DILocalVariable(name: "URL_len", scope: !16, file: !1, line: 8, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 46, baseType: !26)
!25 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!26 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!27 = !DILocation(line: 8, column: 12, scope: !16)
!28 = !DILocation(line: 10, column: 24, scope: !16)
!29 = !DILocation(line: 10, column: 5, scope: !16)
!30 = !DILocation(line: 11, column: 17, scope: !16)
!31 = !DILocation(line: 11, column: 25, scope: !16)
!32 = !DILocation(line: 11, column: 5, scope: !16)
!33 = !DILocation(line: 12, column: 48, scope: !16)
!34 = !DILocation(line: 12, column: 55, scope: !16)
!35 = !DILocation(line: 12, column: 25, scope: !16)
!36 = !DILocation(line: 12, column: 11, scope: !16)
!37 = !DILocation(line: 12, column: 9, scope: !16)
!38 = !DILocation(line: 13, column: 13, scope: !16)
!39 = !DILocation(line: 13, column: 18, scope: !16)
!40 = !DILocation(line: 13, column: 5, scope: !16)
!41 = !DILocation(line: 13, column: 27, scope: !16)
!42 = !DILocalVariable(name: "ctxt", scope: !16, file: !1, line: 15, type: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematronParserCtxtPtr", file: !44, line: 64, baseType: !45)
!44 = !DIFile(filename: "/usr/include/libxml2/libxml/schematron.h", directory: "", checksumkind: CSK_MD5, checksum: "96d9e0c083c4949e246ce02cf31de483")
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematronParserCtxt", file: !44, line: 63, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchematronParserCtxt", file: !44, line: 63, flags: DIFlagFwdDecl)
!48 = !DILocation(line: 15, column: 32, scope: !16)
!49 = !DILocation(line: 15, column: 66, scope: !16)
!50 = !DILocation(line: 15, column: 39, scope: !16)
!51 = !DILocation(line: 16, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !16, file: !1, line: 16, column: 9)
!53 = !DILocation(line: 16, column: 14, scope: !52)
!54 = !DILocation(line: 16, column: 9, scope: !16)
!55 = !DILocation(line: 17, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !52, file: !1, line: 16, column: 23)
!57 = !DILocation(line: 18, column: 37, scope: !56)
!58 = !DILocation(line: 18, column: 9, scope: !56)
!59 = !DILocation(line: 19, column: 5, scope: !56)
!60 = !DILocation(line: 21, column: 5, scope: !16)
