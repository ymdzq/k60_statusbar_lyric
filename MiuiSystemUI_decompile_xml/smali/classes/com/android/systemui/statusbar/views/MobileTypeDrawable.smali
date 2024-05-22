.class public final Lcom/android/systemui/statusbar/views/MobileTypeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sMiproTypeface:Landroid/graphics/Typeface;


# instance fields
.field public mExtraWidth:I

.field public mHeight:I

.field public mMobileType:Ljava/lang/String;

.field public mMobileTypeColor:I

.field public final mMobileTypePlusPaint:Landroid/graphics/Paint;

.field public mMobileTypeSize:I

.field public final mMobileTypeTextPaint:Landroid/graphics/Paint;

.field public mShowMobileTypeDoublePlus:Z

.field public mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Typeface$Builder;

    .line 2
    sget-object v1, Lcom/miui/utils/configs/MiuiConfigs;->FONT_MIPRO_PATH:Ljava/lang/String;

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v1, "\'wght\' 620"

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    .line 15
    move-result-object v0

    .line 18
    sput-object v0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->sMiproTypeface:Landroid/graphics/Typeface;

    .line 19
    return-void
    .line 21
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileType:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mShowMobileTypeDoublePlus:Z

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeTextPaint:Landroid/graphics/Paint;

    .line 17
    new-instance v1, Landroid/graphics/Paint;

    .line 19
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypePlusPaint:Landroid/graphics/Paint;

    .line 24
    filled-new-array {v0, v1}, [Landroid/graphics/Paint;

    .line 26
    move-result-object p0

    .line 29
    invoke-static {p0}, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->setMiuiStatusBarTypeface([Landroid/graphics/Paint;)V

    .line 30
    return-void
    .line 33
.end method

.method public static varargs setMiuiStatusBarTypeface([Landroid/graphics/Paint;)V
    .locals 7

    .line 1
    const-string v0, "mipro-bold"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 5
    move-result-object v0

    .line 8
    iget-object v2, v0, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    .line 9
    array-length v3, v2

    .line 11
    move v4, v1

    .line 12
    :goto_0
    if-ge v4, v3, :cond_1

    .line 13
    aget-object v5, v2, v4

    .line 15
    const-string v6, "mipro"

    .line 17
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    move-result v5

    .line 22
    if-eqz v5, :cond_0

    .line 23
    sget-object v0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->sMiproTypeface:Landroid/graphics/Typeface;

    .line 25
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    array-length v2, p0

    .line 31
    :goto_2
    if-ge v1, v2, :cond_3

    .line 32
    aget-object v3, p0, v1

    .line 34
    if-eqz v3, :cond_2

    .line 36
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 38
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_2

    .line 43
    :cond_3
    return-void
    .line 44
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileType:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileType:Ljava/lang/String;

    .line 11
    iget v1, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mHeight:I

    .line 13
    int-to-float v1, v1

    .line 15
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeTextPaint:Landroid/graphics/Paint;

    .line 16
    const/4 v3, 0x0

    .line 18
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 19
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mShowMobileTypeDoublePlus:Z

    .line 22
    if-eqz v0, :cond_1

    .line 24
    iget v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mWidth:I

    .line 26
    int-to-float v0, v0

    .line 28
    iget v1, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mHeight:I

    .line 29
    int-to-float v1, v1

    .line 31
    const/high16 v2, 0x40800000    # 4.0f

    .line 32
    add-float/2addr v1, v2

    .line 34
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypePlusPaint:Landroid/graphics/Paint;

    .line 35
    const-string v3, "+"

    .line 37
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 39
    iget v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mWidth:I

    .line 42
    int-to-float v0, v0

    .line 44
    iget v1, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mHeight:I

    .line 45
    int-to-float v1, v1

    .line 47
    const/high16 v2, 0x40e00000    # 7.0f

    .line 48
    sub-float/2addr v1, v2

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypePlusPaint:Landroid/graphics/Paint;

    .line 51
    invoke-virtual {p1, v3, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 53
    :cond_1
    return-void
    .line 56
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mWidth:I

    .line 2
    iget p0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mExtraWidth:I

    .line 4
    add-int/2addr v0, p0

    .line 6
    return v0
    .line 7
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
    .line 3
.end method

.method public final measure()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileType:Ljava/lang/String;

    .line 2
    const-string v1, "5G++"

    .line 4
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mShowMobileTypeDoublePlus:Z

    .line 14
    const-string v0, "5G"

    .line 16
    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileType:Ljava/lang/String;

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mShowMobileTypeDoublePlus:Z

    .line 21
    iput v1, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mExtraWidth:I

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeTextPaint:Landroid/graphics/Paint;

    .line 25
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileType:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 29
    move-result v0

    .line 32
    float-to-double v2, v0

    .line 33
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 34
    move-result-wide v2

    .line 37
    double-to-int v0, v2

    .line 38
    iput v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mWidth:I

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeTextPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileType:Ljava/lang/String;

    .line 43
    new-instance v3, Landroid/graphics/Rect;

    .line 45
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 47
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 50
    move-result v4

    .line 53
    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 54
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 57
    move-result v0

    .line 60
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 61
    add-int/2addr v0, v1

    .line 63
    iput v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mHeight:I

    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mShowMobileTypeDoublePlus:Z

    .line 66
    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypePlusPaint:Landroid/graphics/Paint;

    .line 70
    const-string v1, "+"

    .line 72
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 74
    move-result v0

    .line 77
    float-to-double v0, v0

    .line 78
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 79
    move-result-wide v0

    .line 82
    double-to-int v0, v0

    .line 83
    iput v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mExtraWidth:I

    .line 84
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 86
    return-void
    .line 89
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setMobileTypeColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeColor:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeColor:I

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeTextPaint:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypePlusPaint:Landroid/graphics/Paint;

    .line 13
    iget v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeColor:I

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 20
    :cond_0
    return-void
    .line 23
.end method
