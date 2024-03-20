.class public final Lcom/miui/clock/MiuiDualClock$GetZoneNameTask;
.super Landroid/os/AsyncTask;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mCompleteCallback:Lcom/miui/clock/MiuiDualClock$OnGetZoneNameCompleteListener;

.field public final mContext:Landroid/content/Context;

.field public final mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/miui/clock/MiuiDualClock$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/clock/MiuiDualClock$GetZoneNameTask;->mUri:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/miui/clock/MiuiDualClock$GetZoneNameTask;->mContext:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lcom/miui/clock/MiuiDualClock$GetZoneNameTask;->mCompleteCallback:Lcom/miui/clock/MiuiDualClock$OnGetZoneNameCompleteListener;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    const-string/jumbo p1, "zone_displayname"

    .line 4
    const-string/jumbo v0, "zone_timename"

    .line 7
    const-string v1, "MiuiDualClock"

    .line 10
    const-string v2, ""

    .line 12
    const/4 v3, 0x0

    .line 14
    :try_start_0
    iget-object v4, p0, Lcom/miui/clock/MiuiDualClock$GetZoneNameTask;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    move-result-object v5

    .line 20
    iget-object v4, p0, Lcom/miui/clock/MiuiDualClock$GetZoneNameTask;->mUri:Ljava/lang/String;

    .line 21
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    move-result-object v6

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x0

    .line 30
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 31
    move-result-object v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 37
    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 41
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 43
    move-result v4

    .line 46
    if-ltz v4, :cond_1

    .line 47
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 49
    move-result v4

    .line 52
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 56
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    move-result v4

    .line 60
    if-eqz v4, :cond_0

    .line 61
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 63
    move-result v4

    .line 66
    if-ltz v4, :cond_0

    .line 67
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 69
    move-result v4

    .line 72
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    const-string v0, "get city name: "

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v0, ", from: "

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v0, p0, Lcom/miui/clock/MiuiDualClock$GetZoneNameTask;->mUri:Ljava/lang/String;

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 104
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    if-eqz v3, :cond_3

    .line 108
    goto :goto_1

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    goto :goto_2

    .line 112
    :catch_0
    move-exception p1

    .line 113
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    const-string v4, "get city from "

    .line 119
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object p0, p0, Lcom/miui/clock/MiuiDualClock$GetZoneNameTask;->mUri:Ljava/lang/String;

    .line 124
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string p0, " exception"

    .line 129
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p0

    .line 137
    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    if-eqz v3, :cond_3

    .line 141
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_3
    return-object v2

    .line 146
    :goto_2
    if-eqz v3, :cond_4

    .line 147
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_4
    throw p0
    .line 152
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/miui/clock/MiuiDualClock$GetZoneNameTask;->mCompleteCallback:Lcom/miui/clock/MiuiDualClock$OnGetZoneNameCompleteListener;

    .line 4
    if-eqz p0, :cond_3

    .line 6
    check-cast p0, Lcom/miui/clock/MiuiDualClock$$ExternalSyntheticLambda0;

    .line 8
    iget v0, p0, Lcom/miui/clock/MiuiDualClock$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 10
    iget-object p0, p0, Lcom/miui/clock/MiuiDualClock$$ExternalSyntheticLambda0;->f$0:Lcom/miui/clock/MiuiDualClock;

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 14
    goto :goto_0

    .line 17
    :pswitch_0
    iget-object v0, p0, Lcom/miui/clock/MiuiDualClock;->mResidentCity:Landroid/widget/TextView;

    .line 18
    if-eqz v0, :cond_3

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    iget-object p0, p0, Lcom/miui/clock/MiuiDualClock;->mContext:Landroid/content/Context;

    .line 28
    const p1, 0x7f130737    # @string/miui_clock_city_name_second 'Second clock'

    .line 30
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 36
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    goto :goto_2

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/miui/clock/MiuiDualClock;->mLocalCity:Landroid/widget/TextView;

    .line 41
    if-eqz v0, :cond_2

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/miui/clock/MiuiDualClock;->mContext:Landroid/content/Context;

    .line 51
    const v2, 0x7f130736    # @string/miui_clock_city_name_local 'Local'

    .line 53
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move-object v1, p1

    .line 61
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_2
    iget-object p0, p0, Lcom/miui/clock/MiuiDualClock;->mLocalCityChangeListener:Lcom/miui/clock/MiuiDualClock$OnLocalCityChangeListener;

    .line 65
    if-eqz p0, :cond_3

    .line 67
    check-cast p0, Lcom/android/keyguard/clock/MiuiKeyguardDualClock$$ExternalSyntheticLambda0;

    .line 69
    sget v0, Lcom/android/keyguard/clock/MiuiKeyguardDualClock;->$r8$clinit:I

    .line 71
    iget-object p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardDualClock$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/clock/MiuiKeyguardDualClock;

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 77
    move-result-object p0

    .line 80
    const-string v0, "local_city"

    .line 81
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    :cond_3
    :goto_2
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 88
.end method
