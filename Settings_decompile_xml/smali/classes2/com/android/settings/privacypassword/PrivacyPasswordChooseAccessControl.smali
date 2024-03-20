.class public Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;
.super Landroid/app/Activity;
.source "PrivacyPasswordChooseAccessControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;,
        Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;,
        Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;
    }
.end annotation


# instance fields
.field protected bigTitle:Landroid/widget/TextView;

.field private final mAnimatePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonLayout:Landroid/view/View;

.field private mCheckOnPcMode:Z

.field protected mChooseNewLockPatternListener:Lcom/android/settings/LockPatternView$OnPatternListener;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field private mFrameLockPattern:Landroid/widget/FrameLayout;

.field private mIsInMultiWindow:Z

.field protected mIsModifyPassword:Z

.field private mLockHelper:Landroid/security/ChooseLockSettingsHelper;

.field private mPrivacyIconContainer:Landroid/widget/LinearLayout;

.field protected mPrivacyPasswordHeaderText:Landroid/widget/TextView;

.field protected mPrivacyPasswordIconView:Landroid/widget/ImageView;

.field protected mPrivacyPasswordSettingTitle:Landroid/widget/TextView;

.field protected mRelative:Landroid/view/View;

.field private mSplitMaskView:Landroid/widget/RelativeLayout;

.field private mUiStage:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

.field private mWindowManager:Landroid/view/WindowManager;

.field protected privacyChooseAccessControlBack:Landroid/widget/TextView;

.field protected privacyChooseAccessControlBackTitle:Landroid/widget/TextView;

.field protected privacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmClearPatternRunnable(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFooterLeftButton(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterLeftButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFooterRightButton(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterRightButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUiStage(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mUiStage:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetConfirmTextId(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->getConfirmTextId()I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 5

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mCheckOnPcMode:Z

    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mChosenPattern:Ljava/util/List;

    .line 85
    invoke-static {v0, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    filled-new-array {v1, v0, v3, v2}, [Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mAnimatePattern:Ljava/util/List;

    .line 152
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->Introduction:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mUiStage:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    .line 153
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$1;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$1;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 160
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mChooseNewLockPatternListener:Lcom/android/settings/LockPatternView$OnPatternListener;

    return-void
.end method

.method private getConfirmTextId()I
    .locals 1

    .line 474
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->isBindAccount()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mIsModifyPassword:Z

    if-eqz p0, :cond_0

    goto :goto_0

    .line 477
    :cond_0
    sget p0, Lcom/android/settings/R$string;->privacy_password_settings_next:I

    return p0

    .line 475
    :cond_1
    :goto_0
    sget p0, Lcom/android/settings/R$string;->lockpattern_confirm_button_text:I

    return p0
.end method

.method private handleSpecialDevice()V
    .locals 5

    .line 543
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 544
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    const/16 v2, 0xf

    and-int/2addr v1, v2

    .line 545
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

    .line 547
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->isFoldInternalScreen(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mCheckOnPcMode:Z

    if-nez v1, :cond_2

    .line 548
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyChooseAccessControlBackTitle:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->bigTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mPrivacyIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 551
    sget v2, Lcom/android/settings/R$dimen;->privacy_icon_margin_top:I

    invoke-static {p0, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getDimen(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 552
    iget-object v2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mPrivacyIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mPrivacyIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 555
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    const-string v0, "bo"

    .line 556
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 557
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->updateResoureForPCMode()V

    :cond_3
    return-void
.end method

.method private handleSplitModel()V
    .locals 3

    .line 562
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->isTabletSpitModel(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mCheckOnPcMode:Z

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 564
    sget v1, Lcom/android/settings/R$dimen;->px_80:I

    invoke-static {p0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getDimen(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 565
    iget-object v2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 567
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 568
    invoke-static {p0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getDimen(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 569
    sget v1, Lcom/android/settings/R$dimen;->px_40:I

    invoke-static {p0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getDimen(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 570
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method private isBindAccount()Z
    .locals 2

    .line 467
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getBindXiaoMiAccount()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 469
    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->isLoginXiaomiAccount(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getBindXiaoMiAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->getLoginedAccountMd5(Landroid/content/Context;)Ljava/lang/String;

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

.method private isRealInMultiWindow()Z
    .locals 4

    const/4 v0, 0x0

    .line 483
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isInMultiWindowMode"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 484
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 485
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mIsInMultiWindow:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    const-string v1, "PrivacyPasswordChooseAccessControl"

    const-string v2, "isRealInMultiWindow"

    .line 487
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private postClearPatternRunnable()V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 422
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startAddAccountActiity()V
    .locals 4

    .line 426
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mIsModifyPassword:Z

    if-nez v0, :cond_3

    .line 427
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "choose_suspend"

    .line 428
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 429
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->isBindAccount()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    .line 432
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mLockHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyPasswordEnabledAsUser(ZI)V

    const/4 v0, -0x1

    .line 436
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 437
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 440
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/privacypassword/AddAccountActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "is_start_modify"

    .line 441
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "enter_forgetpage_way"

    .line 442
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x27ee

    .line 443
    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateResoureForPCMode()V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mPrivacyIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 281
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->privacy_password_top_layout_margin_top_pc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 282
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mPrivacyIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 450
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x27ee

    if-eq p1, p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 454
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 456
    :cond_1
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mLockHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyPasswordEnabledAsUser(ZI)V

    .line 457
    invoke-virtual {p0, p3}, Landroid/app/Activity;->setResult(I)V

    .line 459
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 300
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mUiStage:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    iget-object p1, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->leftMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->Retry:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 301
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mChosenPattern:Ljava/util/List;

    .line 302
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1}, Lcom/android/settings/LockPatternView;->clearPattern()V

    .line 303
    sget-object p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->Introduction:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->updateStage(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V

    goto/16 :goto_0

    .line 304
    :cond_0
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->Cancel:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 305
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 306
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 308
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "left footer button pressed , but stage of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mUiStage:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t make sense"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_8

    .line 311
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mUiStage:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    iget-object v0, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->rightMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->Continue:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    const-string v2, " when button is "

    const-string v3, "expected ui stage "

    if-ne v0, v1, :cond_4

    .line 312
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->FirstChoiceValid:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    if-ne p1, v0, :cond_3

    .line 315
    sget-object p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->NeedToConfirm:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->updateStage(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V

    goto/16 :goto_0

    .line 313
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->ChoiceConfirmed:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 316
    :cond_4
    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->Confirm:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    if-ne v0, v1, :cond_6

    .line 317
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->ChoiceConfirmed:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    if-ne p1, v0, :cond_5

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->saveChosenPatternAndFinish()V

    goto :goto_0

    .line 318
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 321
    :cond_6
    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->Ok:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    if-ne v0, v1, :cond_9

    .line 322
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->HelpScreen:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    if-ne p1, v0, :cond_7

    .line 325
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1}, Lcom/android/settings/LockPatternView;->clearPattern()V

    .line 326
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Correct:Lcom/android/settings/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/android/settings/LockPatternView;->setDisplayMode(Lcom/android/settings/LockPatternView$DisplayMode;)V

    .line 327
    sget-object p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->Introduction:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->updateStage(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V

    goto :goto_0

    .line 323
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mUiStage:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 329
    :cond_8
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyChooseAccessControlBack:Landroid/widget/TextView;

    if-ne p1, v0, :cond_9

    .line 330
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_9
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 210
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 211
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
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mCheckOnPcMode:Z

    if-nez v0, :cond_1

    .line 213
    sget v0, Lcom/android/settings/R$layout;->privacy_choose_access_control_cetus:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_1

    .line 215
    :cond_1
    sget v0, Lcom/android/settings/R$layout;->privacy_choose_access_control:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 217
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 218
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mLockHelper:Landroid/security/ChooseLockSettingsHelper;

    .line 220
    sget v0, Lcom/android/settings/R$id;->privacy_password_icon_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mPrivacyIconContainer:Landroid/widget/LinearLayout;

    .line 221
    sget v0, Lcom/android/settings/R$id;->privacy_password_setting:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mPrivacyPasswordSettingTitle:Landroid/widget/TextView;

    .line 222
    sget v0, Lcom/android/settings/R$id;->privacy_password_choose_access_control_back:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyChooseAccessControlBack:Landroid/widget/TextView;

    .line 223
    sget v0, Lcom/android/settings/R$id;->privacy_password_choose_access_control_back_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyChooseAccessControlBackTitle:Landroid/widget/TextView;

    .line 224
    sget v0, Lcom/android/settings/R$id;->big_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->bigTitle:Landroid/widget/TextView;

    .line 225
    sget v0, Lcom/android/settings/R$id;->privacy_passwordheaderText:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mPrivacyPasswordHeaderText:Landroid/widget/TextView;

    .line 226
    sget v0, Lcom/android/settings/R$id;->split_screen_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mSplitMaskView:Landroid/widget/RelativeLayout;

    .line 227
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "privacy_password_extra_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "ModifyPassword"

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mIsModifyPassword:Z

    if-eqz v2, :cond_3

    .line 230
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mPrivacyPasswordSettingTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mPrivacyPasswordHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 232
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->back_button_margin_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 233
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mPrivacyPasswordHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyChooseAccessControlBackTitle:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->modify_privacy_password:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->bigTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 237
    :cond_3
    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->isLoginXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "logged_in"

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "not_logged"

    .line 240
    :goto_2
    invoke-static {v0}, Lcom/android/settings/privacypassword/analytics/AnalyticHelper;->statsSet1PageAccount(Ljava/lang/String;)V

    .line 242
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyChooseAccessControlBackTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 243
    sget v0, Lcom/android/settings/R$id;->privacy_choose_icon:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mPrivacyPasswordIconView:Landroid/widget/ImageView;

    .line 244
    sget v0, Lcom/android/settings/R$id;->choose_relative_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mRelative:Landroid/view/View;

    .line 245
    sget v0, Lcom/android/settings/R$id;->choose__lockPattern:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    .line 246
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mChooseNewLockPatternListener:Lcom/android/settings/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->setOnPatternListener(Lcom/android/settings/LockPatternView$OnPatternListener;)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mLockHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/MiuiLockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyChooseAccessControlBack:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyChooseAccessControlBack:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->setup_password_back:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 250
    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->isNotch()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 251
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mRelative:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->adapteNotch(Landroid/content/Context;Landroid/view/View;)V

    .line 254
    :cond_6
    sget v0, Lcom/android/settings/R$id;->footerLeftButton:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterLeftButton:Landroid/widget/TextView;

    .line 255
    sget v0, Lcom/android/settings/R$id;->footerRightButton:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterRightButton:Landroid/widget/TextView;

    .line 256
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    sget v0, Lcom/android/settings/R$id;->topLayout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 260
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->onCreateNoSavedState()V

    const-string/jumbo v0, "window"

    .line 263
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mWindowManager:Landroid/view/WindowManager;

    .line 264
    sget v0, Lcom/android/settings/R$id;->pattern_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFrameLockPattern:Landroid/widget/FrameLayout;

    .line 265
    sget v0, Lcom/android/settings/R$id;->button_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mButtonLayout:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 268
    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->values()[Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    move-result-object v0

    const-string/jumbo v1, "stage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->updateStage(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V

    const-string/jumbo v0, "pattern"

    .line 269
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 270
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mLockHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/settings/compat/LockPatternUtilsCompat;->stringToPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mChosenPattern:Ljava/util/List;

    .line 274
    :cond_7
    iget-boolean p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mCheckOnPcMode:Z

    if-eqz p1, :cond_8

    .line 275
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->updateResoureForPCMode()V

    :cond_8
    return-void
.end method

.method protected onCreateNoSavedState()V
    .locals 1

    .line 393
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->Introduction:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->updateStage(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 494
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 498
    invoke-static {p2}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getCurrentWindowMode(Landroid/content/res/Configuration;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 499
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 288
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->isRealInMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mCheckOnPcMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 289
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mIsInMultiWindow:Z

    .line 290
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mSplitMaskView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mSplitMaskView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 294
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->handleSpecialDevice()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mUiStage:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string/jumbo v1, "stage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 537
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mLockHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mChosenPattern:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/settings/compat/LockPatternUtilsCompat;->patternToString(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "pattern"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected saveChosenPatternAndFinish()V
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mChosenPattern:Ljava/util/List;

    if-nez v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->onCreateNoSavedState()V

    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mLockHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    .line 406
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 407
    iget-object v2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Landroid/security/MiuiLockPatternUtils;->saveMiuiLockPatternAsUser(Ljava/util/List;I)V

    .line 408
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mIsModifyPassword:Z

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mLockHelper:Landroid/security/ChooseLockSettingsHelper;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyPasswordEnabledAsUser(ZI)V

    const/4 v0, -0x1

    .line 411
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 412
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 415
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->startAddAccountActiity()V

    .line 417
    :goto_0
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setLockoutAttepmpDeadline(J)V

    return-void
.end method

.method protected updateStage(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V
    .locals 4

    .line 335
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mUiStage:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    .line 336
    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->ChoiceTooShort:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    if-ne p1, v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mPrivacyPasswordHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->headerMessage:I

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mPrivacyPasswordHeaderText:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->headerMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 342
    :goto_0
    iget-object v0, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->leftMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->Gone:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->leftMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    iget v1, v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 347
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->leftMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;

    iget-boolean v1, v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$LeftButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 350
    :goto_1
    iget-object v0, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->rightMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->Gone:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    if-ne v0, v1, :cond_2

    .line 351
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->rightMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    iget v1, v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 355
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->rightMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    iget-boolean v1, v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 358
    :goto_2
    iget-boolean p1, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->patternEnabled:Z

    if-eqz p1, :cond_3

    .line 359
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1}, Lcom/android/settings/LockPatternView;->enableInput()V

    goto :goto_3

    .line 361
    :cond_3
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1}, Lcom/android/settings/LockPatternView;->disableInput()V

    .line 363
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->handleSplitModel()V

    .line 364
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Correct:Lcom/android/settings/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/android/settings/LockPatternView;->setDisplayMode(Lcom/android/settings/LockPatternView$DisplayMode;)V

    .line 365
    sget-object p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$4;->$SwitchMap$com$android$settings$privacypassword$PrivacyPasswordChooseAccessControl$Stage:[I

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mUiStage:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_4

    .line 380
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$3;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$3;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 376
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Wrong:Lcom/android/settings/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/android/settings/LockPatternView;->setDisplayMode(Lcom/android/settings/LockPatternView$DisplayMode;)V

    .line 377
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->postClearPatternRunnable()V

    goto :goto_4

    .line 371
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Animate:Lcom/android/settings/LockPatternView$DisplayMode;

    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/LockPatternView;->setPattern(Lcom/android/settings/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_4

    .line 368
    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p0}, Lcom/android/settings/LockPatternView;->clearPattern()V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
