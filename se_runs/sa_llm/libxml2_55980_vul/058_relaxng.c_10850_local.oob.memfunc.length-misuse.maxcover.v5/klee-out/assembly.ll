; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/058_relaxng.c_10850_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/058_relaxng.c_10850_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlValidCtxt = type { i32, i8*, i8*, i8* }
%struct._xmlDoc = type { i32 }
%struct._xmlRelaxNGValidCtxt = type { i32, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"validate_ret\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"doc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlValidateDocumentFinal(%struct._xmlValidCtxt* noundef %0, %struct._xmlDoc* noundef %1) #0 !dbg !10 {
  %3 = alloca %struct._xmlValidCtxt*, align 8
  %4 = alloca %struct._xmlDoc*, align 8
  %5 = alloca i32, align 4
  store %struct._xmlValidCtxt* %0, %struct._xmlValidCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlValidCtxt** %3, metadata !29, metadata !DIExpression()), !dbg !30
  store %struct._xmlDoc* %1, %struct._xmlDoc** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %4, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %5, metadata !33, metadata !DIExpression()), !dbg !34
  %6 = bitcast i32* %5 to i8*, !dbg !35
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !36
  %7 = load i32, i32* %5, align 4, !dbg !37
  %8 = icmp eq i32 %7, 0, !dbg !38
  br i1 %8, label %12, label %9, !dbg !39

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4, !dbg !40
  %11 = icmp eq i32 %10, 1, !dbg !41
  br label %12, !dbg !39

12:                                               ; preds = %9, %2
  %13 = phi i1 [ true, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32, !dbg !39
  %15 = sext i32 %14 to i64, !dbg !37
  call void @klee_assume(i64 noundef %15), !dbg !42
  %16 = load i32, i32* %5, align 4, !dbg !43
  ret i32 %16, !dbg !44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRelaxNGDumpValidError(%struct._xmlRelaxNGValidCtxt* noundef %0) #0 !dbg !45 {
  %2 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  store %struct._xmlRelaxNGValidCtxt* %0, %struct._xmlRelaxNGValidCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %2, metadata !57, metadata !DIExpression()), !dbg !58
  ret void, !dbg !59
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !60 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNGValidCtxt, align 8
  %3 = alloca %struct._xmlDoc, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt* %2, metadata !63, metadata !DIExpression()), !dbg !64
  %4 = bitcast %struct._xmlRelaxNGValidCtxt* %2 to i8*, !dbg !65
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !66
  %5 = getelementptr inbounds %struct._xmlRelaxNGValidCtxt, %struct._xmlRelaxNGValidCtxt* %2, i32 0, i32 1, !dbg !67
  %6 = load i32, i32* %5, align 4, !dbg !67
  %7 = icmp eq i32 %6, 1, !dbg !68
  %8 = zext i1 %7 to i32, !dbg !68
  %9 = sext i32 %8 to i64, !dbg !69
  call void @klee_assume(i64 noundef %9), !dbg !70
  call void @llvm.dbg.declare(metadata %struct._xmlDoc* %3, metadata !71, metadata !DIExpression()), !dbg !72
  %10 = bitcast %struct._xmlDoc* %3 to i8*, !dbg !73
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !74
  ret i32 0, !dbg !75
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/058_relaxng.c_10850_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "17c61bb7721d5b130a8960a2a213b145")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "xmlValidateDocumentFinal", scope: !1, file: !1, line: 31, type: !11, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !23}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidCtxt", file: !1, line: 23, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidCtxt", file: !1, line: 18, size: 256, elements: !17)
!17 = !{!18, !19, !21, !22}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !16, file: !1, line: 19, baseType: !13, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !16, file: !1, line: 20, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !16, file: !1, line: 21, baseType: !20, size: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !16, file: !1, line: 22, baseType: !20, size: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 28, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 25, size: 32, elements: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !1, line: 27, baseType: !13, size: 32)
!28 = !{}
!29 = !DILocalVariable(name: "vctxt", arg: 1, scope: !10, file: !1, line: 31, type: !14)
!30 = !DILocation(line: 31, column: 44, scope: !10)
!31 = !DILocalVariable(name: "doc", arg: 2, scope: !10, file: !1, line: 31, type: !23)
!32 = !DILocation(line: 31, column: 59, scope: !10)
!33 = !DILocalVariable(name: "ret", scope: !10, file: !1, line: 33, type: !13)
!34 = !DILocation(line: 33, column: 9, scope: !10)
!35 = !DILocation(line: 34, column: 24, scope: !10)
!36 = !DILocation(line: 34, column: 5, scope: !10)
!37 = !DILocation(line: 35, column: 17, scope: !10)
!38 = !DILocation(line: 35, column: 21, scope: !10)
!39 = !DILocation(line: 35, column: 26, scope: !10)
!40 = !DILocation(line: 35, column: 29, scope: !10)
!41 = !DILocation(line: 35, column: 33, scope: !10)
!42 = !DILocation(line: 35, column: 5, scope: !10)
!43 = !DILocation(line: 36, column: 12, scope: !10)
!44 = !DILocation(line: 36, column: 5, scope: !10)
!45 = distinct !DISubprogram(name: "xmlRelaxNGDumpValidError", scope: !1, file: !1, line: 40, type: !46, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxt", file: !1, line: 16, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidCtxt", file: !1, line: 10, size: 256, elements: !51)
!51 = !{!52, !53, !54, !55, !56}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "errNr", scope: !50, file: !1, line: 11, baseType: !13, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "idref", scope: !50, file: !1, line: 12, baseType: !13, size: 32, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !50, file: !1, line: 13, baseType: !20, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !50, file: !1, line: 14, baseType: !20, size: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !50, file: !1, line: 15, baseType: !20, size: 64, offset: 192)
!57 = !DILocalVariable(name: "ctxt", arg: 1, scope: !45, file: !1, line: 40, type: !48)
!58 = !DILocation(line: 40, column: 52, scope: !45)
!59 = !DILocation(line: 42, column: 1, scope: !45)
!60 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 45, type: !61, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!61 = !DISubroutineType(types: !62)
!62 = !{!13}
!63 = !DILocalVariable(name: "ctxt", scope: !60, file: !1, line: 47, type: !49)
!64 = !DILocation(line: 47, column: 25, scope: !60)
!65 = !DILocation(line: 48, column: 24, scope: !60)
!66 = !DILocation(line: 48, column: 5, scope: !60)
!67 = !DILocation(line: 51, column: 22, scope: !60)
!68 = !DILocation(line: 51, column: 28, scope: !60)
!69 = !DILocation(line: 51, column: 17, scope: !60)
!70 = !DILocation(line: 51, column: 5, scope: !60)
!71 = !DILocalVariable(name: "doc", scope: !60, file: !1, line: 54, type: !24)
!72 = !DILocation(line: 54, column: 12, scope: !60)
!73 = !DILocation(line: 55, column: 24, scope: !60)
!74 = !DILocation(line: 55, column: 5, scope: !60)
!75 = !DILocation(line: 85, column: 5, scope: !60)
