; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/058_relaxng.c_10553_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/058_relaxng.c_10553_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGValidCtxt = type { i32, void (i8*, i8*, ...)*, void (i8*, i8*, ...)*, i8* }
%struct._xmlRelaxNGDefine = type opaque

@.str = private unnamed_addr constant [6 x i8] c"idref\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRelaxNGDumpValidError(%struct._xmlRelaxNGValidCtxt* noundef %0) #0 !dbg !27 {
  %2 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  store %struct._xmlRelaxNGValidCtxt* %0, %struct._xmlRelaxNGValidCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %2, metadata !32, metadata !DIExpression()), !dbg !33
  ret void, !dbg !34
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRelaxNGFreeDefine(%struct._xmlRelaxNGDefine* noundef %0) #0 !dbg !35 {
  %2 = alloca %struct._xmlRelaxNGDefine*, align 8
  store %struct._xmlRelaxNGDefine* %0, %struct._xmlRelaxNGDefine** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGDefine** %2, metadata !42, metadata !DIExpression()), !dbg !43
  %3 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !44
  ret void, !dbg !45
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRelaxNGFreeValidCtxt(%struct._xmlRelaxNGValidCtxt* noundef %0) #0 !dbg !46 {
  %2 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  store %struct._xmlRelaxNGValidCtxt* %0, %struct._xmlRelaxNGValidCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %2, metadata !47, metadata !DIExpression()), !dbg !48
  %3 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %2, align 8, !dbg !49
  %4 = icmp eq %struct._xmlRelaxNGValidCtxt* %3, null, !dbg !51
  br i1 %4, label %5, label %6, !dbg !52

5:                                                ; preds = %1
  br label %8, !dbg !53

6:                                                ; preds = %1
  %7 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %2, align 8, !dbg !54
  call void @xmlRelaxNGDumpValidError(%struct._xmlRelaxNGValidCtxt* noundef %7), !dbg !55
  br label %8, !dbg !56

8:                                                ; preds = %6, %5
  ret void, !dbg !56
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !57 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %2, metadata !60, metadata !DIExpression()), !dbg !61
  %3 = call noalias i8* @malloc(i64 noundef 32) #4, !dbg !62
  %4 = bitcast i8* %3 to %struct._xmlRelaxNGValidCtxt*, !dbg !63
  store %struct._xmlRelaxNGValidCtxt* %4, %struct._xmlRelaxNGValidCtxt** %2, align 8, !dbg !61
  %5 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %2, align 8, !dbg !64
  %6 = icmp eq %struct._xmlRelaxNGValidCtxt* %5, null, !dbg !66
  br i1 %6, label %7, label %8, !dbg !67

7:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !68
  br label %21, !dbg !68

8:                                                ; preds = %0
  %9 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %2, align 8, !dbg !69
  %10 = getelementptr inbounds %struct._xmlRelaxNGValidCtxt, %struct._xmlRelaxNGValidCtxt* %9, i32 0, i32 0, !dbg !70
  %11 = bitcast i32* %10 to i8*, !dbg !71
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !72
  %12 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %2, align 8, !dbg !73
  %13 = getelementptr inbounds %struct._xmlRelaxNGValidCtxt, %struct._xmlRelaxNGValidCtxt* %12, i32 0, i32 0, !dbg !74
  %14 = load i32, i32* %13, align 8, !dbg !74
  %15 = icmp eq i32 %14, 1, !dbg !75
  %16 = zext i1 %15 to i32, !dbg !75
  %17 = sext i32 %16 to i64, !dbg !73
  call void @klee_assume(i64 noundef %17), !dbg !76
  %18 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %2, align 8, !dbg !77
  call void @xmlRelaxNGFreeValidCtxt(%struct._xmlRelaxNGValidCtxt* noundef %18), !dbg !78
  call void @xmlRelaxNGFreeDefine(%struct._xmlRelaxNGDefine* noundef null), !dbg !79
  %19 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %2, align 8, !dbg !80
  %20 = bitcast %struct._xmlRelaxNGValidCtxt* %19 to i8*, !dbg !80
  call void @free(i8* noundef %20) #4, !dbg !81
  store i32 0, i32* %1, align 4, !dbg !82
  br label %21, !dbg !82

21:                                               ; preds = %8, %7
  %22 = load i32, i32* %1, align 4, !dbg !83
  ret i32 %22, !dbg !83
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/058_relaxng.c_10553_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "6d2a0ad9171830eb4cdb740045c6eb80")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxt", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidCtxt", file: !1, line: 18, size: 256, elements: !7)
!7 = !{!8, !10, !17, !18}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "idref", scope: !6, file: !1, line: 19, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !6, file: !1, line: 20, baseType: !11, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !3, !14, null}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !6, file: !1, line: 21, baseType: !11, size: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !6, file: !1, line: 22, baseType: !3, size: 64, offset: 192)
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"Ubuntu clang version 14.0.6"}
!27 = distinct !DISubprogram(name: "xmlRelaxNGDumpValidError", scope: !1, file: !1, line: 33, type: !28, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxtPtr", file: !1, line: 11, baseType: !4)
!31 = !{}
!32 = !DILocalVariable(name: "ctxt", arg: 1, scope: !27, file: !1, line: 33, type: !30)
!33 = !DILocation(line: 33, column: 54, scope: !27)
!34 = !DILocation(line: 35, column: 1, scope: !27)
!35 = distinct !DISubprogram(name: "xmlRelaxNGFreeDefine", scope: !1, file: !1, line: 38, type: !36, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38}
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGDefinePtr", file: !1, line: 14, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGDefine", file: !1, line: 13, baseType: !41)
!41 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGDefine", file: !1, line: 13, flags: DIFlagFwdDecl)
!42 = !DILocalVariable(name: "def", arg: 1, scope: !35, file: !1, line: 38, type: !38)
!43 = !DILocation(line: 38, column: 47, scope: !35)
!44 = !DILocation(line: 40, column: 11, scope: !35)
!45 = !DILocation(line: 41, column: 1, scope: !35)
!46 = distinct !DISubprogram(name: "xmlRelaxNGFreeValidCtxt", scope: !1, file: !1, line: 44, type: !28, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!47 = !DILocalVariable(name: "ctxt", arg: 1, scope: !46, file: !1, line: 44, type: !30)
!48 = !DILocation(line: 44, column: 53, scope: !46)
!49 = !DILocation(line: 45, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 45, column: 9)
!51 = !DILocation(line: 45, column: 14, scope: !50)
!52 = !DILocation(line: 45, column: 9, scope: !46)
!53 = !DILocation(line: 45, column: 23, scope: !50)
!54 = !DILocation(line: 47, column: 30, scope: !46)
!55 = !DILocation(line: 47, column: 5, scope: !46)
!56 = !DILocation(line: 65, column: 1, scope: !46)
!57 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 67, type: !58, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!58 = !DISubroutineType(types: !59)
!59 = !{!9}
!60 = !DILocalVariable(name: "ctxt", scope: !57, file: !1, line: 69, type: !4)
!61 = !DILocation(line: 69, column: 26, scope: !57)
!62 = !DILocation(line: 69, column: 55, scope: !57)
!63 = !DILocation(line: 69, column: 33, scope: !57)
!64 = !DILocation(line: 70, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !57, file: !1, line: 70, column: 9)
!66 = !DILocation(line: 70, column: 14, scope: !65)
!67 = !DILocation(line: 70, column: 9, scope: !57)
!68 = !DILocation(line: 70, column: 23, scope: !65)
!69 = !DILocation(line: 73, column: 25, scope: !57)
!70 = !DILocation(line: 73, column: 31, scope: !57)
!71 = !DILocation(line: 73, column: 24, scope: !57)
!72 = !DILocation(line: 73, column: 5, scope: !57)
!73 = !DILocation(line: 76, column: 17, scope: !57)
!74 = !DILocation(line: 76, column: 23, scope: !57)
!75 = !DILocation(line: 76, column: 29, scope: !57)
!76 = !DILocation(line: 76, column: 5, scope: !57)
!77 = !DILocation(line: 79, column: 29, scope: !57)
!78 = !DILocation(line: 79, column: 5, scope: !57)
!79 = !DILocation(line: 82, column: 5, scope: !57)
!80 = !DILocation(line: 84, column: 10, scope: !57)
!81 = !DILocation(line: 84, column: 5, scope: !57)
!82 = !DILocation(line: 85, column: 5, scope: !57)
!83 = !DILocation(line: 86, column: 1, scope: !57)
