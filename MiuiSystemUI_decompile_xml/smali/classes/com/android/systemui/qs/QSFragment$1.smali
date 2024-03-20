.class public final Lcom/android/systemui/qs/QSFragment$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/qs/QSFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/QSFragment$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

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
    iget p1, p0, Lcom/android/systemui/qs/QSFragment$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    .line 10
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 12
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    .line 18
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 20
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 24
    move-result-object p1

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    .line 31
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 35
    return-void

    .line 38
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    .line 39
    iput-boolean v1, p1, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    .line 41
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 43
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    .line 46
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 48
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 52
    move-result-object p0

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 56
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 60
.end method
