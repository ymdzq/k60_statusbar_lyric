.class public final Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotifPromptController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 4
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mNotifMap:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    iget v0, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCurrentUserId:I

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getBeanMap(I)Ljava/util/HashMap;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 20
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mUseCustomizedAnim:Z

    .line 29
    return-void
    .line 31
.end method
