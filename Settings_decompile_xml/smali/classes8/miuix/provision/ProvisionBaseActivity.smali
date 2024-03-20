.class public Lmiuix/provision/ProvisionBaseActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "ProvisionBaseActivity.java"

# interfaces
.implements Lmiuix/provision/ProvisionAnimHelper$AnimListener;


# static fields
.field private static HALF_ALPHA:F = 0.5f

.field private static NO_ALPHA:F = 1.0f


# instance fields
.field protected mBackBtn:Landroid/widget/TextView;

.field private mBackListener:Landroid/view/View$OnClickListener;

.field private mDeviceProvisioned:Z

.field protected mGlobalBackBtn:Landroid/widget/ImageButton;

.field protected mGlobalNextBtn:Landroid/widget/ImageButton;

.field private mH:Landroid/os/Handler;

.field private mHasPreview:Z

.field protected mImageView:Landroid/widget/ImageView;

.field private mIsCompatibleMode:Z

.field protected mNextBtn:Landroid/widget/TextView;

.field private mNextBtnCustomized:Z

.field private mNextClickListener:Landroid/view/View$OnClickListener;

.field protected mProvisionAnimHelper:Lmiuix/provision/ProvisionAnimHelper;

.field protected mSkipBtn:Landroid/widget/TextView;

.field private mSkipClickListener:Landroid/view/View$OnClickListener;

.field protected mSubTitle:Landroid/widget/TextView;

.field protected mTitle:Landroid/widget/TextView;

.field protected mTitleLayout:Landroid/view/View;

.field private mTitleSpace:Landroid/view/View;

.field private mTouchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field private windowInsetTopHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    .line 160
    new-instance v0, Lmiuix/provision/ProvisionBaseActivity$1;

    invoke-direct {v0, p0}, Lmiuix/provision/ProvisionBaseActivity$1;-><init>(Lmiuix/provision/ProvisionBaseActivity;)V

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mNextClickListener:Landroid/view/View$OnClickListener;

    .line 199
    new-instance v0, Lmiuix/provision/ProvisionBaseActivity$2;

    invoke-direct {v0, p0}, Lmiuix/provision/ProvisionBaseActivity$2;-><init>(Lmiuix/provision/ProvisionBaseActivity;)V

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mSkipClickListener:Landroid/view/View$OnClickListener;

    .line 235
    new-instance v0, Lmiuix/provision/ProvisionBaseActivity$3;

    invoke-direct {v0, p0}, Lmiuix/provision/ProvisionBaseActivity$3;-><init>(Lmiuix/provision/ProvisionBaseActivity;)V

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mBackListener:Landroid/view/View$OnClickListener;

    .line 291
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mH:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lmiuix/provision/ProvisionBaseActivity;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lmiuix/provision/ProvisionBaseActivity;->mNextBtnCustomized:Z

    return p0
.end method

.method static synthetic access$100(Lmiuix/provision/ProvisionBaseActivity;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity;->mH:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/provision/ProvisionBaseActivity;)I
    .locals 0

    .line 38
    iget p0, p0, Lmiuix/provision/ProvisionBaseActivity;->windowInsetTopHeight:I

    return p0
.end method

.method static synthetic access$202(Lmiuix/provision/ProvisionBaseActivity;I)I
    .locals 0

    .line 38
    iput p1, p0, Lmiuix/provision/ProvisionBaseActivity;->windowInsetTopHeight:I

    return p1
.end method

.method private needDelayBottomButton()Z
    .locals 0

    .line 425
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->hasPreview()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lmiuix/provision/OobeUtil;->isInternationalBuild()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerAccessibiltyStateChange(Landroid/content/Context;)V
    .locals 1

    .line 533
    invoke-static {}, Lmiuix/provision/OobeUtil;->isInternationalBuild()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mTouchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    if-nez v0, :cond_1

    const-string v0, "accessibility"

    .line 537
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 538
    new-instance v0, Lmiuix/provision/ProvisionBaseActivity$6;

    invoke-direct {v0, p0}, Lmiuix/provision/ProvisionBaseActivity$6;-><init>(Lmiuix/provision/ProvisionBaseActivity;)V

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mTouchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 552
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private unRegisterAccessibiltyStateChange(Landroid/content/Context;)V
    .locals 1

    .line 557
    invoke-static {}, Lmiuix/provision/OobeUtil;->isInternationalBuild()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 560
    :cond_0
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mTouchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    if-eqz v0, :cond_1

    const-string v0, "accessibility"

    .line 561
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 562
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mTouchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    const/4 p1, 0x0

    .line 563
    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mTouchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 500
    invoke-static {}, Lmiuix/provision/OobeUtil;->needFastAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 503
    :cond_0
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->isAnimEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method protected getTitleLayoutHeight()I
    .locals 3

    .line 294
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mTitleLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget p0, p0, Lmiuix/provision/ProvisionBaseActivity;->windowInsetTopHeight:I

    sub-int/2addr v0, p0

    return v0

    .line 298
    :cond_0
    invoke-static {}, Lmiuix/provision/OobeUtil;->consistentDesign()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/provision/R$dimen;->provision_actionbar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 300
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/provision/R$dimen;->provision_padding_top_miui14:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lmiuix/provision/R$dimen;->provision_container_margin_top:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    .line 303
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/provision/R$dimen;->provision_actionbar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 304
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/provision/R$dimen;->provision_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 305
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lmiuix/provision/R$dimen;->provision_container_margin_top:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method protected getXiaoAiSupportVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public hasNavigationButton()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public hasPreview()Z
    .locals 0

    .line 99
    invoke-static {p0}, Lmiuix/provision/OobeUtil;->isTabletLand(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasSubTitle()Z
    .locals 0

    .line 110
    invoke-static {p0}, Lmiuix/provision/OobeUtil;->isTabletLand(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasTitle()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected isAnimEnded()Z
    .locals 2

    .line 477
    iget-boolean v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mHasPreview:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 480
    :cond_0
    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity;->mProvisionAnimHelper:Lmiuix/provision/ProvisionAnimHelper;

    if-eqz p0, :cond_1

    .line 481
    invoke-virtual {p0}, Lmiuix/provision/ProvisionAnimHelper;->isAnimEnded()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method protected isOtherAnimEnd()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public nextBtnCustomLogic()V
    .locals 0

    .line 0
    return-void
.end method

.method public onAminEnd()V
    .locals 1

    .line 69
    invoke-static {}, Lmiuix/provision/OobeUtil;->needFastAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 72
    invoke-virtual {p0, v0}, Lmiuix/provision/ProvisionBaseActivity;->updateButtonState(Z)V

    return-void
.end method

.method public onAminServiceConnected()V
    .locals 1

    .line 77
    invoke-static {}, Lmiuix/provision/OobeUtil;->needFastAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->isAnimEnded()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Lmiuix/provision/ProvisionBaseActivity;->updateButtonState(Z)V

    :cond_1
    return-void
.end method

.method public onBackAnimStart()V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->onBackButtonClick()V

    .line 95
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onBackButtonClick()V
    .locals 0

    .line 0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 313
    invoke-static {p0}, Lmiuix/provision/OobeUtil;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mDeviceProvisioned:Z

    .line 315
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 316
    iget-boolean p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mDeviceProvisioned:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mIsCompatibleMode:Z

    if-nez p1, :cond_b

    .line 317
    sget p1, Lmiuix/provision/R$layout;->provision_main_activity:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 319
    sget p1, Lmiuix/provision/R$id;->provision_preview_img:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mImageView:Landroid/widget/ImageView;

    .line 320
    sget p1, Lmiuix/provision/R$id;->provision_back_btn:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mBackBtn:Landroid/widget/TextView;

    .line 321
    sget p1, Lmiuix/provision/R$id;->provision_next_btn:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mNextBtn:Landroid/widget/TextView;

    .line 322
    sget p1, Lmiuix/provision/R$id;->provision_global_back_btn:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mGlobalBackBtn:Landroid/widget/ImageButton;

    .line 323
    sget p1, Lmiuix/provision/R$id;->provision_global_next_btn:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mGlobalNextBtn:Landroid/widget/ImageButton;

    .line 324
    sget p1, Lmiuix/provision/R$id;->provision_skip_btn:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mSkipBtn:Landroid/widget/TextView;

    .line 325
    sget p1, Lmiuix/provision/R$id;->provision_sub_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mSubTitle:Landroid/widget/TextView;

    .line 326
    sget p1, Lmiuix/provision/R$id;->provision_title_space:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mTitleSpace:Landroid/view/View;

    .line 327
    sget p1, Lmiuix/provision/R$id;->provision_lyt_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mTitleLayout:Landroid/view/View;

    .line 328
    invoke-static {}, Lmiuix/provision/OobeUtil;->consistentDesign()Z

    move-result p1

    if-nez p1, :cond_0

    .line 330
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mTitleLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/provision/R$dimen;->provision_padding_top_miui14:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lmiuix/provision/ProvisionBaseActivity;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lmiuix/provision/ProvisionBaseActivity;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 332
    :cond_0
    sget p1, Lmiuix/provision/R$id;->provision_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mTitle:Landroid/widget/TextView;

    .line 333
    invoke-static {}, Lmiuix/provision/OobeUtil;->isTabletDevice()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 334
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mTitle:Landroid/widget/TextView;

    const/16 v0, 0x51

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 336
    :cond_1
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mTitle:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 339
    :goto_0
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->hasPreview()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mHasPreview:Z

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 352
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->hasSubTitle()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 353
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mTitleSpace:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mSubTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 355
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    :cond_2
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_3

    sget-object p1, Lmiuix/provision/OobeUtil;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "ice"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 361
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lmiuix/provision/OobeUtil;->setHideNavigationBar(Landroid/view/Window;)V

    .line 364
    :cond_3
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mBackBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->mGlobalBackBtn:Landroid/widget/ImageButton;

    invoke-static {p1, v1}, Lmiuix/provision/OobeUtil;->updateViewVisibility(Landroid/view/View;Landroid/view/View;)V

    .line 365
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mNextBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->mGlobalNextBtn:Landroid/widget/ImageButton;

    invoke-static {p1, v1}, Lmiuix/provision/OobeUtil;->updateViewVisibility(Landroid/view/View;Landroid/view/View;)V

    .line 367
    sget p1, Lmiuix/provision/R$id;->provision_preview_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 368
    iget-boolean v1, p0, Lmiuix/provision/ProvisionBaseActivity;->mHasPreview:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->hasNavigationButton()Z

    move-result p1

    .line 372
    sget v1, Lmiuix/provision/R$id;->provision_lyt_btn:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_5

    move p1, v0

    goto :goto_2

    :cond_5
    move p1, v2

    .line 373
    :goto_2
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->hasTitle()Z

    move-result p1

    .line 377
    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->mTitleLayout:Landroid/view/View;

    if-eqz p1, :cond_6

    move v2, v0

    :cond_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 379
    new-instance p1, Lmiuix/provision/TitleLayoutHolder;

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->mTitleLayout:Landroid/view/View;

    invoke-direct {p1, v1, v0}, Lmiuix/provision/TitleLayoutHolder;-><init>(Landroid/view/View;Z)V

    .line 380
    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->mTitleLayout:Landroid/view/View;

    new-instance v2, Lmiuix/provision/ProvisionBaseActivity$4;

    invoke-direct {v2, p0, p1}, Lmiuix/provision/ProvisionBaseActivity$4;-><init>(Lmiuix/provision/ProvisionBaseActivity;Lmiuix/provision/TitleLayoutHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 393
    iget-boolean p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mHasPreview:Z

    if-nez p1, :cond_7

    invoke-static {p0}, Lmiuix/provision/OobeUtil;->isTabletLand(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 394
    :cond_7
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mNextBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->mNextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mBackBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mGlobalNextBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->mNextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mGlobalBackBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mSkipBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->mSkipClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    :cond_8
    invoke-static {}, Lmiuix/provision/OobeUtil;->isInternationalBuild()Z

    move-result p1

    if-nez p1, :cond_9

    .line 404
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->registerAccessibiltyStateChange(Landroid/content/Context;)V

    .line 408
    :cond_9
    invoke-static {}, Lmiuix/provision/OobeUtil;->needFastAnimation()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-direct {p0}, Lmiuix/provision/ProvisionBaseActivity;->needDelayBottomButton()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 409
    :cond_a
    invoke-virtual {p0, v0}, Lmiuix/provision/ProvisionBaseActivity;->updateButtonState(Z)V

    .line 410
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mH:Landroid/os/Handler;

    new-instance v0, Lmiuix/provision/ProvisionBaseActivity$5;

    invoke-direct {v0, p0}, Lmiuix/provision/ProvisionBaseActivity$5;-><init>(Lmiuix/provision/ProvisionBaseActivity;)V

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 419
    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.voicetrigger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 420
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "new_feature"

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->getXiaoAiSupportVersion()I

    move-result p0

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_c
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 488
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 489
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 490
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 492
    :cond_0
    invoke-static {}, Lmiuix/provision/OobeUtil;->isInternationalBuild()Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/provision/ProvisionBaseActivity;->unRegisterAccessibiltyStateChange(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onNextAminStart()V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->onNextButtonClick()V

    return-void
.end method

.method protected onNextButtonClick()V
    .locals 0

    .line 0
    return-void
.end method

.method public onSkipAminStart()V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->onSkipButtonClick()V

    return-void
.end method

.method protected onSkipButtonClick()V
    .locals 0

    .line 0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 451
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 453
    iget-boolean v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mHasPreview:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mDeviceProvisioned:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mIsCompatibleMode:Z

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Lmiuix/provision/ProvisionAnimHelper;

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lmiuix/provision/ProvisionAnimHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mProvisionAnimHelper:Lmiuix/provision/ProvisionAnimHelper;

    .line 455
    invoke-virtual {v0}, Lmiuix/provision/ProvisionAnimHelper;->registerAnimService()V

    .line 456
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mProvisionAnimHelper:Lmiuix/provision/ProvisionAnimHelper;

    invoke-virtual {v0, p0}, Lmiuix/provision/ProvisionAnimHelper;->setAnimListener(Lmiuix/provision/ProvisionAnimHelper$AnimListener;)V

    .line 457
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mProvisionAnimHelper:Lmiuix/provision/ProvisionAnimHelper;

    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->getTitleLayoutHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Lmiuix/provision/ProvisionAnimHelper;->setAnimY(I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 463
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    .line 464
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mProvisionAnimHelper:Lmiuix/provision/ProvisionAnimHelper;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmiuix/provision/ProvisionBaseActivity;->mHasPreview:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmiuix/provision/ProvisionBaseActivity;->mDeviceProvisioned:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lmiuix/provision/ProvisionBaseActivity;->mIsCompatibleMode:Z

    if-nez v1, :cond_0

    .line 465
    invoke-virtual {v0}, Lmiuix/provision/ProvisionAnimHelper;->unregisterAnimService()V

    const/4 v0, 0x0

    .line 466
    iput-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mProvisionAnimHelper:Lmiuix/provision/ProvisionAnimHelper;

    :cond_0
    return-void
.end method

.method protected setPreviewView(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 471
    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity;->mImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 472
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setSubTitle(I)V
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 143
    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity;->mSubTitle:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 136
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity;->mTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateButtonState(Z)V
    .locals 2

    .line 429
    invoke-static {p0}, Lmiuix/provision/OobeUtil;->isTabletLand(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mNextBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->mBackBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->mGlobalNextBtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->mGlobalBackBtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmiuix/provision/ProvisionBaseActivity;->mSkipBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_1

    .line 434
    sget v1, Lmiuix/provision/ProvisionBaseActivity;->NO_ALPHA:F

    goto :goto_0

    :cond_1
    sget v1, Lmiuix/provision/ProvisionBaseActivity;->HALF_ALPHA:F

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 435
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mBackBtn:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    sget v1, Lmiuix/provision/ProvisionBaseActivity;->NO_ALPHA:F

    goto :goto_1

    :cond_2
    sget v1, Lmiuix/provision/ProvisionBaseActivity;->HALF_ALPHA:F

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 436
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mGlobalNextBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    sget v1, Lmiuix/provision/ProvisionBaseActivity;->NO_ALPHA:F

    goto :goto_2

    :cond_3
    sget v1, Lmiuix/provision/ProvisionBaseActivity;->HALF_ALPHA:F

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 437
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mGlobalBackBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    sget v1, Lmiuix/provision/ProvisionBaseActivity;->NO_ALPHA:F

    goto :goto_3

    :cond_4
    sget v1, Lmiuix/provision/ProvisionBaseActivity;->HALF_ALPHA:F

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 438
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mSkipBtn:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    sget v1, Lmiuix/provision/ProvisionBaseActivity;->NO_ALPHA:F

    goto :goto_4

    :cond_5
    sget v1, Lmiuix/provision/ProvisionBaseActivity;->HALF_ALPHA:F

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 439
    invoke-static {}, Lmiuix/provision/OobeUtil;->needFastAnimation()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lmiuix/provision/ProvisionBaseActivity;->needDelayBottomButton()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 440
    :cond_6
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mNextBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 441
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mBackBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 442
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mGlobalNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 443
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mGlobalBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 444
    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity;->mSkipBtn:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_7
    return-void
.end method
