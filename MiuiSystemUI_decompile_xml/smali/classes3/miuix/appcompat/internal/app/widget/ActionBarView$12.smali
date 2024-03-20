.class public final Lmiuix/appcompat/internal/app/widget/ActionBarView$12;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 4
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 12
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 14
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    .line 16
    move-result v1

    .line 19
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 20
    iget v3, v2, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 22
    sub-int/2addr v1, v3

    .line 24
    iget v3, v2, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I

    .line 25
    add-int/2addr v1, v3

    .line 27
    iput v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I

    .line 28
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    .line 30
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 33
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 35
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 37
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 43
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 45
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 49
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 51
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 53
    move-result v0

    .line 56
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 57
    iget v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 59
    if-ne v0, v2, :cond_1

    .line 61
    const/4 p0, 0x0

    .line 63
    invoke-virtual {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 64
    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;

    .line 68
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 70
    move-result v0

    .line 73
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 74
    iget v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 76
    iget-object v1, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 78
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 80
    move-result v1

    .line 83
    add-int/2addr v1, v2

    .line 84
    if-ne v0, v1, :cond_2

    .line 85
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$12;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 87
    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 90
    :cond_2
    :goto_0
    return-void
    .line 93
.end method
