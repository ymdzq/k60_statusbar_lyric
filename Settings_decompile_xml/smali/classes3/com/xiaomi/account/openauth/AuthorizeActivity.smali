.class public Lcom/xiaomi/account/openauth/AuthorizeActivity;
.super Lcom/xiaomi/account/openauth/AuthorizeActivityBase;
.source "AuthorizeActivity.java"


# static fields
.field public static RESULT_CANCEL:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static RESULT_FAIL:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static RESULT_SUCCESS:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mBackImageView:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget v0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_SUCCESS:I

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->RESULT_SUCCESS:I

    .line 21
    sget v0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_FAIL:I

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->RESULT_FAIL:I

    .line 24
    sget v0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_CANCEL:I

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->RESULT_CANCEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 32
    invoke-super {p0, p1}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-super {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->isMiddleActivityMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-super {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x10

    .line 40
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 41
    sget v1, Lcom/xiaomi/account/openauth/R$layout;->actionbar_custom:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 42
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/xiaomi/account/openauth/R$id;->back_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mBackImageView:Landroid/widget/ImageView;

    .line 43
    new-instance v1, Lcom/xiaomi/account/openauth/AuthorizeActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/account/openauth/AuthorizeActivity$1;-><init>(Lcom/xiaomi/account/openauth/AuthorizeActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance p1, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v3, 0x1010078    # @android:attr/progressBarStyleHorizontal

    invoke-direct {p1, p0, v1, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 62
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->isMiddleActivityMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "refresh"

    .line 74
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    const v0, 0x108007d    # @android:drawable/stat_notify_sync_noanim

    .line 75
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 76
    iget-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 77
    iget-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    new-instance v0, Lcom/xiaomi/account/openauth/AuthorizeActivity$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/openauth/AuthorizeActivity$2;-><init>(Lcom/xiaomi/account/openauth/AuthorizeActivity;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 84
    iget-object p0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return v1
.end method

.method protected onHideErrorUI()V
    .locals 1

    .line 98
    iget-object p0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 99
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method protected onHideProgress()V
    .locals 1

    .line 112
    iget-object p0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 113
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onShowErrorUI()V
    .locals 1

    .line 91
    iget-object p0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 92
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method protected onShowProgress()V
    .locals 1

    .line 119
    iget-object p0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onUpdateProgress(I)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
