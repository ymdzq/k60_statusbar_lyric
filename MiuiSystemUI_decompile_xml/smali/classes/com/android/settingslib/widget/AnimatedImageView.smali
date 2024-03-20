.class public Lcom/android/settingslib/widget/AnimatedImageView;
.super Landroid/widget/ImageView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAnimating:Z

.field public mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->updateAnimating()V

    .line 5
    return-void
    .line 8
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->updateAnimating()V

    .line 5
    return-void
    .line 8
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->updateAnimating()V

    .line 5
    return-void
    .line 8
.end method

.method public setAnimating(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mAnimating:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->updateAnimating()V

    .line 4
    return-void
    .line 7
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->updateDrawable()V

    .line 5
    return-void
    .line 8
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->updateDrawable()V

    .line 5
    return-void
    .line 8
.end method

.method public final updateAnimating()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-boolean v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mAnimating:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->stop()V

    .line 24
    :cond_1
    :goto_0
    return-void
    .line 27
.end method

.method public final updateDrawable()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->stop()V

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object v0

    .line 18
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 19
    if-eqz v1, :cond_1

    .line 21
    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 23
    iput-object v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 25
    const/16 v1, 0x38

    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    .line 29
    iget-object v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 32
    const/16 v1, 0x20

    .line 34
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    .line 36
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    .line 39
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    iget-boolean v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mAnimating:Z

    .line 45
    if-eqz v0, :cond_2

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 49
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    .line 51
    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 56
    :cond_2
    :goto_0
    return-void
    .line 58
.end method
