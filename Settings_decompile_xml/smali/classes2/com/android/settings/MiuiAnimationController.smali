.class public abstract Lcom/android/settings/MiuiAnimationController;
.super Ljava/lang/Object;
.source "MiuiAnimationController.java"


# instance fields
.field private mAnimating:Z

.field private mAnimationDrawable:Landroid/graphics/drawable/Animatable;

.field private mAnimationIcon:Landroid/graphics/drawable/Drawable;

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$mplayAnimationImmediately(Lcom/android/settings/MiuiAnimationController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiAnimationController;->playAnimationImmediately()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/android/settings/MiuiAnimationController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiAnimationController$1;-><init>(Lcom/android/settings/MiuiAnimationController;)V

    iput-object v0, p0, Lcom/android/settings/MiuiAnimationController;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/MiuiAnimationController;->mHandler:Landroid/os/Handler;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiAnimationController;->load(Landroid/content/Context;I)V

    return-void
.end method

.method private load(Landroid/content/Context;I)V
    .locals 0

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    iput-object p1, p0, Lcom/android/settings/MiuiAnimationController;->mAnimationIcon:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiAnimationController;->getAnimationDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Animatable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiAnimationController;->mAnimationDrawable:Landroid/graphics/drawable/Animatable;

    .line 83
    iget-object p1, p0, Lcom/android/settings/MiuiAnimationController;->mAnimationIcon:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 84
    iget-object p0, p0, Lcom/android/settings/MiuiAnimationController;->mAnimationDrawable:Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->stop()V

    return-void
.end method

.method private playAnimationDelayed()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/android/settings/MiuiAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/MiuiAnimationController;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/MiuiAnimationController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/MiuiAnimationController;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private playAnimationImmediately()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settings/MiuiAnimationController;->mAnimationIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "MiuiAnimationDrawable"

    const-string/jumbo v0, "playAnimationImmediately: callback is null"

    .line 72
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiAnimationController;->mAnimationDrawable:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/android/settings/MiuiAnimationController;->mAnimating:Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected getAnimationDrawable()Landroid/graphics/drawable/Animatable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/MiuiAnimationController;->mAnimationDrawable:Landroid/graphics/drawable/Animatable;

    return-object p0
.end method

.method protected abstract getAnimationDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Animatable;
.end method

.method public getAnimationIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/MiuiAnimationController;->mAnimationIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public playAnimation()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/android/settings/MiuiAnimationController;->mAnimationIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 51
    iget-object v0, p0, Lcom/android/settings/MiuiAnimationController;->mAnimationIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/MiuiAnimationController;->playAnimationImmediately()V

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiAnimationController;->playAnimationDelayed()V

    :goto_0
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/settings/MiuiAnimationController;->mAnimationIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 60
    iget-object v0, p0, Lcom/android/settings/MiuiAnimationController;->mAnimationDrawable:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 61
    iput-boolean v1, p0, Lcom/android/settings/MiuiAnimationController;->mAnimating:Z

    .line 62
    iget-object v0, p0, Lcom/android/settings/MiuiAnimationController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/MiuiAnimationController;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
