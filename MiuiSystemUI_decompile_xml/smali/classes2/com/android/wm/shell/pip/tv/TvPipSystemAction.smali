.class public final Lcom/android/wm/shell/pip/tv/TvPipSystemAction;
.super Lcom/android/wm/shell/pip/tv/TvPipAction;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBroadcastIntent:Landroid/app/PendingIntent;

.field public mIconResource:I

.field public mTitleResource:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipController$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p6}, Lcom/android/wm/shell/pip/tv/TvPipAction;-><init>(ILcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V

    .line 2
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->mTitleResource:I

    .line 5
    if-ne p2, p1, :cond_0

    .line 7
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->mIconResource:I

    .line 9
    :cond_0
    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->mTitleResource:I

    .line 11
    iput p3, p0, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->mIconResource:I

    .line 13
    invoke-static {p5, p4}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 15
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->mBroadcastIntent:Landroid/app/PendingIntent;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final getPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->mBroadcastIntent:Landroid/app/PendingIntent;

    .line 2
    return-object p0
    .line 4
.end method

.method public final populateButton(Lcom/android/wm/shell/common/TvWindowMenuActionButton;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->mTitleResource:I

    .line 2
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->setTextAndDescription(I)V

    .line 4
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->mIconResource:I

    .line 7
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->setImageResource(I)V

    .line 9
    const/4 p0, 0x1

    .line 12
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 13
    const/4 p0, 0x0

    .line 16
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->setIsCustomCloseAction(Z)V

    .line 17
    return-void
    .line 20
.end method

.method public final toNotificationAction(Landroid/content/Context;)Landroid/app/Notification$Action;
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Notification$Action$Builder;

    .line 2
    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->mIconResource:I

    .line 4
    invoke-static {p1, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 6
    move-result-object v1

    .line 9
    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->mTitleResource:I

    .line 10
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 15
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->mBroadcastIntent:Landroid/app/PendingIntent;

    .line 16
    invoke-direct {v0, v1, p1, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 18
    const/4 p1, 0x0

    .line 21
    const/4 v1, 0x1

    .line 22
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipAction;->mActionType:I

    .line 23
    if-eq p0, v1, :cond_1

    .line 25
    const/4 v2, 0x5

    .line 27
    if-ne p0, v2, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    move p0, p1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    move p0, v1

    .line 33
    :goto_1
    if-eqz p0, :cond_2

    .line 34
    const/4 p1, 0x4

    .line 36
    :cond_2
    invoke-virtual {v0, p1}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    .line 37
    invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    .line 40
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 43
    move-result-object p0

    .line 46
    return-object p0
    .line 47
.end method
