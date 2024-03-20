.class public Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment;
.super Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;
.source "ProvisionSetUpMiuiSecurityChooseUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProvisionSetUpMiuiSecurityChooseUnlockFragment"
.end annotation


# instance fields
.field private mBackLayout:Landroid/widget/TextView;

.field private mBtnClickListener:Landroid/view/View$OnClickListener;

.field private mGlobalBack:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;-><init>()V

    .line 136
    new-instance v0, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment$1;-><init>(Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment;)V

    iput-object v0, p0, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment;->mBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "ProvisionSetUpMiuiSecurityChooseUnlockFragment"

    return-object p0
.end method

.method protected inflateCustomizeView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 107
    invoke-virtual {p0}, Landroidx/appcompat/app/ActionBar;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 108
    invoke-virtual {p0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 110
    :cond_0
    sget p0, Lcom/android/settings/R$layout;->provision_setup_choose_unlock:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_1

    .line 112
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 113
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 114
    instance-of p2, p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz p2, :cond_1

    .line 115
    check-cast p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_1
    return-object p0
.end method

.method protected isInternalActivity()Z
    .locals 0

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$InternalActivity;

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

    .line 148
    invoke-super {p0, p1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 123
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/android/settings/R$id;->provision_back_btn:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment;->mBackLayout:Landroid/widget/TextView;

    .line 129
    iget-object p2, p0, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/android/settings/R$id;->provision_global_back_btn:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment;->mGlobalBack:Landroid/widget/ImageButton;

    .line 131
    iget-object p2, p0, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object p1, p0, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment;->mBackLayout:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$ProvisionSetUpMiuiSecurityChooseUnlockFragment;->mGlobalBack:Landroid/widget/ImageButton;

    invoke-static {p1, p2}, Lcom/android/settings/SetupFooterLayout;->updateViewVisibility(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$id;->provision_lyt_btn_next:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
