.class public Lcom/android/settings/privacypassword/AddAccountActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "AddAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountInfo:Landroid/widget/TextView;

.field private mAccountName:Landroid/widget/TextView;

.field private mAccountTitleContent:Landroid/widget/TextView;

.field private mBackText:Landroid/widget/TextView;

.field private mBigAccountTitleContent:Landroid/widget/TextView;

.field private mCheckOnPcMode:Z

.field private mEnterWay:I

.field private mIsCancelLogin:Z

.field private mIsLoginAccount:Z

.field private mIsStartModify:Z

.field private mIsStartedLogin:Z

.field private mLeftButton:Landroid/widget/Button;

.field private mPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

.field private mResultIsOk:Z

.field private mRightButton:Landroid/widget/Button;

.field private mSplitMaskView:Landroid/widget/RelativeLayout;

.field private topView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAccount(Lcom/android/settings/privacypassword/AddAccountActivity;)Landroid/accounts/Account;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccountIcon(Lcom/android/settings/privacypassword/AddAccountActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccountIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsStartModify(Lcom/android/settings/privacypassword/AddAccountActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mIsStartModify:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasswordManager(Lcom/android/settings/privacypassword/AddAccountActivity;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsCancelLogin(Lcom/android/settings/privacypassword/AddAccountActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mIsCancelLogin:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmResultIsOk(Lcom/android/settings/privacypassword/AddAccountActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mResultIsOk:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAnalyticBindingResultKey(Lcom/android/settings/privacypassword/AddAccountActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->getAnalyticBindingResultKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mResultIsOk:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mIsStartModify:Z

    const/4 v1, 0x1

    .line 76
    iput-boolean v1, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mIsCancelLogin:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mIsStartedLogin:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mCheckOnPcMode:Z

    .line 209
    new-instance v0, Lcom/android/settings/privacypassword/AddAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/AddAccountActivity$1;-><init>(Lcom/android/settings/privacypassword/AddAccountActivity;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccountCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method private adaptSmallWindow()V
    .locals 2

    .line 391
    invoke-direct {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->isRealInMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mSplitMaskView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->topView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 394
    sget v0, Lcom/android/settings/R$id;->pvc_content:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private addBackEvent()V
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mIsLoginAccount:Z

    if-eqz v0, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->getAnalyticBindingResultKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "logged_in_back"

    invoke-static {p0, v0}, Lcom/android/settings/privacypassword/analytics/AnalyticHelper;->statsForgetPageBindingResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mIsStartedLogin:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mIsCancelLogin:Z

    if-eqz v0, :cond_1

    .line 354
    invoke-direct {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->getAnalyticBindingResultKey()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "not_logged_cancel_login_back"

    invoke-static {p0, v0}, Lcom/android/settings/privacypassword/analytics/AnalyticHelper;->statsForgetPageBindingResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->getAnalyticBindingResultKey()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "not_logged_back"

    invoke-static {p0, v0}, Lcom/android/settings/privacypassword/analytics/AnalyticHelper;->statsForgetPageBindingResult(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private addSkipEvent()V
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mIsLoginAccount:Z

    if-eqz v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->getAnalyticBindingResultKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "logged_in_skip"

    invoke-static {p0, v0}, Lcom/android/settings/privacypassword/analytics/AnalyticHelper;->statsForgetPageBindingResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mIsStartedLogin:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mIsCancelLogin:Z

    if-eqz v0, :cond_1

    .line 339
    invoke-direct {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->getAnalyticBindingResultKey()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "not_logged_cancel_login_skip"

    invoke-static {p0, v0}, Lcom/android/settings/privacypassword/analytics/AnalyticHelper;->statsForgetPageBindingResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->getAnalyticBindingResultKey()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "not_logged_skip"

    invoke-static {p0, v0}, Lcom/android/settings/privacypassword/analytics/AnalyticHelper;->statsForgetPageBindingResult(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getAnalyticBindingResultKey()Ljava/lang/String;
    .locals 1

    .line 326
    iget p0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mEnterWay:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "binding_result"

    return-object p0

    :cond_0
    const-string p0, "app_binding_result"

    return-object p0
.end method

.method private handleExternalScreen()V
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccountInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 377
    sget v1, Lcom/android/settings/R$dimen;->px_160:I

    invoke-static {p0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getDimen(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 378
    invoke-static {p0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getDimen(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 379
    iget-object v1, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccountInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccountInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 382
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccountTitleContent:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mBigAccountTitleContent:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 385
    sget v2, Lcom/android/settings/R$dimen;->account_icon_margin_top:I

    invoke-static {p0, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getDimen(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 386
    iget-object v1, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    iget-object p0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->topView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private handleSplitModel()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 365
    sget v1, Lcom/android/settings/R$dimen;->px_80:I

    invoke-static {p0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getDimen(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 366
    iget-object v2, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestLayout()V

    .line 368
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 369
    invoke-static {p0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getDimen(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 370
    sget v1, Lcom/android/settings/R$dimen;->px_40:I

    invoke-static {p0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getDimen(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 371
    iget-object v1, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    iget-object p0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mRightButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->requestLayout()V

    return-void
.end method

.method private initViewData()V
    .locals 4

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_start_modify"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mIsStartModify:Z

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enter_forgetpage_way"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mEnterWay:I

    .line 128
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    .line 129
    sget v0, Lcom/android/settings/R$id;->pvc_icon:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccountIcon:Landroid/widget/ImageView;

    .line 130
    sget v0, Lcom/android/settings/R$id;->pvc_account_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccountName:Landroid/widget/TextView;

    .line 131
    sget v0, Lcom/android/settings/R$id;->pvc_add_account_info:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccountInfo:Landroid/widget/TextView;

    .line 132
    sget v0, Lcom/android/settings/R$id;->pvc_add_account_title_content:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccountTitleContent:Landroid/widget/TextView;

    .line 133
    sget v0, Lcom/android/settings/R$id;->big_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mBigAccountTitleContent:Landroid/widget/TextView;

    .line 134
    sget v0, Lcom/android/settings/R$id;->footerLeftButton:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mLeftButton:Landroid/widget/Button;

    .line 135
    sget v1, Lcom/android/settings/R$string;->privacy_password_not_add_account:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 136
    sget v0, Lcom/android/settings/R$id;->footerRightButton:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mRightButton:Landroid/widget/Button;

    .line 137
    sget v0, Lcom/android/settings/R$id;->pvc_add_account_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mBackText:Landroid/widget/TextView;

    .line 138
    sget v0, Lcom/android/settings/R$id;->pvc_add_account_top_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->topView:Landroid/view/View;

    .line 139
    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->loginedXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccount:Landroid/accounts/Account;

    .line 140
    sget v0, Lcom/android/settings/R$id;->split_screen_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mSplitMaskView:Landroid/widget/RelativeLayout;

    .line 141
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mIsLoginAccount:Z

    const-string v0, "account"

    .line 142
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 143
    iget-boolean v1, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mIsLoginAccount:Z

    if-eqz v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccount:Landroid/accounts/Account;

    const-string v2, "acc_user_name"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccountName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccountName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccountName:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->privacy_password_not_login_account:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mRightButton:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->privacy_password_add_account:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mBackText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mBackText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->setup_password_back:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->setUserAvatar()V

    .line 160
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mIsLoginAccount:Z

    if-eqz v0, :cond_3

    const-string v0, "logged_in"

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "not_logged"

    .line 163
    :goto_1
    invoke-static {v0}, Lcom/android/settings/privacypassword/analytics/AnalyticHelper;->statsSet1ForgetPageAccount(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->isNotch()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    sget v0, Lcom/android/settings/R$id;->top_actionBar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 166
    sget v1, Lcom/android/settings/R$dimen;->back_button_alight_top:I

    iget-object v2, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->topView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$dimen;->top_account_actionBar:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->adapteNotch(Landroid/content/Context;Landroid/view/View;ILandroid/view/View;I)V

    :cond_4
    return-void
.end method

.method private isRealInMultiWindow()Z
    .locals 5

    const-string v0, "AddAccountActivity"

    const/4 v1, 0x0

    .line 400
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isInMultiWindowMode"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRealInMultiWindow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v1, [Ljava/lang/Object;

    .line 402
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v2, "isRealInMultiWindow"

    .line 404
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private loginXiaomiAccount(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mIsStartedLogin:Z

    .line 240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccountCallback:Landroid/accounts/AccountManagerCallback;

    invoke-static {p1, v0, p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->loginAccount(Landroid/app/Activity;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method

.method private setUserAvatar()V
    .locals 3

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.account.action.BIND_XIAOMI_ACCOUNT_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.account"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    new-instance v1, Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection;-><init>(Lcom/android/settings/privacypassword/AddAccountActivity;Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection-IA;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mResultIsOk:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 111
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 112
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 321
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 322
    invoke-direct {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->addBackEvent()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 178
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;I)V

    .line 179
    iget-object v1, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mLeftButton:Landroid/widget/Button;

    const-class v2, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    .line 180
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {v0, v3, p1}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyPasswordEnabledAsUser(ZI)V

    .line 181
    iput-boolean v3, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mResultIsOk:Z

    .line 182
    iget-boolean p1, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mIsStartModify:Z

    if-eqz p1, :cond_0

    .line 183
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->addSkipEvent()V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->finish()V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mRightButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_4

    .line 189
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {v0, v3, p1}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyPasswordEnabledAsUser(ZI)V

    .line 190
    iget-boolean p1, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mIsLoginAccount:Z

    if-eqz p1, :cond_3

    .line 191
    iput-boolean v3, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mResultIsOk:Z

    .line 192
    iget-object p1, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bindXiaoMiAccount(Ljava/lang/String;)V

    .line 193
    iget-boolean p1, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mIsStartModify:Z

    if-eqz p1, :cond_2

    .line 194
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 197
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->bind_xiaomi_account_success:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 198
    invoke-direct {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->getAnalyticBindingResultKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "logged_in_binding"

    invoke-static {p1, v0}, Lcom/android/settings/privacypassword/analytics/AnalyticHelper;->statsForgetPageBindingResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->finish()V

    goto :goto_0

    .line 201
    :cond_3
    invoke-direct {p0, p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->loginXiaomiAccount(Landroid/app/Activity;)V

    goto :goto_0

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mBackText:Landroid/widget/TextView;

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    .line 204
    iput-boolean p1, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mResultIsOk:Z

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->onBackPressed()V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mCheckOnPcMode:Z

    if-nez p1, :cond_1

    .line 88
    sget p1, Lcom/android/settings/R$layout;->add_account_setting_cetus:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    goto :goto_1

    .line 90
    :cond_1
    sget p1, Lcom/android/settings/R$layout;->add_account_setting:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 92
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->initViewData()V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 120
    invoke-static {p2}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getCurrentWindowMode(Landroid/content/res/Configuration;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 96
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 97
    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getBindXiaoMiAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->isLoginXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    .line 98
    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getBindXiaoMiAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->getLoginedAccountMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->finish()V

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->adaptSmallWindow()V

    .line 102
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->isTabletSpitModel(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mCheckOnPcMode:Z

    if-nez v0, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->handleSplitModel()V

    goto :goto_0

    .line 104
    :cond_1
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->isFoldInternalScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/privacypassword/AddAccountActivity;->mCheckOnPcMode:Z

    if-nez v0, :cond_2

    .line 105
    invoke-direct {p0}, Lcom/android/settings/privacypassword/AddAccountActivity;->handleExternalScreen()V

    :cond_2
    :goto_0
    return-void
.end method
