.class public Lcom/android/settings/device/DeviceStatusController;
.super Lcom/android/settings/BaseSettingsController;
.source "DeviceStatusController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/device/DeviceStatusController$UpdateTask;
    }
.end annotation


# instance fields
.field private isLoad:Z

.field private mArrowRight:Landroid/widget/ImageView;

.field private mRightValue:Landroid/widget/TextView;

.field private mUpdateTask:Lcom/android/settings/device/DeviceStatusController$UpdateTask;

.field private mVersionClick:Landroid/view/View$OnClickListener;

.field private queryResult:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$LGN1chpMnu99_yTcYI7rkt5RElE(Lcom/android/settings/device/DeviceStatusController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/device/DeviceStatusController;->lambda$setUpTextView$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e2lwN9dvYIAiYw9-b2rZcy7GyWQ(Lcom/android/settings/device/DeviceStatusController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/device/DeviceStatusController;->lambda$setUpTextView$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateResult(Lcom/android/settings/device/DeviceStatusController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/device/DeviceStatusController;->updateResult(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BaseSettingsController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/android/settings/device/DeviceStatusController;->queryResult:Ljava/lang/String;

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/android/settings/device/DeviceStatusController;->isLoad:Z

    .line 126
    new-instance p1, Lcom/android/settings/device/DeviceStatusController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/device/DeviceStatusController$1;-><init>(Lcom/android/settings/device/DeviceStatusController;)V

    iput-object p1, p0, Lcom/android/settings/device/DeviceStatusController;->mVersionClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/device/DeviceStatusController;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/device/DeviceStatusController;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/device/DeviceStatusController;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic lambda$setUpTextView$0(Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/device/DeviceStatusController;->updateResult(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setUpTextView$1()V
    .locals 3

    .line 62
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getUpdateInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/settings/device/DeviceStatusController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/device/DeviceStatusController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/device/DeviceStatusController;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateResult(Ljava/lang/String;)V
    .locals 4

    .line 102
    iput-object p1, p0, Lcom/android/settings/device/DeviceStatusController;->queryResult:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/android/settings/device/DeviceStatusController;->mRightValue:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 104
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/settings/device/DeviceStatusController;->mArrowRight:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/android/settings/device/DeviceStatusController;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/android/settings/device/DeviceStatusController;->mRightValue:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 115
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 116
    iget-object p1, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->settings_new_version_btn:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "about_phone_pv"

    .line 117
    invoke-static {v0}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/device/DeviceStatusController;->mRightValue:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p0, p0, Lcom/android/settings/device/DeviceStatusController;->mRightValue:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 121
    :cond_4
    iget-object p0, p0, Lcom/android/settings/device/DeviceStatusController;->mRightValue:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    .line 92
    iget-object p0, p0, Lcom/android/settings/device/DeviceStatusController;->mUpdateTask:Lcom/android/settings/device/DeviceStatusController$UpdateTask;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/device/DeviceStatusController;->updateState()V

    return-void
.end method

.method public setUpTextView(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 2

    .line 46
    iput-object p1, p0, Lcom/android/settings/device/DeviceStatusController;->mRightValue:Landroid/widget/TextView;

    .line 47
    iput-object p2, p0, Lcom/android/settings/device/DeviceStatusController;->mArrowRight:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Lcom/android/settings/device/DeviceStatusController;->mRightValue:Landroid/widget/TextView;

    sget p2, Lcom/android/settings/R$drawable;->new_version_button:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 51
    iget-object p1, p0, Lcom/android/settings/device/DeviceStatusController;->mRightValue:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->new_version_text_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object p1, p0, Lcom/android/settings/device/DeviceStatusController;->mRightValue:Landroid/widget/TextView;

    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/device/DeviceStatusController;->mRightValue:Landroid/widget/TextView;

    const/4 v0, 0x0

    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p2, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 53
    iget-object p1, p0, Lcom/android/settings/device/DeviceStatusController;->mRightValue:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/settings/R$dimen;->new_version_text_size:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 54
    iget-object p1, p0, Lcom/android/settings/device/DeviceStatusController;->mRightValue:Landroid/widget/TextView;

    const-string/jumbo p2, "sans-serif-medium"

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 55
    iget-object p1, p0, Lcom/android/settings/device/DeviceStatusController;->mRightValue:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/settings/device/DeviceStatusController;->mVersionClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object p1, p0, Lcom/android/settings/device/DeviceStatusController;->mRightValue:Landroid/widget/TextView;

    const p2, 0x800015

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/device/DeviceStatusController;->updateState()V

    .line 60
    iget-object p1, p0, Lcom/android/settings/device/DeviceStatusController;->queryResult:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/device/DeviceStatusController;->isLoad:Z

    if-nez p1, :cond_1

    .line 61
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/settings/device/DeviceStatusController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/device/DeviceStatusController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/device/DeviceStatusController;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/android/settings/device/DeviceStatusController;->isLoad:Z

    :cond_1
    return-void
.end method

.method public updateState()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/android/settings/device/DeviceStatusController;->mUpdateTask:Lcom/android/settings/device/DeviceStatusController$UpdateTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/device/DeviceStatusController;->mUpdateTask:Lcom/android/settings/device/DeviceStatusController$UpdateTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 77
    :cond_0
    new-instance v0, Lcom/android/settings/device/DeviceStatusController$UpdateTask;

    invoke-direct {v0, p0}, Lcom/android/settings/device/DeviceStatusController$UpdateTask;-><init>(Lcom/android/settings/device/DeviceStatusController;)V

    iput-object v0, p0, Lcom/android/settings/device/DeviceStatusController;->mUpdateTask:Lcom/android/settings/device/DeviceStatusController$UpdateTask;

    .line 79
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    iget-object v0, p0, Lcom/android/settings/device/DeviceStatusController;->queryResult:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/settings/device/DeviceStatusController;->queryResult:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/device/DeviceStatusController;->updateResult(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected updateStatus()V
    .locals 0

    .line 0
    return-void
.end method
