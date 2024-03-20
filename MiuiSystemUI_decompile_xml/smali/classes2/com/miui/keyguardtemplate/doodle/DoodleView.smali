.class public Lcom/miui/keyguardtemplate/doodle/DoodleView;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final destRect:Landroid/graphics/Rect;

.field public doodleBitmap:Landroid/graphics/Bitmap;

.field public final doodleBitmaps:Landroid/util/SparseArray;

.field public doodleType:I

.field public final paint:Landroid/graphics/Paint;

.field public final srcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/keyguardtemplate/doodle/DoodleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Landroid/util/SparseArray;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->doodleBitmaps:Landroid/util/SparseArray;

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->doodleType:I

    .line 5
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->srcRect:Landroid/graphics/Rect;

    .line 6
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->destRect:Landroid/graphics/Rect;

    .line 7
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final decodeResource()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->doodleType:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    const v0, 0x7f080c3e    # @drawable/doodle_background_en 'res/drawable/doodle_background_en.webp'

    .line 7
    goto :goto_0

    .line 10
    :cond_0
    const v0, 0x7f080c3d    # @drawable/doodle_background_cn 'res/drawable/doodle_background_cn.webp'

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 17
    sget-boolean v2, Lcom/miui/keyguardtemplate/Util;->FOLD_DEVICE:Z

    .line 18
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 20
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 22
    new-instance v3, Landroid/util/TypedValue;

    .line 25
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v4

    .line 33
    invoke-virtual {v4, v0, v3}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    .line 34
    iget v3, v3, Landroid/util/TypedValue;->density:I

    .line 37
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 39
    const/4 v3, 0x0

    .line 41
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object v1

    .line 47
    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 48
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->doodleBitmap:Landroid/graphics/Bitmap;

    .line 52
    iget-object v1, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->doodleBitmaps:Landroid/util/SparseArray;

    .line 54
    iget p0, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->doodleType:I

    .line 56
    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    return-void
    .line 61
.end method

.method public getDoodleType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->doodleType:I

    .line 2
    return p0
    .line 4
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->doodleBitmap:Landroid/graphics/Bitmap;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->srcRect:Landroid/graphics/Rect;

    .line 6
    iget-object v2, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->destRect:Landroid/graphics/Rect;

    .line 8
    iget-object p0, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->paint:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final onSizeChanged(IIII)V
    .locals 6

    .line 1
    iget-object p3, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->doodleBitmaps:Landroid/util/SparseArray;

    .line 2
    iget p4, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->doodleType:I

    .line 4
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p3

    .line 9
    if-nez p3, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/miui/keyguardtemplate/doodle/DoodleView;->decodeResource()V

    .line 12
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 15
    const-string p4, "scale ="

    .line 17
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p4

    .line 25
    invoke-static {p4}, Lcom/miui/keyguardtemplate/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 26
    move-result p4

    .line 29
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p3

    .line 36
    const-string p4, "DoodleView"

    .line 37
    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object p3

    .line 45
    const v0, 0x7f0702d9    # @dimen/doodle_width '917.7dp'

    .line 46
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 49
    move-result p3

    .line 52
    int-to-float p3, p3

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/miui/keyguardtemplate/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 58
    move-result v0

    .line 61
    mul-float/2addr v0, p3

    .line 62
    float-to-int p3, v0

    .line 63
    int-to-float p3, p3

    .line 64
    iget-object v0, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->doodleBitmap:Landroid/graphics/Bitmap;

    .line 65
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 67
    move-result v0

    .line 70
    iget-object v1, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->doodleBitmap:Landroid/graphics/Bitmap;

    .line 71
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 73
    move-result v1

    .line 76
    const-string v2, "doodleBitmapWidth = "

    .line 77
    const-string v3, " w ="

    .line 79
    const-string v4, " doodleBitmapHeight = "

    .line 81
    invoke-static {v2, v0, v3, p1, v4}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    move-result-object v2

    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    const-string v3, " h = "

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v2

    .line 101
    invoke-static {p4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    int-to-float v0, v0

    .line 105
    div-float v2, v0, p3

    .line 106
    int-to-float v3, p1

    .line 108
    mul-float/2addr v3, v2

    .line 109
    int-to-float v4, p2

    .line 110
    mul-float/2addr v4, v2

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    const-string v5, "doodleWidth = "

    .line 114
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 119
    const-string p3, " scaledViewWith = "

    .line 122
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 127
    const-string p3, " scaledViewHeight = "

    .line 130
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object p3

    .line 141
    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object p3, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->srcRect:Landroid/graphics/Rect;

    .line 145
    sub-float/2addr v0, v3

    .line 147
    const/high16 p4, 0x40000000    # 2.0f

    .line 148
    div-float/2addr v0, p4

    .line 150
    float-to-int p4, v0

    .line 151
    iput p4, p3, Landroid/graphics/Rect;->left:I

    .line 152
    int-to-float p4, p4

    .line 154
    add-float/2addr p4, v3

    .line 155
    float-to-int p4, p4

    .line 156
    iput p4, p3, Landroid/graphics/Rect;->right:I

    .line 157
    const/4 p4, 0x0

    .line 159
    iput p4, p3, Landroid/graphics/Rect;->top:I

    .line 160
    int-to-float v0, v1

    .line 162
    cmpg-float v2, v4, v0

    .line 163
    if-gtz v2, :cond_1

    .line 165
    float-to-int v0, v4

    .line 167
    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 168
    iget-object p3, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->destRect:Landroid/graphics/Rect;

    .line 170
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 172
    goto :goto_0

    .line 175
    :cond_1
    add-int/2addr v1, p4

    .line 176
    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 177
    iget-object p3, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->destRect:Landroid/graphics/Rect;

    .line 179
    sub-float/2addr v4, v0

    .line 181
    float-to-int v0, v4

    .line 182
    invoke-virtual {p3, p4, v0, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 183
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 186
    return-void
    .line 189
.end method

.method public setDoodleColor(I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    const-string v0, "DoodleView"

    .line 5
    const-string/jumbo v1, "setDoodleColor"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->paint:Landroid/graphics/Paint;

    .line 13
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 15
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 17
    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 25
    return-void
    .line 28
.end method

.method public setDoodleType(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "setDoodleType oldType="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->doodleType:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " newType="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 26
    const-string v1, "DoodleView"

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget v0, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->doodleType:I

    .line 32
    if-ne p1, v0, :cond_0

    .line 34
    return-void

    .line 36
    :cond_0
    iput p1, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->doodleType:I

    .line 37
    iget-object v0, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->doodleBitmaps:Landroid/util/SparseArray;

    .line 39
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 44
    check-cast p1, Landroid/graphics/Bitmap;

    .line 45
    iput-object p1, p0, Lcom/miui/keyguardtemplate/doodle/DoodleView;->doodleBitmap:Landroid/graphics/Bitmap;

    .line 47
    if-nez p1, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/miui/keyguardtemplate/doodle/DoodleView;->decodeResource()V

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 54
    return-void
    .line 57
.end method
