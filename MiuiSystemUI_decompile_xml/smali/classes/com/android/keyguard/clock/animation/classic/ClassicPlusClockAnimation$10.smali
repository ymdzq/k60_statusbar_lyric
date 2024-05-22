.class public final Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$10;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$10;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$10;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;

    .line 2
    iget-object v0, v0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainer:Landroid/view/View;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$10;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;

    .line 12
    iget-object v0, v0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainer:Landroid/view/View;

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$10;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;

    .line 22
    iget-boolean v1, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->doAnimationToNotification(Z)V

    .line 26
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$10;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;

    .line 29
    iget-object v0, v0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainer:Landroid/view/View;

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 33
    move-result-object v0

    .line 36
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 37
    :cond_0
    const/4 p0, 0x1

    .line 40
    return p0
    .line 41
.end method
