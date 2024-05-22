.class public final Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

.field public final synthetic val$filtered:Z


# direct methods
.method public constructor <init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 2
    iput-boolean p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->val$filtered:Z

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 2
    iget-object v1, v0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    .line 4
    if-eqz v1, :cond_2

    .line 6
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->val$filtered:Z

    .line 8
    if-eqz p0, :cond_2

    .line 10
    check-cast v1, Lmiuix/miuixbasewidget/widget/FilterSortView$1;

    .line 12
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    iget-object v4, v1, Lmiuix/miuixbasewidget/widget/FilterSortView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 16
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v5

    .line 21
    if-ge v3, v5, :cond_1

    .line 22
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    move-result-object v5

    .line 27
    iget-object v6, v4, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 28
    if-ne v5, v6, :cond_0

    .line 30
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    iget-object v1, v4, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 36
    invoke-virtual {v4, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 38
    :goto_1
    if-eqz p0, :cond_2

    .line 41
    iget-object p0, v4, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 43
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 45
    move-result p0

    .line 48
    if-nez p0, :cond_2

    .line 49
    iget-boolean p0, v4, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 51
    if-eqz p0, :cond_2

    .line 53
    iget-boolean p0, v4, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    .line 55
    if-nez p0, :cond_2

    .line 57
    new-instance p0, Lmiuix/animation/controller/AnimState;

    .line 59
    const-string v1, "target"

    .line 61
    invoke-direct {p0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 63
    sget-object v1, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    .line 66
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getX()F

    .line 68
    move-result v3

    .line 71
    float-to-double v5, v3

    .line 72
    invoke-virtual {p0, v1, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 73
    move-result-object p0

    .line 76
    sget-object v1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 77
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 79
    move-result v0

    .line 82
    int-to-double v5, v0

    .line 83
    invoke-virtual {p0, v1, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 84
    move-result-object p0

    .line 87
    iget-object v0, v4, Lmiuix/miuixbasewidget/widget/FilterSortView;->mBackgroundTabView:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 88
    filled-new-array {v0}, [Landroid/view/View;

    .line 90
    move-result-object v0

    .line 93
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 94
    move-result-object v0

    .line 97
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 98
    move-result-object v0

    .line 101
    const-wide/16 v5, 0x1

    .line 102
    invoke-interface {v0, v5, v6}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    .line 104
    move-result-object v0

    .line 107
    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    .line 108
    invoke-interface {v0, p0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 110
    iput-boolean v2, v4, Lmiuix/miuixbasewidget/widget/FilterSortView;->mNeedAnim:Z

    .line 113
    const/4 p0, 0x1

    .line 115
    iput-boolean p0, v4, Lmiuix/miuixbasewidget/widget/FilterSortView;->mAnimExecuted:Z

    .line 116
    :cond_2
    return-void
    .line 118
.end method
