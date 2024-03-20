.class public final Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$4;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;

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
    iget v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$4;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$4;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;

    .line 9
    iget-object v0, v0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainer:Landroid/view/View;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$4;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;

    .line 19
    iget-object v0, v0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainer:Landroid/view/View;

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$4;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;

    .line 29
    iget-boolean v2, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 31
    invoke-virtual {v0, v2}, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->doAnimationToNotification(Z)V

    .line 33
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$4;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;

    .line 36
    iget-object v0, v0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainer:Landroid/view/View;

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 40
    move-result-object v0

    .line 43
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 44
    :cond_0
    return v1

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$4;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;

    .line 48
    iget-boolean v2, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 50
    if-eqz v2, :cond_1

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->doAnimationToNotification(Z)V

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$4;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;

    .line 57
    iget-object v0, v0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainer:Landroid/view/View;

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 61
    move-result-object v0

    .line 64
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 65
    return v1

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
