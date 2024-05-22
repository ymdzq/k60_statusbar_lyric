.class public final Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public mWasCancelled:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;->mWasCancelled:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;->mWasCancelled:Z

    .line 12
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 16
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    .line 15
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    .line 17
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 19
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;->mWasCancelled:Z

    .line 25
    if-nez p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    .line 29
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->onAnimationFinished()V

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    .line 34
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    .line 36
    invoke-virtual {p1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void

    .line 41
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;->mWasCancelled:Z

    .line 42
    const/4 v0, 0x0

    .line 44
    if-eqz p1, :cond_1

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    .line 47
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    .line 49
    goto :goto_1

    .line 51
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    .line 52
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    .line 54
    :goto_1
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 58
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;->mWasCancelled:Z

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    .line 16
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 22
.end method
