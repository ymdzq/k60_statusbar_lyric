.class public abstract Lcom/android/settings/display/util/BaseFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAppContext:Landroid/content/Context;

.field private mMsgQueue:Landroid/os/MessageQueue;

.field private mUIHandler:Landroid/os/Handler;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/util/BaseFragment;->mUIHandler:Landroid/os/Handler;

    .line 31
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/util/BaseFragment;->mMsgQueue:Landroid/os/MessageQueue;

    return-void
.end method


# virtual methods
.method protected applyTitle()V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/display/util/BaseFragment;->onSetTitle()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/settings/display/util/BaseFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    iget-object p0, p0, Lcom/android/settings/display/util/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method protected findViewById(I)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/display/util/BaseFragment;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected abstract initView()V
.end method

.method protected isAttatched()Z
    .locals 0

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/display/util/BaseFragment;->applyTitle()V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings/display/util/BaseFragment;->onCustomizeActionBar(Landroid/app/ActionBar;)I

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/display/util/BaseFragment;->initView()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/util/BaseFragment;->mAppContext:Landroid/content/Context;

    .line 83
    iput-object p1, p0, Lcom/android/settings/display/util/BaseFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget p1, Lcom/android/settings/R$style;->Theme_DayNight_Settings_NoTitle:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method protected onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected abstract onCreateViewLayout()I
.end method

.method protected abstract onCustomizeActionBar(Landroid/app/ActionBar;)I
.end method

.method public onDetach()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/android/settings/display/util/BaseFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/display/util/BaseFragment;->onCreateViewLayout()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/util/BaseFragment;->mView:Landroid/view/View;

    .line 95
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/display/util/BaseFragment;->onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 96
    iget-object p0, p0, Lcom/android/settings/display/util/BaseFragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected onSetTitle()I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method
