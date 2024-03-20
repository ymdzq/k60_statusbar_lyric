.class public final Lcom/android/systemui/statusbar/notification/NotificationSnapshot$onSnapshot$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationSnapshot;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationSnapshot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationSnapshot$onSnapshot$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationSnapshot;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationSnapshot$onSnapshot$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationSnapshot;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string/jumbo v0, "|"

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationSnapshot;->context:Landroid/content/Context;

    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    move-result-object v2

    .line 20
    sget-object v3, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    .line 21
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 24
    move-result-object v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    const-string v3, "key"

    .line 30
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 32
    move-result v3

    .line 35
    const-string v4, "pkg"

    .line 36
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 38
    move-result v4

    .line 41
    const-string/jumbo v5, "title"

    .line 42
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 45
    move-result v5

    .line 48
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 49
    move-result v6

    .line 52
    if-eqz v6, :cond_0

    .line 53
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    .line 55
    move-result v6

    .line 58
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 65
    move-result v6

    .line 68
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 75
    move-result-object v6

    .line 78
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 85
    move-result-object v6

    .line 88
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 89
    move-result v7

    .line 92
    const/4 v8, 0x3

    .line 93
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 94
    move-result v7

    .line 97
    const/4 v8, 0x0

    .line 98
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 99
    move-result-object v6

    .line 102
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v6, " >>"

    .line 106
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    :cond_1
    const-string v0, ""

    .line 121
    :goto_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationSnapshot;->mNotificationRecords:Ljava/lang/String;

    .line 123
    return-void
    .line 125
.end method
