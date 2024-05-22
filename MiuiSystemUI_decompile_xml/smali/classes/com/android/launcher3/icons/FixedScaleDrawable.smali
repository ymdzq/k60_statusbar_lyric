.class public Lcom/android/launcher3/icons/FixedScaleDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mScaleX:F

.field public mScaleY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 2
    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 4
    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 7
    const v0, 0x3eeef1fe    # 0.46669f

    .line 10
    iput v0, p0, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleX:F

    .line 13
    iput v0, p0, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleY:F

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleX:F

    .line 6
    iget v2, p0, Lcom/android/launcher3/icons/FixedScaleDrawable;->mScaleY:F

    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    .line 10
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    .line 14
    move-result v3

    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    .line 18
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    .line 22
    move-result v4

    .line 25
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 26
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 32
    return-void
    .line 35
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 2
    return-void
.end method
