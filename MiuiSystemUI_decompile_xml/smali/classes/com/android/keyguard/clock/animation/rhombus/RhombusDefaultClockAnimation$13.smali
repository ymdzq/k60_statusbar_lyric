.class public final Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$13;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

.field public final synthetic val$hasNotification:Z


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$13;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    .line 2
    iput-boolean p2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$13;->val$hasNotification:Z

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$13;->val$hasNotification:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$13;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    .line 7
    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->doAnimationToNotification(ZZ)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$13;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    .line 12
    iget-object v0, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mFullTime:Landroid/view/View;

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 20
    return v1
    .line 23
.end method
