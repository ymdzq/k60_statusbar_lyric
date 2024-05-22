.class public final Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    .line 2
    iget-object v1, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mFullTime:Landroid/view/View;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    iget-object v0, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mFullTime:Landroid/view/View;

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 15
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    move v0, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 24
    :goto_1
    const-string v1, "onPreDraw viewLayoutFinished: "

    .line 25
    const-string v3, ", mHasNotification: "

    .line 27
    invoke-static {v1, v0, v3}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    move-result-object v1

    .line 32
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    .line 33
    iget-boolean v3, v3, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    const-string v3, ", mToAod: "

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    .line 45
    iget-boolean v3, v3, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mToAod:Z

    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 55
    const-string v3, "ClockBaseAnimation"

    .line 56
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-eqz v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    .line 63
    iget-boolean v1, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 65
    if-eqz v1, :cond_3

    .line 67
    iget-boolean v1, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mToAod:Z

    .line 69
    if-nez v1, :cond_3

    .line 71
    iget-boolean v1, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mIsCopperplate:Z

    .line 73
    if-eqz v1, :cond_2

    .line 75
    iget-object v0, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 77
    iget-object v0, v0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 79
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockBean;->getTemplateId()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 84
    const-string/jumbo v1, "rhombus_notification"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v0

    .line 91
    if-nez v0, :cond_3

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    .line 94
    invoke-virtual {v0, v2, v2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->doAnimationToNotification(ZZ)V

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    .line 99
    iget-object v0, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mFullTime:Landroid/view/View;

    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 103
    move-result-object v0

    .line 106
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 107
    :cond_4
    return v2
    .line 110
.end method
