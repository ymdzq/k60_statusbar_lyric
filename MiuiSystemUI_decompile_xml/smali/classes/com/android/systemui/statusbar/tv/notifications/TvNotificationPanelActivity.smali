.class public Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;
.super Landroid/app/Activity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler$Listener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBlurConsumer:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity$$ExternalSyntheticLambda0;

.field public mNotificationListView:Landroidx/leanback/widget/VerticalGridView;

.field public mNotificationPlaceholder:Landroid/view/View;

.field public mPanelAlreadyOpen:Z

.field public mTvNotificationAdapter:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;

.field public final mTvNotificationHandler:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mPanelAlreadyOpen:Z

    .line 6
    new-instance v0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity$$ExternalSyntheticLambda0;

    .line 8
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;)V

    .line 10
    iput-object v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mBlurConsumer:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity$$ExternalSyntheticLambda0;

    .line 13
    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationHandler:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final maybeClosePanel(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "android.app.action.CLOSE_NOTIFICATION_HANDLER_PANEL"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mPanelAlreadyOpen:Z

    .line 14
    if-eqz v0, :cond_0

    .line 16
    const-string v0, "android.app.action.TOGGLE_NOTIFICATION_HANDLER_PANEL"

    .line 18
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 33
    const/4 p0, 0x1

    .line 36
    return p0
    .line 37
.end method

.method public final notificationsUpdated(Landroid/util/SparseArray;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationAdapter:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;

    .line 2
    iput-object p1, v0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;->mNotifications:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 9
    move-result p1

    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p1, :cond_0

    .line 14
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p1, v0

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mNotificationListView:Landroidx/leanback/widget/VerticalGridView;

    .line 19
    const/16 v2, 0x8

    .line 21
    if-eqz p1, :cond_1

    .line 23
    move v3, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v3, v0

    .line 27
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 28
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mNotificationPlaceholder:Landroid/view/View;

    .line 31
    if-eqz p1, :cond_2

    .line 33
    goto :goto_2

    .line 35
    :cond_2
    move v0, v2

    .line 36
    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    return-void
    .line 40
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    move-result-object v0

    .line 8
    const v1, 0x800005

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 15
    move-result-object v0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mBlurConsumer:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity$$ExternalSyntheticLambda0;

    .line 19
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    .line 21
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->maybeClosePanel(Landroid/content/Intent;)Z

    .line 9
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    return-void

    .line 15
    :cond_0
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mPanelAlreadyOpen:Z

    .line 17
    const p1, 0x7f0d03ca    # @layout/tv_notification_panel 'res/layout/tv_notification_panel.xml'

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 22
    const p1, 0x7f0a069b    # @id/no_tv_notifications

    .line 25
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mNotificationPlaceholder:Landroid/view/View;

    .line 32
    new-instance p1, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;

    .line 34
    invoke-direct {p1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationAdapter:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;

    .line 39
    const p1, 0x7f0a06b9    # @id/notifications_list

    .line 41
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object p1

    .line 47
    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mNotificationListView:Landroidx/leanback/widget/VerticalGridView;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationAdapter:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;

    .line 52
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    iget-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mNotificationListView:Landroidx/leanback/widget/VerticalGridView;

    .line 57
    const v0, 0x7f07120e    # @dimen/tv_notification_panel_width '360.0dp'

    .line 59
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/VerticalGridView;->setColumnWidth(I)V

    .line 62
    iget-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationHandler:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;

    .line 65
    iput-object p0, p1, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;->mUpdateListener:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler$Listener;

    .line 67
    iget-object p1, p1, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;->mNotifications:Landroid/util/SparseArray;

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->notificationsUpdated(Landroid/util/SparseArray;)V

    .line 71
    return-void
    .line 74
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mTvNotificationHandler:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;

    .line 5
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;->mUpdateListener:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler$Listener;

    .line 8
    return-void
    .line 10
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 5
    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->mBlurConsumer:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity$$ExternalSyntheticLambda0;

    .line 9
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    .line 11
    return-void
    .line 14
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->maybeClosePanel(Landroid/content/Intent;)Z

    .line 5
    return-void
    .line 8
.end method
