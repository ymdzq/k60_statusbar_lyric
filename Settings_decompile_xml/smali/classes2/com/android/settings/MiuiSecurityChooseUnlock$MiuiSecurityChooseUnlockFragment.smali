.class public Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;
.super Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.source "MiuiSecurityChooseUnlock.java"

# interfaces
.implements Lcom/android/settings/OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSecurityChooseUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiuiSecurityChooseUnlockFragment"
.end annotation


# instance fields
.field private callbak:Lcom/android/settings/FingerprintRemoveCallback;

.field private isDismiss:Z

.field private is_play:Z

.field private key:Ljava/lang/String;

.field protected mAddKeyguardpasswordThenAddFingerprint:Z

.field private mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

.field private mConformDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDialogShow:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableKeyguardPassword:Z

.field private final mFaceAndFingerprintDeletes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mFaceRemovalCallback:Lcom/android/settings/faceunlock/FaceRemoveCallback;

.field private mForgetPasswordAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mHintText:Landroid/widget/TextView;

.field private mIsReOnCreate:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mKidSpaceUserId:I

.field private mLoadingDialog:Landroid/app/ProgressDialog;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNavigationCenterView:Landroid/view/View;

.field private mNavigationLeftView:Landroid/view/View;

.field private mNavigationRightView:Landroid/view/View;

.field private mPasswordConfirmed:Z

.field private mRequestedMinComplexity:I

.field private mSecuritySpaceUserId:I

.field private mSetPasswordStarted:Z

.field private mTheBusinessKey:Ljava/lang/String;

.field private mTurnOffPassword:Landroid/widget/TextView;

.field private mUnlockSetPassword:Landroidx/preference/Preference;

.field private mUnlockSetPattern:Landroidx/preference/Preference;

.field private mUnlockSetPin:Landroidx/preference/Preference;

.field private mUnlockSetPinSummary:Ljava/lang/String;

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;

.field private mVisiblePatternBtn:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mVisiblePatternLayout:Landroid/widget/FrameLayout;

.field private mVisiblePatternTitle:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetisDismiss(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->isDismiss:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetis_play(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->is_play:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoadingDialog(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)Landroid/app/ProgressDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVisiblePatternBtn(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mVisiblePatternBtn:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisDismiss(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->isDismiss:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputis_play(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->is_play:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDialogShow(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mDialogShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLoadingDialog(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgoSetPassword(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->goSetPassword(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRemoveAllFingerprints(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->handleRemoveAllFingerprints()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSlidingButtonCheckedChanged(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->onSlidingButtonCheckedChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveBiometricResult(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->removeBiometricResult()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDialogToWaitTurnOffPassword(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->showDialogToWaitTurnOffPassword()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowNavigationDialog(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->showNavigationDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowTurnoffPasswordConfirmDialogAndFinish(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->showTurnoffPasswordConfirmDialogAndFinish()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mturnoffPassword(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->turnoffPassword()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 120
    invoke-direct {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;-><init>()V

    .line 128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mFaceAndFingerprintDeletes:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mEnableKeyguardPassword:Z

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mTheBusinessKey:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->key:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mForgetPasswordAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 157
    iput-boolean v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    .line 158
    iput-boolean v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mSetPasswordStarted:Z

    .line 159
    iput-boolean v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->isDismiss:Z

    .line 162
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    .line 164
    iput-boolean v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mAddKeyguardpasswordThenAddFingerprint:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mDialogShow:Z

    .line 930
    new-instance v0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$13;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$13;-><init>(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->callbak:Lcom/android/settings/FingerprintRemoveCallback;

    .line 1002
    new-instance v0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$15;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$15;-><init>(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mFaceRemovalCallback:Lcom/android/settings/faceunlock/FaceRemoveCallback;

    return-void
.end method

.method private disableUnusablePreferences()V
    .locals 5

    .line 843
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lockscreen.password_type"

    const/4 v2, -0x1

    .line 844
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "minimum_quality"

    .line 846
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 848
    :cond_0
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    iget v3, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    iget v4, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mRequestedMinComplexity:I

    invoke-virtual {v2, v1, p0, v3, v4}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->upgradeQuality(ILcom/android/settings/KeyguardSettingsPreferenceFragment;II)I

    move-result v1

    const-string v2, "hide_disabled_prefs"

    const/4 v3, 0x0

    .line 849
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 851
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->disableUnusablePreferences(IZ)V

    return-void
.end method

.method private goSetPassword(Ljava/lang/String;)V
    .locals 14

    const-string/jumbo v0, "unlock_set_pattern"

    .line 758
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    const/high16 v1, 0x10000

    iget-boolean v3, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    iget-object v4, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    .line 761
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->isSetUp()Z

    move-result v6

    move-object v2, p0

    .line 760
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startActivityToSetPassword(ILcom/android/settings/KeyguardSettingsPreferenceFragment;ZLjava/lang/String;IZ)V

    goto/16 :goto_0

    .line 763
    :cond_0
    iget-object v7, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    const/16 v9, 0xca

    iget-boolean v10, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    iget-object v11, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    iget v12, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->isSetUp()Z

    move-result v13

    move-object v8, p0

    invoke-virtual/range {v7 .. v13}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startFragmentToSetPattern(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IZLjava/lang/String;IZ)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "unlock_set_pin"

    .line 765
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 766
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_2

    .line 767
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    const/high16 v1, 0x20000

    iget-boolean v3, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    iget-object v4, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    .line 768
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->isSetUp()Z

    move-result v6

    move-object v2, p0

    .line 767
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startActivityToSetPassword(ILcom/android/settings/KeyguardSettingsPreferenceFragment;ZLjava/lang/String;IZ)V

    goto :goto_0

    .line 770
    :cond_2
    iget-object v7, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    const/16 v9, 0xca

    iget-boolean v10, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    iget-object v11, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    iget v12, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->isSetUp()Z

    move-result v13

    move-object v8, p0

    invoke-virtual/range {v7 .. v13}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startFragmentToSetNumericPassword(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IZLjava/lang/String;IZ)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "unlock_set_password"

    .line 772
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 773
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_4

    .line 774
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    const/high16 v1, 0x40000

    iget-boolean v3, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    iget-object v4, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    .line 775
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->isSetUp()Z

    move-result v6

    move-object v2, p0

    .line 774
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startActivityToSetPassword(ILcom/android/settings/KeyguardSettingsPreferenceFragment;ZLjava/lang/String;IZ)V

    goto :goto_0

    .line 777
    :cond_4
    iget-object v7, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    const/16 v9, 0xca

    iget-boolean v10, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    iget-object v11, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    iget v12, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->isSetUp()Z

    move-result v13

    move-object v8, p0

    invoke-virtual/range {v7 .. v13}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startFragmentToSetMixedPassword(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IZLjava/lang/String;IZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method private handleRemoveAllFingerprints()V
    .locals 4

    .line 965
    new-instance v0, Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    .line 966
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v1

    .line 967
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result v2

    if-eqz v1, :cond_1

    .line 968
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    .line 971
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 972
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->callbak:Lcom/android/settings/FingerprintRemoveCallback;

    invoke-virtual {v0, p0}, Lcom/android/settings/FingerprintHelper;->removeAllFingerprint(Lcom/android/settings/FingerprintRemoveCallback;)V

    goto :goto_1

    .line 969
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->removeBiometricResult()V

    :cond_2
    :goto_1
    return-void
.end method

.method private isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 1

    .line 561
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

.method private isKidSpace()Z
    .locals 1

    .line 565
    iget v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mKidSpaceUserId:I

    iget p0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onSlidingButtonCheckedChanged(Z)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mVisiblePatternBtn:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 348
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    return-void
.end method

.method private removeBiometricResult()V
    .locals 2

    .line 1017
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mFaceAndFingerprintDeletes:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mFaceAndFingerprintDeletes:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1020
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method private showConfirmDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)V
    .locals 2

    .line 1025
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355    # @android:attr/alertDialogIcon

    .line 1026
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->turn_off_keyguard_password_alert_title:I

    .line 1027
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1028
    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x104000a    # @android:string/ok

    .line 1029
    invoke-virtual {p2, v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/high16 v0, 0x1040000    # @android:string/cancel

    .line 1030
    invoke-virtual {p2, v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 1031
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mConformDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 1032
    new-instance p2, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$16;

    invoke-direct {p2, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$16;-><init>(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1041
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mConformDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showDialogToWaitTurnOffPassword()V
    .locals 4

    .line 946
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 947
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 948
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->turn_off_keyguard_password_wait_dialog:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 950
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 951
    new-instance v1, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$14;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$14;-><init>(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showForgetPasswordAlertDialog(Ljava/lang/String;)Lmiuix/appcompat/app/AlertDialog;
    .locals 9

    .line 783
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 784
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x1010355    # @android:attr/alertDialogIcon

    .line 785
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 786
    sget v2, Lcom/android/settings/R$string;->turn_on_keyguard_password_alert_forget_title:I

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 787
    sget v2, Lcom/android/settings/R$string;->turn_on_keyguard_password_alert_forget_content:I

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 788
    sget v2, Lcom/android/settings/R$string;->turn_on_keyguard_password_alert_foget_ok:I

    new-instance v3, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$9;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$9;-><init>(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 809
    sget p1, Lcom/android/settings/R$string;->turn_on_keyguard_password_alert_foget_cacel:I

    new-instance v2, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$10;

    invoke-direct {v2, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$10;-><init>(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)V

    invoke-virtual {v0, p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 816
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 817
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 v0, -0x1

    .line 818
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    .line 819
    invoke-virtual {v8, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 820
    new-instance v0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$11;

    const-wide/16 v4, 0x1388

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$11;-><init>(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;JJLandroid/widget/Button;)V

    .line 837
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method private showNavigationDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 352
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mDialogShow:Z

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 357
    sget v1, Lcom/android/settings/R$layout;->navigation_guide_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 358
    sget v1, Lcom/android/settings/R$id;->lottie_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 359
    sget v2, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 360
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    invoke-virtual {v1, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 362
    new-instance p2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 363
    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 364
    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 365
    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 366
    new-instance p2, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$7;

    invoke-direct {p2, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$7;-><init>(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)V

    .line 373
    sget p3, Lcom/android/settings/R$string;->guide_button_text:I

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p3, p2}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 375
    new-instance p2, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$8;

    invoke-direct {p2, p0, v1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$8;-><init>(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 383
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 384
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    .line 385
    iput-boolean p1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mDialogShow:Z

    :cond_0
    return-void
.end method

.method private showTurnoffPasswordConfirmDialogAndFinish()V
    .locals 4

    .line 900
    new-instance v0, Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    .line 901
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    .line 902
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result v0

    .line 903
    new-instance v1, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$12;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$12;-><init>(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)V

    .line 917
    sget v2, Lcom/android/settings/R$string;->turn_off_keyguard_password_confirm_msg:I

    .line 918
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 919
    sget v2, Lcom/android/settings/R$string;->turn_off_keyguard_password_with_fingerprint_face_confirm_msg:I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 922
    sget v2, Lcom/android/settings/R$string;->turn_off_keyguard_password_with_fingerprint_confirm_msg:I

    goto :goto_0

    .line 924
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 925
    sget v2, Lcom/android/settings/R$string;->turn_off_keyguard_password_with_face_confirm_msg:I

    .line 927
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->showConfirmDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method private turnoffPassword()V
    .locals 4

    .line 977
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->hasEnrolledFaces(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 979
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->removeBiometricResult()V

    goto :goto_0

    .line 981
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    move-result-object v0

    const-string v1, "0"

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mFaceRemovalCallback:Lcom/android/settings/faceunlock/FaceRemoveCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->deleteFeature(Ljava/lang/String;Lcom/android/settings/faceunlock/FaceRemoveCallback;)V

    .line 983
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/compat/LockPatternUtilsCompat;->clearLock(Lcom/android/internal/widget/LockPatternUtils;IZLjava/lang/String;)V

    .line 984
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 985
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/compat/LockPatternUtilsCompat;->setSeparateProfileChallengeEnabled(Lcom/android/internal/widget/LockPatternUtils;IZLjava/lang/String;)V

    .line 987
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "new_numeric_password_type"

    .line 988
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 987
    invoke-static {v0, v1, v3, v2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 990
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 991
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.keyguard.bluetoothdeviceunlock.disable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 993
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vpn_password_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 999
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/safetycenter/LockScreenSafetySource;->onLockScreenChange(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected disableSpringBack()V
    .locals 1

    .line 750
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    .line 751
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 752
    instance-of v0, p0, Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 753
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected disableUnusablePreferences(IZ)V
    .locals 10

    .line 855
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    .line 857
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    invoke-static {v1, v3}, Lcom/android/settings/compat/RestrictedLockUtilsCompat;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 858
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_c

    .line 859
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v5

    .line 860
    instance-of v6, v5, Lcom/android/settings/KeyguardRestrictedPreference;

    if-eqz v6, :cond_b

    .line 861
    invoke-virtual {v5}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "unlock_set_pattern"

    .line 865
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    const/high16 v6, 0x10000

    if-gt p1, v6, :cond_0

    move v7, v4

    goto :goto_1

    :cond_0
    move v7, v8

    :goto_1
    if-le v0, v6, :cond_6

    :goto_2
    move v6, v4

    goto :goto_5

    :cond_1
    const-string/jumbo v7, "unlock_set_pin"

    .line 869
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/high16 v6, 0x30000

    if-gt p1, v6, :cond_2

    move v7, v4

    goto :goto_3

    :cond_2
    move v7, v8

    :goto_3
    if-le v0, v6, :cond_6

    goto :goto_2

    :cond_3
    const-string/jumbo v7, "unlock_set_password"

    .line 873
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/high16 v6, 0x60000

    if-gt p1, v6, :cond_4

    move v7, v4

    goto :goto_4

    :cond_4
    move v7, v8

    :goto_4
    if-le v0, v6, :cond_6

    goto :goto_2

    :cond_5
    move v7, v4

    :cond_6
    move v6, v8

    :goto_5
    if-eqz p2, :cond_7

    move v9, v7

    goto :goto_6

    :cond_7
    move v9, v4

    :goto_6
    if-nez v9, :cond_8

    .line 882
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_7

    :cond_8
    if-eqz v6, :cond_9

    if-eqz v1, :cond_9

    .line 884
    check-cast v5, Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-virtual {v5, v1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_7

    :cond_9
    if-nez v7, :cond_a

    .line 889
    move-object v6, v5

    check-cast v6, Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-virtual {v6, v2}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 891
    invoke-virtual {v5, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_7

    .line 893
    :cond_a
    check-cast v5, Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-virtual {v5, v2}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_b
    :goto_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_c
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 182
    const-class p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected inflateCustomizeView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 32

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 187
    sget v0, Lcom/android/settings/R$layout;->choose_lock:I

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 188
    sget v0, Lcom/android/settings/R$id;->lock_pin:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 189
    sget v0, Lcom/android/settings/R$id;->lock_none:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 191
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/MiuiSecurityChooseUnlock;->IS_FOLD:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, v9

    move-object/from16 v24, v10

    move-object/from16 v23, v11

    goto/16 :goto_8

    .line 193
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/settings/MiuiSecurityChooseUnlock;->IS_FOLD:Z

    if-eqz v0, :cond_2

    const-string v1, "light_left.json"

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "tablet-left.json"

    :goto_1
    move-object v5, v1

    if-eqz v0, :cond_3

    const-string v1, "light_center.json"

    goto :goto_2

    :cond_3
    const-string/jumbo v1, "tablet-center.json"

    :goto_2
    move-object v15, v1

    if-eqz v0, :cond_4

    const-string v1, "light_right.json"

    goto :goto_3

    :cond_4
    const-string/jumbo v1, "tablet-right.json"

    :goto_3
    move-object/from16 v16, v1

    if-eqz v0, :cond_5

    const-string v1, "dark-left.json"

    goto :goto_4

    :cond_5
    const-string/jumbo v1, "tablet-left-dark.json"

    :goto_4
    move-object v4, v1

    if-eqz v0, :cond_6

    const-string v1, "dark-center.json"

    goto :goto_5

    :cond_6
    const-string/jumbo v1, "tablet-center-dark.json"

    :goto_5
    move-object/from16 v17, v1

    if-eqz v0, :cond_7

    const-string v0, "dark-right.json"

    goto :goto_6

    :cond_7
    const-string/jumbo v0, "tablet-right-dark.json"

    :goto_6
    move-object/from16 v18, v0

    .line 200
    sget v0, Lcom/android/settings/R$id;->navigation_guide_left:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationLeftView:Landroid/view/View;

    .line 201
    sget v0, Lcom/android/settings/R$id;->navigation_guide_center:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationCenterView:Landroid/view/View;

    .line 202
    sget v0, Lcom/android/settings/R$id;->navigation_guide_right:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationRightView:Landroid/view/View;

    .line 204
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->guide_title_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->guide_title_center:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 206
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v12, Lcom/android/settings/R$string;->guide_title_right:I

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 207
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v14, Lcom/android/settings/R$string;->guide_text_left:I

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v13, "\n"

    const-string v8, ""

    invoke-virtual {v0, v13, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 208
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lcom/android/settings/R$string;->guide_text_center:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 209
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-object/from16 v23, v11

    sget v11, Lcom/android/settings/R$string;->guide_text_right:I

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 210
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationLeftView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v13, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationCenterView:Landroid/view/View;

    if-eqz v13, :cond_b

    iget-object v13, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationRightView:Landroid/view/View;

    if-eqz v13, :cond_b

    .line 211
    sget v13, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object/from16 v24, v10

    .line 212
    iget-object v10, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationCenterView:Landroid/view/View;

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    move-object/from16 v25, v8

    .line 213
    iget-object v8, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationRightView:Landroid/view/View;

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 215
    iget-object v13, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationLeftView:Landroid/view/View;

    move-object/from16 v26, v15

    sget v15, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v27, v5

    .line 216
    iget-object v5, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationCenterView:Landroid/view/View;

    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v28, v4

    .line 217
    iget-object v4, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationRightView:Landroid/view/View;

    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 218
    iget-object v15, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationLeftView:Landroid/view/View;

    move-object/from16 v29, v2

    sget v2, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v30, v9

    .line 219
    iget-object v9, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationCenterView:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move/from16 v31, v11

    .line 220
    iget-object v11, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationRightView:Landroid/view/View;

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v0, :cond_8

    if-eqz v10, :cond_8

    if-eqz v8, :cond_8

    .line 222
    sget v11, Lcom/android/settings/R$drawable;->left_guide:I

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    sget v0, Lcom/android/settings/R$drawable;->center_guide:I

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    sget v0, Lcom/android/settings/R$drawable;->right_guide:I

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    if-eqz v13, :cond_9

    if-eqz v5, :cond_9

    if-eqz v4, :cond_9

    .line 228
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(I)V

    .line 229
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    .line 230
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    if-eqz v15, :cond_a

    if-eqz v9, :cond_a

    if-eqz v2, :cond_a

    .line 233
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(I)V

    .line 234
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(I)V

    move/from16 v0, v31

    .line 235
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 238
    :cond_a
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationLeftView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationCenterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationRightView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    sget v0, Lcom/android/settings/R$id;->split_line:I

    move-object/from16 v7, v30

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    sget v0, Lcom/android/settings/R$id;->navigation_settings:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 245
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    :cond_b
    move-object/from16 v29, v2

    move-object/from16 v28, v4

    move-object/from16 v27, v5

    move-object/from16 v25, v8

    move-object v7, v9

    move-object/from16 v24, v10

    move-object/from16 v26, v15

    const/4 v1, 0x0

    .line 248
    :goto_7
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationLeftView:Landroid/view/View;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v2, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v3, v2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/ITouchStyle;->clearTintColor()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const v2, 0x3da3d70a    # 0.08f

    const/4 v4, 0x0

    .line 249
    invoke-interface {v0, v2, v4, v4, v4}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v5, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationLeftView:Landroid/view/View;

    new-array v8, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v5, v8}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 251
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationCenterView:Landroid/view/View;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v5, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v3, v5}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/ITouchStyle;->clearTintColor()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    .line 252
    invoke-interface {v0, v2, v4, v4, v4}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v5, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationCenterView:Landroid/view/View;

    new-array v8, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v5, v8}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 254
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationRightView:Landroid/view/View;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v5, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v3, v5}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/ITouchStyle;->clearTintColor()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    .line 255
    invoke-interface {v0, v2, v4, v4, v4}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v2, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationRightView:Landroid/view/View;

    new-array v3, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v2, v3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 258
    iget-object v8, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationLeftView:Landroid/view/View;

    new-instance v9, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$1;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move-object/from16 v3, v21

    move-object/from16 v4, v28

    move-object/from16 v5, v27

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$1;-><init>(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v8, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationCenterView:Landroid/view/View;

    new-instance v9, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$2;

    move-object v0, v9

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    move-object/from16 v4, v17

    move-object/from16 v5, v26

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$2;-><init>(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v8, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationRightView:Landroid/view/View;

    new-instance v9, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$3;

    move-object v0, v9

    move-object/from16 v2, v20

    move-object/from16 v3, v25

    move-object/from16 v4, v18

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$3;-><init>(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_8
    const/16 v0, 0x8

    move-object/from16 v1, v24

    .line 304
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v1, v23

    .line 305
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_c

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 308
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 309
    instance-of v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz v1, :cond_c

    .line 310
    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 313
    :cond_c
    sget v0, Lcom/android/settings/R$id;->hint_text:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mHintText:Landroid/widget/TextView;

    .line 314
    sget v0, Lcom/android/settings/R$id;->turn_off_password:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mTurnOffPassword:Landroid/widget/TextView;

    .line 315
    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v3, v2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/ITouchStyle;->clearTintColor()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const v2, 0x3da3d70a    # 0.08f

    const/4 v3, 0x0

    .line 316
    invoke-interface {v0, v2, v3, v3, v3}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v2, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mTurnOffPassword:Landroid/widget/TextView;

    new-array v3, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v2, v3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 318
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mTurnOffPassword:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$4;

    invoke-direct {v1, v6}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$4;-><init>(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    sget v0, Lcom/android/settings/R$id;->visible_pattern_layout:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mVisiblePatternLayout:Landroid/widget/FrameLayout;

    .line 325
    sget v0, Lcom/android/settings/R$id;->visible_pattern_title:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mVisiblePatternTitle:Landroid/widget/TextView;

    .line 326
    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v3, v2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/ITouchStyle;->clearTintColor()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const v2, 0x3da3d70a    # 0.08f

    const/4 v3, 0x0

    .line 327
    invoke-interface {v0, v2, v3, v3, v3}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v2, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mVisiblePatternTitle:Landroid/widget/TextView;

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v2, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 328
    sget v0, Lcom/android/settings/R$id;->visible_pattern_button:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mVisiblePatternBtn:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 329
    iget-object v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 330
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mVisiblePatternTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$5;

    invoke-direct {v1, v6}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$5;-><init>(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mVisiblePatternBtn:Lmiuix/slidingwidget/widget/SlidingButton;

    new-instance v1, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$6;

    invoke-direct {v1, v6}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$6;-><init>(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v7
.end method

.method protected isInternalActivity()Z
    .locals 0

    .line 740
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$InternalActivity;

    return p0
.end method

.method protected isSetUp()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1046
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xc9

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 1050
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->isInternalActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, v2

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1051
    iput-boolean v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mSetPasswordStarted:Z

    .line 1052
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_3

    :cond_1
    const/16 v0, 0xca

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne p1, v0, :cond_6

    if-ne p2, v4, :cond_4

    .line 1055
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mTheBusinessKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1056
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mTheBusinessKey:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1058
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->isInternalActivity()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p3, v2

    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1059
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_2

    .line 1060
    :cond_4
    iget p1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mSecuritySpaceUserId:I

    const/16 p2, -0x2710

    if-eq p1, p2, :cond_5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iget p2, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mSecuritySpaceUserId:I

    if-ne p1, p2, :cond_5

    .line 1061
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 1063
    :cond_5
    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mSetPasswordStarted:Z

    goto :goto_3

    :cond_6
    const/16 v0, 0x6b

    if-ne p1, v0, :cond_8

    if-eq p2, v4, :cond_7

    .line 1066
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_3

    .line 1068
    :cond_7
    iput-boolean v3, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    if-eqz p3, :cond_a

    const-string/jumbo p1, "password"

    .line 1070
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    goto :goto_3

    :cond_8
    const/16 v0, 0x328

    if-ne p1, v0, :cond_a

    if-eq p2, v4, :cond_9

    .line 1075
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_3

    :cond_9
    const-string p1, "key"

    .line 1077
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->key:Ljava/lang/String;

    .line 1078
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->goSetPassword(Ljava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 677
    sget-boolean v0, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 679
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 680
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    .line 391
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 392
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    move v1, v7

    goto :goto_0

    :cond_0
    move v1, v8

    .line 393
    :goto_0
    iput-boolean v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mIsReOnCreate:Z

    .line 394
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 395
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "keyguard_guide_is_play"

    invoke-static {v2, v3, v8, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v7, :cond_1

    move v2, v7

    goto :goto_1

    :cond_1
    move v2, v8

    :goto_1
    iput-boolean v2, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->is_play:Z

    .line 399
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "add_keyguard_password_then_add_fingerprint"

    .line 398
    invoke-static {v1, v2, v3}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getBooolExtra(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mAddKeyguardpasswordThenAddFingerprint:Z

    .line 400
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-boolean v4, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mAddKeyguardpasswordThenAddFingerprint:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "device_policy"

    .line 402
    invoke-virtual {v6, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 403
    new-instance v2, Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/MiuiChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "second_user_id"

    const/16 v4, -0x2710

    invoke-static {v2, v3, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mSecuritySpaceUserId:I

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kid_user_id"

    invoke-static {v2, v3, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mKidSpaceUserId:I

    .line 408
    iget-object v2, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getUserId(Landroid/os/Bundle;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/Activity;)I

    move-result v1

    iput v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    .line 409
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "user_id_to_set_password"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 412
    iput v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    :cond_2
    if-eqz v0, :cond_3

    const-string/jumbo v1, "password_confirmed"

    .line 416
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    const-string/jumbo v1, "set_password_started"

    .line 417
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mSetPasswordStarted:Z

    const-string/jumbo v1, "user_password"

    .line 418
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    .line 422
    :cond_3
    iget v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mSecuritySpaceUserId:I

    const/high16 v9, 0x60000

    const/high16 v10, 0x50000

    const/high16 v11, 0x40000

    const/high16 v12, 0x20000

    if-eq v0, v4, :cond_d

    .line 423
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mSecuritySpaceUserId:I

    if-ne v0, v1, :cond_d

    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    .line 424
    invoke-virtual {v0}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 425
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v13

    .line 426
    iget-boolean v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mSetPasswordStarted:Z

    if-nez v0, :cond_c

    const/high16 v0, 0x10000

    if-ne v13, v0, :cond_5

    .line 428
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_4

    .line 429
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    const/high16 v1, 0x10000

    iget-boolean v3, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    iget-object v4, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    iget v5, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    move-object/from16 v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startActivityToSetPassword(ILcom/android/settings/KeyguardSettingsPreferenceFragment;ZLjava/lang/String;I)V

    goto/16 :goto_3

    .line 432
    :cond_4
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    const/16 v2, 0xca

    iget-boolean v3, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    iget-object v4, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    iget v5, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startFragmentToSetPattern(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IZLjava/lang/String;I)V

    goto :goto_3

    :cond_5
    if-eq v13, v12, :cond_9

    const/high16 v0, 0x30000

    if-ne v13, v0, :cond_6

    goto :goto_2

    :cond_6
    if-eq v13, v11, :cond_7

    if-eq v13, v10, :cond_7

    if-ne v13, v9, :cond_b

    .line 445
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_8

    .line 446
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    const/high16 v1, 0x40000

    iget-boolean v3, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    iget-object v4, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    iget v5, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    move-object/from16 v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startActivityToSetPassword(ILcom/android/settings/KeyguardSettingsPreferenceFragment;ZLjava/lang/String;I)V

    goto :goto_3

    .line 449
    :cond_8
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    const/16 v2, 0xca

    iget-boolean v3, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    iget-object v4, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    iget v5, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startFragmentToSetMixedPassword(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IZLjava/lang/String;I)V

    goto :goto_3

    .line 436
    :cond_9
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_a

    .line 437
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    const/high16 v1, 0x20000

    iget-boolean v3, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    iget-object v4, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    iget v5, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    move-object/from16 v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startActivityToSetPassword(ILcom/android/settings/KeyguardSettingsPreferenceFragment;ZLjava/lang/String;I)V

    goto :goto_3

    .line 440
    :cond_a
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    const/16 v2, 0xca

    iget-boolean v3, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    iget-object v4, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    iget v5, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startFragmentToSetNumericPassword(Lcom/android/settings/KeyguardSettingsPreferenceFragment;IZLjava/lang/String;I)V

    .line 452
    :cond_b
    :goto_3
    iput-boolean v7, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mSetPasswordStarted:Z

    goto/16 :goto_8

    .line 454
    :cond_c
    sget-object v0, Lcom/android/settings/MiuiSecurityChooseUnlock;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "skip set password for security space"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_8

    .line 460
    :cond_d
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v13

    .line 461
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    .line 462
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    .line 463
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_4

    :cond_e
    move v0, v8

    goto :goto_5

    :cond_f
    :goto_4
    move v0, v7

    .line 465
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    .line 466
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_10

    move v1, v7

    goto :goto_6

    :cond_10
    move v1, v8

    :goto_6
    if-eqz v1, :cond_11

    if-nez v0, :cond_11

    move v0, v7

    goto :goto_7

    :cond_11
    move v0, v8

    :goto_7
    if-nez v0, :cond_14

    .line 469
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz v13, :cond_15

    .line 471
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    iget v2, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    const/16 v4, 0x6b

    sget v1, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_generic_profile:I

    .line 473
    invoke-virtual {v6, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p0

    move v3, v13

    .line 471
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->launchConfirmationActivity(Landroidx/fragment/app/Fragment;IIILjava/lang/String;)Z

    goto :goto_8

    .line 475
    :cond_12
    iget-boolean v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    if-nez v0, :cond_15

    .line 476
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    .line 477
    iget-object v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v13

    if-eqz v13, :cond_13

    .line 478
    iget-boolean v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mIsReOnCreate:Z

    if-nez v0, :cond_13

    .line 479
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    const/16 v1, 0x6b

    invoke-virtual {v0, v6, v13, v1}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->launchConfirmFragment(Lcom/android/settings/KeyguardSettingsPreferenceFragment;II)V

    goto :goto_8

    .line 482
    :cond_13
    iput-boolean v7, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    goto :goto_8

    .line 486
    :cond_14
    iput-boolean v7, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    .line 489
    :cond_15
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "common_password_business_key"

    .line 490
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mTheBusinessKey:Ljava/lang/String;

    const-string/jumbo v1, "set_keyguard_password"

    .line 491
    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mEnableKeyguardPassword:Z

    .line 493
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "requested_min_complexity"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    .line 496
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordComplexity(I)I

    move-result v1

    .line 493
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mRequestedMinComplexity:I

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->isSetUp()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 499
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 500
    sget v0, Lcom/android/settings/R$xml;->miui_setup_security_settings_picker:I

    invoke-virtual {v6, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    goto :goto_9

    .line 502
    :cond_16
    sget v0, Lcom/android/settings/R$xml;->miui_provision_setup_security_settings_picker:I

    invoke-virtual {v6, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    goto :goto_9

    .line 505
    :cond_17
    sget v0, Lcom/android/settings/R$xml;->security_settings_picker:I

    invoke-virtual {v6, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    :goto_9
    const-string/jumbo v0, "unlock_set_pattern"

    .line 508
    invoke-virtual {v6, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUnlockSetPattern:Landroidx/preference/Preference;

    const-string/jumbo v1, "unlock_set_pin"

    .line 509
    invoke-virtual {v6, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUnlockSetPin:Landroidx/preference/Preference;

    const-string/jumbo v1, "unlock_set_password"

    .line 510
    invoke-virtual {v6, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUnlockSetPassword:Landroidx/preference/Preference;

    .line 512
    iget-object v2, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v11, v13, :cond_19

    if-eq v10, v13, :cond_19

    if-ne v9, v13, :cond_18

    goto :goto_a

    :cond_18
    move v3, v8

    goto :goto_b

    :cond_19
    :goto_a
    move v3, v7

    .line 516
    :goto_b
    new-instance v4, Lcom/android/settings/PasswordMetricsWrapper;

    invoke-direct {v4}, Lcom/android/settings/PasswordMetricsWrapper;-><init>()V

    const-string v14, ""

    .line 517
    iget v15, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mRequestedMinComplexity:I

    const/high16 v16, 0x20000

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-instance v5, Landroid/security/MiuiLockPatternUtils;

    .line 518
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iget v9, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    xor-int/lit8 v21, v3, 0x1

    move-object v13, v4

    move-object/from16 v19, v5

    move/from16 v20, v9

    .line 517
    invoke-virtual/range {v13 .. v21}, Lcom/android/settings/PasswordMetricsWrapper;->updatePasswordMetrics(Ljava/lang/String;IIZZLcom/android/internal/widget/LockPatternUtils;IZ)V

    .line 519
    invoke-virtual {v4}, Lcom/android/settings/PasswordMetricsWrapper;->getMinLength()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 520
    iget-object v3, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v12}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v3

    .line 521
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->unlock_set_unlock_pin_summary:I

    .line 522
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 521
    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUnlockSetPinSummary:Ljava/lang/String;

    .line 523
    iget-object v3, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUnlockSetPin:Landroidx/preference/Preference;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "lockscreen.biometric_weak_fallback"

    .line 526
    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "unlock_set_biometric_weak"

    if-eqz v2, :cond_1a

    .line 530
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v6, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 531
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v6, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_c

    .line 533
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "skip_pattern_unlock"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 534
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v6, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 537
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v6, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 540
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isMaintenanceMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->isKidSpace()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 541
    invoke-virtual {v6, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 542
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v6, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 544
    :cond_1d
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUnlockSetPattern:Landroidx/preference/Preference;

    if-eqz v0, :cond_1e

    .line 545
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUnlockSetPattern:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 547
    :cond_1e
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUnlockSetPin:Landroidx/preference/Preference;

    if-eqz v0, :cond_1f

    .line 548
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUnlockSetPin:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 550
    :cond_1f
    iget-object v0, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUnlockSetPassword:Landroidx/preference/Preference;

    if-eqz v0, :cond_20

    .line 551
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, v6, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUnlockSetPassword:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_20
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 660
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mTheBusinessKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mTheBusinessKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 663
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mEnableKeyguardPassword:Z

    if-nez v0, :cond_1

    .line 664
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 665
    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setKeyguardPasswordQuality(I)V

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mTurnOffPassword:Landroid/widget/TextView;

    filled-new-array {v0}, [Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 668
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mVisiblePatternTitle:Landroid/widget/TextView;

    filled-new-array {v0}, [Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 669
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationLeftView:Landroid/view/View;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 670
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationCenterView:Landroid/view/View;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 671
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mNavigationRightView:Landroid/view/View;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 672
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onFragmentResult(ILandroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    const-string/jumbo v2, "miui_security_fragment_result"

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 1087
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const/16 v5, 0xca

    if-ne p1, v5, :cond_3

    .line 1089
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 1091
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_1

    .line 1093
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    if-eqz v4, :cond_2

    move v1, v3

    .line 1095
    :cond_2
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1096
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    .line 1097
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetRequestCode()I

    move-result p0

    invoke-static {p2, p0, p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->onFragmentResult(Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    const/16 v1, 0x6b

    if-ne p1, v1, :cond_5

    if-nez v4, :cond_4

    .line 1100
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_1

    .line 1102
    :cond_4
    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    const-string/jumbo p1, "password"

    const-string v0, ""

    .line 1103
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    :cond_5
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 689
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 690
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mForgetPasswordAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 692
    iput-object v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mForgetPasswordAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 696
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 697
    iput-object v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 701
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 702
    iput-object v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 705
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mConformDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 706
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 707
    iput-object v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mConformDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_3
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 9

    .line 716
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 718
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo p2, "unlock_set_pattern"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo p2, "unlock_set_biometric_weak"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string/jumbo p2, "unlock_set_password"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    :sswitch_3
    const-string/jumbo p2, "unlock_set_pin"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 720
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    const v4, 0x8000

    iget-boolean v6, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    iget-object v7, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    iget v8, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    move-object v5, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->startActivityToSetPassword(ILcom/android/settings/KeyguardSettingsPreferenceFragment;ZLjava/lang/String;I)V

    goto :goto_1

    .line 725
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/MiuiSecuritySettings;->isMiShowMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 726
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->mishow_disable_password_setting:I

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    goto :goto_1

    .line 727
    :cond_4
    iget-object p2, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mForgetPasswordAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_6

    .line 728
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->showForgetPasswordAlertDialog(Ljava/lang/String;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mForgetPasswordAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_6
    :goto_1
    move v0, v1

    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x75461c3 -> :sswitch_3
        0x27e176f3 -> :sswitch_2
        0x3ddd18f7 -> :sswitch_1
        0x53ec4438 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 6

    .line 570
    invoke-super {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onResume()V

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->isSetUp()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_a

    .line 572
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->disableUnusablePreferences()V

    .line 573
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 574
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v2

    .line 575
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserId:I

    invoke-virtual {v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v3

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 577
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mTurnOffPassword:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v3, "show_add_fingerprint_hint"

    .line 578
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 579
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isMaintenanceMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mHintText:Landroid/widget/TextView;

    sget v3, Lcom/android/settings/R$string;->forbidden_set_unlock_password_msg:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 581
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->isKidSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mHintText:Landroid/widget/TextView;

    sget v3, Lcom/android/settings/R$string;->kid_space_forbidden_set_unlock_password_msg:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mHintText:Landroid/widget/TextView;

    sget v3, Lcom/android/settings/R$string;->choose_unlock_fingerprint_msg:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const-string v3, "add_keyguard_password_then_add_face_recoginition"

    .line 586
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 588
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mHintText:Landroid/widget/TextView;

    sget v3, Lcom/android/settings/R$string;->choose_unlock_face_msg:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 590
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    if-lez v3, :cond_5

    .line 593
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mTurnOffPassword:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 596
    :cond_5
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mTurnOffPassword:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const/high16 v0, 0x10000

    if-ne v2, v0, :cond_6

    .line 601
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mChooseLockSettingsHelper:Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 602
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mVisiblePatternLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 603
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mVisiblePatternBtn:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    invoke-virtual {v3, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    goto :goto_1

    .line 605
    :cond_6
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mVisiblePatternLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 609
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUnlockSetPattern:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/KeyguardRestrictedPreference;->setSelected(Z)V

    .line 610
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUnlockSetPin:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/KeyguardRestrictedPreference;->setSelected(Z)V

    .line 611
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUnlockSetPin:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/settings/KeyguardRestrictedPreference;

    iget-object v3, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUnlockSetPinSummary:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUnlockSetPassword:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/KeyguardRestrictedPreference;->setSelected(Z)V

    const/4 v1, 0x1

    if-eq v2, v0, :cond_9

    const/high16 v0, 0x20000

    if-eq v2, v0, :cond_8

    const/high16 v0, 0x30000

    if-eq v2, v0, :cond_8

    const/high16 v0, 0x40000

    if-eq v2, v0, :cond_7

    const/high16 v0, 0x50000

    if-eq v2, v0, :cond_7

    const/high16 v0, 0x60000

    if-eq v2, v0, :cond_7

    const/high16 v0, 0x80000

    if-eq v2, v0, :cond_7

    goto :goto_2

    .line 625
    :cond_7
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUnlockSetPassword:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/KeyguardRestrictedPreference;->setSelected(Z)V

    goto :goto_2

    .line 619
    :cond_8
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUnlockSetPin:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/KeyguardRestrictedPreference;->setSelected(Z)V

    goto :goto_2

    .line 615
    :cond_9
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUnlockSetPattern:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/KeyguardRestrictedPreference;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 632
    :cond_a
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mVisiblePatternLayout:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_b

    .line 633
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :catch_0
    :cond_b
    :goto_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 651
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "password_confirmed"

    .line 653
    iget-boolean v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "set_password_started"

    .line 654
    iget-boolean v1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mSetPasswordStarted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "user_password"

    .line 655
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 640
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 641
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 644
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected setItemSpace()V
    .locals 3

    .line 744
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->isSetUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/KeyguardSettingsPreferenceFragment$SpacesItemDecoration;

    const/16 v2, 0x24

    invoke-direct {v1, p0, v2}, Lcom/android/settings/KeyguardSettingsPreferenceFragment$SpacesItemDecoration;-><init>(Lcom/android/settings/KeyguardSettingsPreferenceFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    return-void
.end method
