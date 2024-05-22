.class public final Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final IDENTITY_MATRIX:Landroid/graphics/Matrix;


# instance fields
.field public mBaseHeight:F

.field public mBaseWidth:F

.field public mFillPaint:Landroid/graphics/Paint;

.field public final mFinalPathMatrix:Landroid/graphics/Matrix;

.field public mIsStateful:Ljava/lang/Boolean;

.field public final mPath:Landroid/graphics/Path;

.field public mPathMeasure:Landroid/graphics/PathMeasure;

.field public final mRenderPath:Landroid/graphics/Path;

.field public mRootAlpha:I

.field public final mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

.field public mRootName:Ljava/lang/String;

.field public mStrokePaint:Landroid/graphics/Paint;

.field public final mVGTargetsMap:Landroidx/collection/ArrayMap;

.field public mViewportHeight:F

.field public mViewportWidth:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    sput-object v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 4
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 5
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 6
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    const/16 v0, 0xff

    .line 7
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    .line 10
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroidx/collection/ArrayMap;

    .line 11
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 13
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 17
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 18
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 19
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    const/16 v0, 0xff

    .line 20
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    .line 23
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroidx/collection/ArrayMap;

    .line 24
    new-instance v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-direct {v1, v2, v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroidx/collection/ArrayMap;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 25
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 26
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    .line 27
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 28
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 29
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 30
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 31
    iget v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    iput v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 32
    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    iput-object v1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 33
    iget-object v1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v0, v1, p0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_0
    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mIsStateful:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final drawGroupTree(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    move-object/from16 v7, p1

    .line 4
    move-object/from16 v8, p3

    .line 6
    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    .line 8
    move-object/from16 v1, p2

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 12
    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 15
    iget-object v9, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    .line 17
    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 19
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    .line 22
    const/4 v10, 0x0

    .line 25
    move v11, v10

    .line 26
    :goto_0
    iget-object v0, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    move-result v1

    .line 32
    if-ge v11, v1, :cond_1c

    .line 33
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 38
    check-cast v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;

    .line 39
    instance-of v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 41
    if-eqz v1, :cond_0

    .line 43
    move-object v1, v0

    .line 45
    check-cast v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 46
    move-object/from16 v0, p0

    .line 48
    move-object v2, v9

    .line 50
    move-object/from16 v3, p3

    .line 51
    move/from16 v4, p4

    .line 53
    move/from16 v5, p5

    .line 55
    invoke-virtual/range {v0 .. v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->drawGroupTree(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    .line 57
    goto/16 :goto_10

    .line 60
    :cond_0
    instance-of v1, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;

    .line 62
    if-eqz v1, :cond_1a

    .line 64
    check-cast v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;

    .line 66
    move/from16 v1, p4

    .line 68
    int-to-float v2, v1

    .line 70
    iget v3, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 71
    div-float/2addr v2, v3

    .line 73
    move/from16 v3, p5

    .line 74
    int-to-float v4, v3

    .line 76
    iget v5, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 77
    div-float/2addr v4, v5

    .line 79
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 80
    move-result v5

    .line 83
    iget-object v12, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    .line 84
    invoke-virtual {v12, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 86
    invoke-virtual {v12, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 89
    const/4 v2, 0x4

    .line 92
    new-array v2, v2, [F

    .line 93
    fill-array-data v2, :array_0

    .line 95
    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 98
    aget v4, v2, v10

    .line 101
    float-to-double v13, v4

    .line 103
    const/4 v4, 0x1

    .line 104
    aget v15, v2, v4

    .line 105
    move/from16 p2, v5

    .line 107
    float-to-double v4, v15

    .line 109
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 110
    move-result-wide v4

    .line 113
    double-to-float v4, v4

    .line 114
    const/4 v5, 0x2

    .line 115
    aget v13, v2, v5

    .line 116
    float-to-double v13, v13

    .line 118
    const/4 v15, 0x3

    .line 119
    aget v5, v2, v15

    .line 120
    move/from16 v17, v11

    .line 122
    float-to-double v10, v5

    .line 124
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    .line 125
    move-result-wide v10

    .line 128
    double-to-float v5, v10

    .line 129
    const/4 v10, 0x0

    .line 130
    aget v11, v2, v10

    .line 131
    const/4 v10, 0x1

    .line 133
    aget v13, v2, v10

    .line 134
    const/4 v10, 0x2

    .line 136
    aget v10, v2, v10

    .line 137
    aget v2, v2, v15

    .line 139
    mul-float/2addr v11, v2

    .line 141
    mul-float/2addr v13, v10

    .line 142
    sub-float/2addr v11, v13

    .line 143
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 144
    move-result v2

    .line 147
    const/4 v4, 0x0

    .line 148
    cmpl-float v5, v2, v4

    .line 149
    if-lez v5, :cond_1

    .line 151
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 153
    move-result v5

    .line 156
    div-float/2addr v5, v2

    .line 157
    goto :goto_1

    .line 158
    :cond_1
    move v5, v4

    .line 159
    :goto_1
    cmpl-float v2, v5, v4

    .line 160
    if-nez v2, :cond_2

    .line 162
    goto/16 :goto_11

    .line 164
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    iget-object v2, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPath:Landroid/graphics/Path;

    .line 169
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 171
    iget-object v10, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

    .line 174
    if-eqz v10, :cond_3

    .line 176
    invoke-static {v10, v2}, Landroidx/core/graphics/PathParser$PathDataNode;->nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V

    .line 178
    :cond_3
    iget-object v10, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    .line 181
    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 183
    instance-of v11, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;

    .line 186
    if-eqz v11, :cond_5

    .line 188
    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mFillRule:I

    .line 190
    if-nez v0, :cond_4

    .line 192
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 194
    goto :goto_2

    .line 196
    :cond_4
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 197
    :goto_2
    invoke-virtual {v10, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 199
    invoke-virtual {v10, v2, v12}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 202
    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 205
    goto/16 :goto_11

    .line 208
    :cond_5
    check-cast v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;

    .line 210
    iget v11, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 212
    cmpl-float v13, v11, v4

    .line 214
    const/high16 v14, 0x3f800000    # 1.0f

    .line 216
    if-nez v13, :cond_6

    .line 218
    iget v13, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 220
    cmpl-float v13, v13, v14

    .line 222
    if-eqz v13, :cond_9

    .line 224
    :cond_6
    iget v13, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 226
    add-float/2addr v11, v13

    .line 228
    rem-float/2addr v11, v14

    .line 229
    iget v15, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 230
    add-float/2addr v15, v13

    .line 232
    rem-float/2addr v15, v14

    .line 233
    iget-object v13, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 234
    if-nez v13, :cond_7

    .line 236
    new-instance v13, Landroid/graphics/PathMeasure;

    .line 238
    invoke-direct {v13}, Landroid/graphics/PathMeasure;-><init>()V

    .line 240
    iput-object v13, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 243
    :cond_7
    iget-object v13, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 245
    const/4 v14, 0x0

    .line 247
    invoke-virtual {v13, v2, v14}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 248
    iget-object v13, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 251
    invoke-virtual {v13}, Landroid/graphics/PathMeasure;->getLength()F

    .line 253
    move-result v13

    .line 256
    mul-float/2addr v11, v13

    .line 257
    mul-float/2addr v15, v13

    .line 258
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 259
    cmpl-float v16, v11, v15

    .line 262
    if-lez v16, :cond_8

    .line 264
    iget-object v14, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 266
    const/4 v4, 0x1

    .line 268
    invoke-virtual {v14, v11, v13, v2, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 269
    iget-object v11, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 272
    const/4 v13, 0x0

    .line 274
    invoke-virtual {v11, v13, v15, v2, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 275
    goto :goto_3

    .line 278
    :cond_8
    move v13, v4

    .line 279
    const/4 v4, 0x1

    .line 280
    iget-object v14, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 281
    invoke-virtual {v14, v11, v15, v2, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 283
    :goto_3
    invoke-virtual {v2, v13, v13}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 286
    :cond_9
    invoke-virtual {v10, v2, v12}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 289
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:Landroidx/core/content/res/ComplexColorCompat;

    .line 292
    iget-object v4, v2, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    .line 294
    if-eqz v4, :cond_a

    .line 296
    const/4 v4, 0x1

    .line 298
    goto :goto_4

    .line 299
    :cond_a
    const/4 v4, 0x0

    .line 300
    :goto_4
    if-nez v4, :cond_c

    .line 301
    iget v4, v2, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    .line 303
    if-eqz v4, :cond_b

    .line 305
    goto :goto_5

    .line 307
    :cond_b
    const/4 v4, 0x0

    .line 308
    goto :goto_6

    .line 309
    :cond_c
    :goto_5
    const/4 v4, 0x1

    .line 310
    :goto_6
    const/4 v13, 0x0

    .line 311
    const/high16 v14, 0x437f0000    # 255.0f

    .line 312
    const/16 v15, 0xff

    .line 314
    if-eqz v4, :cond_11

    .line 316
    iget-object v4, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    .line 318
    if-nez v4, :cond_d

    .line 320
    new-instance v4, Landroid/graphics/Paint;

    .line 322
    const/4 v11, 0x1

    .line 324
    invoke-direct {v4, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 325
    iput-object v4, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    .line 328
    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 330
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 332
    :cond_d
    iget-object v4, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    .line 335
    iget-object v11, v2, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    .line 337
    if-eqz v11, :cond_e

    .line 339
    const/16 v18, 0x1

    .line 341
    goto :goto_7

    .line 343
    :cond_e
    const/16 v18, 0x0

    .line 344
    :goto_7
    if-eqz v18, :cond_f

    .line 346
    invoke-virtual {v11, v12}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 348
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 351
    iget v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 354
    mul-float/2addr v2, v14

    .line 356
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 357
    move-result v2

    .line 360
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 361
    goto :goto_8

    .line 364
    :cond_f
    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 365
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 368
    iget v2, v2, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    .line 371
    iget v11, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 373
    sget-object v18, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 375
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 377
    move-result v15

    .line 380
    const v16, 0xffffff

    .line 381
    and-int v2, v2, v16

    .line 384
    int-to-float v15, v15

    .line 386
    mul-float/2addr v15, v11

    .line 387
    float-to-int v11, v15

    .line 388
    shl-int/lit8 v11, v11, 0x18

    .line 389
    or-int/2addr v2, v11

    .line 391
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    :goto_8
    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 395
    iget v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mFillRule:I

    .line 398
    if-nez v2, :cond_10

    .line 400
    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 402
    goto :goto_9

    .line 404
    :cond_10
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 405
    :goto_9
    invoke-virtual {v10, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 407
    invoke-virtual {v8, v10, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 410
    :cond_11
    iget-object v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:Landroidx/core/content/res/ComplexColorCompat;

    .line 413
    iget-object v4, v2, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    .line 415
    if-eqz v4, :cond_12

    .line 417
    const/4 v4, 0x1

    .line 419
    goto :goto_a

    .line 420
    :cond_12
    const/4 v4, 0x0

    .line 421
    :goto_a
    if-nez v4, :cond_14

    .line 422
    iget v4, v2, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    .line 424
    if-eqz v4, :cond_13

    .line 426
    goto :goto_b

    .line 428
    :cond_13
    const/4 v4, 0x0

    .line 429
    goto :goto_c

    .line 430
    :cond_14
    :goto_b
    const/4 v4, 0x1

    .line 431
    :goto_c
    if-eqz v4, :cond_1b

    .line 432
    iget-object v4, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    .line 434
    if-nez v4, :cond_15

    .line 436
    new-instance v4, Landroid/graphics/Paint;

    .line 438
    const/4 v11, 0x1

    .line 440
    invoke-direct {v4, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 441
    iput-object v4, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    .line 444
    sget-object v15, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 446
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 448
    goto :goto_d

    .line 451
    :cond_15
    const/4 v11, 0x1

    .line 452
    :goto_d
    iget-object v4, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    .line 453
    iget-object v15, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 455
    if-eqz v15, :cond_16

    .line 457
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 459
    :cond_16
    iget-object v15, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 462
    if-eqz v15, :cond_17

    .line 464
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 466
    :cond_17
    iget v15, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 469
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 471
    iget-object v15, v2, Landroidx/core/content/res/ComplexColorCompat;->mShader:Landroid/graphics/Shader;

    .line 474
    if-eqz v15, :cond_18

    .line 476
    goto :goto_e

    .line 478
    :cond_18
    const/4 v11, 0x0

    .line 479
    :goto_e
    if-eqz v11, :cond_19

    .line 480
    invoke-virtual {v15, v12}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 482
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 485
    iget v2, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 488
    mul-float/2addr v2, v14

    .line 490
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 491
    move-result v2

    .line 494
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 495
    goto :goto_f

    .line 498
    :cond_19
    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 499
    const/16 v11, 0xff

    .line 502
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 504
    iget v2, v2, Landroidx/core/content/res/ComplexColorCompat;->mColor:I

    .line 507
    iget v11, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 509
    sget-object v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 511
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 513
    move-result v12

    .line 516
    const v14, 0xffffff

    .line 517
    and-int/2addr v2, v14

    .line 520
    int-to-float v12, v12

    .line 521
    mul-float/2addr v12, v11

    .line 522
    float-to-int v11, v12

    .line 523
    shl-int/lit8 v11, v11, 0x18

    .line 524
    or-int/2addr v2, v11

    .line 526
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 527
    :goto_f
    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 530
    mul-float v5, v5, p2

    .line 533
    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 535
    mul-float/2addr v0, v5

    .line 537
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 538
    invoke-virtual {v8, v10, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 541
    goto :goto_11

    .line 544
    :cond_1a
    :goto_10
    move/from16 v1, p4

    .line 545
    move/from16 v3, p5

    .line 547
    move/from16 v17, v11

    .line 549
    :cond_1b
    :goto_11
    add-int/lit8 v11, v17, 0x1

    .line 551
    const/4 v10, 0x0

    .line 553
    goto/16 :goto_0

    .line 554
    :cond_1c
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    .line 556
    return-void

    .line 559
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 560
.end method

.method public getAlpha()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    .line 2
    move-result p0

    .line 5
    int-to-float p0, p0

    .line 6
    const/high16 v0, 0x437f0000    # 255.0f

    .line 7
    div-float/2addr p0, v0

    .line 9
    return p0
    .line 10
.end method

.method public getRootAlpha()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 2
    return p0
    .line 4
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    const/high16 v0, 0x437f0000    # 255.0f

    .line 2
    mul-float/2addr p1, v0

    .line 4
    float-to-int p1, p1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->setRootAlpha(I)V

    .line 6
    return-void
    .line 9
.end method

.method public setRootAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootAlpha:I

    .line 2
    return-void
    .line 4
.end method
