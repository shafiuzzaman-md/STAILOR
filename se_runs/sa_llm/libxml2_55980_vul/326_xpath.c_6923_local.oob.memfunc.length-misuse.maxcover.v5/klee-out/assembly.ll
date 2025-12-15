; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/326_xpath.c_6923_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/326_xpath.c_6923_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type opaque
%struct._xmlXPathNodeSet = type { %struct._xmlNode**, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"hash_val\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"comparing nodesets\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"(ns2->nodeNr * sizeof(unsigned char *) <= ns2->nodeNr * sizeof(unsigned char *)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/326_xpath.c_6923_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [63 x i8] c"int target_function(xmlXPathNodeSet *, xmlXPathNodeSet *, int)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"nodeNr\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"nodeTab\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"neq\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xmlXPathNodeValHash(%struct._xmlNode* noundef %0) #0 !dbg !25 {
  %2 = alloca %struct._xmlNode*, align 8
  store %struct._xmlNode* %0, %struct._xmlNode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %2, metadata !29, metadata !DIExpression()), !dbg !30
  %3 = call i32 @klee_int(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !31
  %4 = sext i32 %3 to i64, !dbg !31
  ret i64 %4, !dbg !32
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !33 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !39, metadata !DIExpression()), !dbg !40
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !41, metadata !DIExpression()), !dbg !42
  ret void, !dbg !43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !44 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !47, metadata !DIExpression()), !dbg !48
  %3 = load i8*, i8** %2, align 8, !dbg !49
  call void @free(i8* noundef %3) #7, !dbg !50
  ret void, !dbg !51
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(%struct._xmlXPathNodeSet* noundef %0, %struct._xmlXPathNodeSet* noundef %1, i32 noundef %2) #0 !dbg !52 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlXPathNodeSet*, align 8
  %6 = alloca %struct._xmlXPathNodeSet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._xmlXPathNodeSet* %0, %struct._xmlXPathNodeSet** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXPathNodeSet** %5, metadata !63, metadata !DIExpression()), !dbg !64
  store %struct._xmlXPathNodeSet* %1, %struct._xmlXPathNodeSet** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXPathNodeSet** %6, metadata !65, metadata !DIExpression()), !dbg !66
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i64** %8, metadata !69, metadata !DIExpression()), !dbg !70
  store i64* null, i64** %8, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata i64** %9, metadata !71, metadata !DIExpression()), !dbg !72
  store i64* null, i64** %9, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !73, metadata !DIExpression()), !dbg !74
  store i8** null, i8*** %10, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !75, metadata !DIExpression()), !dbg !76
  store i8** null, i8*** %11, align 8, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %12, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i32* %13, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata i32* %14, metadata !81, metadata !DIExpression()), !dbg !82
  store i32 0, i32* %14, align 4, !dbg !82
  %15 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %5, align 8, !dbg !83
  %16 = icmp eq %struct._xmlXPathNodeSet* %15, null, !dbg !85
  br i1 %16, label %20, label %17, !dbg !86

17:                                               ; preds = %3
  %18 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %6, align 8, !dbg !87
  %19 = icmp eq %struct._xmlXPathNodeSet* %18, null, !dbg !88
  br i1 %19, label %20, label %21, !dbg !89

20:                                               ; preds = %17, %3
  store i32 0, i32* %4, align 4, !dbg !90
  br label %190, !dbg !90

21:                                               ; preds = %17
  %22 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %5, align 8, !dbg !91
  %23 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %22, i32 0, i32 1, !dbg !93
  %24 = load i32, i32* %23, align 8, !dbg !93
  %25 = icmp sle i32 %24, 0, !dbg !94
  br i1 %25, label %31, label %26, !dbg !95

26:                                               ; preds = %21
  %27 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %6, align 8, !dbg !96
  %28 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %27, i32 0, i32 1, !dbg !97
  %29 = load i32, i32* %28, align 8, !dbg !97
  %30 = icmp sle i32 %29, 0, !dbg !98
  br i1 %30, label %31, label %32, !dbg !99

31:                                               ; preds = %26, %21
  store i32 0, i32* %4, align 4, !dbg !100
  br label %190, !dbg !100

32:                                               ; preds = %26
  %33 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %5, align 8, !dbg !101
  %34 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %33, i32 0, i32 1, !dbg !102
  %35 = load i32, i32* %34, align 8, !dbg !102
  %36 = sext i32 %35 to i64, !dbg !101
  %37 = mul i64 %36, 8, !dbg !103
  %38 = call noalias i8* @malloc(i64 noundef %37) #7, !dbg !104
  %39 = bitcast i8* %38 to i64*, !dbg !105
  store i64* %39, i64** %8, align 8, !dbg !106
  %40 = load i64*, i64** %8, align 8, !dbg !107
  %41 = icmp eq i64* %40, null, !dbg !109
  br i1 %41, label %42, label %43, !dbg !110

42:                                               ; preds = %32
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)), !dbg !111
  store i32 0, i32* %4, align 4, !dbg !113
  br label %190, !dbg !113

43:                                               ; preds = %32
  %44 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %5, align 8, !dbg !114
  %45 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %44, i32 0, i32 1, !dbg !115
  %46 = load i32, i32* %45, align 8, !dbg !115
  %47 = sext i32 %46 to i64, !dbg !114
  %48 = mul i64 %47, 8, !dbg !116
  %49 = call noalias i8* @malloc(i64 noundef %48) #7, !dbg !117
  %50 = bitcast i8* %49 to i8**, !dbg !118
  store i8** %50, i8*** %10, align 8, !dbg !119
  %51 = load i8**, i8*** %10, align 8, !dbg !120
  %52 = icmp eq i8** %51, null, !dbg !122
  br i1 %52, label %53, label %56, !dbg !123

53:                                               ; preds = %43
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)), !dbg !124
  %54 = load i64*, i64** %8, align 8, !dbg !126
  %55 = bitcast i64* %54 to i8*, !dbg !126
  call void @xmlFree(i8* noundef %55), !dbg !127
  store i32 0, i32* %4, align 4, !dbg !128
  br label %190, !dbg !128

56:                                               ; preds = %43
  %57 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %6, align 8, !dbg !129
  %58 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %57, i32 0, i32 1, !dbg !130
  %59 = load i32, i32* %58, align 8, !dbg !130
  %60 = sext i32 %59 to i64, !dbg !129
  %61 = mul i64 %60, 8, !dbg !131
  %62 = call noalias i8* @malloc(i64 noundef %61) #7, !dbg !132
  %63 = bitcast i8* %62 to i8**, !dbg !133
  store i8** %63, i8*** %11, align 8, !dbg !134
  %64 = load i8**, i8*** %11, align 8, !dbg !135
  %65 = icmp eq i8** %64, null, !dbg !137
  br i1 %65, label %66, label %71, !dbg !138

66:                                               ; preds = %56
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)), !dbg !139
  %67 = load i64*, i64** %8, align 8, !dbg !141
  %68 = bitcast i64* %67 to i8*, !dbg !141
  call void @xmlFree(i8* noundef %68), !dbg !142
  %69 = load i8**, i8*** %10, align 8, !dbg !143
  %70 = bitcast i8** %69 to i8*, !dbg !143
  call void @xmlFree(i8* noundef %70), !dbg !144
  store i32 0, i32* %4, align 4, !dbg !145
  br label %190, !dbg !145

71:                                               ; preds = %56
  %72 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %6, align 8, !dbg !146
  %73 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %72, i32 0, i32 1, !dbg !147
  %74 = load i32, i32* %73, align 8, !dbg !147
  %75 = sext i32 %74 to i64, !dbg !146
  %76 = mul i64 %75, 8, !dbg !148
  %77 = call noalias i8* @malloc(i64 noundef %76) #7, !dbg !149
  %78 = bitcast i8* %77 to i64*, !dbg !150
  store i64* %78, i64** %9, align 8, !dbg !151
  %79 = load i64*, i64** %9, align 8, !dbg !152
  %80 = icmp eq i64* %79, null, !dbg !154
  br i1 %80, label %81, label %88, !dbg !155

81:                                               ; preds = %71
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)), !dbg !156
  %82 = load i64*, i64** %8, align 8, !dbg !158
  %83 = bitcast i64* %82 to i8*, !dbg !158
  call void @xmlFree(i8* noundef %83), !dbg !159
  %84 = load i8**, i8*** %10, align 8, !dbg !160
  %85 = bitcast i8** %84 to i8*, !dbg !160
  call void @xmlFree(i8* noundef %85), !dbg !161
  %86 = load i8**, i8*** %11, align 8, !dbg !162
  %87 = bitcast i8** %86 to i8*, !dbg !162
  call void @xmlFree(i8* noundef %87), !dbg !163
  store i32 0, i32* %4, align 4, !dbg !164
  br label %190, !dbg !164

88:                                               ; preds = %71
  %89 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %6, align 8, !dbg !165
  %90 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %89, i32 0, i32 1, !dbg !165
  %91 = load i32, i32* %90, align 8, !dbg !165
  %92 = sext i32 %91 to i64, !dbg !165
  %93 = mul i64 %92, 8, !dbg !165
  %94 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %6, align 8, !dbg !165
  %95 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %94, i32 0, i32 1, !dbg !165
  %96 = load i32, i32* %95, align 8, !dbg !165
  %97 = sext i32 %96 to i64, !dbg !165
  %98 = mul i64 %97, 8, !dbg !165
  %99 = icmp ule i64 %93, %98, !dbg !165
  br i1 %99, label %100, label %102, !dbg !165

100:                                              ; preds = %88
  br i1 true, label %101, label %102, !dbg !165

101:                                              ; preds = %100
  br label %104, !dbg !165

102:                                              ; preds = %100, %88
  %103 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !165
  br label %104, !dbg !165

104:                                              ; preds = %102, %101
  %105 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !166
  %106 = load i8**, i8*** %11, align 8, !dbg !167
  %107 = bitcast i8** %106 to i8*, !dbg !168
  %108 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %6, align 8, !dbg !169
  %109 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %108, i32 0, i32 1, !dbg !170
  %110 = load i32, i32* %109, align 8, !dbg !170
  %111 = sext i32 %110 to i64, !dbg !169
  %112 = mul i64 %111, 8, !dbg !171
  %113 = call i8* @memset(i8* %107, i32 0, i64 %112), !dbg !168
  store i32 0, i32* %12, align 4, !dbg !172
  br label %114, !dbg !174

114:                                              ; preds = %177, %104
  %115 = load i32, i32* %12, align 4, !dbg !175
  %116 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %5, align 8, !dbg !177
  %117 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %116, i32 0, i32 1, !dbg !178
  %118 = load i32, i32* %117, align 8, !dbg !178
  %119 = icmp slt i32 %115, %118, !dbg !179
  br i1 %119, label %120, label %180, !dbg !180

120:                                              ; preds = %114
  %121 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %5, align 8, !dbg !181
  %122 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %121, i32 0, i32 0, !dbg !183
  %123 = load %struct._xmlNode**, %struct._xmlNode*** %122, align 8, !dbg !183
  %124 = load i32, i32* %12, align 4, !dbg !184
  %125 = sext i32 %124 to i64, !dbg !181
  %126 = getelementptr inbounds %struct._xmlNode*, %struct._xmlNode** %123, i64 %125, !dbg !181
  %127 = load %struct._xmlNode*, %struct._xmlNode** %126, align 8, !dbg !181
  %128 = call i64 @xmlXPathNodeValHash(%struct._xmlNode* noundef %127), !dbg !185
  %129 = load i64*, i64** %8, align 8, !dbg !186
  %130 = load i32, i32* %12, align 4, !dbg !187
  %131 = sext i32 %130 to i64, !dbg !186
  %132 = getelementptr inbounds i64, i64* %129, i64 %131, !dbg !186
  store i64 %128, i64* %132, align 8, !dbg !188
  store i32 0, i32* %13, align 4, !dbg !189
  br label %133, !dbg !191

133:                                              ; preds = %173, %120
  %134 = load i32, i32* %13, align 4, !dbg !192
  %135 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %6, align 8, !dbg !194
  %136 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %135, i32 0, i32 1, !dbg !195
  %137 = load i32, i32* %136, align 8, !dbg !195
  %138 = icmp slt i32 %134, %137, !dbg !196
  br i1 %138, label %139, label %176, !dbg !197

139:                                              ; preds = %133
  %140 = load i32, i32* %12, align 4, !dbg !198
  %141 = icmp eq i32 %140, 0, !dbg !201
  br i1 %141, label %142, label %155, !dbg !202

142:                                              ; preds = %139
  %143 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %6, align 8, !dbg !203
  %144 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %143, i32 0, i32 0, !dbg !204
  %145 = load %struct._xmlNode**, %struct._xmlNode*** %144, align 8, !dbg !204
  %146 = load i32, i32* %13, align 4, !dbg !205
  %147 = sext i32 %146 to i64, !dbg !203
  %148 = getelementptr inbounds %struct._xmlNode*, %struct._xmlNode** %145, i64 %147, !dbg !203
  %149 = load %struct._xmlNode*, %struct._xmlNode** %148, align 8, !dbg !203
  %150 = call i64 @xmlXPathNodeValHash(%struct._xmlNode* noundef %149), !dbg !206
  %151 = load i64*, i64** %9, align 8, !dbg !207
  %152 = load i32, i32* %13, align 4, !dbg !208
  %153 = sext i32 %152 to i64, !dbg !207
  %154 = getelementptr inbounds i64, i64* %151, i64 %153, !dbg !207
  store i64 %150, i64* %154, align 8, !dbg !209
  br label %155, !dbg !207

155:                                              ; preds = %142, %139
  %156 = load i64*, i64** %8, align 8, !dbg !210
  %157 = load i32, i32* %12, align 4, !dbg !212
  %158 = sext i32 %157 to i64, !dbg !210
  %159 = getelementptr inbounds i64, i64* %156, i64 %158, !dbg !210
  %160 = load i64, i64* %159, align 8, !dbg !210
  %161 = load i64*, i64** %9, align 8, !dbg !213
  %162 = load i32, i32* %13, align 4, !dbg !214
  %163 = sext i32 %162 to i64, !dbg !213
  %164 = getelementptr inbounds i64, i64* %161, i64 %163, !dbg !213
  %165 = load i64, i64* %164, align 8, !dbg !213
  %166 = icmp ne i64 %160, %165, !dbg !215
  br i1 %166, label %167, label %172, !dbg !216

167:                                              ; preds = %155
  %168 = load i32, i32* %7, align 4, !dbg !217
  %169 = icmp ne i32 %168, 0, !dbg !217
  br i1 %169, label %170, label %171, !dbg !220

170:                                              ; preds = %167
  store i32 1, i32* %14, align 4, !dbg !221
  br label %171, !dbg !223

171:                                              ; preds = %170, %167
  br label %172, !dbg !224

172:                                              ; preds = %171, %155
  br label %173, !dbg !225

173:                                              ; preds = %172
  %174 = load i32, i32* %13, align 4, !dbg !226
  %175 = add nsw i32 %174, 1, !dbg !226
  store i32 %175, i32* %13, align 4, !dbg !226
  br label %133, !dbg !227, !llvm.loop !228

176:                                              ; preds = %133
  br label %177, !dbg !231

177:                                              ; preds = %176
  %178 = load i32, i32* %12, align 4, !dbg !232
  %179 = add nsw i32 %178, 1, !dbg !232
  store i32 %179, i32* %12, align 4, !dbg !232
  br label %114, !dbg !233, !llvm.loop !234

180:                                              ; preds = %114
  %181 = load i64*, i64** %8, align 8, !dbg !236
  %182 = bitcast i64* %181 to i8*, !dbg !236
  call void @xmlFree(i8* noundef %182), !dbg !237
  %183 = load i64*, i64** %9, align 8, !dbg !238
  %184 = bitcast i64* %183 to i8*, !dbg !238
  call void @xmlFree(i8* noundef %184), !dbg !239
  %185 = load i8**, i8*** %10, align 8, !dbg !240
  %186 = bitcast i8** %185 to i8*, !dbg !240
  call void @xmlFree(i8* noundef %186), !dbg !241
  %187 = load i8**, i8*** %11, align 8, !dbg !242
  %188 = bitcast i8** %187 to i8*, !dbg !242
  call void @xmlFree(i8* noundef %188), !dbg !243
  %189 = load i32, i32* %14, align 4, !dbg !244
  store i32 %189, i32* %4, align 4, !dbg !245
  br label %190, !dbg !245

190:                                              ; preds = %180, %81, %66, %53, %42, %31, %20
  %191 = load i32, i32* %4, align 4, !dbg !246
  ret i32 %191, !dbg !246
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_symbolic_nodeset(%struct._xmlXPathNodeSet* noundef %0, i32 noundef %1) #0 !dbg !247 {
  %3 = alloca %struct._xmlXPathNodeSet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._xmlXPathNodeSet* %0, %struct._xmlXPathNodeSet** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXPathNodeSet** %3, metadata !250, metadata !DIExpression()), !dbg !251
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata i32* %5, metadata !254, metadata !DIExpression()), !dbg !255
  %6 = bitcast i32* %5 to i8*, !dbg !256
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !257
  %7 = load i32, i32* %5, align 4, !dbg !258
  %8 = icmp sge i32 %7, 0, !dbg !259
  %9 = zext i1 %8 to i32, !dbg !259
  %10 = sext i32 %9 to i64, !dbg !258
  call void @klee_assume(i64 noundef %10), !dbg !260
  %11 = load i32, i32* %5, align 4, !dbg !261
  %12 = load i32, i32* %4, align 4, !dbg !262
  %13 = icmp sle i32 %11, %12, !dbg !263
  %14 = zext i1 %13 to i32, !dbg !263
  %15 = sext i32 %14 to i64, !dbg !261
  call void @klee_assume(i64 noundef %15), !dbg !264
  %16 = load i32, i32* %5, align 4, !dbg !265
  %17 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %3, align 8, !dbg !266
  %18 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %17, i32 0, i32 1, !dbg !267
  store i32 %16, i32* %18, align 8, !dbg !268
  %19 = load i32, i32* %5, align 4, !dbg !269
  %20 = icmp sgt i32 %19, 0, !dbg !271
  br i1 %20, label %21, label %36, !dbg !272

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4, !dbg !273
  %23 = sext i32 %22 to i64, !dbg !273
  %24 = mul i64 %23, 8, !dbg !275
  %25 = call noalias i8* @malloc(i64 noundef %24) #7, !dbg !276
  %26 = bitcast i8* %25 to %struct._xmlNode**, !dbg !277
  %27 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %3, align 8, !dbg !278
  %28 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %27, i32 0, i32 0, !dbg !279
  store %struct._xmlNode** %26, %struct._xmlNode*** %28, align 8, !dbg !280
  %29 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %3, align 8, !dbg !281
  %30 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %29, i32 0, i32 0, !dbg !282
  %31 = load %struct._xmlNode**, %struct._xmlNode*** %30, align 8, !dbg !282
  %32 = bitcast %struct._xmlNode** %31 to i8*, !dbg !281
  %33 = load i32, i32* %5, align 4, !dbg !283
  %34 = sext i32 %33 to i64, !dbg !283
  %35 = mul i64 %34, 8, !dbg !284
  call void @klee_make_symbolic(i8* noundef %32, i64 noundef %35, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)), !dbg !285
  br label %39, !dbg !286

36:                                               ; preds = %2
  %37 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %3, align 8, !dbg !287
  %38 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %37, i32 0, i32 0, !dbg !289
  store %struct._xmlNode** null, %struct._xmlNode*** %38, align 8, !dbg !290
  br label %39

39:                                               ; preds = %36, %21
  %40 = load i32, i32* %5, align 4, !dbg !291
  %41 = load %struct._xmlXPathNodeSet*, %struct._xmlXPathNodeSet** %3, align 8, !dbg !292
  %42 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %41, i32 0, i32 2, !dbg !293
  store i32 %40, i32* %42, align 4, !dbg !294
  ret void, !dbg !295
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !296 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlXPathNodeSet, align 8
  %3 = alloca %struct._xmlXPathNodeSet, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlXPathNodeSet* %2, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata %struct._xmlXPathNodeSet* %3, metadata !301, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.declare(metadata i32* %4, metadata !303, metadata !DIExpression()), !dbg !304
  %5 = bitcast i32* %4 to i8*, !dbg !305
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)), !dbg !306
  call void @make_symbolic_nodeset(%struct._xmlXPathNodeSet* noundef %2, i32 noundef 10), !dbg !307
  call void @make_symbolic_nodeset(%struct._xmlXPathNodeSet* noundef %3, i32 noundef 10), !dbg !308
  %6 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %2, i32 0, i32 1, !dbg !309
  %7 = load i32, i32* %6, align 8, !dbg !309
  %8 = icmp sgt i32 %7, 0, !dbg !310
  %9 = zext i1 %8 to i32, !dbg !310
  %10 = sext i32 %9 to i64, !dbg !311
  call void @klee_assume(i64 noundef %10), !dbg !312
  %11 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %3, i32 0, i32 1, !dbg !313
  %12 = load i32, i32* %11, align 8, !dbg !313
  %13 = icmp sgt i32 %12, 0, !dbg !314
  %14 = zext i1 %13 to i32, !dbg !314
  %15 = sext i32 %14 to i64, !dbg !315
  call void @klee_assume(i64 noundef %15), !dbg !316
  %16 = load i32, i32* %4, align 4, !dbg !317
  %17 = call i32 @target_function(%struct._xmlXPathNodeSet* noundef %2, %struct._xmlXPathNodeSet* noundef %3, i32 noundef %16), !dbg !318
  %18 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %2, i32 0, i32 0, !dbg !319
  %19 = load %struct._xmlNode**, %struct._xmlNode*** %18, align 8, !dbg !319
  %20 = icmp ne %struct._xmlNode** %19, null, !dbg !321
  br i1 %20, label %21, label %25, !dbg !322

21:                                               ; preds = %0
  %22 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %2, i32 0, i32 0, !dbg !323
  %23 = load %struct._xmlNode**, %struct._xmlNode*** %22, align 8, !dbg !323
  %24 = bitcast %struct._xmlNode** %23 to i8*, !dbg !324
  call void @free(i8* noundef %24) #7, !dbg !325
  br label %25, !dbg !325

25:                                               ; preds = %21, %0
  %26 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %3, i32 0, i32 0, !dbg !326
  %27 = load %struct._xmlNode**, %struct._xmlNode*** %26, align 8, !dbg !326
  %28 = icmp ne %struct._xmlNode** %27, null, !dbg !328
  br i1 %28, label %29, label %33, !dbg !329

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct._xmlXPathNodeSet, %struct._xmlXPathNodeSet* %3, i32 0, i32 0, !dbg !330
  %31 = load %struct._xmlNode**, %struct._xmlNode*** %30, align 8, !dbg !330
  %32 = bitcast %struct._xmlNode** %31 to i8*, !dbg !331
  call void @free(i8* noundef %32) #7, !dbg !332
  br label %33, !dbg !332

33:                                               ; preds = %29, %25
  ret i32 0, !dbg !333
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @klee_int(i8* noundef %0) #6 !dbg !334 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !338, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.declare(metadata i32* %3, metadata !340, metadata !DIExpression()), !dbg !341
  %4 = bitcast i32* %3 to i8*, !dbg !342
  %5 = load i8*, i8** %2, align 8, !dbg !343
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef %5), !dbg !344
  %6 = load i32, i32* %3, align 4, !dbg !345
  ret i32 %6, !dbg !346
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !347 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !353, metadata !DIExpression()), !dbg !354
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !355, metadata !DIExpression()), !dbg !356
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !357, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata i8** %7, metadata !359, metadata !DIExpression()), !dbg !361
  %8 = load i8*, i8** %4, align 8, !dbg !362
  store i8* %8, i8** %7, align 8, !dbg !361
  br label %9, !dbg !363

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !364
  %11 = add i64 %10, -1, !dbg !364
  store i64 %11, i64* %6, align 8, !dbg !364
  %12 = icmp ugt i64 %10, 0, !dbg !365
  br i1 %12, label %13, label %18, !dbg !363

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !366
  %15 = trunc i32 %14 to i8, !dbg !366
  %16 = load i8*, i8** %7, align 8, !dbg !367
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !367
  store i8* %17, i8** %7, align 8, !dbg !367
  store i8 %15, i8* %16, align 1, !dbg !368
  br label %9, !dbg !363, !llvm.loop !369

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !370
  ret i8* %19, !dbg !371
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24, !24, !24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/326_xpath.c_6923_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9d075fe10529c7fa656580e589f4c198")
!2 = !{!3, !4, !6, !9}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !12)
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 10, flags: DIFlagFwdDecl)
!13 = distinct !DICompileUnit(language: DW_LANG_C89, file: !14, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Intrinsic/klee_int.c", directory: "/home/shafi/tools/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "cc1fe2305891442a3c512814aacd9145")
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"Ubuntu clang version 14.0.6"}
!25 = distinct !DISubprogram(name: "xmlXPathNodeValHash", scope: !1, file: !1, line: 21, type: !26, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{!5, !10}
!28 = !{}
!29 = !DILocalVariable(name: "node", arg: 1, scope: !25, file: !1, line: 21, type: !10)
!30 = !DILocation(line: 21, column: 44, scope: !25)
!31 = !DILocation(line: 22, column: 12, scope: !25)
!32 = !DILocation(line: 22, column: 5, scope: !25)
!33 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 26, type: !34, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !3, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !DILocalVariable(name: "ctxt", arg: 1, scope: !33, file: !1, line: 26, type: !3)
!40 = !DILocation(line: 26, column: 30, scope: !33)
!41 = !DILocalVariable(name: "msg", arg: 2, scope: !33, file: !1, line: 26, type: !36)
!42 = !DILocation(line: 26, column: 48, scope: !33)
!43 = !DILocation(line: 28, column: 1, scope: !33)
!44 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 31, type: !45, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !3}
!47 = !DILocalVariable(name: "ptr", arg: 1, scope: !44, file: !1, line: 31, type: !3)
!48 = !DILocation(line: 31, column: 20, scope: !44)
!49 = !DILocation(line: 32, column: 10, scope: !44)
!50 = !DILocation(line: 32, column: 5, scope: !44)
!51 = !DILocation(line: 33, column: 1, scope: !44)
!52 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 36, type: !53, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !56, !56, !55}
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathNodeSet", file: !1, line: 12, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathNodeSet", file: !1, line: 14, size: 128, elements: !59)
!59 = !{!60, !61, !62}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !58, file: !1, line: 15, baseType: !9, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !58, file: !1, line: 16, baseType: !55, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !58, file: !1, line: 17, baseType: !55, size: 32, offset: 96)
!63 = !DILocalVariable(name: "ns1", arg: 1, scope: !52, file: !1, line: 36, type: !56)
!64 = !DILocation(line: 36, column: 38, scope: !52)
!65 = !DILocalVariable(name: "ns2", arg: 2, scope: !52, file: !1, line: 36, type: !56)
!66 = !DILocation(line: 36, column: 60, scope: !52)
!67 = !DILocalVariable(name: "neq", arg: 3, scope: !52, file: !1, line: 36, type: !55)
!68 = !DILocation(line: 36, column: 69, scope: !52)
!69 = !DILocalVariable(name: "hashs1", scope: !52, file: !1, line: 37, type: !4)
!70 = !DILocation(line: 37, column: 20, scope: !52)
!71 = !DILocalVariable(name: "hashs2", scope: !52, file: !1, line: 38, type: !4)
!72 = !DILocation(line: 38, column: 20, scope: !52)
!73 = !DILocalVariable(name: "values1", scope: !52, file: !1, line: 39, type: !6)
!74 = !DILocation(line: 39, column: 21, scope: !52)
!75 = !DILocalVariable(name: "values2", scope: !52, file: !1, line: 40, type: !6)
!76 = !DILocation(line: 40, column: 21, scope: !52)
!77 = !DILocalVariable(name: "i", scope: !52, file: !1, line: 41, type: !55)
!78 = !DILocation(line: 41, column: 9, scope: !52)
!79 = !DILocalVariable(name: "j", scope: !52, file: !1, line: 41, type: !55)
!80 = !DILocation(line: 41, column: 12, scope: !52)
!81 = !DILocalVariable(name: "ret", scope: !52, file: !1, line: 42, type: !55)
!82 = !DILocation(line: 42, column: 9, scope: !52)
!83 = !DILocation(line: 44, column: 10, scope: !84)
!84 = distinct !DILexicalBlock(scope: !52, file: !1, line: 44, column: 9)
!85 = !DILocation(line: 44, column: 14, scope: !84)
!86 = !DILocation(line: 44, column: 23, scope: !84)
!87 = !DILocation(line: 44, column: 27, scope: !84)
!88 = !DILocation(line: 44, column: 31, scope: !84)
!89 = !DILocation(line: 44, column: 9, scope: !52)
!90 = !DILocation(line: 45, column: 9, scope: !84)
!91 = !DILocation(line: 47, column: 10, scope: !92)
!92 = distinct !DILexicalBlock(scope: !52, file: !1, line: 47, column: 9)
!93 = !DILocation(line: 47, column: 15, scope: !92)
!94 = !DILocation(line: 47, column: 22, scope: !92)
!95 = !DILocation(line: 47, column: 28, scope: !92)
!96 = !DILocation(line: 47, column: 32, scope: !92)
!97 = !DILocation(line: 47, column: 37, scope: !92)
!98 = !DILocation(line: 47, column: 44, scope: !92)
!99 = !DILocation(line: 47, column: 9, scope: !52)
!100 = !DILocation(line: 48, column: 9, scope: !92)
!101 = !DILocation(line: 50, column: 39, scope: !52)
!102 = !DILocation(line: 50, column: 44, scope: !52)
!103 = !DILocation(line: 50, column: 51, scope: !52)
!104 = !DILocation(line: 50, column: 32, scope: !52)
!105 = !DILocation(line: 50, column: 14, scope: !52)
!106 = !DILocation(line: 50, column: 12, scope: !52)
!107 = !DILocation(line: 51, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !52, file: !1, line: 51, column: 9)
!109 = !DILocation(line: 51, column: 16, scope: !108)
!110 = !DILocation(line: 51, column: 9, scope: !52)
!111 = !DILocation(line: 52, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 51, column: 25)
!113 = !DILocation(line: 53, column: 9, scope: !112)
!114 = !DILocation(line: 56, column: 41, scope: !52)
!115 = !DILocation(line: 56, column: 46, scope: !52)
!116 = !DILocation(line: 56, column: 53, scope: !52)
!117 = !DILocation(line: 56, column: 34, scope: !52)
!118 = !DILocation(line: 56, column: 15, scope: !52)
!119 = !DILocation(line: 56, column: 13, scope: !52)
!120 = !DILocation(line: 57, column: 9, scope: !121)
!121 = distinct !DILexicalBlock(scope: !52, file: !1, line: 57, column: 9)
!122 = !DILocation(line: 57, column: 17, scope: !121)
!123 = !DILocation(line: 57, column: 9, scope: !52)
!124 = !DILocation(line: 58, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !1, line: 57, column: 26)
!126 = !DILocation(line: 59, column: 17, scope: !125)
!127 = !DILocation(line: 59, column: 9, scope: !125)
!128 = !DILocation(line: 60, column: 9, scope: !125)
!129 = !DILocation(line: 63, column: 41, scope: !52)
!130 = !DILocation(line: 63, column: 46, scope: !52)
!131 = !DILocation(line: 63, column: 53, scope: !52)
!132 = !DILocation(line: 63, column: 34, scope: !52)
!133 = !DILocation(line: 63, column: 15, scope: !52)
!134 = !DILocation(line: 63, column: 13, scope: !52)
!135 = !DILocation(line: 64, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !52, file: !1, line: 64, column: 9)
!137 = !DILocation(line: 64, column: 17, scope: !136)
!138 = !DILocation(line: 64, column: 9, scope: !52)
!139 = !DILocation(line: 65, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !1, line: 64, column: 26)
!141 = !DILocation(line: 66, column: 17, scope: !140)
!142 = !DILocation(line: 66, column: 9, scope: !140)
!143 = !DILocation(line: 67, column: 17, scope: !140)
!144 = !DILocation(line: 67, column: 9, scope: !140)
!145 = !DILocation(line: 68, column: 9, scope: !140)
!146 = !DILocation(line: 71, column: 39, scope: !52)
!147 = !DILocation(line: 71, column: 44, scope: !52)
!148 = !DILocation(line: 71, column: 51, scope: !52)
!149 = !DILocation(line: 71, column: 32, scope: !52)
!150 = !DILocation(line: 71, column: 14, scope: !52)
!151 = !DILocation(line: 71, column: 12, scope: !52)
!152 = !DILocation(line: 72, column: 9, scope: !153)
!153 = distinct !DILexicalBlock(scope: !52, file: !1, line: 72, column: 9)
!154 = !DILocation(line: 72, column: 16, scope: !153)
!155 = !DILocation(line: 72, column: 9, scope: !52)
!156 = !DILocation(line: 73, column: 9, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !1, line: 72, column: 25)
!158 = !DILocation(line: 74, column: 17, scope: !157)
!159 = !DILocation(line: 74, column: 9, scope: !157)
!160 = !DILocation(line: 75, column: 17, scope: !157)
!161 = !DILocation(line: 75, column: 9, scope: !157)
!162 = !DILocation(line: 76, column: 17, scope: !157)
!163 = !DILocation(line: 76, column: 9, scope: !157)
!164 = !DILocation(line: 77, column: 9, scope: !157)
!165 = !DILocation(line: 82, column: 5, scope: !52)
!166 = !DILocation(line: 85, column: 5, scope: !52)
!167 = !DILocation(line: 87, column: 12, scope: !52)
!168 = !DILocation(line: 87, column: 5, scope: !52)
!169 = !DILocation(line: 87, column: 24, scope: !52)
!170 = !DILocation(line: 87, column: 29, scope: !52)
!171 = !DILocation(line: 87, column: 36, scope: !52)
!172 = !DILocation(line: 90, column: 12, scope: !173)
!173 = distinct !DILexicalBlock(scope: !52, file: !1, line: 90, column: 5)
!174 = !DILocation(line: 90, column: 10, scope: !173)
!175 = !DILocation(line: 90, column: 17, scope: !176)
!176 = distinct !DILexicalBlock(scope: !173, file: !1, line: 90, column: 5)
!177 = !DILocation(line: 90, column: 21, scope: !176)
!178 = !DILocation(line: 90, column: 26, scope: !176)
!179 = !DILocation(line: 90, column: 19, scope: !176)
!180 = !DILocation(line: 90, column: 5, scope: !173)
!181 = !DILocation(line: 91, column: 41, scope: !182)
!182 = distinct !DILexicalBlock(scope: !176, file: !1, line: 90, column: 39)
!183 = !DILocation(line: 91, column: 46, scope: !182)
!184 = !DILocation(line: 91, column: 54, scope: !182)
!185 = !DILocation(line: 91, column: 21, scope: !182)
!186 = !DILocation(line: 91, column: 9, scope: !182)
!187 = !DILocation(line: 91, column: 16, scope: !182)
!188 = !DILocation(line: 91, column: 19, scope: !182)
!189 = !DILocation(line: 92, column: 16, scope: !190)
!190 = distinct !DILexicalBlock(scope: !182, file: !1, line: 92, column: 9)
!191 = !DILocation(line: 92, column: 14, scope: !190)
!192 = !DILocation(line: 92, column: 21, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !1, line: 92, column: 9)
!194 = !DILocation(line: 92, column: 25, scope: !193)
!195 = !DILocation(line: 92, column: 30, scope: !193)
!196 = !DILocation(line: 92, column: 23, scope: !193)
!197 = !DILocation(line: 92, column: 9, scope: !190)
!198 = !DILocation(line: 93, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !1, line: 93, column: 17)
!200 = distinct !DILexicalBlock(scope: !193, file: !1, line: 92, column: 43)
!201 = !DILocation(line: 93, column: 19, scope: !199)
!202 = !DILocation(line: 93, column: 17, scope: !200)
!203 = !DILocation(line: 94, column: 49, scope: !199)
!204 = !DILocation(line: 94, column: 54, scope: !199)
!205 = !DILocation(line: 94, column: 62, scope: !199)
!206 = !DILocation(line: 94, column: 29, scope: !199)
!207 = !DILocation(line: 94, column: 17, scope: !199)
!208 = !DILocation(line: 94, column: 24, scope: !199)
!209 = !DILocation(line: 94, column: 27, scope: !199)
!210 = !DILocation(line: 95, column: 17, scope: !211)
!211 = distinct !DILexicalBlock(scope: !200, file: !1, line: 95, column: 17)
!212 = !DILocation(line: 95, column: 24, scope: !211)
!213 = !DILocation(line: 95, column: 30, scope: !211)
!214 = !DILocation(line: 95, column: 37, scope: !211)
!215 = !DILocation(line: 95, column: 27, scope: !211)
!216 = !DILocation(line: 95, column: 17, scope: !200)
!217 = !DILocation(line: 96, column: 21, scope: !218)
!218 = distinct !DILexicalBlock(scope: !219, file: !1, line: 96, column: 21)
!219 = distinct !DILexicalBlock(scope: !211, file: !1, line: 95, column: 41)
!220 = !DILocation(line: 96, column: 21, scope: !219)
!221 = !DILocation(line: 97, column: 25, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !1, line: 96, column: 26)
!223 = !DILocation(line: 98, column: 17, scope: !222)
!224 = !DILocation(line: 99, column: 13, scope: !219)
!225 = !DILocation(line: 100, column: 9, scope: !200)
!226 = !DILocation(line: 92, column: 39, scope: !193)
!227 = !DILocation(line: 92, column: 9, scope: !193)
!228 = distinct !{!228, !197, !229, !230}
!229 = !DILocation(line: 100, column: 9, scope: !190)
!230 = !{!"llvm.loop.mustprogress"}
!231 = !DILocation(line: 101, column: 5, scope: !182)
!232 = !DILocation(line: 90, column: 35, scope: !176)
!233 = !DILocation(line: 90, column: 5, scope: !176)
!234 = distinct !{!234, !180, !235, !230}
!235 = !DILocation(line: 101, column: 5, scope: !173)
!236 = !DILocation(line: 103, column: 13, scope: !52)
!237 = !DILocation(line: 103, column: 5, scope: !52)
!238 = !DILocation(line: 104, column: 13, scope: !52)
!239 = !DILocation(line: 104, column: 5, scope: !52)
!240 = !DILocation(line: 105, column: 13, scope: !52)
!241 = !DILocation(line: 105, column: 5, scope: !52)
!242 = !DILocation(line: 106, column: 13, scope: !52)
!243 = !DILocation(line: 106, column: 5, scope: !52)
!244 = !DILocation(line: 107, column: 12, scope: !52)
!245 = !DILocation(line: 107, column: 5, scope: !52)
!246 = !DILocation(line: 108, column: 1, scope: !52)
!247 = distinct !DISubprogram(name: "make_symbolic_nodeset", scope: !1, file: !1, line: 111, type: !248, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !56, !55}
!250 = !DILocalVariable(name: "ns", arg: 1, scope: !247, file: !1, line: 111, type: !56)
!251 = !DILocation(line: 111, column: 45, scope: !247)
!252 = !DILocalVariable(name: "max_nodes", arg: 2, scope: !247, file: !1, line: 111, type: !55)
!253 = !DILocation(line: 111, column: 53, scope: !247)
!254 = !DILocalVariable(name: "nodeNr", scope: !247, file: !1, line: 112, type: !55)
!255 = !DILocation(line: 112, column: 9, scope: !247)
!256 = !DILocation(line: 113, column: 24, scope: !247)
!257 = !DILocation(line: 113, column: 5, scope: !247)
!258 = !DILocation(line: 114, column: 17, scope: !247)
!259 = !DILocation(line: 114, column: 24, scope: !247)
!260 = !DILocation(line: 114, column: 5, scope: !247)
!261 = !DILocation(line: 115, column: 17, scope: !247)
!262 = !DILocation(line: 115, column: 27, scope: !247)
!263 = !DILocation(line: 115, column: 24, scope: !247)
!264 = !DILocation(line: 115, column: 5, scope: !247)
!265 = !DILocation(line: 117, column: 18, scope: !247)
!266 = !DILocation(line: 117, column: 5, scope: !247)
!267 = !DILocation(line: 117, column: 9, scope: !247)
!268 = !DILocation(line: 117, column: 16, scope: !247)
!269 = !DILocation(line: 118, column: 9, scope: !270)
!270 = distinct !DILexicalBlock(scope: !247, file: !1, line: 118, column: 9)
!271 = !DILocation(line: 118, column: 16, scope: !270)
!272 = !DILocation(line: 118, column: 9, scope: !247)
!273 = !DILocation(line: 119, column: 42, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !1, line: 118, column: 21)
!275 = !DILocation(line: 119, column: 49, scope: !274)
!276 = !DILocation(line: 119, column: 35, scope: !274)
!277 = !DILocation(line: 119, column: 23, scope: !274)
!278 = !DILocation(line: 119, column: 9, scope: !274)
!279 = !DILocation(line: 119, column: 13, scope: !274)
!280 = !DILocation(line: 119, column: 21, scope: !274)
!281 = !DILocation(line: 120, column: 28, scope: !274)
!282 = !DILocation(line: 120, column: 32, scope: !274)
!283 = !DILocation(line: 120, column: 41, scope: !274)
!284 = !DILocation(line: 120, column: 48, scope: !274)
!285 = !DILocation(line: 120, column: 9, scope: !274)
!286 = !DILocation(line: 121, column: 5, scope: !274)
!287 = !DILocation(line: 122, column: 9, scope: !288)
!288 = distinct !DILexicalBlock(scope: !270, file: !1, line: 121, column: 12)
!289 = !DILocation(line: 122, column: 13, scope: !288)
!290 = !DILocation(line: 122, column: 21, scope: !288)
!291 = !DILocation(line: 124, column: 19, scope: !247)
!292 = !DILocation(line: 124, column: 5, scope: !247)
!293 = !DILocation(line: 124, column: 9, scope: !247)
!294 = !DILocation(line: 124, column: 17, scope: !247)
!295 = !DILocation(line: 125, column: 1, scope: !247)
!296 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 127, type: !297, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!297 = !DISubroutineType(types: !298)
!298 = !{!55}
!299 = !DILocalVariable(name: "ns1", scope: !296, file: !1, line: 128, type: !57)
!300 = !DILocation(line: 128, column: 21, scope: !296)
!301 = !DILocalVariable(name: "ns2", scope: !296, file: !1, line: 128, type: !57)
!302 = !DILocation(line: 128, column: 26, scope: !296)
!303 = !DILocalVariable(name: "neq", scope: !296, file: !1, line: 129, type: !55)
!304 = !DILocation(line: 129, column: 9, scope: !296)
!305 = !DILocation(line: 132, column: 24, scope: !296)
!306 = !DILocation(line: 132, column: 5, scope: !296)
!307 = !DILocation(line: 135, column: 5, scope: !296)
!308 = !DILocation(line: 136, column: 5, scope: !296)
!309 = !DILocation(line: 139, column: 21, scope: !296)
!310 = !DILocation(line: 139, column: 28, scope: !296)
!311 = !DILocation(line: 139, column: 17, scope: !296)
!312 = !DILocation(line: 139, column: 5, scope: !296)
!313 = !DILocation(line: 140, column: 21, scope: !296)
!314 = !DILocation(line: 140, column: 28, scope: !296)
!315 = !DILocation(line: 140, column: 17, scope: !296)
!316 = !DILocation(line: 140, column: 5, scope: !296)
!317 = !DILocation(line: 143, column: 33, scope: !296)
!318 = !DILocation(line: 143, column: 5, scope: !296)
!319 = !DILocation(line: 146, column: 13, scope: !320)
!320 = distinct !DILexicalBlock(scope: !296, file: !1, line: 146, column: 9)
!321 = !DILocation(line: 146, column: 9, scope: !320)
!322 = !DILocation(line: 146, column: 9, scope: !296)
!323 = !DILocation(line: 146, column: 31, scope: !320)
!324 = !DILocation(line: 146, column: 27, scope: !320)
!325 = !DILocation(line: 146, column: 22, scope: !320)
!326 = !DILocation(line: 147, column: 13, scope: !327)
!327 = distinct !DILexicalBlock(scope: !296, file: !1, line: 147, column: 9)
!328 = !DILocation(line: 147, column: 9, scope: !327)
!329 = !DILocation(line: 147, column: 9, scope: !296)
!330 = !DILocation(line: 147, column: 31, scope: !327)
!331 = !DILocation(line: 147, column: 27, scope: !327)
!332 = !DILocation(line: 147, column: 22, scope: !327)
!333 = !DILocation(line: 149, column: 5, scope: !296)
!334 = distinct !DISubprogram(name: "klee_int", scope: !335, file: !335, line: 12, type: !336, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !28)
!335 = !DIFile(filename: "runtime/Intrinsic/klee_int.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "cc1fe2305891442a3c512814aacd9145")
!336 = !DISubroutineType(types: !337)
!337 = !{!55, !36}
!338 = !DILocalVariable(name: "name", arg: 1, scope: !334, file: !335, line: 12, type: !36)
!339 = !DILocation(line: 12, column: 26, scope: !334)
!340 = !DILocalVariable(name: "x", scope: !334, file: !335, line: 13, type: !55)
!341 = !DILocation(line: 13, column: 7, scope: !334)
!342 = !DILocation(line: 14, column: 22, scope: !334)
!343 = !DILocation(line: 14, column: 36, scope: !334)
!344 = !DILocation(line: 14, column: 3, scope: !334)
!345 = !DILocation(line: 15, column: 10, scope: !334)
!346 = !DILocation(line: 15, column: 3, scope: !334)
!347 = distinct !DISubprogram(name: "memset", scope: !348, file: !348, line: 12, type: !349, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !28)
!348 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!349 = !DISubroutineType(types: !350)
!350 = !{!3, !3, !55, !351}
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !352, line: 46, baseType: !5)
!352 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!353 = !DILocalVariable(name: "dst", arg: 1, scope: !347, file: !348, line: 12, type: !3)
!354 = !DILocation(line: 12, column: 20, scope: !347)
!355 = !DILocalVariable(name: "s", arg: 2, scope: !347, file: !348, line: 12, type: !55)
!356 = !DILocation(line: 12, column: 29, scope: !347)
!357 = !DILocalVariable(name: "count", arg: 3, scope: !347, file: !348, line: 12, type: !351)
!358 = !DILocation(line: 12, column: 39, scope: !347)
!359 = !DILocalVariable(name: "a", scope: !347, file: !348, line: 13, type: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!361 = !DILocation(line: 13, column: 9, scope: !347)
!362 = !DILocation(line: 13, column: 13, scope: !347)
!363 = !DILocation(line: 14, column: 3, scope: !347)
!364 = !DILocation(line: 14, column: 15, scope: !347)
!365 = !DILocation(line: 14, column: 18, scope: !347)
!366 = !DILocation(line: 15, column: 12, scope: !347)
!367 = !DILocation(line: 15, column: 7, scope: !347)
!368 = !DILocation(line: 15, column: 10, scope: !347)
!369 = distinct !{!369, !363, !366, !230}
!370 = !DILocation(line: 16, column: 10, scope: !347)
!371 = !DILocation(line: 16, column: 3, scope: !347)
