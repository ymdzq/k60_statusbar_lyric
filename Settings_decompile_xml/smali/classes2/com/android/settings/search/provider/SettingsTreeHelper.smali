.class Lcom/android/settings/search/provider/SettingsTreeHelper;
.super Ljava/lang/Object;
.source "SettingsTreeHelper.java"


# static fields
.field private static final ASSET_FILENAME:Ljava/lang/String; = "assets/index.json"

.field private static final BUILD_TREE:Ljava/lang/String; = "tree"

.field private static final BUILD_UTC:Ljava/lang/String; = "ro.build.date.utc"

.field private static final FILENAME:Ljava/lang/String; = "index.json"

.field private static final TAG:Ljava/lang/String; = "SettingsTreeHelper"

.field private static sInstance:Lcom/android/settings/search/provider/SettingsTreeHelper;


# instance fields
.field private mFile:Ljava/io/File;

.field private mLocale:Ljava/lang/String;

.field private mTree:Lcom/android/settingslib/search/SettingsTree;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string/jumbo v0, "ro.build.date.utc"

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mLocale:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 78
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "index.json"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mFile:Ljava/io/File;

    .line 80
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 81
    iget-object v1, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lcom/android/settingslib/search/SearchUtils;->readJSONObject(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    .line 84
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 85
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_1

    const-string/jumbo v0, "tree"

    .line 86
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 87
    invoke-static {p1, v0, v2}, Lcom/android/settingslib/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Z)Lcom/android/settingslib/search/SettingsTree;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mTree:Lcom/android/settingslib/search/SettingsTree;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 96
    :goto_1
    iget-object v1, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mTree:Lcom/android/settingslib/search/SettingsTree;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 98
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/search/SearchUtils;->readJSONObject(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v1

    .line 99
    invoke-static {p1, v1, v2}, Lcom/android/settingslib/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Z)Lcom/android/settingslib/search/SettingsTree;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mTree:Lcom/android/settingslib/search/SettingsTree;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 101
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/RuntimeException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 105
    :cond_2
    throw p1

    .line 108
    :cond_3
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/settings/search/provider/SettingsTreeHelper;->commit(Z)V

    .line 110
    invoke-static {p1}, Lcom/android/settingslib/search/KeywordsCloudConfigHelper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/search/KeywordsCloudConfigHelper;

    return-void
.end method

.method private commit(Z)V
    .locals 5

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mTree:Lcom/android/settingslib/search/SettingsTree;

    invoke-virtual {v0}, Lcom/android/settingslib/search/SettingsTree;->needCommit()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 168
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    iget-object v1, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mTree:Lcom/android/settingslib/search/SettingsTree;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/search/SettingsTree;->dispatchCommit(Ljava/lang/StringBuilder;)V

    .line 171
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "tree"

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v1, "ro.build.date.utc"

    const-string/jumbo v2, "ro.build.date.utc"

    .line 172
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 174
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 175
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catch_0
    :try_start_4
    const-string p1, "SettingsTreeHelper"

    const-string v0, "close file error!"

    .line 183
    :goto_0
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_3

    :catch_2
    :goto_1
    :try_start_5
    const-string v0, "SettingsTreeHelper"

    const-string v1, "commit error!"

    .line 177
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_1

    .line 181
    :try_start_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_3
    :try_start_7
    const-string p1, "SettingsTreeHelper"

    const-string v0, "close file error!"

    goto :goto_0

    .line 187
    :cond_1
    :goto_2
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return-void

    :goto_3
    if-eqz v0, :cond_2

    .line 181
    :try_start_8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catch_4
    :try_start_9
    const-string v0, "SettingsTreeHelper"

    const-string v1, "close file error!"

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    :goto_4
    throw p1

    :catchall_2
    move-exception p1

    .line 187
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/search/provider/SettingsTreeHelper;
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-static {p0, v0}, Lcom/android/settings/search/provider/SettingsTreeHelper;->getInstance(Landroid/content/Context;Z)Lcom/android/settings/search/provider/SettingsTreeHelper;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Z)Lcom/android/settings/search/provider/SettingsTreeHelper;
    .locals 4

    const-class v0, Lcom/android/settings/search/provider/SettingsTreeHelper;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/android/settings/search/provider/SettingsTreeHelper;->sInstance:Lcom/android/settings/search/provider/SettingsTreeHelper;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/settings/search/provider/SettingsTreeHelper;->mLocale:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/search/provider/SettingsTreeHelper;->localeHasChange(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :cond_0
    if-nez p1, :cond_1

    .line 53
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    if-eqz p0, :cond_3

    .line 58
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 59
    new-instance p1, Lcom/android/settings/search/provider/SettingsTreeHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/search/provider/SettingsTreeHelper;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/android/settings/search/provider/SettingsTreeHelper;->sInstance:Lcom/android/settings/search/provider/SettingsTreeHelper;

    long-to-double p0, v1

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "-"

    invoke-static {p0, p1, v1, v2, v3}, Lcom/android/settingslib/search/SearchUtils;->logCost(DDLjava/lang/Object;)V

    .line 62
    :cond_2
    sget-object p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->sInstance:Lcom/android/settings/search/provider/SettingsTreeHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 56
    :cond_3
    :try_start_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "instance not prepared yet"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static localeHasChange(Ljava/lang/String;)Z
    .locals 1

    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static releaseInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/android/settings/search/provider/SettingsTreeHelper;->sInstance:Lcom/android/settings/search/provider/SettingsTreeHelper;

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mTree:Lcom/android/settingslib/search/SettingsTree;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 148
    :cond_0
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mTree:Lcom/android/settingslib/search/SettingsTree;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/settingslib/search/SettingsTree;->dispatchDelete(Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result p1

    .line 150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-direct {p0, v1}, Lcom/android/settings/search/provider/SettingsTreeHelper;->commit(Z)V

    return p1

    :catchall_0
    move-exception p1

    .line 150
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public insert(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mTree:Lcom/android/settingslib/search/SettingsTree;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 138
    :cond_0
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mTree:Lcom/android/settingslib/search/SettingsTree;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/search/SettingsTree;->dispatchInsert(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object p1

    .line 140
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/search/provider/SettingsTreeHelper;->commit(Z)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 140
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mTree:Lcom/android/settingslib/search/SettingsTree;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mTree:Lcom/android/settingslib/search/SettingsTree;

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/search/SettingsTree;->dispatchOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 159
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 160
    invoke-direct {p0, p1}, Lcom/android/settings/search/provider/SettingsTreeHelper;->commit(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 159
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 8

    .line 115
    iget-object v0, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mTree:Lcom/android/settingslib/search/SettingsTree;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, v0}, Lcom/android/settings/search/provider/SettingsTreeHelper;->commit(Z)V

    .line 118
    new-instance v0, Lcom/android/settingslib/search/RankedCursor;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/RankedCursor;-><init>([Ljava/lang/String;)V

    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mTree:Lcom/android/settingslib/search/SettingsTree;

    move-object v2, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/settingslib/search/SettingsTree;->dispatchQuery(Lcom/android/settingslib/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 121
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mTree:Lcom/android/settingslib/search/SettingsTree;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 128
    :cond_0
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/provider/SettingsTreeHelper;->mTree:Lcom/android/settingslib/search/SettingsTree;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settingslib/search/SettingsTree;->dispatchUpdate(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-direct {p0, v1}, Lcom/android/settings/search/provider/SettingsTreeHelper;->commit(Z)V

    return p1

    :catchall_0
    move-exception p1

    .line 130
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
