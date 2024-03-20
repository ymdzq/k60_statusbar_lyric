.class public Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mListener:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x4

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->mListener:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    check-cast v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    .line 19
    const/4 p0, 0x0

    .line 21
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->setMenuVisibility(Z)V

    .line 22
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 27
    move-result p0

    .line 30
    return p0
    .line 31
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->mListener:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result p1

    .line 10
    const v0, 0x7f0a0a12    # @id/tv_split_main_menu_focus_button

    .line 11
    const/4 v1, 0x0

    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->mListener:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;

    .line 17
    check-cast p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->onFocusStage(I)V

    .line 21
    goto :goto_0

    .line 24
    :cond_1
    const v0, 0x7f0a0a11    # @id/tv_split_main_menu_close_button

    .line 25
    const/4 v2, 0x2

    .line 28
    if-ne p1, v0, :cond_2

    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->mListener:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;

    .line 31
    check-cast p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    .line 33
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->setMenuVisibility(Z)V

    .line 35
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mStageController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;

    .line 38
    check-cast p0, Lcom/android/wm/shell/splitscreen/tv/TvStageCoordinator;

    .line 40
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 42
    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToDismiss(ZI)V

    .line 44
    goto :goto_0

    .line 47
    :cond_2
    const v0, 0x7f0a0a16    # @id/tv_split_side_menu_focus_button

    .line 48
    const/4 v3, 0x1

    .line 51
    if-ne p1, v0, :cond_3

    .line 52
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->mListener:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;

    .line 54
    check-cast p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    .line 56
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->onFocusStage(I)V

    .line 58
    goto :goto_0

    .line 61
    :cond_3
    const v0, 0x7f0a0a15    # @id/tv_split_side_menu_close_button

    .line 62
    if-ne p1, v0, :cond_4

    .line 65
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->mListener:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;

    .line 67
    check-cast p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    .line 69
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->setMenuVisibility(Z)V

    .line 71
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mStageController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;

    .line 74
    check-cast p0, Lcom/android/wm/shell/splitscreen/tv/TvStageCoordinator;

    .line 76
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 78
    invoke-virtual {p0, v3, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToDismiss(ZI)V

    .line 80
    goto :goto_0

    .line 83
    :cond_4
    const v0, 0x7f0a0a13    # @id/tv_split_menu_swap_stages

    .line 84
    if-ne p1, v0, :cond_5

    .line 87
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView;->mListener:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuView$Listener;

    .line 89
    check-cast p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    .line 91
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->mStageController:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$StageController;

    .line 93
    check-cast p0, Lcom/android/wm/shell/splitscreen/tv/TvStageCoordinator;

    .line 95
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onDoubleTappedDivider()V

    .line 97
    :cond_5
    :goto_0
    return-void
    .line 100
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0a12    # @id/tv_split_main_menu_focus_button

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    const v0, 0x7f0a0a11    # @id/tv_split_main_menu_close_button

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const v0, 0x7f0a0a16    # @id/tv_split_side_menu_focus_button

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 31
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v0, 0x7f0a0a15    # @id/tv_split_side_menu_close_button

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 41
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v0, 0x7f0a0a13    # @id/tv_split_menu_swap_stages

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v0

    .line 51
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
    .line 55
.end method
