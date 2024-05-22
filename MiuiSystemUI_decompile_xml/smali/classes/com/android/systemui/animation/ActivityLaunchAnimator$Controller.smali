.class public interface abstract Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/animation/LaunchAnimator$Controller;


# direct methods
.method public static fromView(Landroid/view/View;Ljava/lang/Integer;)Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/android/systemui/animation/LaunchableView;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object v0

    .line 9
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 10
    if-nez v0, :cond_0

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    const-string v0, "Skipping animation as view "

    .line 16
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string p0, " is not attached to a ViewGroup"

    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    new-instance p1, Ljava/lang/Exception;

    .line 33
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 35
    const-string v0, "ActivityLaunchAnimator"

    .line 38
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    const/4 p0, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    .line 45
    const/4 v1, 0x4

    .line 47
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;I)V

    .line 48
    move-object p0, v0

    .line 51
    :goto_0
    return-object p0

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 53
    const-string p1, "An ActivityLaunchAnimator.Controller was created from a View that does not implement LaunchableView. This can lead to subtle bugs where the visibility of the View we are launching from is not what we expected."

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p0
    .line 60
.end method

.method public static synthetic onLaunchAnimationCancelled$default(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled(Ljava/lang/Boolean;)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public isBelowAnimatingWindow()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isDialogLaunch()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public onIntentStarted(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onLaunchAnimationCancelled(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
