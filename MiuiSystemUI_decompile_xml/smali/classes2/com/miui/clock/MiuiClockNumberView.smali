.class public Lcom/miui/clock/MiuiClockNumberView;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public leftExtra:F

.field public mBoxBothEmptySidesWidth:F

.field public mCenterOffsetX:I

.field public mCenterOffsetY:I

.field public mContext:Landroid/content/Context;

.field public final mDiffusionType:Lcom/miui/clock/module/DiffusionType;

.field public final mDrawMatrix:Landroid/graphics/Matrix;

.field public mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

.field public mFullDiffusionTextBoxWidth:F

.field public mHasUserDefined:Z

.field public mIndex:I

.field public mOriginAngel:F

.field public mOriginImageHeight:I

.field public mOriginImageWidth:I

.field public mOriginLeftEmpty:I

.field public mOriginRightEmpty:I

.field public mOriginTextWidth:I

.field public final mPercentages:[F

.field public mScale:F

.field public mScaleRadio:F

.field public mTargetCenterX:I

.field public mTargetCenterY:I

.field public mTextBoxHeight:I

.field public mTextBoxWidth:I

.field public mTextColor:I

.field public mTranslateX:F

.field public mTranslateY:F

.field public mUserDefineAngel:F

.field public mVectorDrawable:Landroid/graphics/drawable/Drawable;

.field public rightExtra:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lcom/miui/clock/module/DiffusionType;->NONE:Lcom/miui/clock/module/DiffusionType;

    iput-object v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 3
    new-instance v0, Lcom/miui/clock/module/FontMiSansNormal;

    invoke-direct {v0}, Lcom/miui/clock/module/FontMiSansNormal;-><init>()V

    iput-object v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mDrawMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x7

    new-array v0, v0, [F

    .line 5
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mPercentages:[F

    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    iput v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mHasUserDefined:Z

    .line 8
    iput-object p1, p0, Lcom/miui/clock/MiuiClockNumberView;->mContext:Landroid/content/Context;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    sget-object p2, Lcom/miui/clock/module/DiffusionType;->NONE:Lcom/miui/clock/module/DiffusionType;

    iput-object p2, p0, Lcom/miui/clock/MiuiClockNumberView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 11
    new-instance p2, Lcom/miui/clock/module/FontMiSansNormal;

    invoke-direct {p2}, Lcom/miui/clock/module/FontMiSansNormal;-><init>()V

    iput-object p2, p0, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 12
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/miui/clock/MiuiClockNumberView;->mDrawMatrix:Landroid/graphics/Matrix;

    const/4 p2, 0x7

    new-array p2, p2, [F

    .line 13
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/miui/clock/MiuiClockNumberView;->mPercentages:[F

    const/high16 p2, -0x40800000    # -1.0f

    .line 14
    iput p2, p0, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    const/4 p2, 0x0

    .line 15
    iput-boolean p2, p0, Lcom/miui/clock/MiuiClockNumberView;->mHasUserDefined:Z

    .line 16
    iput-object p1, p0, Lcom/miui/clock/MiuiClockNumberView;->mContext:Landroid/content/Context;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    sget-object p2, Lcom/miui/clock/module/DiffusionType;->NONE:Lcom/miui/clock/module/DiffusionType;

    iput-object p2, p0, Lcom/miui/clock/MiuiClockNumberView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 19
    new-instance p2, Lcom/miui/clock/module/FontMiSansNormal;

    invoke-direct {p2}, Lcom/miui/clock/module/FontMiSansNormal;-><init>()V

    iput-object p2, p0, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 20
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/miui/clock/MiuiClockNumberView;->mDrawMatrix:Landroid/graphics/Matrix;

    const/4 p2, 0x7

    new-array p2, p2, [F

    .line 21
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/miui/clock/MiuiClockNumberView;->mPercentages:[F

    const/high16 p2, -0x40800000    # -1.0f

    .line 22
    iput p2, p0, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p0, Lcom/miui/clock/MiuiClockNumberView;->mHasUserDefined:Z

    .line 24
    iput-object p1, p0, Lcom/miui/clock/MiuiClockNumberView;->mContext:Landroid/content/Context;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    sget-object p2, Lcom/miui/clock/module/DiffusionType;->NONE:Lcom/miui/clock/module/DiffusionType;

    iput-object p2, p0, Lcom/miui/clock/MiuiClockNumberView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 27
    new-instance p2, Lcom/miui/clock/module/FontMiSansNormal;

    invoke-direct {p2}, Lcom/miui/clock/module/FontMiSansNormal;-><init>()V

    iput-object p2, p0, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 28
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/miui/clock/MiuiClockNumberView;->mDrawMatrix:Landroid/graphics/Matrix;

    const/4 p2, 0x7

    new-array p2, p2, [F

    .line 29
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/miui/clock/MiuiClockNumberView;->mPercentages:[F

    const/high16 p2, -0x40800000    # -1.0f

    .line 30
    iput p2, p0, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    const/4 p2, 0x0

    .line 31
    iput-boolean p2, p0, Lcom/miui/clock/MiuiClockNumberView;->mHasUserDefined:Z

    .line 32
    iput-object p1, p0, Lcom/miui/clock/MiuiClockNumberView;->mContext:Landroid/content/Context;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static dp2px(F)I
    .locals 1

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    mul-float/2addr p0, v0

    .line 12
    const/high16 v0, 0x3f000000    # 0.5f

    .line 13
    add-float/2addr p0, v0

    .line 15
    float-to-int p0, p0

    .line 16
    return p0
    .line 17
.end method

.method public static resolveAdjustedSize(II)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    move-result p1

    .line 9
    const/high16 v1, -0x80000000

    .line 10
    const v2, 0x7fffffff

    .line 12
    if-eq v0, v1, :cond_2

    .line 15
    if-eqz v0, :cond_1

    .line 17
    const/high16 v1, 0x40000000    # 2.0f

    .line 19
    if-eq v0, v1, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    move p0, p1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result p0

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 31
    move-result p0

    .line 34
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    .line 35
    move-result p0

    .line 38
    :goto_0
    return p0
    .line 39
.end method


# virtual methods
.method public final build()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 2
    iget-object v1, v0, Lcom/miui/clock/module/BaseFontStyle;->mUserDefinedResources:[I

    .line 4
    if-eqz v1, :cond_0

    .line 6
    array-length v2, v1

    .line 8
    if-nez v2, :cond_1

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/miui/clock/module/BaseFontStyle;->getSvgResource()[I

    .line 11
    move-result-object v1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mContext:Landroid/content/Context;

    .line 15
    iget v2, p0, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 17
    aget v1, v1, v2

    .line 19
    sget-object v2, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object v0

    .line 26
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 27
    const-string v2, "GlassNumberView"

    .line 29
    if-nez v1, :cond_2

    .line 31
    instance-of v3, v0, Landroid/graphics/drawable/VectorDrawable;

    .line 33
    if-nez v3, :cond_2

    .line 35
    const-string/jumbo p0, "set svgRes is invalid"

    .line 37
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void

    .line 43
    :cond_2
    iget-object v3, p0, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 44
    invoke-virtual {v3}, Lcom/miui/clock/module/BaseFontStyle;->getFontStyle()Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 46
    move-result-object v3

    .line 49
    sget-object v4, Lcom/miui/clock/module/BaseFontStyle$Style;->SKPupok:Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 50
    const/4 v5, 0x1

    .line 52
    const/4 v6, 0x0

    .line 53
    if-ne v3, v4, :cond_4

    .line 54
    if-eqz v1, :cond_4

    .line 56
    :try_start_0
    const-class v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 58
    const-string v3, "getVectorDrawable"

    .line 60
    new-array v4, v6, [Ljava/lang/Class;

    .line 62
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    move-result-object v1

    .line 67
    new-array v3, v6, [Ljava/lang/Object;

    .line 68
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 73
    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    .line 74
    if-eqz v1, :cond_3

    .line 76
    const-class v3, Landroid/graphics/drawable/VectorDrawable;

    .line 78
    const-string v4, "getTargetByName"

    .line 80
    new-array v7, v5, [Ljava/lang/Class;

    .line 82
    const-class v8, Ljava/lang/String;

    .line 84
    aput-object v8, v7, v6

    .line 86
    invoke-virtual {v3, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 88
    move-result-object v3

    .line 91
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 92
    new-array v4, v5, [Ljava/lang/Object;

    .line 95
    const-string v7, "_R_G_L_0_G_D_1_P_0"

    .line 97
    aput-object v7, v4, v6

    .line 99
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    move-result-object v1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    move-result-object v3

    .line 110
    const-string/jumbo v4, "setStrokeColor"

    .line 111
    new-array v7, v5, [Ljava/lang/Class;

    .line 114
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 116
    aput-object v8, v7, v6

    .line 118
    invoke-virtual {v3, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 120
    move-result-object v3

    .line 123
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 124
    new-array v4, v5, [Ljava/lang/Object;

    .line 127
    iget v7, p0, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 129
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v7

    .line 134
    aput-object v7, v4, v6

    .line 135
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    const-string v3, "AnimatedVectorDrawable reflect fail"

    .line 142
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    :cond_3
    :goto_0
    move v1, v6

    .line 147
    goto :goto_1

    .line 148
    :cond_4
    move v1, v5

    .line 149
    :goto_1
    iget-object v3, p0, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 150
    invoke-virtual {v3}, Lcom/miui/clock/module/BaseFontStyle;->getPercentages()[F

    .line 152
    move-result-object v3

    .line 155
    iget-object v4, p0, Lcom/miui/clock/MiuiClockNumberView;->mPercentages:[F

    .line 156
    array-length v7, v3

    .line 158
    invoke-static {v3, v6, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    if-eqz v1, :cond_5

    .line 162
    iget v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 164
    if-eqz v1, :cond_5

    .line 166
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 168
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 171
    move-result v1

    .line 174
    iput v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 175
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 177
    move-result v1

    .line 180
    iput v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageHeight:I

    .line 181
    iput-object v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mVectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 183
    iget v3, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 185
    invoke-virtual {v0, v6, v6, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    iget-object v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 190
    invoke-virtual {v0}, Lcom/miui/clock/module/BaseFontStyle;->getLeftEmpty()[F

    .line 192
    move-result-object v0

    .line 195
    iget v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 196
    aget v0, v0, v1

    .line 198
    invoke-static {v0}, Lcom/miui/clock/MiuiClockNumberView;->dp2px(F)I

    .line 200
    move-result v0

    .line 203
    iput v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginLeftEmpty:I

    .line 204
    iget-object v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 206
    invoke-virtual {v0}, Lcom/miui/clock/module/BaseFontStyle;->getRightEmpty()[F

    .line 208
    move-result-object v0

    .line 211
    iget v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 212
    aget v0, v0, v1

    .line 214
    invoke-static {v0}, Lcom/miui/clock/MiuiClockNumberView;->dp2px(F)I

    .line 216
    move-result v0

    .line 219
    iget v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 220
    sub-int/2addr v1, v0

    .line 222
    iput v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginRightEmpty:I

    .line 223
    iget-object v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 225
    invoke-virtual {v1}, Lcom/miui/clock/module/BaseFontStyle;->getTextBoxWidth()I

    .line 227
    move-result v1

    .line 230
    int-to-float v1, v1

    .line 231
    invoke-static {v1}, Lcom/miui/clock/MiuiClockNumberView;->dp2px(F)I

    .line 232
    move-result v1

    .line 235
    iput v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mTextBoxWidth:I

    .line 236
    int-to-float v3, v1

    .line 238
    iget-object v4, p0, Lcom/miui/clock/MiuiClockNumberView;->mPercentages:[F

    .line 239
    aget v5, v4, v5

    .line 241
    const/4 v7, 0x2

    .line 243
    aget v7, v4, v7

    .line 244
    add-float/2addr v5, v7

    .line 246
    const/4 v7, 0x3

    .line 247
    aget v7, v4, v7

    .line 248
    add-float/2addr v5, v7

    .line 250
    const/high16 v7, 0x40000000    # 2.0f

    .line 251
    mul-float/2addr v5, v7

    .line 253
    mul-float/2addr v5, v3

    .line 254
    int-to-float v1, v1

    .line 255
    aget v3, v4, v6

    .line 256
    const/high16 v4, 0x3f800000    # 1.0f

    .line 258
    sub-float v3, v4, v3

    .line 260
    mul-float/2addr v3, v7

    .line 262
    sub-float/2addr v4, v3

    .line 263
    mul-float/2addr v4, v1

    .line 264
    add-float/2addr v4, v5

    .line 265
    iput v4, p0, Lcom/miui/clock/MiuiClockNumberView;->mFullDiffusionTextBoxWidth:F

    .line 266
    iget v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageHeight:I

    .line 268
    iput v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mTextBoxHeight:I

    .line 270
    iget v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginLeftEmpty:I

    .line 272
    sub-int/2addr v0, v1

    .line 274
    iput v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginTextWidth:I

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    .line 277
    const-string v1, "mZeroTextWidth = "

    .line 279
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    iget v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginTextWidth:I

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    const-string v1, ", density = "

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 294
    move-result-object v1

    .line 297
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 298
    move-result-object v1

    .line 301
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    move-result-object v0

    .line 310
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockNumberView;->isCopperplateStyle()Z

    .line 314
    move-result v0

    .line 317
    if-eqz v0, :cond_6

    .line 318
    iget v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mFullDiffusionTextBoxWidth:F

    .line 320
    iget v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginTextWidth:I

    .line 322
    int-to-float v1, v1

    .line 324
    sub-float/2addr v0, v1

    .line 325
    div-float/2addr v0, v7

    .line 326
    iget v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginLeftEmpty:I

    .line 327
    int-to-float v1, v1

    .line 329
    sub-float v1, v0, v1

    .line 330
    iput v1, p0, Lcom/miui/clock/MiuiClockNumberView;->leftExtra:F

    .line 332
    iget v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginRightEmpty:I

    .line 334
    int-to-float v1, v1

    .line 336
    sub-float/2addr v0, v1

    .line 337
    iput v0, p0, Lcom/miui/clock/MiuiClockNumberView;->rightExtra:F

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    .line 340
    const-string v1, "isCopperplateStyle leftExtra = "

    .line 342
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    iget v1, p0, Lcom/miui/clock/MiuiClockNumberView;->leftExtra:F

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 349
    const-string v1, ", rightExtra = "

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    iget v1, p0, Lcom/miui/clock/MiuiClockNumberView;->rightExtra:F

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 359
    const-string v1, ", mIndex = "

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    iget v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    move-result-object v0

    .line 375
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_6
    iget v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mTextBoxWidth:I

    .line 379
    iget v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 381
    sub-int/2addr v0, v1

    .line 383
    int-to-float v0, v0

    .line 384
    div-float/2addr v0, v7

    .line 385
    iput v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mBoxBothEmptySidesWidth:F

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    .line 388
    const-string/jumbo v1, "setPercentages, percentages = "

    .line 390
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mPercentages:[F

    .line 396
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 398
    move-result-object v1

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    move-result-object v0

    .line 408
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 412
    return-void
    .line 415
.end method

.method public final clearUserDefineAngel()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mHasUserDefined:Z

    .line 3
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mUserDefineAngel:F

    .line 6
    return-void
    .line 8
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 6
    iget-object v2, v0, Lcom/miui/clock/MiuiClockNumberView;->mVectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    if-nez v2, :cond_0

    .line 11
    return-void

    .line 13
    :cond_0
    iget-boolean v2, v0, Lcom/miui/clock/MiuiClockNumberView;->mHasUserDefined:Z

    .line 14
    if-eqz v2, :cond_1

    .line 16
    iget v2, v0, Lcom/miui/clock/MiuiClockNumberView;->mUserDefineAngel:F

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    iget v2, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 21
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 23
    iget v3, v0, Lcom/miui/clock/MiuiClockNumberView;->mTranslateX:F

    .line 26
    iget v4, v0, Lcom/miui/clock/MiuiClockNumberView;->mTranslateY:F

    .line 28
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 30
    iget v3, v0, Lcom/miui/clock/MiuiClockNumberView;->mScale:F

    .line 33
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    const-string v4, "mDrawMatrix = "

    .line 40
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    iget-object v4, v0, Lcom/miui/clock/MiuiClockNumberView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    const-string v4, " index = "

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget v4, v0, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v3

    .line 63
    const-string v4, "GlassNumberView"

    .line 64
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget v3, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 69
    int-to-float v3, v3

    .line 71
    const/high16 v4, 0x40000000    # 2.0f

    .line 72
    div-float/2addr v3, v4

    .line 74
    iget v5, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageHeight:I

    .line 75
    int-to-float v5, v5

    .line 77
    div-float/2addr v5, v4

    .line 78
    iget-object v6, v0, Lcom/miui/clock/MiuiClockNumberView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 79
    sget-object v7, Lcom/miui/clock/module/DiffusionType;->NONE:Lcom/miui/clock/module/DiffusionType;

    .line 81
    if-ne v6, v7, :cond_2

    .line 83
    invoke-virtual {v1, v2, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 85
    iget-object v0, v0, Lcom/miui/clock/MiuiClockNumberView;->mVectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 93
    return-void

    .line 96
    :cond_2
    const/4 v6, 0x0

    .line 97
    cmpl-float v7, v2, v6

    .line 98
    const/4 v8, 0x1

    .line 100
    const/4 v9, 0x2

    .line 101
    if-eqz v7, :cond_4

    .line 102
    iget-object v7, v0, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 104
    invoke-virtual {v7}, Lcom/miui/clock/module/BaseFontStyle;->enableRotate()Z

    .line 106
    move-result v7

    .line 109
    if-eqz v7, :cond_4

    .line 110
    iget-object v7, v0, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 112
    iget v10, v0, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 114
    invoke-virtual {v7, v2, v10}, Lcom/miui/clock/module/BaseFontStyle;->getFontRotateValue(FI)[I

    .line 116
    move-result-object v7

    .line 119
    if-eqz v7, :cond_3

    .line 120
    array-length v10, v7

    .line 122
    if-lt v10, v9, :cond_3

    .line 123
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 125
    move-result v10

    .line 128
    float-to-double v10, v10

    .line 129
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    .line 130
    move-result-wide v10

    .line 133
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 134
    move-result-wide v12

    .line 137
    iget v14, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageHeight:I

    .line 138
    int-to-double v14, v14

    .line 140
    mul-double/2addr v12, v14

    .line 141
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 142
    move-result-wide v10

    .line 145
    iget v14, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 146
    int-to-double v14, v14

    .line 148
    mul-double/2addr v10, v14

    .line 149
    add-double/2addr v10, v12

    .line 150
    double-to-float v10, v10

    .line 151
    const/4 v11, 0x0

    .line 152
    aget v11, v7, v11

    .line 153
    int-to-float v11, v11

    .line 155
    const/high16 v12, 0x40300000    # 2.75f

    .line 156
    div-float/2addr v11, v12

    .line 158
    invoke-static {v11}, Lcom/miui/clock/MiuiClockNumberView;->dp2px(F)I

    .line 159
    move-result v11

    .line 162
    int-to-float v11, v11

    .line 163
    aget v7, v7, v8

    .line 164
    int-to-float v7, v7

    .line 166
    div-float/2addr v7, v12

    .line 167
    invoke-static {v7}, Lcom/miui/clock/MiuiClockNumberView;->dp2px(F)I

    .line 168
    move-result v7

    .line 171
    int-to-float v7, v7

    .line 172
    sub-float v12, v7, v11

    .line 173
    iget v13, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 175
    int-to-float v14, v13

    .line 177
    sub-float v14, v10, v14

    .line 178
    div-float/2addr v14, v4

    .line 180
    sub-float/2addr v12, v14

    .line 181
    int-to-float v13, v13

    .line 182
    sub-float v13, v10, v13

    .line 183
    div-float/2addr v13, v4

    .line 185
    sub-float/2addr v10, v13

    .line 186
    sub-float/2addr v10, v7

    .line 187
    goto :goto_2

    .line 188
    :cond_3
    iget v7, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginTextWidth:I

    .line 189
    int-to-float v11, v7

    .line 191
    iget v7, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginLeftEmpty:I

    .line 192
    int-to-float v12, v7

    .line 194
    iget v7, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginRightEmpty:I

    .line 195
    goto :goto_1

    .line 197
    :cond_4
    iget v7, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginTextWidth:I

    .line 198
    int-to-float v11, v7

    .line 200
    iget v7, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginLeftEmpty:I

    .line 201
    int-to-float v12, v7

    .line 203
    iget v7, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginRightEmpty:I

    .line 204
    :goto_1
    int-to-float v10, v7

    .line 206
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 207
    move-result v7

    .line 210
    iget v13, v0, Lcom/miui/clock/MiuiClockNumberView;->mTextBoxWidth:I

    .line 211
    int-to-float v14, v13

    .line 213
    iget-object v15, v0, Lcom/miui/clock/MiuiClockNumberView;->mPercentages:[F

    .line 214
    const/16 v16, 0x3

    .line 216
    aget v16, v15, v16

    .line 218
    mul-float v14, v14, v16

    .line 220
    int-to-float v6, v13

    .line 222
    aget v9, v15, v9

    .line 223
    mul-float/2addr v6, v9

    .line 225
    int-to-float v9, v13

    .line 226
    aget v8, v15, v8

    .line 227
    mul-float/2addr v9, v8

    .line 229
    const/4 v8, 0x4

    .line 230
    aget v8, v15, v8

    .line 231
    mul-float/2addr v8, v11

    .line 233
    const/4 v13, 0x5

    .line 234
    aget v13, v15, v13

    .line 235
    mul-float/2addr v13, v11

    .line 237
    const/16 v17, 0x6

    .line 238
    aget v15, v15, v17

    .line 240
    mul-float/2addr v15, v11

    .line 242
    iget-object v4, v0, Lcom/miui/clock/MiuiClockNumberView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 243
    move/from16 v18, v10

    .line 245
    sget-object v10, Lcom/miui/clock/module/DiffusionType;->LEFT:Lcom/miui/clock/module/DiffusionType;

    .line 247
    move/from16 v19, v7

    .line 249
    sget-object v7, Lcom/miui/clock/module/DiffusionType;->BOTH:Lcom/miui/clock/module/DiffusionType;

    .line 251
    if-eq v4, v10, :cond_6

    .line 253
    if-ne v4, v7, :cond_5

    .line 255
    goto :goto_3

    .line 257
    :cond_5
    move/from16 v21, v6

    .line 258
    move/from16 v22, v9

    .line 260
    move/from16 v24, v11

    .line 262
    move/from16 v23, v14

    .line 264
    move/from16 v20, v15

    .line 266
    const/4 v10, 0x0

    .line 268
    const/4 v15, 0x0

    .line 269
    goto/16 :goto_7

    .line 270
    :cond_6
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/MiuiClockNumberView;->isCopperplateStyle()Z

    .line 272
    move-result v4

    .line 275
    if-eqz v4, :cond_7

    .line 276
    iget v4, v0, Lcom/miui/clock/MiuiClockNumberView;->leftExtra:F

    .line 278
    sub-float v4, v14, v4

    .line 280
    move/from16 v20, v15

    .line 282
    const/4 v10, 0x0

    .line 284
    goto :goto_4

    .line 285
    :cond_7
    iget v4, v0, Lcom/miui/clock/MiuiClockNumberView;->mFullDiffusionTextBoxWidth:F

    .line 286
    const/high16 v10, 0x40000000    # 2.0f

    .line 288
    div-float/2addr v4, v10

    .line 290
    move/from16 v20, v15

    .line 291
    iget v15, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 293
    int-to-float v15, v15

    .line 295
    div-float/2addr v15, v10

    .line 296
    sub-float/2addr v4, v15

    .line 297
    iget v10, v0, Lcom/miui/clock/MiuiClockNumberView;->mTranslateX:F

    .line 298
    const/4 v15, 0x0

    .line 300
    invoke-static {v10, v15}, Ljava/lang/Math;->min(FF)F

    .line 301
    move-result v10

    .line 304
    add-float/2addr v10, v14

    .line 305
    move/from16 v25, v10

    .line 306
    move v10, v4

    .line 308
    move/from16 v4, v25

    .line 309
    :goto_4
    add-float v15, v4, v6

    .line 311
    move/from16 v21, v6

    .line 313
    add-float v6, v15, v9

    .line 315
    move/from16 v22, v9

    .line 317
    iget v9, v0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 319
    if-eqz v9, :cond_8

    .line 321
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 323
    neg-float v9, v10

    .line 326
    move/from16 v23, v14

    .line 327
    const/4 v14, 0x0

    .line 329
    invoke-virtual {v1, v9, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 330
    goto :goto_5

    .line 333
    :cond_8
    move/from16 v23, v14

    .line 334
    :goto_5
    iget-object v9, v0, Lcom/miui/clock/MiuiClockNumberView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 336
    if-eq v9, v7, :cond_9

    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 340
    iget v9, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 343
    int-to-float v9, v9

    .line 345
    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    .line 346
    move-result v9

    .line 349
    add-float/2addr v9, v6

    .line 350
    iget v14, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageHeight:I

    .line 351
    int-to-float v14, v14

    .line 353
    move/from16 v24, v11

    .line 354
    const/4 v11, 0x0

    .line 356
    invoke-virtual {v1, v6, v11, v9, v14}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 357
    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 360
    invoke-virtual {v1, v2, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 363
    iget-object v9, v0, Lcom/miui/clock/MiuiClockNumberView;->mVectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 366
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 371
    goto :goto_6

    .line 374
    :cond_9
    move/from16 v24, v11

    .line 375
    :goto_6
    sub-float v9, v6, v15

    .line 377
    sub-float/2addr v9, v8

    .line 379
    sub-float/2addr v9, v12

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 381
    iget v11, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageHeight:I

    .line 384
    int-to-float v11, v11

    .line 386
    const/4 v14, 0x0

    .line 387
    invoke-virtual {v1, v15, v14, v6, v11}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 388
    add-float/2addr v9, v15

    .line 391
    invoke-virtual {v1, v9, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 392
    invoke-virtual {v1, v2, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 395
    iget-object v9, v0, Lcom/miui/clock/MiuiClockNumberView;->mVectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 398
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 400
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 403
    sub-float v9, v15, v4

    .line 406
    sub-float/2addr v9, v13

    .line 408
    sub-float/2addr v9, v12

    .line 409
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 410
    iget v11, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageHeight:I

    .line 413
    int-to-float v11, v11

    .line 415
    invoke-virtual {v1, v4, v14, v15, v11}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 416
    add-float/2addr v9, v4

    .line 419
    invoke-virtual {v1, v9, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 420
    invoke-virtual {v1, v2, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 423
    iget-object v9, v0, Lcom/miui/clock/MiuiClockNumberView;->mVectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 426
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 428
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 431
    sub-float v9, v4, v20

    .line 434
    sub-float/2addr v9, v12

    .line 436
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 437
    sub-float v11, v4, v23

    .line 440
    iget v12, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageHeight:I

    .line 442
    int-to-float v12, v12

    .line 444
    invoke-virtual {v1, v11, v14, v4, v12}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 445
    invoke-virtual {v1, v9, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 448
    invoke-virtual {v1, v2, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 451
    iget-object v4, v0, Lcom/miui/clock/MiuiClockNumberView;->mVectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 454
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 456
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 459
    move v15, v6

    .line 462
    :goto_7
    iget-object v4, v0, Lcom/miui/clock/MiuiClockNumberView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 463
    sget-object v6, Lcom/miui/clock/module/DiffusionType;->RIGHT:Lcom/miui/clock/module/DiffusionType;

    .line 465
    if-eq v4, v6, :cond_b

    .line 467
    if-ne v4, v7, :cond_a

    .line 469
    goto :goto_8

    .line 471
    :cond_a
    const/4 v9, 0x0

    .line 472
    const/4 v11, 0x0

    .line 473
    goto/16 :goto_a

    .line 474
    :cond_b
    :goto_8
    iget v4, v0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 476
    if-eqz v4, :cond_c

    .line 478
    iget v9, v0, Lcom/miui/clock/MiuiClockNumberView;->mFullDiffusionTextBoxWidth:F

    .line 480
    const/high16 v11, 0x40000000    # 2.0f

    .line 482
    div-float/2addr v9, v11

    .line 484
    int-to-float v4, v4

    .line 485
    add-float/2addr v4, v9

    .line 486
    iget v9, v0, Lcom/miui/clock/MiuiClockNumberView;->mTranslateX:F

    .line 487
    sub-float/2addr v4, v9

    .line 489
    goto :goto_9

    .line 490
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/MiuiClockNumberView;->isCopperplateStyle()Z

    .line 491
    move-result v4

    .line 494
    if-eqz v4, :cond_d

    .line 495
    iget v4, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 497
    int-to-float v4, v4

    .line 499
    iget v9, v0, Lcom/miui/clock/MiuiClockNumberView;->rightExtra:F

    .line 500
    add-float/2addr v4, v9

    .line 502
    goto :goto_9

    .line 503
    :cond_d
    move/from16 v4, v19

    .line 504
    int-to-float v4, v4

    .line 506
    :goto_9
    sub-float v4, v4, v23

    .line 507
    sub-float v9, v4, v21

    .line 509
    sub-float v11, v9, v22

    .line 511
    iget-object v12, v0, Lcom/miui/clock/MiuiClockNumberView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 513
    if-ne v12, v6, :cond_e

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 517
    iget v6, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 520
    int-to-float v6, v6

    .line 522
    move/from16 v12, v24

    .line 523
    invoke-static {v12, v6}, Ljava/lang/Math;->max(FF)F

    .line 525
    move-result v6

    .line 528
    sub-float v6, v11, v6

    .line 529
    iget v12, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageHeight:I

    .line 531
    int-to-float v12, v12

    .line 533
    const/4 v14, 0x0

    .line 534
    invoke-virtual {v1, v6, v14, v11, v12}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 535
    invoke-virtual {v1, v2, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 538
    iget-object v6, v0, Lcom/miui/clock/MiuiClockNumberView;->mVectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 541
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 543
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 546
    :cond_e
    add-float/2addr v8, v11

    .line 549
    add-float v8, v8, v18

    .line 550
    iget v6, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 552
    int-to-float v6, v6

    .line 554
    sub-float/2addr v8, v6

    .line 555
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 556
    iget v6, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageHeight:I

    .line 559
    int-to-float v6, v6

    .line 561
    const/4 v12, 0x0

    .line 562
    invoke-virtual {v1, v11, v12, v9, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 563
    invoke-virtual {v1, v8, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 566
    invoke-virtual {v1, v2, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 569
    iget-object v6, v0, Lcom/miui/clock/MiuiClockNumberView;->mVectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 572
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 574
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 577
    add-float/2addr v13, v9

    .line 580
    add-float v13, v13, v18

    .line 581
    iget v6, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 583
    int-to-float v6, v6

    .line 585
    sub-float/2addr v13, v6

    .line 586
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 587
    iget v6, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageHeight:I

    .line 590
    int-to-float v6, v6

    .line 592
    const/4 v8, 0x0

    .line 593
    invoke-virtual {v1, v9, v8, v4, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 594
    invoke-virtual {v1, v13, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 597
    invoke-virtual {v1, v2, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 600
    iget-object v6, v0, Lcom/miui/clock/MiuiClockNumberView;->mVectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 603
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 605
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 608
    add-float v6, v4, v20

    .line 611
    add-float v6, v6, v18

    .line 613
    iget v8, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 615
    int-to-float v8, v8

    .line 617
    sub-float/2addr v6, v8

    .line 618
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 619
    add-float v14, v4, v23

    .line 622
    iget v8, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageHeight:I

    .line 624
    int-to-float v8, v8

    .line 626
    const/4 v9, 0x0

    .line 627
    invoke-virtual {v1, v4, v9, v14, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 628
    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 631
    invoke-virtual {v1, v2, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 634
    iget-object v4, v0, Lcom/miui/clock/MiuiClockNumberView;->mVectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 637
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 639
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 642
    :goto_a
    iget-object v4, v0, Lcom/miui/clock/MiuiClockNumberView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 645
    if-ne v4, v7, :cond_f

    .line 647
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 649
    iget v4, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageHeight:I

    .line 652
    int-to-float v4, v4

    .line 654
    invoke-virtual {v1, v15, v9, v11, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 655
    invoke-virtual {v1, v10, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 658
    invoke-virtual {v1, v2, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 661
    iget-object v2, v0, Lcom/miui/clock/MiuiClockNumberView;->mVectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 664
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 666
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 669
    :cond_f
    cmpl-float v2, v10, v9

    .line 672
    if-eqz v2, :cond_10

    .line 674
    iget v0, v0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 676
    if-eqz v0, :cond_10

    .line 678
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 680
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 683
    return-void
    .line 686
.end method

.method public getCenterOffsetX()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 2
    return p0
    .line 4
.end method

.method public getCenterOffsetY()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 2
    return p0
    .line 4
.end method

.method public getIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 2
    return p0
    .line 4
.end method

.method public getLeftPosition()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 2
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 5
    if-lez v1, :cond_0

    .line 7
    iget v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 9
    int-to-float v1, v1

    .line 11
    div-float/2addr v1, v0

    .line 12
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockNumberView;->getRealWidth()I

    .line 13
    move-result p0

    .line 16
    div-int/lit8 p0, p0, 0x2

    .line 17
    int-to-float p0, p0

    .line 19
    sub-float/2addr v1, p0

    .line 20
    float-to-int p0, v1

    .line 21
    return p0

    .line 22
    :cond_0
    iget v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 23
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockNumberView;->getRealWidth()I

    .line 25
    move-result p0

    .line 28
    div-int/lit8 p0, p0, 0x2

    .line 29
    sub-int/2addr v0, p0

    .line 31
    return v0
.end method

.method public getRealHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public getRealWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 2
    iget p0, p0, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 4
    sub-int/2addr v0, p0

    .line 6
    return v0
    .line 7
.end method

.method public getRectSize()[I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v0, :cond_2

    .line 12
    if-eq v0, v4, :cond_2

    .line 14
    if-eq v0, v3, :cond_0

    .line 16
    iget v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageHeight:I

    .line 18
    iget p0, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 20
    goto :goto_1

    .line 22
    :cond_0
    iget v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mTextBoxHeight:I

    .line 23
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockNumberView;->isCopperplateStyle()Z

    .line 25
    move-result v5

    .line 28
    if-eqz v5, :cond_1

    .line 29
    iget p0, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 31
    goto :goto_1

    .line 33
    :cond_1
    iget v5, p0, Lcom/miui/clock/MiuiClockNumberView;->mTextBoxWidth:I

    .line 34
    int-to-float v5, v5

    .line 36
    iget-object p0, p0, Lcom/miui/clock/MiuiClockNumberView;->mPercentages:[F

    .line 37
    aget v2, p0, v2

    .line 39
    const/high16 v6, 0x3f800000    # 1.0f

    .line 41
    sub-float v2, v6, v2

    .line 43
    const/high16 v7, 0x40000000    # 2.0f

    .line 45
    mul-float/2addr v2, v7

    .line 47
    sub-float/2addr v6, v2

    .line 48
    aget v2, p0, v4

    .line 49
    aget v3, p0, v3

    .line 51
    add-float/2addr v2, v3

    .line 53
    aget p0, p0, v1

    .line 54
    add-float/2addr v2, p0

    .line 56
    mul-float/2addr v2, v7

    .line 57
    add-float/2addr v2, v6

    .line 58
    mul-float/2addr v2, v5

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mTextBoxHeight:I

    .line 61
    iget v5, p0, Lcom/miui/clock/MiuiClockNumberView;->mTextBoxWidth:I

    .line 63
    int-to-float v5, v5

    .line 65
    iget-object v6, p0, Lcom/miui/clock/MiuiClockNumberView;->mPercentages:[F

    .line 66
    aget v2, v6, v2

    .line 68
    aget v4, v6, v4

    .line 70
    add-float/2addr v2, v4

    .line 72
    aget v3, v6, v3

    .line 73
    add-float/2addr v2, v3

    .line 75
    aget v1, v6, v1

    .line 76
    add-float/2addr v2, v1

    .line 78
    mul-float/2addr v2, v5

    .line 79
    iget p0, p0, Lcom/miui/clock/MiuiClockNumberView;->mBoxBothEmptySidesWidth:F

    .line 80
    sub-float/2addr v2, p0

    .line 82
    :goto_0
    float-to-int p0, v2

    .line 83
    :goto_1
    filled-new-array {p0, v0}, [I

    .line 84
    move-result-object p0

    .line 87
    return-object p0
    .line 88
.end method

.method public getTargetCenterX()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 2
    return p0
    .line 4
.end method

.method public getTargetCenterY()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 2
    return p0
    .line 4
.end method

.method public getTextColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 2
    return p0
    .line 4
.end method

.method public getTopPosition()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 2
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 5
    if-lez v1, :cond_0

    .line 7
    iget v1, p0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 9
    int-to-float v1, v1

    .line 11
    div-float/2addr v1, v0

    .line 12
    iget p0, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageHeight:I

    .line 13
    div-int/lit8 p0, p0, 0x2

    .line 15
    int-to-float p0, p0

    .line 17
    sub-float/2addr v1, p0

    .line 18
    float-to-int p0, v1

    .line 19
    return p0

    .line 20
    :cond_0
    iget v0, p0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 21
    iget p0, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageHeight:I

    .line 23
    div-int/lit8 p0, p0, 0x2

    .line 25
    sub-int/2addr v0, p0

    .line 27
    return v0
    .line 28
.end method

.method public getVectorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/MiuiClockNumberView;->mVectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public final isCopperplateStyle()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/module/BaseFontStyle;->getFontStyle()Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 4
    move-result-object p0

    .line 7
    sget-object v0, Lcom/miui/clock/module/BaseFontStyle$Style;->Copperplate:Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 8
    if-ne p0, v0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final onMeasure(II)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    iget-object v3, v0, Lcom/miui/clock/MiuiClockNumberView;->mVectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    const/high16 v4, 0x3f000000    # 0.5f

    .line 10
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    if-nez v3, :cond_0

    .line 15
    move v4, v5

    .line 17
    move v6, v4

    .line 18
    goto :goto_3

    .line 19
    :cond_0
    iget-object v3, v0, Lcom/miui/clock/MiuiClockNumberView;->mDiffusionType:Lcom/miui/clock/module/DiffusionType;

    .line 20
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 22
    move-result v3

    .line 25
    const/4 v8, 0x2

    .line 26
    if-eqz v3, :cond_3

    .line 27
    if-eq v3, v6, :cond_3

    .line 29
    if-eq v3, v8, :cond_1

    .line 31
    iget v3, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageHeight:I

    .line 33
    iget v4, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 35
    goto :goto_1

    .line 37
    :cond_1
    iget v3, v0, Lcom/miui/clock/MiuiClockNumberView;->mTextBoxHeight:I

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/MiuiClockNumberView;->isCopperplateStyle()Z

    .line 40
    move-result v8

    .line 43
    if-eqz v8, :cond_2

    .line 44
    iget v4, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 46
    int-to-float v4, v4

    .line 48
    iget v8, v0, Lcom/miui/clock/MiuiClockNumberView;->leftExtra:F

    .line 49
    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    .line 51
    move-result v8

    .line 54
    iget v9, v0, Lcom/miui/clock/MiuiClockNumberView;->rightExtra:F

    .line 55
    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    .line 57
    move-result v7

    .line 60
    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    .line 61
    move-result v7

    .line 64
    const/high16 v8, 0x40000000    # 2.0f

    .line 65
    mul-float/2addr v7, v8

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget v7, v0, Lcom/miui/clock/MiuiClockNumberView;->mFullDiffusionTextBoxWidth:F

    .line 69
    :goto_0
    add-float/2addr v7, v4

    .line 71
    float-to-int v4, v7

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    iget v3, v0, Lcom/miui/clock/MiuiClockNumberView;->mTextBoxHeight:I

    .line 74
    iget v4, v0, Lcom/miui/clock/MiuiClockNumberView;->mTextBoxWidth:I

    .line 76
    int-to-float v4, v4

    .line 78
    iget-object v7, v0, Lcom/miui/clock/MiuiClockNumberView;->mPercentages:[F

    .line 79
    aget v9, v7, v5

    .line 81
    aget v10, v7, v6

    .line 83
    add-float/2addr v9, v10

    .line 85
    aget v8, v7, v8

    .line 86
    add-float/2addr v9, v8

    .line 88
    const/4 v8, 0x3

    .line 89
    aget v7, v7, v8

    .line 90
    add-float/2addr v9, v7

    .line 92
    mul-float/2addr v9, v4

    .line 93
    iget v4, v0, Lcom/miui/clock/MiuiClockNumberView;->mBoxBothEmptySidesWidth:F

    .line 94
    sub-float/2addr v9, v4

    .line 96
    float-to-int v4, v9

    .line 97
    :goto_1
    if-gtz v4, :cond_4

    .line 98
    move v4, v6

    .line 100
    :cond_4
    if-gtz v3, :cond_5

    .line 101
    goto :goto_2

    .line 103
    :cond_5
    move v6, v3

    .line 104
    :goto_2
    int-to-float v3, v4

    .line 105
    int-to-float v7, v6

    .line 106
    div-float v7, v3, v7

    .line 107
    :goto_3
    const-string/jumbo v3, "setMeasuredDimension 111 w = "

    .line 109
    const-string v8, ", h = "

    .line 112
    const-string v9, ", index = "

    .line 114
    invoke-static {v3, v4, v8, v6, v9}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    move-result-object v3

    .line 119
    iget v10, v0, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 120
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v3

    .line 128
    const-string v10, "GlassNumberView"

    .line 129
    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 134
    move-result v3

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 138
    move-result v11

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 142
    move-result v12

    .line 145
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 146
    move-result v13

    .line 149
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 150
    move-result v14

    .line 153
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 154
    move-result v15

    .line 157
    const/high16 v5, 0x40000000    # 2.0f

    .line 158
    if-eq v14, v5, :cond_6

    .line 160
    const/4 v14, 0x1

    .line 162
    goto :goto_4

    .line 163
    :cond_6
    const/4 v14, 0x0

    .line 164
    :goto_4
    if-eq v15, v5, :cond_7

    .line 165
    const/4 v5, 0x1

    .line 167
    goto :goto_5

    .line 168
    :cond_7
    const/4 v5, 0x0

    .line 169
    :goto_5
    if-nez v14, :cond_9

    .line 170
    if-eqz v5, :cond_8

    .line 172
    goto :goto_6

    .line 174
    :cond_8
    add-int/2addr v3, v11

    .line 175
    add-int/2addr v3, v4

    .line 176
    add-int/2addr v12, v13

    .line 177
    add-int/2addr v12, v6

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 179
    move-result v4

    .line 182
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 183
    move-result v3

    .line 186
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 187
    move-result v4

    .line 190
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    .line 191
    move-result v4

    .line 194
    const/4 v5, 0x0

    .line 195
    invoke-static {v3, v1, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 196
    move-result v1

    .line 199
    invoke-static {v4, v2, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 200
    move-result v2

    .line 203
    move-object/from16 v16, v8

    .line 204
    move-object/from16 v18, v9

    .line 206
    goto/16 :goto_a

    .line 208
    :cond_9
    :goto_6
    add-int/2addr v4, v3

    .line 210
    add-int/2addr v4, v11

    .line 211
    invoke-static {v4, v1}, Lcom/miui/clock/MiuiClockNumberView;->resolveAdjustedSize(II)I

    .line 212
    move-result v4

    .line 215
    add-int/2addr v6, v12

    .line 216
    add-int/2addr v6, v13

    .line 217
    invoke-static {v6, v2}, Lcom/miui/clock/MiuiClockNumberView;->resolveAdjustedSize(II)I

    .line 218
    move-result v6

    .line 221
    const/4 v15, 0x0

    .line 222
    cmpl-float v15, v7, v15

    .line 223
    if-eqz v15, :cond_e

    .line 225
    sub-int v15, v4, v3

    .line 227
    sub-int/2addr v15, v11

    .line 229
    int-to-float v15, v15

    .line 230
    sub-int v16, v6, v12

    .line 231
    move/from16 v17, v4

    .line 233
    sub-int v4, v16, v13

    .line 235
    int-to-float v4, v4

    .line 237
    div-float/2addr v15, v4

    .line 238
    sub-float/2addr v15, v7

    .line 239
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 240
    move-result v15

    .line 243
    move-object/from16 v16, v8

    .line 244
    move-object/from16 v18, v9

    .line 246
    float-to-double v8, v15

    .line 248
    const-wide v19, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 249
    cmpl-double v8, v8, v19

    .line 254
    if-lez v8, :cond_f

    .line 256
    if-eqz v14, :cond_c

    .line 258
    mul-float/2addr v4, v7

    .line 260
    float-to-int v4, v4

    .line 261
    add-int/2addr v4, v3

    .line 262
    add-int/2addr v4, v11

    .line 263
    if-nez v5, :cond_a

    .line 264
    invoke-static {v4, v1}, Lcom/miui/clock/MiuiClockNumberView;->resolveAdjustedSize(II)I

    .line 266
    move-result v1

    .line 269
    goto :goto_7

    .line 270
    :cond_a
    move/from16 v1, v17

    .line 271
    :goto_7
    if-gt v4, v1, :cond_b

    .line 273
    const/4 v1, 0x1

    .line 275
    goto :goto_9

    .line 276
    :cond_b
    move v4, v1

    .line 277
    goto :goto_8

    .line 278
    :cond_c
    move/from16 v4, v17

    .line 279
    :goto_8
    const/4 v1, 0x0

    .line 281
    :goto_9
    if-nez v1, :cond_10

    .line 282
    if-eqz v5, :cond_10

    .line 284
    sub-int v1, v4, v3

    .line 286
    sub-int/2addr v1, v11

    .line 288
    int-to-float v1, v1

    .line 289
    div-float/2addr v1, v7

    .line 290
    float-to-int v1, v1

    .line 291
    add-int/2addr v1, v12

    .line 292
    add-int/2addr v1, v13

    .line 293
    if-nez v14, :cond_d

    .line 294
    invoke-static {v1, v2}, Lcom/miui/clock/MiuiClockNumberView;->resolveAdjustedSize(II)I

    .line 296
    move-result v6

    .line 299
    :cond_d
    if-gt v1, v6, :cond_10

    .line 300
    move v2, v1

    .line 302
    move v1, v4

    .line 303
    goto :goto_a

    .line 304
    :cond_e
    move/from16 v17, v4

    .line 305
    move-object/from16 v16, v8

    .line 307
    move-object/from16 v18, v9

    .line 309
    :cond_f
    move/from16 v4, v17

    .line 311
    :cond_10
    move v1, v4

    .line 313
    move v2, v6

    .line 314
    :goto_a
    const-string/jumbo v3, "setMeasuredDimension w = "

    .line 315
    move-object/from16 v4, v16

    .line 318
    move-object/from16 v5, v18

    .line 320
    invoke-static {v3, v1, v4, v2, v5}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    move-result-object v3

    .line 325
    iget v4, v0, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    move-result-object v3

    .line 334
    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/MiuiClockNumberView;->getRectSize()[I

    .line 341
    move-result-object v1

    .line 344
    const/4 v2, 0x0

    .line 345
    aget v2, v1, v2

    .line 346
    const/4 v3, 0x1

    .line 348
    aget v1, v1, v3

    .line 349
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 351
    move-result v3

    .line 354
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 355
    move-result v4

    .line 358
    sub-int/2addr v3, v4

    .line 359
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 360
    move-result v4

    .line 363
    sub-int/2addr v3, v4

    .line 364
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 365
    move-result v4

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 369
    move-result v5

    .line 372
    sub-int/2addr v4, v5

    .line 373
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 374
    move-result v5

    .line 377
    sub-int/2addr v4, v5

    .line 378
    iget v5, v0, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 379
    const/4 v6, 0x0

    .line 381
    cmpl-float v6, v5, v6

    .line 382
    if-lez v6, :cond_11

    .line 384
    goto :goto_b

    .line 386
    :cond_11
    if-gt v2, v3, :cond_12

    .line 387
    if-gt v1, v4, :cond_12

    .line 389
    const/high16 v5, 0x3f800000    # 1.0f

    .line 391
    goto :goto_b

    .line 393
    :cond_12
    int-to-float v5, v3

    .line 394
    int-to-float v6, v2

    .line 395
    div-float/2addr v5, v6

    .line 396
    int-to-float v6, v4

    .line 397
    int-to-float v7, v1

    .line 398
    div-float/2addr v6, v7

    .line 399
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 400
    move-result v5

    .line 403
    :goto_b
    iget v6, v0, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 404
    const/4 v7, 0x0

    .line 406
    cmpl-float v6, v6, v7

    .line 407
    if-lez v6, :cond_13

    .line 409
    iget-object v6, v0, Lcom/miui/clock/MiuiClockNumberView;->mContext:Landroid/content/Context;

    .line 411
    invoke-static {v6}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 413
    move-result v6

    .line 416
    mul-float/2addr v5, v6

    .line 417
    :cond_13
    iget v6, v0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 418
    if-nez v6, :cond_14

    .line 420
    iget v7, v0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 422
    if-nez v7, :cond_14

    .line 424
    int-to-float v3, v3

    .line 426
    int-to-float v2, v2

    .line 427
    mul-float/2addr v2, v5

    .line 428
    sub-float/2addr v3, v2

    .line 429
    const/high16 v2, 0x3f000000    # 0.5f

    .line 430
    mul-float/2addr v3, v2

    .line 432
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 433
    move-result v3

    .line 436
    int-to-float v3, v3

    .line 437
    int-to-float v4, v4

    .line 438
    int-to-float v1, v1

    .line 439
    mul-float/2addr v1, v5

    .line 440
    sub-float/2addr v4, v1

    .line 441
    mul-float/2addr v4, v2

    .line 442
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 443
    move-result v1

    .line 446
    goto :goto_c

    .line 447
    :cond_14
    const/high16 v2, 0x3f000000    # 0.5f

    .line 448
    iget v3, v0, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 450
    add-int/2addr v6, v3

    .line 452
    int-to-float v3, v6

    .line 453
    iget v4, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginImageWidth:I

    .line 454
    int-to-float v4, v4

    .line 456
    mul-float/2addr v4, v2

    .line 457
    mul-float/2addr v4, v5

    .line 458
    sub-float/2addr v3, v4

    .line 459
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 460
    move-result v3

    .line 463
    int-to-float v3, v3

    .line 464
    iget v4, v0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 465
    iget v6, v0, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 467
    add-int/2addr v4, v6

    .line 469
    int-to-float v4, v4

    .line 470
    int-to-float v1, v1

    .line 471
    mul-float/2addr v1, v2

    .line 472
    mul-float/2addr v1, v5

    .line 473
    sub-float/2addr v4, v1

    .line 474
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 475
    move-result v1

    .line 478
    :goto_c
    int-to-float v1, v1

    .line 479
    iput v5, v0, Lcom/miui/clock/MiuiClockNumberView;->mScale:F

    .line 480
    iput v3, v0, Lcom/miui/clock/MiuiClockNumberView;->mTranslateX:F

    .line 482
    iput v1, v0, Lcom/miui/clock/MiuiClockNumberView;->mTranslateY:F

    .line 484
    return-void
    .line 486
.end method

.method public final setUserDefineAngel(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/MiuiClockNumberView;->mUserDefineAngel:F

    .line 2
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/miui/clock/MiuiClockNumberView;->mHasUserDefined:Z

    .line 5
    return-void
    .line 7
.end method
