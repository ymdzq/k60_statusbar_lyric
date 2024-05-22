.class public abstract Lcom/android/systemui/biometrics/AuthIconController;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final context:Landroid/content/Context;

.field public deactivated:Z

.field public final iconView:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final animateIcon(IZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->deactivated:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 11
    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 12
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 14
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 19
    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 27
    :cond_1
    return-void
    .line 30
.end method

.method public getActsAsConfirmButton()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public handleAnimationEnd()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->deactivated:Z

    .line 5
    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthIconController;->handleAnimationEnd()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 2
    return-void
    .line 5
.end method

.method public abstract updateIcon(II)V
.end method
