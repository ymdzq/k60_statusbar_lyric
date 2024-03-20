.class public final Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;
.super Landroidx/room/SharedSQLiteStatement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;I)V
    .locals 1

    iput p2, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;->$r8$classId:I

    invoke-direct {p0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDB;)V

    return-void
.end method


# virtual methods
.method public final bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;)V
    .locals 8

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageDao_Impl$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x6

    .line 4
    const/4 v1, 0x5

    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x1

    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    goto :goto_1

    .line 13
    :pswitch_0
    iget p0, p2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->id:I

    .line 14
    int-to-long v6, p0

    .line 16
    invoke-interface {p1, v5, v6, v7}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 17
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->pkgName:Ljava/lang/String;

    .line 20
    if-nez p0, :cond_0

    .line 22
    invoke-interface {p1, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p1, v4, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 28
    :goto_0
    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->latestSentTime:J

    .line 31
    invoke-interface {p1, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 33
    iget p0, p2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->sentCount:I

    .line 36
    int-to-long v3, p0

    .line 38
    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 39
    iget p0, p2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->avgSentDaily:I

    .line 42
    int-to-long v2, p0

    .line 44
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 45
    iget p0, p2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->avgSentWeekly:I

    .line 48
    int-to-long v1, p0

    .line 50
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 51
    return-void

    .line 54
    :goto_1
    iget p0, p2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->id:I

    .line 55
    int-to-long v6, p0

    .line 57
    invoke-interface {p1, v5, v6, v7}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 58
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->pkgName:Ljava/lang/String;

    .line 61
    if-nez p0, :cond_1

    .line 63
    invoke-interface {p1, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 65
    goto :goto_2

    .line 68
    :cond_1
    invoke-interface {p1, v4, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 69
    :goto_2
    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->latestSentTime:J

    .line 72
    invoke-interface {p1, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 74
    iget p0, p2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->sentCount:I

    .line 77
    int-to-long v3, p0

    .line 79
    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 80
    iget p0, p2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->avgSentDaily:I

    .line 83
    int-to-long v2, p0

    .line 85
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 86
    iget p0, p2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->avgSentWeekly:I

    .line 89
    int-to-long v1, p0

    .line 91
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 92
    iget p0, p2, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->id:I

    .line 95
    int-to-long v0, p0

    .line 97
    const/4 p0, 0x7

    .line 98
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 99
    return-void

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 104
.end method
