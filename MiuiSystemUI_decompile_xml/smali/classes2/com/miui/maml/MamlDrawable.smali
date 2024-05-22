.class public Lcom/miui/maml/MamlDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static sLayerBadgeDrawableBmpRef:Ljava/lang/ref/WeakReference;


# instance fields
.field protected mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBadgeLocation:Landroid/graphics/Rect;

.field protected mColorFilter:Landroid/graphics/ColorFilter;

.field protected mHeight:I

.field protected mIntrinsicHeight:I

.field protected mIntrinsicWidth:I

.field protected mInvalidateSelf:Ljava/lang/Runnable;

.field protected mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

.field protected mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Lcom/miui/maml/MamlDrawable$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/miui/maml/MamlDrawable$1;-><init>(Lcom/miui/maml/MamlDrawable;)V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/MamlDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/MamlDrawable;->drawIcon(Landroid/graphics/Canvas;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/miui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    .line 9
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 14
    move-result v1

    .line 17
    iget-object v3, p0, Lcom/miui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 20
    move-result v3

    .line 23
    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 27
    iget-object v0, p0, Lcom/miui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    .line 30
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 32
    int-to-float v1, v1

    .line 34
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 35
    int-to-float v0, v0

    .line 37
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 38
    iget-object p0, p0, Lcom/miui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 41
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 46
    goto :goto_0

    .line 49
    :cond_0
    iget v1, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 50
    iget v3, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 52
    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 54
    iget-object p0, p0, Lcom/miui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 64
    goto :goto_0

    .line 67
    :catch_1
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    :cond_1
    :goto_0
    return-void
    .line 72
.end method

.method public drawIcon(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/MamlDrawable;->cleanUp()V

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    return-void
    .line 8
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/MamlDrawable;->mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

    .line 2
    return-object p0
    .line 4
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 2
    return p0
    .line 4
.end method

.method public getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
    .line 3
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setBadgeInfo(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 5
    if-ltz v1, :cond_0

    .line 7
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 9
    if-ltz v1, :cond_0

    .line 11
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 13
    move-result v1

    .line 16
    iget v2, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 17
    if-gt v1, v2, :cond_0

    .line 19
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 21
    move-result v1

    .line 24
    iget v2, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 25
    if-gt v1, v2, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    const-string v2, "Badge location "

    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    const-string p2, " not in badged drawable bounds "

    .line 42
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    new-instance p2, Landroid/graphics/Rect;

    .line 47
    iget v2, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 49
    iget p0, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 51
    invoke-direct {p2, v0, v0, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 53
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p1

    .line 66
    :cond_1
    :goto_0
    instance-of v1, p1, Landroid/graphics/drawable/LayerDrawable;

    .line 67
    if-eqz v1, :cond_4

    .line 69
    sget-object v1, Lcom/miui/maml/MamlDrawable;->sLayerBadgeDrawableBmpRef:Ljava/lang/ref/WeakReference;

    .line 71
    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 75
    move-result-object v1

    .line 78
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 79
    goto :goto_1

    .line 81
    :cond_2
    const/4 v1, 0x0

    .line 82
    :goto_1
    if-eqz v1, :cond_3

    .line 83
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 85
    move-result-object p1

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 90
    move-result v1

    .line 93
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 94
    move-result v2

    .line 97
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 98
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 100
    move-result-object v1

    .line 103
    new-instance v2, Landroid/graphics/Canvas;

    .line 104
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 106
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    .line 109
    move-result v3

    .line 112
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    .line 113
    move-result v4

    .line 116
    invoke-virtual {p1, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 123
    invoke-direct {p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 128
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 130
    sput-object v0, Lcom/miui/maml/MamlDrawable;->sLayerBadgeDrawableBmpRef:Ljava/lang/ref/WeakReference;

    .line 133
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/miui/maml/MamlDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 135
    if-eqz v0, :cond_5

    .line 137
    if-eqz p1, :cond_5

    .line 139
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 141
    :cond_5
    iput-object p1, p0, Lcom/miui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    iput-object p2, p0, Lcom/miui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    .line 146
    iget-object p0, p0, Lcom/miui/maml/MamlDrawable;->mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

    .line 148
    iput-object p1, p0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 150
    iput-object p2, p0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    .line 152
    return-void
    .line 154
.end method

.method public setBounds(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    sub-int/2addr p3, p1

    .line 5
    iput p3, p0, Lcom/miui/maml/MamlDrawable;->mWidth:I

    .line 6
    sub-int/2addr p4, p2

    .line 8
    iput p4, p0, Lcom/miui/maml/MamlDrawable;->mHeight:I

    .line 9
    return-void
    .line 11
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/MamlDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 2
    return-void
    .line 4
.end method

.method public setIntrinsicSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 2
    iput p2, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 4
    return-void
    .line 6
.end method
