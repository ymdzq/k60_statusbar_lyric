.class public Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;
.super Lcom/android/systemui/qs/tileimpl/SlashImageView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/SlashImageView;-><init>(Landroid/content/Context;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final ensureSlashDrawable()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->getSlash()Lcom/android/systemui/qs/SlashDrawable;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashDrawable;

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setSlash(Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashDrawable;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->getAnimationEnabled()Z

    .line 20
    move-result v1

    .line 23
    iput-boolean v1, v0, Lcom/android/systemui/qs/SlashDrawable;->mAnimationEnabled:Z

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setImageViewDrawable(Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashDrawable;)V

    .line 26
    :cond_0
    return-void
    .line 29
.end method

.method public setFinalImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->getSlash()Lcom/android/systemui/qs/SlashDrawable;

    .line 5
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    check-cast p0, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashDrawable;

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashDrawable;->setFinalTintList(Landroid/content/res/ColorStateList;)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method
