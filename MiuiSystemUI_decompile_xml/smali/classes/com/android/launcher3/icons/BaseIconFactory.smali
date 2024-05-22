.class public Lcom/android/launcher3/icons/BaseIconFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCanvas:Landroid/graphics/Canvas;

.field public final mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

.field public final mContext:Landroid/content/Context;

.field public final mFillResIconDpi:I

.field public final mIconBitmapSize:I

.field public final mIsUserBadged:Landroid/util/SparseBooleanArray;

.field public mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

.field public final mOldBounds:Landroid/graphics/Rect;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

.field public final mShapeDetection:Z

.field public mWrapperBackgroundColor:I

.field public mWrapperIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xf5

    .line 2
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    .line 4
    return-void
    .line 7
.end method

.method public constructor <init>(IILandroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 12
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    .line 17
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    .line 20
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    move-result-object p3

    .line 25
    iput-object p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 26
    iput-boolean p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShapeDetection:Z

    .line 28
    iput p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mFillResIconDpi:I

    .line 30
    iput p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    .line 32
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mPm:Landroid/content/pm/PackageManager;

    .line 38
    new-instance p1, Lcom/android/launcher3/icons/ColorExtractor;

    .line 40
    invoke-direct {p1}, Lcom/android/launcher3/icons/ColorExtractor;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    .line 45
    new-instance p1, Landroid/graphics/Canvas;

    .line 47
    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    .line 52
    new-instance p2, Landroid/graphics/PaintFlagsDrawFilter;

    .line 54
    const/4 p3, 0x4

    .line 56
    const/4 p4, 0x2

    .line 57
    invoke-direct {p2, p3, p4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 58
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 61
    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    .line 64
    return-void
    .line 66
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    .line 3
    return-void
    .line 5
.end method

.method public final createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [F

    .line 7
    const/4 v4, 0x0

    .line 9
    move-object/from16 v5, p1

    .line 10
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/launcher3/icons/BaseIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v5

    .line 15
    const/4 v6, 0x0

    .line 16
    aget v7, v3, v6

    .line 17
    const/4 v8, 0x2

    .line 19
    invoke-virtual {v0, v5, v7, v8}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    .line 20
    move-result-object v10

    .line 23
    iget-object v7, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    .line 24
    invoke-virtual {v7, v10}, Lcom/android/launcher3/icons/ColorExtractor;->findDominantColorByHue(Landroid/graphics/Bitmap;)I

    .line 26
    move-result v11

    .line 29
    new-instance v7, Lcom/android/launcher3/icons/BitmapInfo;

    .line 30
    invoke-direct {v7, v10, v11}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    .line 32
    instance-of v8, v5, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    .line 35
    const/4 v15, 0x4

    .line 37
    if-eqz v8, :cond_0

    .line 38
    check-cast v5, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    .line 40
    aget v12, v3, v6

    .line 42
    check-cast v5, Lcom/android/launcher3/icons/ClockDrawableWrapper;

    .line 44
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    new-instance v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 49
    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 51
    move-result-object v7

    .line 54
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 55
    move-result-object v7

    .line 58
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 59
    move-result-object v7

    .line 62
    invoke-direct {v3, v7, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {v0, v3, v15}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    .line 66
    move-result-object v14

    .line 69
    const/4 v3, 0x0

    .line 70
    const/16 v16, 0x0

    .line 71
    new-instance v7, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;

    .line 73
    iget-object v13, v5, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 75
    move-object v9, v7

    .line 77
    move v4, v15

    .line 78
    move-object v15, v3

    .line 79
    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;-><init>(Landroid/graphics/Bitmap;IFLcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;)V

    .line 80
    goto :goto_0

    .line 83
    :cond_0
    move v4, v15

    .line 84
    sget v3, Lcom/android/launcher3/icons/IconProvider;->CONFIG_ICON_MASK_RES_ID:I

    .line 85
    :goto_0
    sget-object v3, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda0;

    .line 87
    if-eqz v1, :cond_7

    .line 89
    iget-object v5, v1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    .line 91
    if-eqz v5, :cond_7

    .line 93
    invoke-virtual {v5}, Landroid/os/UserHandle;->hashCode()I

    .line 95
    move-result v5

    .line 98
    iget-object v8, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    .line 99
    invoke-virtual {v8, v5}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 101
    move-result v8

    .line 104
    if-ltz v8, :cond_1

    .line 105
    iget-object v0, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    .line 107
    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 109
    move-result v0

    .line 112
    goto :goto_2

    .line 113
    :cond_1
    new-instance v8, Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;

    .line 114
    invoke-direct {v8}, Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;-><init>()V

    .line 116
    iget-object v9, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mPm:Landroid/content/pm/PackageManager;

    .line 119
    iget-object v10, v1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    .line 121
    invoke-virtual {v9, v8, v10}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    .line 123
    move-result-object v9

    .line 126
    if-eq v8, v9, :cond_2

    .line 127
    move v8, v2

    .line 129
    goto :goto_1

    .line 130
    :cond_2
    move v8, v6

    .line 131
    :goto_1
    iget-object v0, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    .line 132
    invoke-virtual {v0, v5, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 134
    move v0, v8

    .line 137
    :goto_2
    if-eqz v0, :cond_3

    .line 138
    iget-boolean v5, v1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mIsCloneProfile:Z

    .line 140
    if-eqz v5, :cond_3

    .line 142
    move v5, v2

    .line 144
    goto :goto_3

    .line 145
    :cond_3
    move v5, v6

    .line 146
    :goto_3
    if-eqz v5, :cond_4

    .line 147
    new-instance v5, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    .line 149
    invoke-direct {v5, v3, v4, v6}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    .line 151
    goto :goto_4

    .line 154
    :cond_4
    new-instance v5, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    .line 155
    invoke-direct {v5, v3, v4, v2}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    .line 157
    :goto_4
    if-eqz v0, :cond_5

    .line 160
    iget-boolean v0, v1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mIsCloneProfile:Z

    .line 162
    if-nez v0, :cond_5

    .line 164
    move v0, v2

    .line 166
    goto :goto_5

    .line 167
    :cond_5
    move v0, v6

    .line 168
    :goto_5
    if-eqz v0, :cond_6

    .line 169
    new-instance v0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    .line 171
    invoke-direct {v0, v5, v2, v6}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    .line 173
    goto :goto_6

    .line 176
    :cond_6
    new-instance v0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    .line 177
    invoke-direct {v0, v5, v2, v2}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    .line 179
    goto :goto_6

    .line 182
    :cond_7
    move-object v0, v3

    .line 183
    :goto_6
    if-ne v0, v3, :cond_8

    .line 184
    goto :goto_7

    .line 186
    :cond_8
    invoke-virtual {v7}, Lcom/android/launcher3/icons/BitmapInfo;->clone()Lcom/android/launcher3/icons/BitmapInfo;

    .line 187
    move-result-object v7

    .line 190
    iget v1, v7, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    .line 191
    invoke-interface {v0, v1}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    .line 193
    move-result v0

    .line 196
    iput v0, v7, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    .line 197
    :goto_7
    return-object v7
    .line 199
.end method

.method public final createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eq p3, v1, :cond_1

    .line 5
    const/4 v1, 0x3

    .line 7
    if-eq p3, v1, :cond_0

    .line 8
    const/4 v1, 0x4

    .line 10
    if-eq p3, v1, :cond_0

    .line 11
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 13
    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 15
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v1, Lcom/android/launcher3/icons/GraphicsUtils;->sOnNewBitmapRunnable:Lcom/android/launcher3/icons/GraphicsUtils$$ExternalSyntheticLambda0;

    .line 20
    new-instance v1, Landroid/graphics/Picture;

    .line 22
    invoke-direct {v1}, Landroid/graphics/Picture;-><init>()V

    .line 24
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    .line 27
    move-result-object v3

    .line 30
    const/4 v7, 0x0

    .line 31
    move-object v2, p0

    .line 32
    move-object v4, p1

    .line 33
    move v5, p2

    .line 34
    move v6, p3

    .line 35
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/icons/BaseIconFactory;->drawIconBitmap(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap;)V

    .line 36
    invoke-virtual {v1}, Landroid/graphics/Picture;->endRecording()V

    .line 39
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    .line 42
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 47
    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 49
    move-result-object v0

    .line 52
    :goto_0
    if-nez p1, :cond_2

    .line 53
    return-object v0

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    .line 56
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    iget-object v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    .line 61
    move-object v1, p0

    .line 63
    move-object v3, p1

    .line 64
    move v4, p2

    .line 65
    move v5, p3

    .line 66
    move-object v6, v0

    .line 67
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/icons/BaseIconFactory;->drawIconBitmap(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap;)V

    .line 68
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    .line 71
    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 74
    return-object v0
    .line 77
.end method

.method public final createScaledBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 4
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [F

    .line 8
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/icons/BaseIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 13
    const/4 v2, 0x0

    .line 14
    aget v1, v1, v2

    .line 15
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 17
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 21
    move-result v2

    .line 24
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 27
    move-result v2

    .line 30
    const v3, 0x3d0f5c29    # 0.035f

    .line 31
    cmpg-float v3, v2, v3

    .line 34
    const/high16 v4, 0x3f000000    # 0.5f

    .line 36
    if-gez v3, :cond_0

    .line 38
    const v3, 0x3eee147b    # 0.465f

    .line 40
    sub-float v2, v4, v2

    .line 43
    div-float/2addr v3, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 47
    :goto_0
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 49
    const v2, 0x3d64b17e

    .line 51
    cmpg-float v2, v0, v2

    .line 54
    if-gez v2, :cond_1

    .line 56
    const v2, 0x3ee369d0

    .line 58
    sub-float/2addr v4, v0

    .line 61
    div-float/2addr v2, v4

    .line 62
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    .line 63
    move-result v3

    .line 66
    :cond_1
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 67
    move-result v0

    .line 70
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    .line 71
    move-result-object p0

    .line 74
    return-object p0
    .line 75
.end method

.method public final drawIconBitmap(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    .line 2
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10
    instance-of v1, p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 13
    const v2, 0x3caaaaab

    .line 15
    const/4 v3, 0x7

    .line 18
    const/16 v4, 0x19

    .line 19
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x2

    .line 22
    if-eqz v1, :cond_7

    .line 23
    int-to-float p5, v0

    .line 25
    const v1, 0x3d0f5c29    # 0.035f

    .line 26
    mul-float/2addr v1, p5

    .line 29
    float-to-double v7, v1

    .line 30
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 31
    move-result-wide v7

    .line 34
    double-to-int v1, v7

    .line 35
    const/high16 v7, 0x3f800000    # 1.0f

    .line 36
    sub-float/2addr v7, p3

    .line 38
    mul-float/2addr v7, p5

    .line 39
    const/high16 p3, 0x40000000    # 2.0f

    .line 40
    div-float/2addr v7, p3

    .line 42
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 43
    move-result p3

    .line 46
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    .line 47
    move-result p3

    .line 50
    sub-int/2addr v0, p3

    .line 51
    sub-int/2addr v0, p3

    .line 52
    invoke-virtual {p2, v5, v5, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 56
    move-result p5

    .line 59
    int-to-float p3, p3

    .line 60
    invoke-virtual {p1, p3, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 61
    if-eq p4, v6, :cond_0

    .line 64
    const/4 p3, 0x4

    .line 66
    if-ne p4, p3, :cond_2

    .line 67
    :cond_0
    iget-object p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    .line 69
    if-nez p3, :cond_1

    .line 71
    new-instance p3, Lcom/android/launcher3/icons/ShadowGenerator;

    .line 73
    iget p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    .line 75
    invoke-direct {p3, p4}, Lcom/android/launcher3/icons/ShadowGenerator;-><init>(I)V

    .line 77
    iput-object p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    .line 80
    :cond_1
    iget-object p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    .line 82
    move-object p4, p2

    .line 84
    check-cast p4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 85
    invoke-virtual {p4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    .line 87
    move-result-object p4

    .line 90
    iget-object v0, p3, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    .line 91
    iget-object v1, p3, Lcom/android/launcher3/icons/ShadowGenerator;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 93
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 95
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 98
    invoke-virtual {p1, p4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 104
    move-result v1

    .line 107
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 108
    iget p3, p3, Lcom/android/launcher3/icons/ShadowGenerator;->mIconSize:I

    .line 111
    int-to-float p3, p3

    .line 113
    mul-float/2addr p3, v2

    .line 114
    const/4 v2, 0x0

    .line 115
    invoke-virtual {p1, v2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 116
    invoke-virtual {p1, p4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 119
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 122
    const/4 p3, 0x0

    .line 125
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 126
    :cond_2
    instance-of p3, p2, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    .line 129
    if-eqz p3, :cond_6

    .line 131
    move-object p3, p2

    .line 133
    check-cast p3, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    .line 134
    check-cast p3, Lcom/android/launcher3/icons/ClockDrawableWrapper;

    .line 136
    invoke-virtual {p3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 138
    move-result-object p4

    .line 141
    check-cast p4, Landroid/graphics/drawable/LayerDrawable;

    .line 142
    iget-object v0, p3, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 144
    iget v0, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    .line 146
    const/4 v1, -0x1

    .line 148
    if-eq v0, v1, :cond_3

    .line 149
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 151
    move-result-object v0

    .line 154
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 155
    :cond_3
    iget-object v0, p3, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 158
    iget v0, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    .line 160
    if-eq v0, v1, :cond_4

    .line 162
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 164
    move-result-object v0

    .line 167
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 168
    :cond_4
    iget-object v0, p3, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 171
    iget v0, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    .line 173
    if-eq v0, v1, :cond_5

    .line 175
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 177
    move-result-object p4

    .line 180
    invoke-virtual {p4, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 181
    :cond_5
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 184
    iget-object p4, p3, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    .line 187
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 189
    move-result-object v0

    .line 192
    invoke-virtual {p3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 193
    move-result-object p3

    .line 196
    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    .line 197
    invoke-virtual {p4, v0, p3}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->applyTime(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z

    .line 199
    goto :goto_0

    .line 202
    :cond_6
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 203
    :goto_0
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 206
    goto/16 :goto_2

    .line 209
    :cond_7
    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 211
    if-eqz v1, :cond_8

    .line 213
    move-object v1, p2

    .line 215
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 216
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 218
    move-result-object v7

    .line 221
    if-eqz v7, :cond_8

    .line 222
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getDensity()I

    .line 224
    move-result v7

    .line 227
    if-nez v7, :cond_8

    .line 228
    iget-object v7, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 230
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 232
    move-result-object v7

    .line 235
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 236
    move-result-object v7

    .line 239
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 240
    :cond_8
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 243
    move-result v1

    .line 246
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 247
    move-result v7

    .line 250
    if-lez v1, :cond_a

    .line 251
    if-lez v7, :cond_a

    .line 253
    int-to-float v8, v1

    .line 255
    int-to-float v9, v7

    .line 256
    div-float/2addr v8, v9

    .line 257
    if-le v1, v7, :cond_9

    .line 258
    int-to-float v1, v0

    .line 260
    div-float/2addr v1, v8

    .line 261
    float-to-int v1, v1

    .line 262
    move v7, v1

    .line 263
    move v1, v0

    .line 264
    goto :goto_1

    .line 265
    :cond_9
    if-le v7, v1, :cond_a

    .line 266
    int-to-float v1, v0

    .line 268
    mul-float/2addr v1, v8

    .line 269
    float-to-int v1, v1

    .line 270
    move v7, v0

    .line 271
    goto :goto_1

    .line 272
    :cond_a
    move v1, v0

    .line 273
    move v7, v1

    .line 274
    :goto_1
    sub-int v8, v0, v1

    .line 275
    div-int/2addr v8, v6

    .line 277
    sub-int v9, v0, v7

    .line 278
    div-int/2addr v9, v6

    .line 280
    add-int/2addr v1, v8

    .line 281
    add-int/2addr v7, v9

    .line 282
    invoke-virtual {p2, v8, v9, v1, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 283
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 286
    div-int/2addr v0, v6

    .line 289
    int-to-float v0, v0

    .line 290
    invoke-virtual {p1, p3, p3, v0, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 291
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 294
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 297
    if-ne p4, v6, :cond_c

    .line 300
    if-eqz p5, :cond_c

    .line 302
    iget-object p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    .line 304
    if-nez p4, :cond_b

    .line 306
    new-instance p4, Lcom/android/launcher3/icons/ShadowGenerator;

    .line 308
    iget v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    .line 310
    invoke-direct {p4, v1}, Lcom/android/launcher3/icons/ShadowGenerator;-><init>(I)V

    .line 312
    iput-object p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    .line 315
    :cond_b
    iget-object p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    .line 317
    monitor-enter p4

    .line 319
    :try_start_0
    new-array v1, v6, [I

    .line 320
    iget-object v6, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    .line 322
    iget-object v7, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 324
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 326
    iget-object v6, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    .line 329
    invoke-virtual {p5, v6, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    .line 331
    move-result-object p5

    .line 334
    iget-object v6, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    .line 335
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 337
    aget v4, v1, v5

    .line 340
    int-to-float v4, v4

    .line 342
    const/4 v6, 0x1

    .line 343
    aget v7, v1, v6

    .line 344
    int-to-float v7, v7

    .line 346
    iget-object v8, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    .line 347
    invoke-virtual {p1, p5, v4, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 349
    iget-object v4, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    .line 352
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 354
    aget v3, v1, v5

    .line 357
    int-to-float v3, v3

    .line 359
    aget v1, v1, v6

    .line 360
    int-to-float v1, v1

    .line 362
    iget v4, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mIconSize:I

    .line 363
    int-to-float v4, v4

    .line 365
    mul-float/2addr v4, v2

    .line 366
    add-float/2addr v4, v1

    .line 367
    iget-object v1, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    .line 368
    invoke-virtual {p1, p5, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    monitor-exit p4

    .line 373
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 374
    invoke-virtual {p1, p3, p3, v0, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 377
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 380
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 383
    goto :goto_2

    .line 386
    :catchall_0
    move-exception p0

    .line 387
    monitor-exit p4

    .line 388
    throw p0

    .line 389
    :cond_c
    :goto_2
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    .line 390
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 392
    return-void
    .line 395
.end method

.method public final getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/launcher3/icons/IconNormalizer;

    .line 6
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 8
    iget v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    .line 10
    iget-boolean v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShapeDetection:Z

    .line 12
    invoke-direct {v0, v2, v3, v1}, Lcom/android/launcher3/icons/IconNormalizer;-><init>(IZLandroid/content/Context;)V

    .line 14
    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    .line 19
    return-object p0
    .line 21
.end method

.method public final normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_4

    .line 9
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    .line 11
    if-nez v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 15
    const v3, 0x7f080ae0    # @drawable/adaptive_icon_drawable_wrapper 'res/drawable/adaptive_icon_drawable_wrapper.xml'

    .line 17
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 24
    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    .line 30
    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 32
    const/4 v3, 0x1

    .line 34
    invoke-virtual {v1, v2, v2, v3, v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 35
    new-array v3, v3, [Z

    .line 38
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    .line 40
    move-result-object v4

    .line 43
    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    .line 44
    move-result-object v5

    .line 47
    invoke-virtual {v4, p1, p2, v5, v3}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    .line 48
    move-result v4

    .line 51
    aget-boolean v3, v3, v2

    .line 52
    if-nez v3, :cond_5

    .line 54
    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 56
    move-result-object v3

    .line 59
    check-cast v3, Lcom/android/launcher3/icons/FixedScaleDrawable;

    .line 60
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {v3}, Landroid/graphics/drawable/DrawableWrapper;->getIntrinsicHeight()I

    .line 65
    move-result p1

    .line 68
    int-to-float p1, p1

    .line 69
    invoke-virtual {v3}, Landroid/graphics/drawable/DrawableWrapper;->getIntrinsicWidth()I

    .line 70
    move-result v5

    .line 73
    int-to-float v5, v5

    .line 74
    const v6, 0x3eeef1fe    # 0.46669f

    .line 75
    mul-float/2addr v4, v6

    .line 78
    iput v4, v3, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleX:F

    .line 79
    iput v4, v3, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleY:F

    .line 81
    cmpl-float v6, p1, v5

    .line 83
    const/4 v7, 0x0

    .line 85
    if-lez v6, :cond_2

    .line 86
    cmpl-float v6, v5, v7

    .line 88
    if-lez v6, :cond_2

    .line 90
    div-float/2addr v5, p1

    .line 92
    mul-float/2addr v5, v4

    .line 93
    iput v5, v3, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleX:F

    .line 94
    goto :goto_0

    .line 96
    :cond_2
    cmpl-float v6, v5, p1

    .line 97
    if-lez v6, :cond_3

    .line 99
    cmpl-float v6, p1, v7

    .line 101
    if-lez v6, :cond_3

    .line 103
    div-float/2addr p1, v5

    .line 105
    mul-float/2addr p1, v4

    .line 106
    iput p1, v3, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleY:F

    .line 107
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    .line 109
    move-result-object p1

    .line 112
    invoke-virtual {p1, v1, p2, v0, v0}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    .line 113
    move-result v4

    .line 116
    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 117
    move-result-object p1

    .line 120
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    .line 121
    iget p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    .line 123
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 125
    move-object p1, v1

    .line 128
    goto :goto_1

    .line 129
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    .line 130
    move-result-object p0

    .line 133
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    .line 134
    move-result v4

    .line 137
    :cond_5
    :goto_1
    aput v4, p3, v2

    .line 138
    return-object p1
    .line 140
.end method
