.class Lcom/android/settings/accounts/MiuiAccountSettings$SyncDrawable;
.super Lcom/android/settings/MiuiAnimationController;
.source "MiuiAccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/MiuiAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncDrawable"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 628
    sget v0, Lcom/android/settings/R$drawable;->action_button_refresh:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/MiuiAnimationController;-><init>(Landroid/content/Context;I)V

    .line 630
    invoke-virtual {p0}, Lcom/android/settings/MiuiAnimationController;->getAnimationDrawable()Landroid/graphics/drawable/Animatable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    const/16 p1, 0x38

    .line 632
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    const/16 p1, 0x20

    .line 633
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    return-void
.end method


# virtual methods
.method protected getAnimationDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Animatable;
    .locals 0

    .line 638
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    const p0, 0x101009e    # @android:attr/state_enabled

    .line 639
    filled-new-array {p0}, [I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/StateListDrawable;->findStateDrawableIndex([I)I

    move-result p0

    .line 640
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    return-object p0
.end method
