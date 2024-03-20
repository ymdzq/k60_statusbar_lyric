.class public final Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;

    .line 2
    iget-boolean v1, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->doAnimationToNotification(Z)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;

    .line 12
    iget-object v0, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 20
    return v2
    .line 23
.end method
