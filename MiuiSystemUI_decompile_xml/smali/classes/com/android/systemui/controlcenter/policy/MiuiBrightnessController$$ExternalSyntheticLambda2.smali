.class public final synthetic Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 2
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mExternalChange:Z

    .line 5
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mControl:Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Integer;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    move-result p1

    .line 20
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/miui/controlcenter/ToggleSliderBase;->setValue(I)V

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mExternalChange:Z

    .line 25
    return-void
    .line 27
.end method
