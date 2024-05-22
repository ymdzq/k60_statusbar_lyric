.class public final Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final __db:Landroidx/room/RoomDatabase;

.field public final __insertionAdapterOfNotificationUsageInfo:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;

.field public final __preparedStmtOfClearTableData:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;

.field public final __preparedStmtOfDeleteUsageInfo:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;

.field public final __updateAdapterOfNotificationUsageInfo:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 5
    new-instance v0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;

    .line 7
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;-><init>(Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;I)V

    .line 10
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;->__insertionAdapterOfNotificationUsageInfo:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;

    .line 13
    new-instance v0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;

    .line 15
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, p1, v2}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;-><init>(Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;I)V

    .line 18
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;->__updateAdapterOfNotificationUsageInfo:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;

    .line 21
    new-instance v0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;

    .line 23
    const/4 v2, 0x2

    .line 25
    invoke-direct {v0, p1, v2, v1}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;-><init>(Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;II)V

    .line 26
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;->__preparedStmtOfDeleteUsageInfo:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;

    .line 29
    new-instance v0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;

    .line 31
    const/4 v2, 0x3

    .line 33
    invoke-direct {v0, p1, v2, v1}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;-><init>(Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;II)V

    .line 34
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl;->__preparedStmtOfClearTableData:Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;

    .line 37
    return-void
    .line 39
.end method
