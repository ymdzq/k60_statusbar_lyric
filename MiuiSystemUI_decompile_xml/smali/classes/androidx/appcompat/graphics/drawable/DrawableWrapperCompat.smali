.class public abstract Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field public mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 10
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 17
    :cond_1
    return-void
    .line 20
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    return-void
    .line 7
.end method

.method public final getChangingConfigurations()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getMinimumHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getMinimumWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getState()[I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getTransparentRegion()Landroid/graphics/Region;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 2
    return-void
    .line 5
.end method

.method public final isAutoMirrored()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final isStateful()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final jumpToCurrentState()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4
    return-void
    .line 7
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method

.method public final onLevelChange(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 2
    return-void
    .line 5
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4
    return-void
    .line 7
.end method

.method public final setAutoMirrored(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public final setChangingConfigurations(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 4
    return-void
    .line 7
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4
    return-void
    .line 7
.end method

.method public final setDither(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public final setFilterBitmap(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public setHotspot(FF)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4
    return-void
    .line 7
.end method

.method public setHotspotBounds(IIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 4
    return-void
    .line 7
.end method

.method public setState([I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final setTint(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 4
    return-void
    .line 7
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    return-void
    .line 7
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 4
    return-void
    .line 7
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
    .line 20
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 2
    return-void
    .line 5
.end method
