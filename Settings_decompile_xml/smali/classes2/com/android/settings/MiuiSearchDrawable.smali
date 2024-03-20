.class public Lcom/android/settings/MiuiSearchDrawable;
.super Lcom/android/settings/MiuiAnimationController;
.source "MiuiSearchDrawable.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 12
    sget v0, Lcom/android/settings/R$drawable;->action_button_search:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/MiuiSearchDrawable;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiAnimationController;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected getAnimationDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Animatable;
    .locals 0

    .line 32
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    const p0, 0x101009e    # @android:attr/state_enabled

    .line 33
    filled-new-array {p0}, [I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/StateListDrawable;->findStateDrawableIndex([I)I

    move-result p0

    .line 34
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    return-object p0
.end method

.method public getSearchIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/android/settings/MiuiAnimationController;->getAnimationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public stopAnimation()V
    .locals 0

    .line 25
    invoke-super {p0}, Lcom/android/settings/MiuiAnimationController;->stopAnimation()V

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/MiuiAnimationController;->getAnimationDrawable()Landroid/graphics/drawable/Animatable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->stop()V

    return-void
.end method
