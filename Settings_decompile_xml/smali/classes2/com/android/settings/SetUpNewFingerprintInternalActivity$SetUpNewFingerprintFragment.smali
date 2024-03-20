.class public Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;
.super Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;
.source "SetUpNewFingerprintInternalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SetUpNewFingerprintInternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetUpNewFingerprintFragment"
.end annotation


# instance fields
.field private mBackImage:Landroid/widget/LinearLayout;

.field private mNext:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$_nMVb96tXbNDquMIVXgSKvo-h-U(Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;Landroid/content/Intent;IIJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;->lambda$launchConfirmOrChoose$0(Landroid/content/Intent;IIJ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;-><init>()V

    return-void
.end method

.method private isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 1

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "device_provisioned"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method private synthetic lambda$launchConfirmOrChoose$0(Landroid/content/Intent;IIJ)V
    .locals 0

    const-string p2, "challenge"

    .line 91
    invoke-virtual {p1, p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 p2, 0x64

    .line 92
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public doInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 120
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 124
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/BaseFragment;->doInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected isSetUp()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected launchConfirmOrChoose()V
    .locals 4

    .line 78
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->finish()V

    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$InternalActivity;

    goto :goto_0

    :cond_1
    const-class v0, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$InternalActivity;

    .line 86
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "has_challenge"

    const/4 v2, 0x1

    .line 87
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "add_keyguard_password_then_add_fingerprint"

    .line 88
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    new-instance v0, Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    new-instance v3, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/FingerprintHelper;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    if-ne p2, v0, :cond_1

    .line 103
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 106
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget p1, Lcom/android/settings/R$style;->Theme_Dark_Settings_NoTitle:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 72
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 73
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method protected onFingerprintAddCompleted()V
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;->mBackImage:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;->mNext:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v0

    .line 132
    sget v1, Lcom/android/settings/R$string;->add_fingerprint_success_msg:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 133
    iget-object v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/android/settings/R$string;->fingerprint_gxzw_add_fingerprint_finish:I

    invoke-static {v2, v0}, Lcom/android/settings/utils/FingerprintUtils;->generateFingerprintName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 134
    iget-object v3, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 139
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    .line 140
    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getFingerprintUnlockType(Landroid/content/Context;)I

    move-result v0

    .line 139
    invoke-static {p0, v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->setFingerprintUnlockType(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->onStart()V

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroidx/appcompat/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method

.method protected setupViews()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->new_fingerprint_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;->mBackImage:Landroid/widget/LinearLayout;

    .line 156
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->setup_new_fingerprint_top_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionTitle:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->setup_new_fingerprint_top_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionText:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->setup_new_fingerprint_instruction_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionImageView:Landroid/widget/ImageView;

    .line 159
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->setup_new_fingerprint_step_video:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MutedVideoView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStepVideoView:Lcom/android/settings/MutedVideoView;

    .line 160
    iget-object v0, p0, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;->mBackImage:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 161
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 162
    iget-object v1, p0, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;->mBackImage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->new_fingerprint_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;->mNext:Landroid/widget/TextView;

    const/4 v1, 0x4

    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;->mBackImage:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment$1;-><init>(Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;->mNext:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment$2;-><init>(Lcom/android/settings/SetUpNewFingerprintInternalActivity$SetUpNewFingerprintFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
