.class public final Lcom/android/systemui/statusbar/policy/NotificationIconObserver;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mShowNotificationIconObserver:Lcom/android/systemui/statusbar/policy/NotificationIconObserver$2;

.field public volatile mShowNotificationIcons:I

.field public final mUserChangedCallback:Lcom/android/systemui/statusbar/policy/NotificationIconObserver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/policy/NotificationIconObserver$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NotificationIconObserver$1;-><init>(Lcom/android/systemui/statusbar/policy/NotificationIconObserver;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;->mUserChangedCallback:Lcom/android/systemui/statusbar/policy/NotificationIconObserver$1;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 21
    move-result-object v1

    .line 24
    check-cast p3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 25
    invoke-virtual {p3, v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 27
    invoke-virtual {p3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 30
    move-result p3

    .line 33
    iput p3, p0, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;->mCurrentUserId:I

    .line 34
    new-instance p3, Lcom/android/systemui/statusbar/policy/NotificationIconObserver$2;

    .line 36
    invoke-direct {p3, p0, p2}, Lcom/android/systemui/statusbar/policy/NotificationIconObserver$2;-><init>(Lcom/android/systemui/statusbar/policy/NotificationIconObserver;Landroid/os/Handler;)V

    .line 38
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;->mShowNotificationIconObserver:Lcom/android/systemui/statusbar/policy/NotificationIconObserver$2;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    move-result-object p0

    .line 46
    const-string/jumbo p1, "status_bar_show_notification_icon"

    .line 47
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 50
    move-result-object p1

    .line 53
    const/4 p2, 0x0

    .line 54
    const/4 v0, -0x1

    .line 55
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 56
    invoke-virtual {p3, p2}, Lcom/android/systemui/statusbar/policy/NotificationIconObserver$2;->onChange(Z)V

    .line 59
    return-void
    .line 62
.end method
