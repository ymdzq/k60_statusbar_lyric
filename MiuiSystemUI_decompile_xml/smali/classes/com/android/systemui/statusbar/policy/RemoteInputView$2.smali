.class public final Lcom/android/systemui/statusbar/policy/RemoteInputView$2;
.super Landroidx/core/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field public final synthetic val$doAfterDefocus:Ljava/lang/Runnable;

.field public final synthetic val$grandParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Landroid/view/ViewGroup;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$2;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$2;->val$grandParent:Landroid/view/ViewGroup;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$2;->val$doAfterDefocus:Ljava/lang/Runnable;

    .line 6
    invoke-direct {p0}, Landroidx/core/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationEnd$1(Landroidx/core/animation/Animator;)V
    .locals 3

    .line 1
    sget-object p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$2;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 4
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 9
    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 10
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 20
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$2;->val$grandParent:Landroid/view/ViewGroup;

    .line 27
    if-eqz v0, :cond_1

    .line 29
    const/4 v2, 0x1

    .line 31
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 32
    :cond_1
    const/16 v0, 0x8

    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 37
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 40
    if-eqz p1, :cond_2

    .line 42
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRemoteInputVisible(Z)V

    .line 44
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$2;->val$doAfterDefocus:Ljava/lang/Runnable;

    .line 47
    if-eqz p0, :cond_3

    .line 49
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 51
    :cond_3
    return-void
    .line 54
.end method
