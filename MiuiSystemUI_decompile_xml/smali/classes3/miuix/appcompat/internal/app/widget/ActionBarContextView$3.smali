.class public final Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

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
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 2
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    .line 4
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 12
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    .line 14
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    .line 16
    move-result v1

    .line 19
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 20
    iget v3, v2, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 22
    sub-int/2addr v1, v3

    .line 24
    iput v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 25
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    .line 27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 30
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    .line 32
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 34
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 40
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 46
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    .line 48
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 50
    move-result v0

    .line 53
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 54
    iget v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 56
    if-ne v0, v2, :cond_1

    .line 58
    const/4 p0, 0x0

    .line 60
    invoke-virtual {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 61
    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    .line 65
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 67
    move-result v0

    .line 70
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 71
    iget v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 73
    iget-object v1, v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 75
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 77
    move-result v1

    .line 80
    add-int/2addr v1, v2

    .line 81
    if-ne v0, v1, :cond_2

    .line 82
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 84
    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 87
    :cond_2
    :goto_0
    return-void
    .line 90
.end method
