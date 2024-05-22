.class public final synthetic Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_1

    .line 9
    :pswitch_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 10
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mEndActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    .line 12
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    .line 16
    :cond_0
    return-void

    .line 19
    :pswitch_1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 20
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 22
    if-eqz p0, :cond_1

    .line 24
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    .line 26
    move-result v0

    .line 29
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleSizeable:Z

    .line 30
    if-eqz v2, :cond_1

    .line 32
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 34
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 36
    :cond_1
    return-void

    .line 39
    :pswitch_2
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 40
    sget v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->$r8$clinit:I

    .line 42
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->pendingCreateTitle()V

    .line 44
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->shouldTitleVisible()Z

    .line 47
    move-result v0

    .line 50
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 51
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateTightTitle()V

    .line 54
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 57
    and-int/lit8 v3, v0, 0x2

    .line 59
    if-eqz v3, :cond_2

    .line 61
    move v3, v2

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v3, v1

    .line 65
    :goto_0
    and-int/lit8 v0, v0, 0x4

    .line 66
    if-eqz v0, :cond_3

    .line 68
    move v1, v2

    .line 70
    :cond_3
    invoke-virtual {p0, v3, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->checkAllTitleViewEnable(ZZ)V

    .line 71
    return-void

    .line 74
    :pswitch_3
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 75
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 77
    if-eqz p0, :cond_4

    .line 79
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    .line 81
    move-result v0

    .line 84
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleSizeable:Z

    .line 85
    if-eqz v2, :cond_4

    .line 87
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 89
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 91
    :cond_4
    return-void

    .line 94
    :goto_1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 95
    sget v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->$r8$clinit:I

    .line 97
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 99
    const/4 v3, 0x0

    .line 101
    const/high16 v4, 0x3f800000    # 1.0f

    .line 102
    if-nez v0, :cond_5

    .line 104
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 106
    invoke-virtual {v0, v4, v1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIZ)V

    .line 108
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 111
    invoke-virtual {p0, v3, v1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIZ)V

    .line 113
    goto :goto_2

    .line 116
    :cond_5
    if-ne v0, v2, :cond_6

    .line 117
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 119
    const/16 v5, 0x14

    .line 121
    invoke-virtual {v0, v3, v5, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIZ)V

    .line 123
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 126
    invoke-virtual {p0, v4, v1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIZ)V

    .line 128
    :cond_6
    :goto_2
    return-void

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 132
.end method
