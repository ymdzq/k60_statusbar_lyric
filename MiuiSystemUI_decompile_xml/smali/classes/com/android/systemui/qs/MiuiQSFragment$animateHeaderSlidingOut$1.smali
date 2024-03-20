.class public final Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/qs/MiuiQSFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/MiuiQSFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;->this$0:Lcom/android/systemui/qs/MiuiQSFragment;

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
    iget p1, p0, Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;->this$0:Lcom/android/systemui/qs/MiuiQSFragment;

    .line 9
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 11
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;->this$0:Lcom/android/systemui/qs/MiuiQSFragment;

    .line 17
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 19
    move-result-object p1

    .line 22
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 26
    move-result-object p1

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;->this$0:Lcom/android/systemui/qs/MiuiQSFragment;

    .line 34
    iput-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->headerAnimating:Z

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->updateQsState()V

    .line 38
    return-void

    .line 41
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;->this$0:Lcom/android/systemui/qs/MiuiQSFragment;

    .line 42
    iput-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->headerAnimating:Z

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->updateQsState()V

    .line 46
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 50
.end method
