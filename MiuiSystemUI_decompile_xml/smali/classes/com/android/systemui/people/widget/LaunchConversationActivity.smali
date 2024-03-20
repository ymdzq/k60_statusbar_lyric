.class public Lcom/android/systemui/people/widget/LaunchConversationActivity;
.super Landroid/app/Activity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public mBubble:Lcom/android/wm/shell/bubbles/Bubble;

.field public final mBubblesManagerOptional:Ljava/util/Optional;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mCommonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public mEntryToBubble:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mIsForTesting:Z

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Ljava/util/Optional;Landroid/os/UserManager;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 5
    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 12
    iput-object p2, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mCommonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 14
    iput-object p3, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mBubblesManagerOptional:Ljava/util/Optional;

    .line 16
    iput-object p4, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mUserManager:Landroid/os/UserManager;

    .line 18
    iput-object p5, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 20
    new-instance p1, Lcom/android/systemui/people/widget/LaunchConversationActivity$1;

    .line 22
    invoke-direct {p1, p0}, Lcom/android/systemui/people/widget/LaunchConversationActivity$1;-><init>(Lcom/android/systemui/people/widget/LaunchConversationActivity;)V

    .line 24
    invoke-virtual {p5, p1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 27
    iput-object p6, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 30
    return-void
    .line 32
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mIsForTesting:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    move-result-object p1

    .line 12
    const-string v0, "extra_tile_id"

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 18
    const-string v0, "extra_package_name"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 24
    const-string v0, "extra_user_handle"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Landroid/os/UserHandle;

    .line 31
    const-string v1, "extra_notification_key"

    .line 33
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v8

    .line 38
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result p1

    .line 42
    if-nez p1, :cond_9

    .line 43
    iget-object p1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 45
    sget-object v1, Lcom/android/systemui/people/PeopleSpaceUtils$PeopleSpaceWidgetEvent;->PEOPLE_SPACE_WIDGET_CLICKED:Lcom/android/systemui/people/PeopleSpaceUtils$PeopleSpaceWidgetEvent;

    .line 47
    check-cast p1, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 49
    invoke-virtual {p1, v1}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 51
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mUserManager:Landroid/os/UserManager;

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    .line 56
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 62
    move-result p1

    .line 65
    invoke-static {p1}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    .line 66
    move-result-object p1

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 70
    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 77
    return-void

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mBubblesManagerOptional:Ljava/util/Optional;

    .line 81
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    .line 83
    move-result p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    iget-object p1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mBubblesManagerOptional:Ljava/util/Optional;

    .line 89
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 91
    move-result-object p1

    .line 94
    check-cast p1, Lcom/android/systemui/wmshell/BubblesManager;

    .line 95
    iget-object p1, p1, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    .line 97
    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 99
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    .line 101
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :try_start_1
    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mShortcutIdToBubble:Ljava/util/HashMap;

    .line 104
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-result-object v1

    .line 109
    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :try_start_2
    monitor-exit p1

    .line 112
    iput-object v1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 113
    iget-object p1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mCommonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 115
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 117
    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 119
    move-result-object p1

    .line 122
    iget-object v1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 123
    if-nez v1, :cond_2

    .line 125
    if-eqz p1, :cond_3

    .line 127
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 129
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    .line 131
    move-result v1

    .line 134
    if-eqz v1, :cond_3

    .line 135
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mEntryToBubble:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 139
    return-void

    .line 142
    :catchall_0
    move-exception v0

    .line 143
    monitor-exit p1

    .line 144
    throw v0

    .line 145
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 146
    if-nez p1, :cond_4

    .line 148
    const-string/jumbo p1, "statusbar"

    .line 150
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 153
    move-result-object p1

    .line 156
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 157
    move-result-object p1

    .line 160
    iput-object p1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 161
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    move-result p1

    .line 166
    if-eqz p1, :cond_5

    .line 167
    goto :goto_0

    .line 169
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 170
    if-eqz p1, :cond_8

    .line 172
    iget-object p1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mCommonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 174
    if-nez p1, :cond_6

    .line 176
    goto :goto_0

    .line 178
    :cond_6
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 179
    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 181
    move-result-object p1

    .line 184
    if-eqz p1, :cond_8

    .line 185
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 187
    if-nez v1, :cond_7

    .line 189
    goto :goto_0

    .line 191
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 192
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    .line 194
    const/4 v4, 0x1

    .line 196
    invoke-virtual {v1, p1, v4}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/NotificationVisibility;

    .line 197
    move-result-object v9

    .line 200
    new-instance p1, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;

    .line 201
    move-object v4, p1

    .line 203
    move-object v5, p0

    .line 204
    move-object v6, v2

    .line 205
    move-object v7, v0

    .line 206
    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/people/widget/LaunchConversationActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/people/widget/LaunchConversationActivity;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 207
    iget-object v1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 210
    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 212
    :cond_8
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 215
    move-result-object p1

    .line 218
    const-class v1, Landroid/content/pm/LauncherApps;

    .line 219
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 221
    move-result-object p1

    .line 224
    move-object v1, p1

    .line 225
    check-cast v1, Landroid/content/pm/LauncherApps;

    .line 226
    const/4 v4, 0x0

    .line 228
    const/4 v5, 0x0

    .line 229
    move-object v6, v0

    .line 230
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 231
    goto :goto_1

    .line 234
    :catch_0
    move-exception p1

    .line 235
    const-string v0, "PeopleSpaceLaunchConv"

    .line 236
    const-string v1, "Exception launching shortcut:"

    .line 238
    invoke-static {v1, p1, v0}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 240
    :cond_9
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 243
    return-void
    .line 246
.end method

.method public setIsForTesting(ZLcom/android/internal/statusbar/IStatusBarService;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mIsForTesting:Z

    .line 2
    iput-object p2, p0, Lcom/android/systemui/people/widget/LaunchConversationActivity;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 4
    return-void
    .line 6
.end method
