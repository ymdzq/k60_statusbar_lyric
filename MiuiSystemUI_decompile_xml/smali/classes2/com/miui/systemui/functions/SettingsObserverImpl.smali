.class public final Lcom/miui/systemui/functions/SettingsObserverImpl;
.super Lcom/miui/interfaces/SettingsObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/util/Dumpable;


# instance fields
.field public final bgHandler:Landroid/os/Handler;

.field public final handler:Landroid/os/Handler;

.field public final mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mContentObserver:Lcom/miui/systemui/functions/SettingsObserverImpl$Observer;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mCurrentUser:I

.field public final mDefaultMap:Landroid/util/ArrayMap;

.field public final mListeningUris:Landroid/util/ArrayMap;

.field public final mUserMap:Landroid/util/ArrayMap;

.field public final mValueTypeMap:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/miui/interfaces/SettingsObserver;-><init>()V

    .line 2
    new-instance v0, Lcom/miui/systemui/functions/SettingsObserverImpl$Observer;

    .line 5
    invoke-direct {v0, p0}, Lcom/miui/systemui/functions/SettingsObserverImpl$Observer;-><init>(Lcom/miui/systemui/functions/SettingsObserverImpl;)V

    .line 7
    iput-object v0, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentObserver:Lcom/miui/systemui/functions/SettingsObserverImpl$Observer;

    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mListeningUris:Landroid/util/ArrayMap;

    .line 17
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mUserMap:Landroid/util/ArrayMap;

    .line 24
    new-instance v0, Landroid/util/ArrayMap;

    .line 26
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mValueTypeMap:Landroid/util/ArrayMap;

    .line 31
    new-instance v0, Landroid/util/ArrayMap;

    .line 33
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mDefaultMap:Landroid/util/ArrayMap;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    const-class v0, Lmiui/stub/MiuiStub$1;

    .line 47
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 52
    check-cast v1, Lmiui/stub/MiuiStub$1;

    .line 53
    iget-object v1, v1, Lmiui/stub/MiuiStub$1;->this$0:Lmiui/stub/MiuiStub;

    .line 55
    iget-object v1, v1, Lmiui/stub/MiuiStub;->mBaseProvider:Lmiui/stub/MiuiStub$BaseProvider;

    .line 57
    iget-object v1, v1, Lmiui/stub/MiuiStub$BaseProvider;->mMainHandler:Landroid/os/Handler;

    .line 59
    iput-object v1, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->handler:Landroid/os/Handler;

    .line 61
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 66
    check-cast v1, Lmiui/stub/MiuiStub$1;

    .line 67
    iget-object v1, v1, Lmiui/stub/MiuiStub$1;->this$0:Lmiui/stub/MiuiStub;

    .line 69
    iget-object v1, v1, Lmiui/stub/MiuiStub;->mBaseProvider:Lmiui/stub/MiuiStub$BaseProvider;

    .line 71
    iget-object v1, v1, Lmiui/stub/MiuiStub$BaseProvider;->mBgHandler:Landroid/os/Handler;

    .line 73
    iput-object v1, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->bgHandler:Landroid/os/Handler;

    .line 75
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 80
    check-cast v0, Lmiui/stub/MiuiStub$1;

    .line 81
    invoke-virtual {v0}, Lmiui/stub/MiuiStub$1;->getSystemUIContext()Landroid/content/Context;

    .line 83
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 87
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 91
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 93
    move-result v0

    .line 96
    iput v0, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mCurrentUser:I

    .line 97
    return-void
    .line 99
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_KEYGUARD:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    if-eqz p0, :cond_0

    .line 6
    const-string v0, "SettingsObserverImpl"

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    return-void
    .line 13
.end method


# virtual methods
.method public final varargs addCallback(Lcom/miui/interfaces/SettingsObserver$Callback;III[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 2
    array-length v0, v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const-string v8, " dataType:"

    const-string v9, " type:"

    if-ge v7, v0, :cond_0

    .line 3
    aget-object v10, v5, v7

    const-string v11, "addCallback keys:"

    .line 4
    invoke-static {v11, v10, v9, v3, v8}, Lcom/android/keyguard/wallpaper/entity/ClockInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v10, p3

    .line 5
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " userid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/systemui/functions/SettingsObserverImpl;->log(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length v7, v5

    move v0, v6

    :goto_1
    if-ge v6, v7, :cond_1a

    aget-object v10, v5, v6

    .line 7
    iget-object v11, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v10}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 8
    iget-object v11, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v11, v10, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    iget-object v11, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v11, Ljava/util/Set;

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-eq v3, v11, :cond_3

    if-eq v3, v12, :cond_2

    .line 10
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto :goto_2

    .line 11
    :cond_2
    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto :goto_2

    .line 12
    :cond_3
    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 13
    :goto_2
    iget-object v13, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 14
    iget-object v13, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v13, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v13, :cond_4

    iget-object v14, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentObserver:Lcom/miui/systemui/functions/SettingsObserverImpl$Observer;

    invoke-virtual {v13, v12, v0, v14, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_4
    const-string v12, "getFirstValue  firstValue:"

    const-string v13, "getFirstValue  throwException"

    .line 16
    invoke-virtual {v1, v10}, Lcom/miui/systemui/functions/SettingsObserverImpl;->getSpecifiedUserId(Ljava/lang/String;)I

    move-result v14

    if-eqz v10, :cond_5

    .line 17
    iget-object v15, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mValueTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v15, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    if-nez v15, :cond_6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    :cond_6
    :goto_3
    if-nez v15, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_4
    const-wide/16 v15, 0x0

    if-eqz v10, :cond_8

    .line 18
    iget-object v11, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mDefaultMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    if-nez v11, :cond_9

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_5

    :cond_8
    const/4 v11, 0x0

    :cond_9
    :goto_5
    if-nez v11, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    :goto_6
    move-wide v4, v15

    const-string v11, ""

    const/4 v15, 0x1

    if-eq v3, v15, :cond_14

    const/4 v15, 0x2

    if-eq v3, v15, :cond_f

    if-eqz v0, :cond_e

    move/from16 v16, v7

    const/4 v7, 0x1

    if-eq v0, v7, :cond_d

    if-eq v0, v15, :cond_c

    const/4 v7, 0x3

    if-eq v0, v7, :cond_b

    .line 19
    :try_start_0
    iget-object v4, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 20
    invoke-static {v4, v10, v14}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    .line 21
    :cond_b
    iget-object v7, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    long-to-float v4, v4

    .line 22
    invoke-static {v7, v10, v4, v14}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v4

    .line 23
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    .line 24
    :cond_c
    iget-object v7, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 25
    invoke-static {v7, v10, v4, v5, v14}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v4

    .line 26
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    .line 27
    :cond_d
    iget-object v7, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    long-to-int v4, v4

    .line 28
    invoke-static {v7, v10, v4, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 29
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    :cond_e
    move/from16 v16, v7

    .line 30
    iget-object v4, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 31
    invoke-static {v4, v10, v14}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    :cond_f
    move/from16 v16, v7

    if-eqz v0, :cond_13

    const/4 v7, 0x1

    if-eq v0, v7, :cond_12

    const/4 v7, 0x2

    if-eq v0, v7, :cond_11

    const/4 v7, 0x3

    if-eq v0, v7, :cond_10

    .line 32
    iget-object v4, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 33
    invoke-static {v4, v10, v14}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 34
    :cond_10
    iget-object v7, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    long-to-float v4, v4

    invoke-static {v7, v10, v4}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 35
    :cond_11
    iget-object v7, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v7, v10, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 36
    :cond_12
    iget-object v7, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    long-to-int v4, v4

    invoke-static {v7, v10, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 37
    :cond_13
    iget-object v4, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 38
    invoke-static {v4, v10, v14}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_14
    move/from16 v16, v7

    if-eqz v0, :cond_18

    const/4 v7, 0x1

    if-eq v0, v7, :cond_17

    const/4 v7, 0x2

    if-eq v0, v7, :cond_16

    const/4 v7, 0x3

    if-eq v0, v7, :cond_15

    .line 39
    iget-object v4, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v10, v14}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 40
    :cond_15
    iget-object v7, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    long-to-float v4, v4

    .line 41
    invoke-static {v7, v10, v4, v14}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v4

    .line 42
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 43
    :cond_16
    iget-object v7, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 44
    invoke-static {v7, v10, v4, v5, v14}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v4

    .line 45
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 46
    :cond_17
    iget-object v7, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    long-to-int v4, v4

    .line 47
    invoke-static {v7, v10, v4, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 48
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 49
    :cond_18
    iget-object v4, v1, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v10, v14}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :goto_7
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " key:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " userHandle:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/systemui/functions/SettingsObserverImpl;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :catchall_0
    move-object v4, v11

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v4, v11

    .line 51
    :goto_8
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/systemui/functions/SettingsObserverImpl;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_9
    if-eqz v4, :cond_19

    move-object v11, v4

    .line 52
    :cond_19
    invoke-interface {v2, v10, v11}, Lcom/miui/interfaces/SettingsObserver$Callback;->onContentChanged(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    const/4 v0, 0x0

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, v16

    goto/16 :goto_1

    :cond_1a
    return-void
.end method

.method public final varargs addCallback(Lcom/miui/interfaces/SettingsObserver$Callback;[Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    iget v4, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mCurrentUser:I

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/systemui/functions/SettingsObserverImpl;->addCallback(Lcom/miui/interfaces/SettingsObserver$Callback;III[Ljava/lang/String;)V

    return-void
.end method

.method public final varargs addCallbackForUser(Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;[Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v2, 0x0

    .line 2
    array-length v0, p2

    .line 3
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 7
    check-cast p2, [Ljava/lang/String;

    .line 8
    array-length v0, p2

    .line 10
    const/4 v1, 0x0

    .line 11
    move v3, v1

    .line 12
    :goto_0
    if-ge v3, v0, :cond_1

    .line 13
    aget-object v4, p2, v3

    .line 15
    iget-object v5, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mUserMap:Landroid/util/ArrayMap;

    .line 17
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 19
    move-result v5

    .line 22
    if-eqz v5, :cond_0

    .line 23
    iget-object p0, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mUserMap:Landroid/util/ArrayMap;

    .line 25
    invoke-virtual {p0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    const-string/jumbo p2, "\u6ce8\u518c\u5931\u8d25\uff01\u5df2\u7ecf\u4e3akey:"

    .line 33
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo p2, "\u6307\u5b9a\u8fc7\u5b58\u50a8\u7a7a\u95f4\uff0c\u4e00\u4e2akey\u4ec5\u80fd\u6307\u5b9a\u4e00\u4e2asettings\u7a7a\u95f4\uff0coriginValue\uff1a"

    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 54
    sget-boolean p1, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_KEYGUARD:Z

    .line 55
    if-eqz p1, :cond_2

    .line 57
    const-string p1, "SettingsObserverImpl"

    .line 59
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    goto :goto_1

    .line 64
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v5

    .line 68
    iget-object v6, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mUserMap:Landroid/util/ArrayMap;

    .line 69
    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 74
    goto :goto_0

    .line 76
    :cond_1
    const/4 v3, 0x0

    .line 77
    array-length v0, p2

    .line 78
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 79
    move-result-object p2

    .line 82
    move-object v5, p2

    .line 83
    check-cast v5, [Ljava/lang/String;

    .line 84
    const/4 v4, 0x0

    .line 86
    move-object v0, p0

    .line 87
    move-object v1, p1

    .line 88
    invoke-virtual/range {v0 .. v5}, Lcom/miui/systemui/functions/SettingsObserverImpl;->addCallback(Lcom/miui/interfaces/SettingsObserver$Callback;III[Ljava/lang/String;)V

    .line 89
    :cond_2
    :goto_1
    return-void
    .line 92
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mListeningUris:Landroid/util/ArrayMap;

    .line 2
    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object p2

    .line 9
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p2

    .line 13
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Landroid/net/Uri;

    .line 30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    const-string v3, "SettingsObserverImpl "

    .line 40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "  key="

    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    goto :goto_0

    .line 63
    :cond_0
    iget-object p0, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    if-eqz p0, :cond_1

    .line 66
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 68
    move-result-object p0

    .line 71
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object p0

    .line 75
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result p2

    .line 79
    if-eqz p2, :cond_1

    .line 80
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object p2

    .line 85
    check-cast p2, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 88
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/String;

    .line 92
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 94
    move-result-object p2

    .line 97
    check-cast p2, Ljava/util/Set;

    .line 98
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 100
    move-result p2

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    const-string v2, "SettingsObserverImpl key="

    .line 106
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v0, " "

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p2

    .line 125
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    goto :goto_1

    .line 129
    :cond_1
    return-void
    .line 130
.end method

.method public final getSpecifiedUserId(Ljava/lang/String;)I
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mUserMap:Landroid/util/ArrayMap;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    const-string v2, "getSpecifiedUserId user="

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v0, "[key] key:"

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/miui/systemui/functions/SettingsObserverImpl;->log(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mUserMap:Landroid/util/ArrayMap;

    .line 31
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Integer;

    .line 37
    if-nez p1, :cond_1

    .line 39
    iget p1, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mCurrentUser:I

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 49
    iget p0, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mCurrentUser:I

    .line 51
    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 54
    move-result p0

    .line 57
    :goto_1
    return p0
    .line 58
.end method

.method public final getValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/systemui/functions/SettingsObserverImpl;->getSpecifiedUserId(Ljava/lang/String;)I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq p3, v1, :cond_1

    .line 7
    const/4 v1, 0x2

    .line 9
    if-eq p3, v1, :cond_0

    .line 10
    iget-object p0, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 12
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 19
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p0, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 26
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    :goto_0
    if-nez p0, :cond_2

    .line 32
    goto :goto_1

    .line 34
    :cond_2
    move-object p2, p0

    .line 35
    :goto_1
    return-object p2
    .line 36
.end method

.method public final removeCallback(Lcom/miui/interfaces/SettingsObserver$Callback;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Set;

    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    .line 24
    move-result-object v0

    .line 27
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method
