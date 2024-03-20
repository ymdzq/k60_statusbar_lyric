.class public Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;
.super Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;
.source "SetUpMiuiSecurityChooseUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SetUpMiuiSecurityChooseUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetUpMiuiSecurityChooseUnlockFragment"
.end annotation


# instance fields
.field private mBackLayout:Landroid/widget/FrameLayout;

.field private mFooterLayout:Lcom/android/settings/SetupFooterLayout;

.field private mHeadMsg:Landroid/widget/TextView;

.field private mHeadTitle:Landroid/widget/TextView;

.field private mNextLayout:Landroid/widget/FrameLayout;

.field private mSkipButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 65
    const-class p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected inflateCustomizeView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 72
    invoke-virtual {p3}, Landroidx/appcompat/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p3}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 75
    :cond_0
    sget p3, Lcom/android/settings/R$layout;->setup_choose_unlock:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 76
    sget p3, Lcom/android/settings/R$id;->setup_footer_layout:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/settings/SetupFooterLayout;

    iput-object p3, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;->mFooterLayout:Lcom/android/settings/SetupFooterLayout;

    .line 77
    invoke-virtual {p3}, Lcom/android/settings/SetupFooterLayout;->getNextLayout()Landroid/widget/FrameLayout;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;->mNextLayout:Landroid/widget/FrameLayout;

    .line 78
    iget-object p3, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;->mFooterLayout:Lcom/android/settings/SetupFooterLayout;

    invoke-virtual {p3}, Lcom/android/settings/SetupFooterLayout;->getBackLayout()Landroid/widget/FrameLayout;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;->mBackLayout:Landroid/widget/FrameLayout;

    .line 79
    iget-object p3, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;->mFooterLayout:Lcom/android/settings/SetupFooterLayout;

    invoke-virtual {p3}, Lcom/android/settings/SetupFooterLayout;->getSkipButton()Landroid/widget/TextView;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;->mSkipButton:Landroid/widget/TextView;

    .line 80
    iget-object p3, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;->mFooterLayout:Lcom/android/settings/SetupFooterLayout;

    invoke-virtual {p3}, Lcom/android/settings/SetupFooterLayout;->setBackLayoutClickable()V

    .line 81
    iget-object p3, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;->mFooterLayout:Lcom/android/settings/SetupFooterLayout;

    invoke-virtual {p3}, Lcom/android/settings/SetupFooterLayout;->setNextLayoutClickable()V

    .line 82
    sget p3, Lcom/android/settings/R$id;->setup_choose_unlock_title:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;->mHeadTitle:Landroid/widget/TextView;

    .line 83
    sget p3, Lcom/android/settings/R$id;->setup_choose_unlock_msg:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;->mHeadMsg:Landroid/widget/TextView;

    .line 85
    iget-object p3, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;->mBackLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 86
    iget-object p3, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;->mNextLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 87
    iget-object p3, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;->mSkipButton:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_1

    .line 89
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 90
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 91
    instance-of p3, p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz p3, :cond_1

    .line 92
    check-cast p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 95
    :cond_1
    iget-object p2, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;->mBackLayout:Landroid/widget/FrameLayout;

    new-instance p3, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment$1;

    invoke-direct {p3, p0}, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment$1;-><init>(Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p2, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;->mSkipButton:Landroid/widget/TextView;

    new-instance p3, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment$2;

    invoke-direct {p3, p0}, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment$2;-><init>(Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method protected isInternalActivity()Z
    .locals 0

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$InternalActivity;

    return p0
.end method

.method protected isSetUp()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 119
    invoke-super {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->onResume()V

    .line 120
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mAddKeyguardpasswordThenAddFingerprint:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;->mHeadMsg:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->choose_unlock_fingerprint_msg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 123
    :cond_0
    iget-object p0, p0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$SetUpMiuiSecurityChooseUnlockFragment;->mSkipButton:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->setup_password_skip:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
