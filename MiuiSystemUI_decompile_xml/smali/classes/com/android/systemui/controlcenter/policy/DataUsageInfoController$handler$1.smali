.class public final Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$handler$1;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$handler$1;->this$0:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    const/16 v0, 0x91d

    .line 4
    if-ne p1, v0, :cond_5

    .line 6
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$handler$1;->this$0:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string p1, "DataUsageInfoController"

    .line 13
    const/4 v0, 0x0

    .line 15
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    .line 16
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    iget-object v2, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->context:Landroid/content/Context;

    .line 21
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    move-result-object v3

    .line 26
    sget-object v4, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->URI:Landroid/net/Uri;

    .line 27
    sget-object v5, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->PROJECT:[Ljava/lang/String;

    .line 29
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 34
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 40
    move-result v2

    .line 43
    const/4 v3, 0x1

    .line 44
    if-ne v2, v3, :cond_0

    .line 45
    goto :goto_0

    .line 47
    :cond_0
    const/4 v3, 0x0

    .line 48
    :goto_0
    if-eqz v3, :cond_2

    .line 49
    :cond_1
    const-string/jumbo v2, "sim_slot"

    .line 51
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 54
    move-result v2

    .line 57
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 58
    move-result v2

    .line 61
    new-instance v10, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;

    .line 62
    const-string/jumbo v3, "traffic_type"

    .line 64
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 67
    move-result v3

    .line 70
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 71
    move-result v5

    .line 74
    const-string/jumbo v3, "traffic_value"

    .line 75
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 78
    move-result v3

    .line 81
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 82
    move-result-object v6

    .line 85
    const-string/jumbo v3, "traffic_unit"

    .line 86
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 89
    move-result v3

    .line 92
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 93
    move-result v8

    .line 96
    const-string v3, "bill_type"

    .line 97
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 99
    move-result v3

    .line 102
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 103
    move-result v9

    .line 106
    const-string v3, "bill_value"

    .line 107
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 109
    move-result v3

    .line 112
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 113
    move-result-object v7

    .line 116
    move-object v3, v10

    .line 117
    move v4, v2

    .line 118
    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;-><init>(IILjava/lang/String;Ljava/lang/String;II)V

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v2

    .line 125
    invoke-virtual {v1, v2, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 129
    move-result v2

    .line 132
    if-nez v2, :cond_1

    .line 133
    :cond_2
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 135
    move-result v2

    .line 138
    const/4 v3, 0x2

    .line 139
    if-le v2, v3, :cond_3

    .line 140
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 142
    move-result v2

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    const-string/jumbo v4, "updating data usage with "

    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    const-string v2, " value sets."

    .line 160
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v2

    .line 168
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->uiExecutor:Ljava/util/concurrent/Executor;

    .line 172
    new-instance v3, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$handleQueryDataUsage$1;

    .line 174
    invoke-direct {v3, v1, p0}, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$handleQueryDataUsage$1;-><init>(Landroid/util/ArrayMap;Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;)V

    .line 176
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    if-eqz v0, :cond_5

    .line 182
    goto :goto_1

    .line 184
    :catchall_0
    move-exception p0

    .line 185
    goto :goto_2

    .line 186
    :catch_0
    move-exception p0

    .line 187
    :try_start_1
    const-string v1, "query data usage failed."

    .line 188
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    if-eqz v0, :cond_5

    .line 193
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 195
    goto :goto_3

    .line 198
    :goto_2
    if-eqz v0, :cond_4

    .line 199
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_4
    throw p0

    .line 204
    :cond_5
    :goto_3
    return-void
    .line 205
.end method
