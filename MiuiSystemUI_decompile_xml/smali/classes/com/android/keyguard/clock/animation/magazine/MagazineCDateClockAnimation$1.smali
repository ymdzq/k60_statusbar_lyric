.class public final Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;

.field public final synthetic val$viewTree:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation$1;->val$viewTree:Landroid/view/View;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;

    .line 2
    iget-object v0, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;

    .line 13
    iget-object v0, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;

    .line 23
    iget-object v0, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 27
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;

    .line 33
    iget-object v0, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 37
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;

    .line 43
    iget-boolean v2, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 45
    if-eqz v2, :cond_1

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->doAnimationToNotification(Z)V

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation$1;->val$viewTree:Landroid/view/View;

    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 54
    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 58
    :cond_2
    return v1
    .line 61
.end method
