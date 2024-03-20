.class public final Lcom/android/systemui/qs/MiuiQSDetail$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/qs/MiuiQSDetail;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/MiuiQSDetail;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/MiuiQSDetail$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSDetail$2;->this$0:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/MiuiQSDetail$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSDetail$2;->this$0:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 14
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mAnimatingOpen:Z

    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mSwitchState:Z

    .line 19
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 21
    if-eqz v1, :cond_0

    .line 23
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    .line 25
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    const/4 p1, 0x1

    .line 31
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/MiuiQSDetail;->handleToggleStateChanged(ZZ)V

    .line 32
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 36
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/qs/MiuiQSDetail$2;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSDetail$2;->this$0:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 8
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mAnimatingOpen:Z

    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mSwitchState:Z

    .line 13
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    .line 19
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    const/4 p1, 0x1

    .line 25
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/MiuiQSDetail;->handleToggleStateChanged(ZZ)V

    .line 26
    return-void

    .line 29
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSDetail$2;->this$0:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 30
    iget-object p1, p1, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 34
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSDetail$2;->this$0:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 37
    const/4 v0, 0x4

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 40
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSDetail$2;->this$0:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 50
.end method
