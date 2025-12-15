; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/172_xzlib.c_516_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/172_xzlib.c_516_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gz_state = type { i8*, i8*, i32, i32, i32, i32, i32 }
%struct.z_stream = type { i8*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"out_buf_size\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"have\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"avail_in\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"next_in\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"(state->have + strm->avail_in <= out_buf_size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/172_xzlib.c_516_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !32 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.gz_state*, align 8
  %3 = alloca %struct.z_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.gz_state** %2, metadata !36, metadata !DIExpression()), !dbg !37
  %8 = call noalias i8* @malloc(i64 noundef 40) #5, !dbg !38
  %9 = bitcast i8* %8 to %struct.gz_state*, !dbg !39
  store %struct.gz_state* %9, %struct.gz_state** %2, align 8, !dbg !37
  %10 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !40
  %11 = icmp ne %struct.gz_state* %10, null, !dbg !40
  br i1 %11, label %13, label %12, !dbg !42

12:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !43
  br label %142, !dbg !43

13:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata %struct.z_stream** %3, metadata !44, metadata !DIExpression()), !dbg !45
  %14 = call noalias i8* @malloc(i64 noundef 16) #5, !dbg !46
  %15 = bitcast i8* %14 to %struct.z_stream*, !dbg !47
  store %struct.z_stream* %15, %struct.z_stream** %3, align 8, !dbg !45
  %16 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !48
  %17 = icmp ne %struct.z_stream* %16, null, !dbg !48
  br i1 %17, label %21, label %18, !dbg !50

18:                                               ; preds = %13
  %19 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !51
  %20 = bitcast %struct.gz_state* %19 to i8*, !dbg !51
  call void @free(i8* noundef %20) #5, !dbg !53
  store i32 1, i32* %1, align 4, !dbg !54
  br label %142, !dbg !54

21:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata i32* %4, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %5, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %6, metadata !59, metadata !DIExpression()), !dbg !60
  %22 = bitcast i32* %4 to i8*, !dbg !61
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !62
  %23 = bitcast i32* %5 to i8*, !dbg !63
  call void @klee_make_symbolic(i8* noundef %23, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !64
  %24 = bitcast i32* %6 to i8*, !dbg !65
  call void @klee_make_symbolic(i8* noundef %24, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !66
  %25 = load i32, i32* %4, align 4, !dbg !67
  %26 = icmp ugt i32 %25, 0, !dbg !68
  br i1 %26, label %27, label %30, !dbg !69

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4, !dbg !70
  %29 = icmp ule i32 %28, 1048576, !dbg !71
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi i1 [ false, %21 ], [ %29, %27 ], !dbg !72
  %32 = zext i1 %31 to i32, !dbg !69
  %33 = sext i32 %32 to i64, !dbg !67
  call void @klee_assume(i64 noundef %33), !dbg !73
  %34 = load i32, i32* %5, align 4, !dbg !74
  %35 = load i32, i32* %4, align 4, !dbg !75
  %36 = icmp ule i32 %34, %35, !dbg !76
  %37 = zext i1 %36 to i32, !dbg !76
  %38 = sext i32 %37 to i64, !dbg !74
  call void @klee_assume(i64 noundef %38), !dbg !77
  %39 = load i32, i32* %6, align 4, !dbg !78
  %40 = icmp ule i32 %39, 1048576, !dbg !79
  %41 = zext i1 %40 to i32, !dbg !79
  %42 = sext i32 %41 to i64, !dbg !78
  call void @klee_assume(i64 noundef %42), !dbg !80
  %43 = load i32, i32* %4, align 4, !dbg !81
  %44 = zext i32 %43 to i64, !dbg !81
  %45 = call noalias i8* @malloc(i64 noundef %44) #5, !dbg !82
  %46 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !83
  %47 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %46, i32 0, i32 0, !dbg !84
  store i8* %45, i8** %47, align 8, !dbg !85
  %48 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !86
  %49 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %48, i32 0, i32 0, !dbg !88
  %50 = load i8*, i8** %49, align 8, !dbg !88
  %51 = icmp ne i8* %50, null, !dbg !86
  br i1 %51, label %57, label %52, !dbg !89

52:                                               ; preds = %30
  %53 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !90
  %54 = bitcast %struct.z_stream* %53 to i8*, !dbg !90
  call void @free(i8* noundef %54) #5, !dbg !92
  %55 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !93
  %56 = bitcast %struct.gz_state* %55 to i8*, !dbg !93
  call void @free(i8* noundef %56) #5, !dbg !94
  store i32 1, i32* %1, align 4, !dbg !95
  br label %142, !dbg !95

57:                                               ; preds = %30
  %58 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !96
  %59 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %58, i32 0, i32 0, !dbg !97
  %60 = load i8*, i8** %59, align 8, !dbg !97
  %61 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !98
  %62 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %61, i32 0, i32 1, !dbg !99
  store i8* %60, i8** %62, align 8, !dbg !100
  %63 = load i32, i32* %5, align 4, !dbg !101
  %64 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !102
  %65 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %64, i32 0, i32 2, !dbg !103
  store i32 %63, i32* %65, align 8, !dbg !104
  %66 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !105
  %67 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %66, i32 0, i32 3, !dbg !106
  store i32 0, i32* %67, align 4, !dbg !107
  %68 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !108
  %69 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %68, i32 0, i32 4, !dbg !109
  store i32 0, i32* %69, align 8, !dbg !110
  %70 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !111
  %71 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %70, i32 0, i32 5, !dbg !112
  store i32 0, i32* %71, align 4, !dbg !113
  %72 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !114
  %73 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %72, i32 0, i32 6, !dbg !115
  store i32 0, i32* %73, align 8, !dbg !116
  %74 = load i32, i32* %6, align 4, !dbg !117
  %75 = icmp ugt i32 %74, 0, !dbg !119
  br i1 %75, label %76, label %100, !dbg !120

76:                                               ; preds = %57
  %77 = load i32, i32* %6, align 4, !dbg !121
  %78 = zext i32 %77 to i64, !dbg !121
  %79 = call noalias i8* @malloc(i64 noundef %78) #5, !dbg !123
  %80 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !124
  %81 = getelementptr inbounds %struct.z_stream, %struct.z_stream* %80, i32 0, i32 0, !dbg !125
  store i8* %79, i8** %81, align 8, !dbg !126
  %82 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !127
  %83 = getelementptr inbounds %struct.z_stream, %struct.z_stream* %82, i32 0, i32 0, !dbg !129
  %84 = load i8*, i8** %83, align 8, !dbg !129
  %85 = icmp ne i8* %84, null, !dbg !127
  br i1 %85, label %94, label %86, !dbg !130

86:                                               ; preds = %76
  %87 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !131
  %88 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %87, i32 0, i32 0, !dbg !133
  %89 = load i8*, i8** %88, align 8, !dbg !133
  call void @free(i8* noundef %89) #5, !dbg !134
  %90 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !135
  %91 = bitcast %struct.z_stream* %90 to i8*, !dbg !135
  call void @free(i8* noundef %91) #5, !dbg !136
  %92 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !137
  %93 = bitcast %struct.gz_state* %92 to i8*, !dbg !137
  call void @free(i8* noundef %93) #5, !dbg !138
  store i32 1, i32* %1, align 4, !dbg !139
  br label %142, !dbg !139

94:                                               ; preds = %76
  %95 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !140
  %96 = getelementptr inbounds %struct.z_stream, %struct.z_stream* %95, i32 0, i32 0, !dbg !141
  %97 = load i8*, i8** %96, align 8, !dbg !141
  %98 = load i32, i32* %6, align 4, !dbg !142
  %99 = zext i32 %98 to i64, !dbg !142
  call void @klee_make_symbolic(i8* noundef %97, i64 noundef %99, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !143
  br label %103, !dbg !144

100:                                              ; preds = %57
  %101 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !145
  %102 = getelementptr inbounds %struct.z_stream, %struct.z_stream* %101, i32 0, i32 0, !dbg !147
  store i8* null, i8** %102, align 8, !dbg !148
  br label %103

103:                                              ; preds = %100, %94
  %104 = load i32, i32* %6, align 4, !dbg !149
  %105 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !150
  %106 = getelementptr inbounds %struct.z_stream, %struct.z_stream* %105, i32 0, i32 1, !dbg !151
  store i32 %104, i32* %106, align 8, !dbg !152
  %107 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !153
  %108 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %107, i32 0, i32 2, !dbg !153
  %109 = load i32, i32* %108, align 8, !dbg !153
  %110 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !153
  %111 = getelementptr inbounds %struct.z_stream, %struct.z_stream* %110, i32 0, i32 1, !dbg !153
  %112 = load i32, i32* %111, align 8, !dbg !153
  %113 = add i32 %109, %112, !dbg !153
  %114 = load i32, i32* %4, align 4, !dbg !153
  %115 = icmp ule i32 %113, %114, !dbg !153
  br i1 %115, label %116, label %118, !dbg !153

116:                                              ; preds = %103
  br i1 true, label %117, label %118, !dbg !153

117:                                              ; preds = %116
  br label %120, !dbg !153

118:                                              ; preds = %116, %103
  %119 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !153
  br label %120, !dbg !153

120:                                              ; preds = %118, %117
  %121 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !154
  call void @llvm.dbg.declare(metadata i32* %7, metadata !155, metadata !DIExpression()), !dbg !156
  %122 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !157
  %123 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !158
  %124 = call i32 @gz_uncompress(%struct.gz_state* noundef %122, %struct.z_stream* noundef %123), !dbg !159
  store i32 %124, i32* %7, align 4, !dbg !156
  %125 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !160
  %126 = getelementptr inbounds %struct.z_stream, %struct.z_stream* %125, i32 0, i32 0, !dbg !162
  %127 = load i8*, i8** %126, align 8, !dbg !162
  %128 = icmp ne i8* %127, null, !dbg !160
  br i1 %128, label %129, label %133, !dbg !163

129:                                              ; preds = %120
  %130 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !164
  %131 = getelementptr inbounds %struct.z_stream, %struct.z_stream* %130, i32 0, i32 0, !dbg !165
  %132 = load i8*, i8** %131, align 8, !dbg !165
  call void @free(i8* noundef %132) #5, !dbg !166
  br label %133, !dbg !166

133:                                              ; preds = %129, %120
  %134 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !167
  %135 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %134, i32 0, i32 0, !dbg !168
  %136 = load i8*, i8** %135, align 8, !dbg !168
  call void @free(i8* noundef %136) #5, !dbg !169
  %137 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !170
  %138 = bitcast %struct.z_stream* %137 to i8*, !dbg !170
  call void @free(i8* noundef %138) #5, !dbg !171
  %139 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !172
  %140 = bitcast %struct.gz_state* %139 to i8*, !dbg !172
  call void @free(i8* noundef %140) #5, !dbg !173
  %141 = load i32, i32* %7, align 4, !dbg !174
  store i32 %141, i32* %1, align 4, !dbg !175
  br label %142, !dbg !175

142:                                              ; preds = %133, %86, %52, %18, %12
  %143 = load i32, i32* %1, align 4, !dbg !176
  ret i32 %143, !dbg !176
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare i32 @gz_uncompress(%struct.gz_state* noundef, %struct.z_stream* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/172_xzlib.c_516_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b8f0f71bdf853577d4e878fb7484ef57")
!2 = !{!3, !18, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "gz_state", file: !1, line: 23, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 15, size: 320, elements: !6)
!6 = !{!7, !10, !11, !13, !14, !15, !17}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !5, file: !1, line: 16, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5, file: !1, line: 17, baseType: !8, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "have", scope: !5, file: !1, line: 18, baseType: !12, size: 32, offset: 128)
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5, file: !1, line: 19, baseType: !12, size: 32, offset: 160)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !5, file: !1, line: 20, baseType: !12, size: 32, offset: 192)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "how", scope: !5, file: !1, line: 21, baseType: !16, size: 32, offset: 224)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "direct", scope: !5, file: !1, line: 22, baseType: !16, size: 32, offset: 256)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !1, line: 13, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 10, size: 128, elements: !21)
!21 = !{!22, !23}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !20, file: !1, line: 11, baseType: !8, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !20, file: !1, line: 12, baseType: !12, size: 32, offset: 64)
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 7, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"Ubuntu clang version 14.0.6"}
!32 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 30, type: !33, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{!16}
!35 = !{}
!36 = !DILocalVariable(name: "state", scope: !32, file: !1, line: 32, type: !3)
!37 = !DILocation(line: 32, column: 15, scope: !32)
!38 = !DILocation(line: 32, column: 35, scope: !32)
!39 = !DILocation(line: 32, column: 23, scope: !32)
!40 = !DILocation(line: 33, column: 10, scope: !41)
!41 = distinct !DILexicalBlock(scope: !32, file: !1, line: 33, column: 9)
!42 = !DILocation(line: 33, column: 9, scope: !32)
!43 = !DILocation(line: 33, column: 17, scope: !41)
!44 = !DILocalVariable(name: "strm", scope: !32, file: !1, line: 36, type: !18)
!45 = !DILocation(line: 36, column: 15, scope: !32)
!46 = !DILocation(line: 36, column: 34, scope: !32)
!47 = !DILocation(line: 36, column: 22, scope: !32)
!48 = !DILocation(line: 37, column: 10, scope: !49)
!49 = distinct !DILexicalBlock(scope: !32, file: !1, line: 37, column: 9)
!50 = !DILocation(line: 37, column: 9, scope: !32)
!51 = !DILocation(line: 38, column: 14, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !1, line: 37, column: 16)
!53 = !DILocation(line: 38, column: 9, scope: !52)
!54 = !DILocation(line: 39, column: 9, scope: !52)
!55 = !DILocalVariable(name: "out_buf_size", scope: !32, file: !1, line: 43, type: !12)
!56 = !DILocation(line: 43, column: 18, scope: !32)
!57 = !DILocalVariable(name: "have", scope: !32, file: !1, line: 44, type: !12)
!58 = !DILocation(line: 44, column: 18, scope: !32)
!59 = !DILocalVariable(name: "avail_in", scope: !32, file: !1, line: 45, type: !12)
!60 = !DILocation(line: 45, column: 18, scope: !32)
!61 = !DILocation(line: 47, column: 24, scope: !32)
!62 = !DILocation(line: 47, column: 5, scope: !32)
!63 = !DILocation(line: 48, column: 24, scope: !32)
!64 = !DILocation(line: 48, column: 5, scope: !32)
!65 = !DILocation(line: 49, column: 24, scope: !32)
!66 = !DILocation(line: 49, column: 5, scope: !32)
!67 = !DILocation(line: 52, column: 17, scope: !32)
!68 = !DILocation(line: 52, column: 30, scope: !32)
!69 = !DILocation(line: 52, column: 34, scope: !32)
!70 = !DILocation(line: 52, column: 37, scope: !32)
!71 = !DILocation(line: 52, column: 50, scope: !32)
!72 = !DILocation(line: 0, scope: !32)
!73 = !DILocation(line: 52, column: 5, scope: !32)
!74 = !DILocation(line: 53, column: 17, scope: !32)
!75 = !DILocation(line: 53, column: 25, scope: !32)
!76 = !DILocation(line: 53, column: 22, scope: !32)
!77 = !DILocation(line: 53, column: 5, scope: !32)
!78 = !DILocation(line: 54, column: 17, scope: !32)
!79 = !DILocation(line: 54, column: 26, scope: !32)
!80 = !DILocation(line: 54, column: 5, scope: !32)
!81 = !DILocation(line: 57, column: 42, scope: !32)
!82 = !DILocation(line: 57, column: 35, scope: !32)
!83 = !DILocation(line: 57, column: 5, scope: !32)
!84 = !DILocation(line: 57, column: 12, scope: !32)
!85 = !DILocation(line: 57, column: 16, scope: !32)
!86 = !DILocation(line: 58, column: 10, scope: !87)
!87 = distinct !DILexicalBlock(scope: !32, file: !1, line: 58, column: 9)
!88 = !DILocation(line: 58, column: 17, scope: !87)
!89 = !DILocation(line: 58, column: 9, scope: !32)
!90 = !DILocation(line: 59, column: 14, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 58, column: 22)
!92 = !DILocation(line: 59, column: 9, scope: !91)
!93 = !DILocation(line: 60, column: 14, scope: !91)
!94 = !DILocation(line: 60, column: 9, scope: !91)
!95 = !DILocation(line: 61, column: 9, scope: !91)
!96 = !DILocation(line: 65, column: 19, scope: !32)
!97 = !DILocation(line: 65, column: 26, scope: !32)
!98 = !DILocation(line: 65, column: 5, scope: !32)
!99 = !DILocation(line: 65, column: 12, scope: !32)
!100 = !DILocation(line: 65, column: 17, scope: !32)
!101 = !DILocation(line: 66, column: 19, scope: !32)
!102 = !DILocation(line: 66, column: 5, scope: !32)
!103 = !DILocation(line: 66, column: 12, scope: !32)
!104 = !DILocation(line: 66, column: 17, scope: !32)
!105 = !DILocation(line: 67, column: 5, scope: !32)
!106 = !DILocation(line: 67, column: 12, scope: !32)
!107 = !DILocation(line: 67, column: 16, scope: !32)
!108 = !DILocation(line: 68, column: 5, scope: !32)
!109 = !DILocation(line: 68, column: 12, scope: !32)
!110 = !DILocation(line: 68, column: 16, scope: !32)
!111 = !DILocation(line: 69, column: 5, scope: !32)
!112 = !DILocation(line: 69, column: 12, scope: !32)
!113 = !DILocation(line: 69, column: 16, scope: !32)
!114 = !DILocation(line: 70, column: 5, scope: !32)
!115 = !DILocation(line: 70, column: 12, scope: !32)
!116 = !DILocation(line: 70, column: 19, scope: !32)
!117 = !DILocation(line: 73, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !32, file: !1, line: 73, column: 9)
!119 = !DILocation(line: 73, column: 18, scope: !118)
!120 = !DILocation(line: 73, column: 9, scope: !32)
!121 = !DILocation(line: 74, column: 49, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !1, line: 73, column: 23)
!123 = !DILocation(line: 74, column: 42, scope: !122)
!124 = !DILocation(line: 74, column: 9, scope: !122)
!125 = !DILocation(line: 74, column: 15, scope: !122)
!126 = !DILocation(line: 74, column: 23, scope: !122)
!127 = !DILocation(line: 75, column: 14, scope: !128)
!128 = distinct !DILexicalBlock(scope: !122, file: !1, line: 75, column: 13)
!129 = !DILocation(line: 75, column: 20, scope: !128)
!130 = !DILocation(line: 75, column: 13, scope: !122)
!131 = !DILocation(line: 76, column: 18, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !1, line: 75, column: 29)
!133 = !DILocation(line: 76, column: 25, scope: !132)
!134 = !DILocation(line: 76, column: 13, scope: !132)
!135 = !DILocation(line: 77, column: 18, scope: !132)
!136 = !DILocation(line: 77, column: 13, scope: !132)
!137 = !DILocation(line: 78, column: 18, scope: !132)
!138 = !DILocation(line: 78, column: 13, scope: !132)
!139 = !DILocation(line: 79, column: 13, scope: !132)
!140 = !DILocation(line: 82, column: 28, scope: !122)
!141 = !DILocation(line: 82, column: 34, scope: !122)
!142 = !DILocation(line: 82, column: 43, scope: !122)
!143 = !DILocation(line: 82, column: 9, scope: !122)
!144 = !DILocation(line: 83, column: 5, scope: !122)
!145 = !DILocation(line: 84, column: 9, scope: !146)
!146 = distinct !DILexicalBlock(scope: !118, file: !1, line: 83, column: 12)
!147 = !DILocation(line: 84, column: 15, scope: !146)
!148 = !DILocation(line: 84, column: 23, scope: !146)
!149 = !DILocation(line: 87, column: 22, scope: !32)
!150 = !DILocation(line: 87, column: 5, scope: !32)
!151 = !DILocation(line: 87, column: 11, scope: !32)
!152 = !DILocation(line: 87, column: 20, scope: !32)
!153 = !DILocation(line: 92, column: 5, scope: !32)
!154 = !DILocation(line: 95, column: 5, scope: !32)
!155 = !DILocalVariable(name: "result", scope: !32, file: !1, line: 98, type: !16)
!156 = !DILocation(line: 98, column: 9, scope: !32)
!157 = !DILocation(line: 98, column: 32, scope: !32)
!158 = !DILocation(line: 98, column: 39, scope: !32)
!159 = !DILocation(line: 98, column: 18, scope: !32)
!160 = !DILocation(line: 101, column: 9, scope: !161)
!161 = distinct !DILexicalBlock(scope: !32, file: !1, line: 101, column: 9)
!162 = !DILocation(line: 101, column: 15, scope: !161)
!163 = !DILocation(line: 101, column: 9, scope: !32)
!164 = !DILocation(line: 101, column: 29, scope: !161)
!165 = !DILocation(line: 101, column: 35, scope: !161)
!166 = !DILocation(line: 101, column: 24, scope: !161)
!167 = !DILocation(line: 102, column: 10, scope: !32)
!168 = !DILocation(line: 102, column: 17, scope: !32)
!169 = !DILocation(line: 102, column: 5, scope: !32)
!170 = !DILocation(line: 103, column: 10, scope: !32)
!171 = !DILocation(line: 103, column: 5, scope: !32)
!172 = !DILocation(line: 104, column: 10, scope: !32)
!173 = !DILocation(line: 104, column: 5, scope: !32)
!174 = !DILocation(line: 106, column: 12, scope: !32)
!175 = !DILocation(line: 106, column: 5, scope: !32)
!176 = !DILocation(line: 107, column: 1, scope: !32)
