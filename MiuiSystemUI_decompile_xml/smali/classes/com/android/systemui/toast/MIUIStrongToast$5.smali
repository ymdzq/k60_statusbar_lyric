.class public final Lcom/android/systemui/toast/MIUIStrongToast$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/toast/MIUIStrongToast;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/toast/MIUIStrongToast$5;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$5;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$5;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$5;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 8
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCancelDecimalPointAnimation:Z

    .line 11
    return-void

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 14
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$5;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$5;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 8
    iget-boolean p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCancelDecimalPointAnimation:Z

    .line 10
    if-nez p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->hideStrongToast()V

    .line 14
    :cond_0
    return-void

    .line 17
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$5;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 18
    sget p1, Lcom/android/systemui/toast/MIUIStrongToast;->$r8$clinit:I

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->onComplete()V

    .line 22
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 26
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$5;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$5;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 8
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCancelDecimalPointAnimation:Z

    .line 11
    return-void

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 14
.end method
