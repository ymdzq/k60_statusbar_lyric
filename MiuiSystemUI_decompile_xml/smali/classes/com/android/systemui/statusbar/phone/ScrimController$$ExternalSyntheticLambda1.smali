.class public final synthetic Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    .line 7
    iput p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    .line 4
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget v2, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/Float;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 19
    move-result v2

    .line 22
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Float;

    .line 27
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 29
    move-result p1

    .line 32
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    .line 33
    move-result v3

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    .line 37
    move-result v4

    .line 40
    invoke-static {v2, v4, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 41
    move-result v2

    .line 44
    const/4 v4, 0x0

    .line 45
    const/high16 v5, 0x3f800000    # 1.0f

    .line 46
    invoke-static {v2, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 48
    move-result v2

    .line 51
    invoke-static {p0, v3, p1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    .line 52
    move-result p0

    .line 55
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNCSwitching:Z

    .line 56
    if-nez p1, :cond_0

    .line 58
    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNCSwitchControllerLazy:Ldagger/Lazy;

    .line 60
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 65
    check-cast p1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 66
    iget-boolean p1, p1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->switchedToControl:Z

    .line 68
    if-nez p1, :cond_0

    .line 70
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;IF)V

    .line 72
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    .line 75
    return-void
    .line 78
.end method
