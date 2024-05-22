.class public final Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateRows$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateRows$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateRows$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 4
    return-void
    .line 7
.end method

.method public final onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
