.class public final Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher$1;->this$0:Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher$1;->this$0:Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 2
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getAlpha()F

    .line 7
    move-result p1

    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    cmpl-float p1, p1, v0

    .line 13
    if-nez p1, :cond_0

    .line 15
    const/4 p1, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x4

    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 20
    return-void
    .line 23
.end method
