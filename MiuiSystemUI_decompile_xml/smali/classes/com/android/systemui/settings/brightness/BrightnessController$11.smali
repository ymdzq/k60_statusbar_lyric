.class public final Lcom/android/systemui/settings/brightness/BrightnessController$11;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$11;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$11;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHandler:Lcom/android/systemui/settings/brightness/BrightnessController$7;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDialogRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$$ExternalSyntheticLambda0;

    .line 6
    invoke-virtual {p1, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    :cond_0
    const-wide/16 v0, 0x7d0

    .line 17
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    return-void
    .line 22
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$11;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHandler:Lcom/android/systemui/settings/brightness/BrightnessController$7;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDialogRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$$ExternalSyntheticLambda0;

    .line 6
    invoke-virtual {p1, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method
