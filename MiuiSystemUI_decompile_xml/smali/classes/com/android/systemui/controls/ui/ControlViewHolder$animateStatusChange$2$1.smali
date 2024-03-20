.class public final Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;->this$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;->this$0:Ljava/lang/Object;

    .line 9
    check-cast p0, Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 11
    iput-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->stateAnimator:Landroid/animation/ValueAnimator;

    .line 13
    return-void

    .line 15
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;->this$0:Ljava/lang/Object;

    .line 16
    check-cast p1, Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 18
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 24
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;->this$0:Ljava/lang/Object;

    .line 27
    check-cast p0, Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 29
    iput-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->statusAnimator:Landroid/animation/Animator;

    .line 31
    return-void

    .line 33
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;->this$0:Ljava/lang/Object;

    .line 34
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 36
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 38
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 42
.end method
