.class public final Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic val$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$5;->val$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$5;->val$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->$r8$clinit:I

    .line 4
    const v0, 0x7f0a07b8    # @id/right_inset_animator_tag

    .line 6
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$5;->val$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 13
    const v0, 0x7f0a07b7    # @id/right_inset_animator_start_value_tag

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$5;->val$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 21
    const p1, 0x7f0a07b6    # @id/right_inset_animator_end_value_tag

    .line 23
    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 26
    return-void
    .line 29
.end method
