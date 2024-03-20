.class public final Lcom/android/systemui/ForegroundServiceNotificationListener$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/ForegroundServiceController$UserStateUpdateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

.field public final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ForegroundServiceNotificationListener;Lcom/android/systemui/statusbar/notification/ExpandedNotification;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$2;->this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final updateUserState(Lcom/android/systemui/ForegroundServicesUserState;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$2;->this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    .line 9
    invoke-static {p0}, Lcom/android/systemui/ForegroundServiceController;->isDisclosureNotification(Landroid/service/notification/StatusBarNotification;)Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 p0, 0x0

    .line 17
    iput-object p0, p1, Lcom/android/systemui/ForegroundServicesUserState;->mRunning:[Ljava/lang/String;

    .line 18
    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p1, Lcom/android/systemui/ForegroundServicesUserState;->mServiceStartTime:J

    .line 22
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    iget-object v1, p1, Lcom/android/systemui/ForegroundServicesUserState;->mImportantNotifications:Landroid/util/ArrayMap;

    .line 34
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 39
    check-cast v2, Landroid/util/ArraySet;

    .line 40
    const/4 v3, 0x0

    .line 42
    if-nez v2, :cond_1

    .line 43
    move v4, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 47
    move-result v4

    .line 50
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 51
    move-result v2

    .line 54
    if-nez v2, :cond_2

    .line 55
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_2
    :goto_0
    or-int/lit8 v1, v4, 0x0

    .line 60
    iget-object p1, p1, Lcom/android/systemui/ForegroundServicesUserState;->mStandardLayoutNotifications:Landroid/util/ArrayMap;

    .line 62
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 67
    check-cast v2, Landroid/util/ArraySet;

    .line 68
    if-nez v2, :cond_3

    .line 70
    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 73
    move-result v3

    .line 76
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 77
    move-result p0

    .line 80
    if-nez p0, :cond_4

    .line 81
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_4
    :goto_1
    or-int p0, v3, v1

    .line 86
    return p0
    .line 88
.end method
