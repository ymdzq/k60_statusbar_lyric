.class public Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "PrivacyPasswordConfirmAccessControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;
    }
.end annotation


# instance fields
.field protected bigTitle:Landroid/widget/TextView;

.field private mAccountDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mBackgroundLayout:Landroid/view/View;

.field private mCheckOnPcMode:Z

.field private mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mFingerDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mFingerErrorCount:I

.field private mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

.field private mFingerprintId:I

.field private mForgetPassDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mFrameLockPattern:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field protected mHeaderTextView:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mIsClickedDlg:Z

.field private mIsEnterFromSetting:Z

.field private mIsInMultiWindow:Z

.field private mIsRegisterFingerprint:Z

.field private mKeyGruadLocked:Z

.field protected mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

.field private mNumWrongConfirmAttempts:I

.field private mPackageName:Ljava/lang/String;

.field private mPrivacyIconContainer:Landroid/widget/LinearLayout;

.field private mPrivacyPasswordConfirmExistingLockPatternListener:Lcom/android/settings/LockPatternView$OnPatternListener;

.field protected mPrivacyPasswordFooterTextView:Landroid/widget/TextView;

.field private mPrivacyPasswordForgetPattern:Landroid/widget/TextView;

.field private mPrivacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

.field protected mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

.field private mPrivacyPasswordMore:Landroid/widget/ImageView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRelative:Landroid/view/View;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field private mSplitMaskView:Landroid/widget/RelativeLayout;

.field private mStop:Z

.field private mTimestart:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field protected privacyPasswordConfirmBack:Landroid/widget/TextView;

.field protected privacyPasswordConfirmBackTitle:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBackgroundLayout(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mBackgroundLayout:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClearPatternRunnable(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFingerErrorCount(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerErrorCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFingerprintHelper(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/settings/FingerprintHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFingerprintId(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerprintId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsClickedDlg(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIsClickedDlg:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNumWrongConfirmAttempts(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mNumWrongConfirmAttempts:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrivacyPasswordLockPatternView(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/settings/LockPatternView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStop(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mStop:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmFingerErrorCount(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerErrorCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFingerprintId(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerprintId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsClickedDlg(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIsClickedDlg:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumWrongConfirmAttempts(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mNumWrongConfirmAttempts:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTimestart(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mTimestart:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleContentDescription(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;Landroid/widget/TextView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->handleContentDescription(Landroid/widget/TextView;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitErrorFingerprintText(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->initErrorFingerprintText()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitFirstUseFingerprintText(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->initFirstUseFingerprintText()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misBindAccount(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->isBindAccount()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpostClearPatternRunnable(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->postClearPatternRunnable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterFingerprint(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->registerFingerprint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterFingerprintDelayed(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->registerFingerprintDelayed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFingerprint(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->setFingerprint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterFingerprint(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->unregisterFingerprint()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mTimestart:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIsClickedDlg:Z

    .line 123
    iput v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerErrorCount:I

    .line 127
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mCheckOnPcMode:Z

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$1;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$1;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 139
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordConfirmExistingLockPatternListener:Lcom/android/settings/LockPatternView$OnPatternListener;

    .line 181
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$3;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$3;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private bindAccountRemind()V
    .locals 1

    .line 663
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->isCreateAccountDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mAccountDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_1

    .line 665
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->createBindXiaomiAccountDialog()V

    goto :goto_0

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mAccountDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mAccountDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method private confirmAccount()V
    .locals 8

    .line 864
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mSecurityManager:Lmiui/security/SecurityManager;

    const-string v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->appCheckAccess(Lmiui/security/SecurityManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->verifyAccountCountDownTimer(Lmiui/security/SecurityManager;Ljava/lang/String;)V

    .line 867
    :cond_0
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->findAccounts(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 869
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v6, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$11;

    invoke-direct {v6, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$11;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    const/4 v7, 0x0

    move-object v5, p0

    invoke-virtual/range {v2 .. v7}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :cond_1
    return-void
.end method

.method private dealWithSplit()V
    .locals 2

    .line 1014
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mSplitMaskView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1015
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mRelative:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1016
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFrameLockPattern:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private getMessageId()I
    .locals 0

    .line 919
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-nez p0, :cond_0

    .line 920
    sget p0, Lcom/android/settings/R$string;->privacy_factory_reset_dlg_message:I

    goto :goto_0

    .line 921
    :cond_0
    sget p0, Lcom/android/settings/R$string;->privacy_delete_space_dlg_message:I

    :goto_0
    return p0
.end method

.method private handleContentDescription(Landroid/widget/TextView;I)V
    .locals 0

    .line 1044
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1045
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private handleExternalScreen()V
    .locals 5

    .line 281
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 282
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    const/16 v2, 0xf

    and-int/2addr v1, v2

    .line 283
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    if-eq v1, v2, :cond_0

    const/16 v0, 0xb

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-nez v0, :cond_2

    .line 285
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->isFoldInternalScreen(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mCheckOnPcMode:Z

    if-nez v1, :cond_2

    .line 286
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->privacyPasswordConfirmBackTitle:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->bigTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 289
    sget v2, Lcom/android/settings/R$dimen;->px_189:I

    invoke-static {p0, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getDimen(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 290
    iget-object v2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 293
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    const-string v0, "bo"

    .line 294
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->updateResoureForPCMode()V

    :cond_3
    return-void
.end method

.method private handleFingerprintPosition()V
    .locals 7

    .line 1032
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->isFingerUseful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->isFodFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getFodPosition(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1036
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1037
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getScreenRealSize(Landroid/content/Context;)[I

    move-result-object v5

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int/2addr v5, v0

    sget v0, Lcom/android/settings/R$dimen;->px_fod_margin:I

    invoke-static {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getDimen(Landroid/content/Context;I)I

    move-result p0

    add-int/2addr v5, p0

    .line 1036
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    return-void
.end method

.method private hideNavigationBar()V
    .locals 1

    .line 954
    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->isFodFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x3202

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method private initErrorFingerprintText()V
    .locals 2

    .line 628
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordFooterTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordFooterTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->fingerprint_not_identified_msg:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->handleContentDescription(Landroid/widget/TextView;I)V

    .line 630
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHeaderTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->confirm_privacy_password:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->handleContentDescription(Landroid/widget/TextView;I)V

    return-void
.end method

.method private initFirstUseFingerprintText()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordFooterTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordFooterTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->privacy_failed_need_to_unlock_nofingerprint:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->handleContentDescription(Landroid/widget/TextView;I)V

    .line 636
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHeaderTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->confirm_privacy_password:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->handleContentDescription(Landroid/widget/TextView;I)V

    return-void
.end method

.method private isBindAccount()Z
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getBindXiaoMiAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 674
    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->isLoginXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->getLoginedAccountMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getBindXiaoMiAccount()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCreateAccountDialog()Z
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getBindXiaoMiAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->isLoginXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->getLoginedAccountMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getBindXiaoMiAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    .line 682
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->isNeverRemind()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCreateFingerprintDialog()Z
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->isNeverRemindOpenFinger()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 687
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    invoke-static {p0}, Lcom/android/settings/privacypassword/TransparentHelper;->isScreenLockOpen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    .line 689
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->isFingerprintEnable()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFingerUseful()Z
    .locals 1

    .line 650
    invoke-static {p0}, Lcom/android/settings/privacypassword/TransparentHelper;->isScreenLockOpen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 651
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 652
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    .line 653
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->isFingerprintEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRealInMultiWindow()Z
    .locals 4

    const/4 v0, 0x0

    .line 965
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isInMultiWindowMode"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 966
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 967
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIsInMultiWindow:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    const-string v1, "PrivacyPasswordConfirmAccessControl"

    const-string v2, "isRealInMultiWindow"

    .line 969
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private postClearPatternRunnable()V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 543
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private registerFingerprint()V
    .locals 6

    .line 561
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIsInMultiWindow:Z

    const-string v1, "PrivacyPasswordConfirmAccessControl"

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIsRegisterFingerprint:Z

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getWrongFingerAttempts(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mAccountDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "return 2"

    .line 566
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mForgetPassDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p0, "return 5"

    .line 570
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 573
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getLockoutAttepmpDeadline()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->isFingerUseful()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "return 4"

    .line 574
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 575
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIsRegisterFingerprint:Z

    .line 576
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    .line 617
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/FingerprintHelper;->identify(Lcom/android/settings/FingerprintIdentifyCallback;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "finger identify error"

    .line 619
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 622
    :cond_3
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getDefaultUnlockString()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->handleContentDescription(Landroid/widget/TextView;I)V

    const-string/jumbo p0, "return 3"

    .line 623
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string/jumbo p0, "return 1"

    .line 562
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerFingerprintDelayed()V
    .locals 4

    .line 925
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 926
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$14;

    invoke-direct {v1, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$14;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    iput-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resetTopLayout()V
    .locals 2

    .line 1008
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mSplitMaskView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1009
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mRelative:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1010
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFrameLockPattern:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setFingerprint()V
    .locals 5

    .line 781
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 785
    invoke-static {p0}, Lcom/android/settings/privacypassword/TransparentHelper;->isScreenLockOpen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {v1}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 787
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setFingerprintEnable(Z)V

    .line 788
    sget v0, Lcom/android/settings/R$string;->privacy_password_use_finger_success:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 789
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x271a

    if-nez v0, :cond_3

    .line 790
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 791
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 792
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_2

    .line 793
    invoke-static {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->putIntentExtra(Landroid/content/Context;Landroid/content/Intent;)V

    .line 795
    :cond_2
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 798
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 799
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.NewFingerprintActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 801
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_4

    .line 802
    invoke-static {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->putIntentExtra(Landroid/content/Context;Landroid/content/Intent;)V

    .line 804
    :cond_4
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private setFingerprintRevive()V
    .locals 1

    .line 640
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getWrongFingerAttempts(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 641
    invoke-static {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->setWrongFingerAttempts(Landroid/content/Context;I)V

    .line 642
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->isFingerUseful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->invokeResetTimeout(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private showFactoryResetDialog()V
    .locals 3

    .line 886
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->unregisterFingerprint()V

    .line 887
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->privacy_factory_reset_dlg_title:I

    .line 888
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 889
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getMessageId()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->privacy_dlg_button_cancel:I

    new-instance v2, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$13;

    invoke-direct {v2, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$13;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    .line 890
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->privacy_factory_reset_dlg_button_text:I

    new-instance v2, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$12;

    invoke-direct {v2, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$12;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    .line 897
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 913
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 914
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mForgetPassDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 915
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private unregisterFingerprint()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 551
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 553
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIsRegisterFingerprint:Z

    .line 554
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p0}, Lcom/android/settings/FingerprintHelper;->cancelIdentify()V

    return-void
.end method

.method private updateResoureForPCMode()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 301
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->privacy_password_top_layout_margin_top_pc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 302
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private useFingerprintRemind()V
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->createOpenFingerprintDialog()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected accessLockPattern()V
    .locals 2

    .line 437
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->setFingerprintRevive()V

    .line 438
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getACLockMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->isConvenientEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/security/SecurityManager;->addAccessControlPass(Ljava/lang/String;)V

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->cancelIdentify()V

    const/4 v0, -0x1

    .line 444
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 445
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIsEnterFromSetting:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mAccountDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->isCreateFingerprintDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->useFingerprintRemind()V

    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected checkPattern(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .line 407
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/security/MiuiLockPatternUtils;->checkMiuiLockPatternAsUser(Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method protected createBindXiaomiAccountDialog()V
    .locals 4

    .line 693
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->unregisterFingerprint()V

    .line 694
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->privacy_password_remind_bindaccount_title:I

    .line 695
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->privacy_password_remind_bind_notlogin_account:I

    .line 696
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 697
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->privacy_password_never_remind:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 698
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->privacy_dlg_button_cancel:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$7;

    invoke-direct {v3, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$7;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    invoke-virtual {v0, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->privacy_password_bind_account_immediate:I

    new-instance v3, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$6;

    invoke-direct {v3, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$6;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    .line 719
    invoke-virtual {v0, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 739
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mAccountDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 740
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 741
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mAccountDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected createOpenFingerprintDialog()V
    .locals 3

    .line 745
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->clearPattern()V

    .line 746
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->privacy_password_use_finger_dialog_title:I

    .line 747
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->privacy_password_use_finger_dialog_mess:I

    .line 748
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 749
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->privacy_password_never_remind:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 750
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->privacy_dlg_button_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$9;

    invoke-direct {v2, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$9;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->privacy_password_use_finger_dialog_open:I

    new-instance v2, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$8;

    invoke-direct {v2, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$8;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    .line 760
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 769
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 770
    new-instance v1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$10;

    invoke-direct {v1, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$10;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 777
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected getDefaultUnlockString()I
    .locals 4

    .line 526
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getLockoutAttepmpDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 528
    sget p0, Lcom/android/settings/R$string;->lockpattern_too_many_failed_confirmation_attempts_header:I

    return p0

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->isFingerUseful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getWrongFingerAttempts(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x5

    if-lt p0, v0, :cond_1

    .line 532
    sget p0, Lcom/android/settings/R$string;->confirm_privacy_password:I

    return p0

    .line 534
    :cond_1
    sget p0, Lcom/android/settings/R$string;->confirm_privacy_password_fingerprint:I

    return p0

    .line 537
    :cond_2
    sget p0, Lcom/android/settings/R$string;->confirm_privacy_password:I

    return p0
.end method

.method protected getIntentOnSuccess()Landroid/content/Intent;
    .locals 2

    .line 520
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p0, "privacy_password_extra_data"

    const-string v1, "ModifyPassword"

    .line 521
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected getLockoutAttepmpDeadline()J
    .locals 6

    .line 398
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 399
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getLockoutAttepmDeadline()J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-ltz p0, :cond_1

    const-wide/16 v4, 0x7530

    add-long/2addr v0, v4

    cmp-long p0, v2, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    return-wide v2

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 9

    .line 453
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->LockedOut:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->updateStage(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;)V

    .line 454
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mBackgroundLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->password_confirm_fail_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 455
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 456
    new-instance v8, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;

    sub-long v4, p1, v0

    const-wide/16 v6, 0x3e8

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;JJ)V

    iput-object v8, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 481
    iget-boolean p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mTimestart:Z

    if-nez p0, :cond_0

    .line 482
    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 810
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x2710

    const/4 v0, -0x1

    if-eq p1, p3, :cond_3

    const/16 p3, 0x271a

    if-eq p1, p3, :cond_0

    goto :goto_1

    .line 813
    :cond_0
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const/4 p3, 0x0

    if-ne p2, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, p3

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setFingerprintEnable(Z)V

    if-ne p2, v0, :cond_2

    .line 815
    sget p1, Lcom/android/settings/R$string;->privacy_password_use_finger_success:I

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 817
    :cond_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_1

    :cond_3
    if-ne p2, v0, :cond_4

    .line 821
    invoke-static {}, Lcom/android/settings/privacypassword/analytics/AnalyticHelper;->statsPrivateForgetFinish()V

    .line 822
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->setFingerprintRevive()V

    .line 824
    :cond_4
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 1027
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 1028
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 833
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordForgetPattern:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 834
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->isBindAccount()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 836
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->confirmAccount()V

    goto :goto_0

    .line 838
    :cond_0
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {p1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->isUsedPrivacyInBussiness()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 840
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->showFactoryResetDialog()V

    goto :goto_0

    .line 843
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "privacy_password_extra_data"

    const-string v1, "ModifyPassword"

    .line 844
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x2710

    .line 845
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 848
    :goto_0
    iget p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mNumWrongConfirmAttempts:I

    const/4 p1, 0x5

    if-lt p0, p1, :cond_2

    const-string p0, "after_reach_max"

    goto :goto_1

    :cond_2
    const-string p0, "before_reach_max"

    :goto_1
    invoke-static {p0}, Lcom/android/settings/privacypassword/analytics/AnalyticHelper;->statsClickPrivateForget(Ljava/lang/String;)V

    goto :goto_2

    .line 851
    :cond_3
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->privacyPasswordConfirmBack:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    .line 852
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 853
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_2

    .line 854
    :cond_4
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordMore:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_5

    .line 855
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/privacypassword/TransparentHelper;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "enter_from_settings"

    .line 856
    iget-boolean v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIsEnterFromSetting:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x10

    .line 857
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 858
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 859
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_5
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 196
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mCheckOnPcMode:Z

    if-nez v0, :cond_1

    .line 199
    sget v0, Lcom/android/settings/R$layout;->privacy_password_confirm_lock_pattern_cetus:I

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    goto :goto_1

    .line 201
    :cond_1
    sget v0, Lcom/android/settings/R$layout;->privacy_password_confirm_lock_pattern:I

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 203
    :goto_1
    sget v0, Lcom/android/settings/R$string;->privacy_password:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 204
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 205
    sget v0, Lcom/android/settings/R$id;->privacy_password_confirm_back:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->privacyPasswordConfirmBack:Landroid/widget/TextView;

    .line 206
    sget v0, Lcom/android/settings/R$id;->privacy_password_confirm_back_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->privacyPasswordConfirmBackTitle:Landroid/widget/TextView;

    .line 207
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->privacyPasswordConfirmBack:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->privacyPasswordConfirmBackTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->privacyPasswordConfirmBack:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$string;->setup_password_back:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 211
    new-instance v0, Lcom/android/settings/FingerprintHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 212
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    .line 213
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    const-string/jumbo v0, "security"

    .line 214
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mSecurityManager:Lmiui/security/SecurityManager;

    .line 215
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v0, p0}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 216
    sget v0, Lcom/android/settings/R$id;->backgroundlayout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mBackgroundLayout:Landroid/view/View;

    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    .line 219
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPackageName:Ljava/lang/String;

    .line 220
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPackageName:Ljava/lang/String;

    .line 222
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->isFingerUseful()Z

    move-result v0

    if-nez v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setFingerprintEnable(Z)V

    .line 226
    :cond_3
    sget v0, Lcom/android/settings/R$id;->privacy_password_icon_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyIconContainer:Landroid/widget/LinearLayout;

    .line 227
    sget v0, Lcom/android/settings/R$id;->privacy_password_header_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHeaderTextView:Landroid/widget/TextView;

    .line 228
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 233
    sget v0, Lcom/android/settings/R$id;->privacy_password_lockpatternView:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    .line 234
    sget v0, Lcom/android/settings/R$id;->privacy_password_footer_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordFooterTextView:Landroid/widget/TextView;

    .line 235
    sget v0, Lcom/android/settings/R$id;->privacy_password_forget_pattern:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordForgetPattern:Landroid/widget/TextView;

    .line 236
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v1}, Landroid/security/MiuiLockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordConfirmExistingLockPatternListener:Lcom/android/settings/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->setOnPatternListener(Lcom/android/settings/LockPatternView$OnPatternListener;)V

    .line 239
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->NeedToUnlock:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->updateStage(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;)V

    if-eqz p1, :cond_4

    const-string/jumbo v0, "privacy_num_wrong_attempts"

    .line 242
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mNumWrongConfirmAttempts:I

    goto :goto_2

    .line 244
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->onCreateNoSaveState()V

    .line 247
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "miui.KEYGUARD_LOCKED"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mKeyGruadLocked:Z

    .line 248
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 249
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 250
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 251
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "miui.intent.action.APP_LOCK_CLEAR_STATE"

    .line 252
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 254
    sget p1, Lcom/android/settings/R$id;->privacy_password_more:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordMore:Landroid/widget/ImageView;

    .line 255
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "enter_from_settings"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIsEnterFromSetting:Z

    if-nez p1, :cond_5

    .line 258
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordMore:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    :cond_5
    sget p1, Lcom/android/settings/R$id;->relativeBackground:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mRelative:Landroid/view/View;

    .line 262
    sget p1, Lcom/android/settings/R$id;->lockpattern_framelayout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFrameLockPattern:Landroid/view/View;

    .line 263
    sget p1, Lcom/android/settings/R$id;->privacy_password_icon:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIconView:Landroid/widget/ImageView;

    .line 264
    sget p1, Lcom/android/settings/R$id;->split_screen_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mSplitMaskView:Landroid/widget/RelativeLayout;

    const-string/jumbo p1, "window"

    .line 265
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mWindowManager:Landroid/view/WindowManager;

    .line 266
    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->isNotch()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 267
    sget p1, Lcom/android/settings/R$id;->top_actionBar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 268
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mRelative:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->adapteNotch(Landroid/content/Context;Landroid/view/View;)V

    .line 270
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->hideNavigationBar()V

    .line 271
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-static {p0, p1, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->upgradeFingerprints(Landroid/content/Context;ILcom/android/settings/FingerprintHelper;)V

    .line 272
    iget-boolean p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mCheckOnPcMode:Z

    if-eqz p1, :cond_7

    .line 273
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->updateResoureForPCMode()V

    .line 275
    :cond_7
    sget p1, Lcom/android/settings/R$id;->big_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->bigTitle:Landroid/widget/TextView;

    .line 276
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->handleExternalScreen()V

    .line 277
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->handleFingerprintPosition()V

    return-void
.end method

.method protected onCreateNoSaveState()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->havePattern()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mAccountDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 362
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mForgetPassDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 365
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 367
    :cond_3
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 369
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 976
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 980
    invoke-static {p2}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getCurrentWindowMode(Landroid/content/res/Configuration;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 981
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->isFingerUseful()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 982
    iput-boolean p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIsRegisterFingerprint:Z

    .line 983
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->registerFingerprintDelayed()V

    .line 986
    :cond_0
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mAccountDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 987
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mAccountDialog:Lmiuix/appcompat/app/AlertDialog;

    new-instance p2, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$15;

    invoke-direct {p2, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$15;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 993
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mAccountDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 994
    :cond_1
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mForgetPassDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 995
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mForgetPassDialog:Lmiuix/appcompat/app/AlertDialog;

    new-instance p2, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$16;

    invoke-direct {p2, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$16;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1001
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mForgetPassDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 1003
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 377
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 378
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 379
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mTimestart:Z

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->unregisterFingerprint()V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 386
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 387
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordFooterTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getDefaultUnlockString()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->handleContentDescription(Landroid/widget/TextView;I)V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 318
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 319
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->havePattern()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->isRealInMultiWindow()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mCheckOnPcMode:Z

    if-nez v0, :cond_1

    .line 323
    iput-boolean v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIsInMultiWindow:Z

    .line 324
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->dealWithSplit()V

    goto :goto_0

    .line 326
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->resetTopLayout()V

    .line 328
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getLockoutAttepmpDeadline()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 330
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->handleAttemptLockout(J)V

    goto :goto_1

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 334
    iput v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mNumWrongConfirmAttempts:I

    .line 335
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->NeedToUnlock:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->updateStage(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;)V

    .line 337
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->registerFingerprintDelayed()V

    .line 338
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->isFingerprintEnable()Z

    move-result v0

    const/4 v2, 0x5

    if-eqz v0, :cond_4

    .line 339
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getWrongFingerAttempts(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 340
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->initErrorFingerprintText()V

    .line 342
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIsEnterFromSetting:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 342
    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getCurrentWindowMode(Landroid/content/res/Configuration;)I

    move-result v0

    if-eq v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIsInMultiWindow:Z

    if-nez v0, :cond_5

    .line 344
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->bindAccountRemind()V

    .line 345
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->isFingerprintEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 346
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mFingerDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 347
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 350
    :cond_5
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->isVisibilePattern()Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-virtual {v0, p0}, Lcom/android/settings/LockPatternView;->setInStealthMode(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "privacy_num_wrong_attempts"

    .line 373
    iget p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 307
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    const/4 v0, 0x0

    .line 308
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mStop:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 312
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    const/4 v0, 0x1

    .line 313
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mStop:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 938
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 943
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->hideNavigationBar()V

    .line 944
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->isFingerUseful()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 945
    iput-boolean p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mIsRegisterFingerprint:Z

    .line 946
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->registerFingerprintDelayed()V

    goto :goto_0

    .line 949
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->unregisterFingerprint()V

    :cond_1
    :goto_0
    return-void
.end method

.method public settingTextShake()V
    .locals 9

    .line 411
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3e100000    # -30.0f

    invoke-direct {v0, v1, v2, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0x0

    .line 412
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    const-wide/16 v3, 0x32

    .line 413
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 414
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 416
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-direct {v5, v2, v6, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 417
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    const-wide/16 v7, 0x64

    .line 418
    invoke-virtual {v5, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 419
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 421
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, v6, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v6, 0x96

    .line 422
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 423
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 424
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 426
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v3, 0x2

    .line 427
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 428
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    .line 429
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 430
    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 431
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 432
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected updateStage(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 488
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$17;->$SwitchMap$com$android$settings$privacypassword$PrivacyPasswordConfirmAccessControl$Stage:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 508
    :cond_0
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1}, Lcom/android/settings/LockPatternView;->clearPattern()V

    .line 511
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 501
    :cond_1
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHeaderTextView:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->lockpattern_need_to_unlock_wrong:I

    invoke-direct {p0, p1, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->handleContentDescription(Landroid/widget/TextView;I)V

    .line 502
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordFooterTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Wrong:Lcom/android/settings/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/android/settings/LockPatternView;->setDisplayMode(Lcom/android/settings/LockPatternView$DisplayMode;)V

    .line 504
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 505
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1}, Lcom/android/settings/LockPatternView;->enableInput()V

    goto :goto_1

    .line 490
    :cond_2
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {p1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->isFingerprintEnable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 491
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getWrongFingerAttempts(Landroid/content/Context;)I

    move-result p1

    const/4 v2, 0x5

    if-lt p1, v2, :cond_3

    .line 492
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->initErrorFingerprintText()V

    goto :goto_0

    .line 494
    :cond_3
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getDefaultUnlockString()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->handleContentDescription(Landroid/widget/TextView;I)V

    .line 495
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordFooterTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    :goto_0
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 498
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1}, Lcom/android/settings/LockPatternView;->enableInput()V

    .line 516
    :goto_1
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
