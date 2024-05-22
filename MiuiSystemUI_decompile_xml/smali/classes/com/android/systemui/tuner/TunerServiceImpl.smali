.class public Lcom/android/systemui/tuner/TunerServiceImpl;
.super Lcom/android/systemui/tuner/TunerService;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final RESET_EXCEPTION_LIST:[Ljava/lang/String;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUser:I

.field public mCurrentUserTracker:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field public final mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

.field public final mListeningUris:Landroid/util/ArrayMap;

.field public final mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

.field public final mTunableLookup:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mTunables:Ljava/util/HashSet;

.field public final mTunerComponent:Landroid/content/ComponentName;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "qs_media_resumption"

    .line 2
    const-string v1, "qs_media_recommend"

    .line 4
    const-string/jumbo v2, "sysui_qs_tiles"

    .line 6
    const-string v3, "doze_always_on"

    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/systemui/tuner/TunerServiceImpl;->RESET_EXCEPTION_LIST:[Ljava/lang/String;

    .line 15
    return-void
    .line 17
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/util/leak/LeakDetector;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/settings/UserTracker;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerService;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/TunerServiceImpl$Observer;-><init>(Lcom/android/systemui/tuner/TunerServiceImpl;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    sget-boolean v0, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    .line 26
    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Ljava/util/HashSet;

    .line 30
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 32
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    .line 37
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 45
    iput-object p3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    .line 47
    iput-object p4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 49
    iput-object p5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 51
    new-instance p3, Landroid/content/ComponentName;

    .line 53
    const-class p4, Lcom/android/systemui/tuner/TunerActivity;

    .line 55
    invoke-direct {p3, p1, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    iput-object p3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunerComponent:Landroid/content/ComponentName;

    .line 60
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 62
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 66
    move-result-object p1

    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object p1

    .line 73
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result p3

    .line 77
    if-eqz p3, :cond_5

    .line 78
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object p3

    .line 83
    check-cast p3, Landroid/content/pm/UserInfo;

    .line 84
    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 86
    move-result-object p3

    .line 89
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 90
    move-result p3

    .line 93
    iput p3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 94
    iget-object p4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 96
    const-string/jumbo p5, "sysui_tuner_version"

    .line 98
    const/4 v0, 0x0

    .line 101
    invoke-static {p4, p5, v0, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 102
    move-result p3

    .line 105
    const/4 p4, 0x4

    .line 106
    if-eq p3, p4, :cond_1

    .line 107
    iget-object p3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 109
    iget v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 111
    invoke-static {p3, p5, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 113
    move-result p3

    .line 116
    const/4 v0, 0x1

    .line 117
    if-ge p3, v0, :cond_2

    .line 118
    const-string v1, "icon_blacklist"

    .line 120
    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/TunerServiceImpl;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 125
    if-eqz v2, :cond_2

    .line 126
    iget-object v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    .line 128
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconHideList(Landroid/content/Context;Ljava/lang/String;)Landroid/util/ArraySet;

    .line 130
    move-result-object v2

    .line 133
    const-string/jumbo v3, "rotate"

    .line 134
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 137
    const-string v3, "headset"

    .line 140
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v3, ","

    .line 145
    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 147
    move-result-object v2

    .line 150
    iget v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 151
    iget-object v4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 153
    invoke-static {v4, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 155
    :cond_2
    const/4 v1, 0x2

    .line 158
    if-ge p3, v1, :cond_3

    .line 159
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 161
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 163
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 165
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 169
    move-result-object v2

    .line 172
    iget-object v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunerComponent:Landroid/content/ComponentName;

    .line 173
    invoke-virtual {v2, v3, v1, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 175
    :cond_3
    if-ge p3, p4, :cond_4

    .line 178
    iget p3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 180
    new-instance v0, Lcom/android/systemui/tuner/TunerServiceImpl$$ExternalSyntheticLambda0;

    .line 182
    invoke-direct {v0, p0, p3}, Lcom/android/systemui/tuner/TunerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/tuner/TunerServiceImpl;I)V

    .line 184
    const-wide/16 v1, 0x1388

    .line 187
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    :cond_4
    invoke-virtual {p0, p4, p5}, Lcom/android/systemui/tuner/TunerServiceImpl;->setValue(ILjava/lang/String;)V

    .line 192
    goto :goto_1

    .line 195
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 196
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 198
    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 200
    move-result p1

    .line 203
    iput p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 204
    new-instance p1, Lcom/android/systemui/tuner/TunerServiceImpl$1;

    .line 206
    invoke-direct {p1, p0}, Lcom/android/systemui/tuner/TunerServiceImpl$1;-><init>(Lcom/android/systemui/tuner/TunerServiceImpl;)V

    .line 208
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUserTracker:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 211
    iget-object p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 213
    new-instance p3, Landroid/os/HandlerExecutor;

    .line 215
    invoke-direct {p3, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 217
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 220
    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 222
    return-void
    .line 225
.end method


# virtual methods
.method public final varargs addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V
    .locals 11

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_7

    .line 5
    aget-object v3, p2, v2

    .line 7
    iget-object v4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    move-result v4

    .line 14
    if-nez v4, :cond_0

    .line 15
    iget-object v4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    new-instance v5, Landroid/util/ArraySet;

    .line 19
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 21
    invoke-virtual {v4, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 32
    check-cast v4, Ljava/util/Set;

    .line 33
    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    sget-boolean v4, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    .line 38
    if-eqz v4, :cond_5

    .line 40
    iget-object v4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    .line 42
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    .line 47
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    .line 49
    iget-object v4, v4, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    .line 51
    if-eqz v4, :cond_5

    .line 53
    monitor-enter v4

    .line 55
    :try_start_0
    iget-object v6, v4, Lcom/android/systemui/util/leak/TrackedCollections;->mCollections:Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    .line 56
    :goto_1
    iget-object v7, v6, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 58
    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 60
    move-result-object v7

    .line 63
    if-eqz v7, :cond_1

    .line 64
    iget-object v8, v6, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mMap:Ljava/util/HashMap;

    .line 66
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    goto :goto_1

    .line 71
    :cond_1
    iget-object v6, v6, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mMap:Ljava/util/HashMap;

    .line 72
    new-instance v7, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;

    .line 74
    invoke-direct {v7, v5}, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;-><init>(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object v6

    .line 82
    check-cast v6, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;

    .line 83
    if-nez v6, :cond_3

    .line 85
    new-instance v6, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;

    .line 87
    invoke-direct {v6}, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;-><init>()V

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 92
    move-result-wide v7

    .line 95
    iput-wide v7, v6, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->startUptime:J

    .line 96
    iget-object v7, v4, Lcom/android/systemui/util/leak/TrackedCollections;->mCollections:Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    .line 98
    :goto_2
    iget-object v8, v7, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 100
    invoke-virtual {v8}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 102
    move-result-object v8

    .line 105
    if-eqz v8, :cond_2

    .line 106
    iget-object v9, v7, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mMap:Ljava/util/HashMap;

    .line 108
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    goto :goto_2

    .line 113
    :cond_2
    iget-object v8, v7, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mMap:Ljava/util/HashMap;

    .line 114
    new-instance v9, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;

    .line 116
    iget-object v7, v7, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 118
    invoke-direct {v9, v5, v7}, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 120
    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_3
    iget v7, v6, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->halfwayCount:I

    .line 126
    const/4 v8, -0x1

    .line 128
    if-ne v7, v8, :cond_4

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 131
    move-result-wide v7

    .line 134
    iget-wide v9, v6, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->startUptime:J

    .line 135
    sub-long/2addr v7, v9

    .line 137
    const-wide/32 v9, 0x1b7740

    .line 138
    cmp-long v7, v7, v9

    .line 141
    if-lez v7, :cond_4

    .line 143
    iget v7, v6, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastCount:I

    .line 145
    iput v7, v6, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->halfwayCount:I

    .line 147
    :cond_4
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 149
    move-result v5

    .line 152
    iput v5, v6, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastCount:I

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit v4

    .line 158
    goto :goto_3

    .line 159
    :catchall_0
    move-exception p0

    .line 160
    monitor-exit v4

    .line 161
    throw p0

    .line 162
    :cond_5
    :goto_3
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 163
    move-result-object v4

    .line 166
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    .line 167
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 169
    move-result v5

    .line 172
    if-nez v5, :cond_6

    .line 173
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    .line 175
    invoke-virtual {v5, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 180
    iget-object v6, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    .line 182
    iget v7, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 184
    invoke-virtual {v5, v4, v1, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 186
    :cond_6
    new-instance v4, Lcom/android/systemui/tuner/TunerServiceImpl$$ExternalSyntheticLambda1;

    .line 189
    invoke-direct {v4, p0, v3}, Lcom/android/systemui/tuner/TunerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/tuner/TunerServiceImpl;Ljava/lang/String;)V

    .line 191
    invoke-static {v4}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 194
    move-result-object v4

    .line 197
    check-cast v4, Ljava/lang/String;

    .line 198
    invoke-interface {p1, v3, v4}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    add-int/lit8 v2, v2, 0x1

    .line 203
    goto/16 :goto_0

    .line 205
    :cond_7
    return-void
    .line 207
.end method

.method public final clearAll()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerServiceImpl;->clearAllFromUser(I)V

    .line 4
    return-void
    .line 7
.end method

.method public final clearAllFromUser(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/demomode/DemoModeController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 4
    invoke-interface {v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 6
    move-result v2

    .line 9
    const-string/jumbo v3, "sysui_tuner_demo_on"

    .line 10
    const/4 v4, 0x0

    .line 13
    invoke-interface {v1, v4, v2, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->putIntForUser(IILjava/lang/String;)Z

    .line 14
    iget-object v0, v0, Lcom/android/systemui/demomode/DemoModeController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 17
    invoke-interface {v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 19
    move-result v1

    .line 22
    const-string/jumbo v2, "sysui_demo_allowed"

    .line 23
    invoke-interface {v0, v4, v1, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->putIntForUser(IILjava/lang/String;)Z

    .line 26
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 31
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v0

    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/String;

    .line 49
    sget-object v2, Lcom/android/systemui/tuner/TunerServiceImpl;->RESET_EXCEPTION_LIST:[Ljava/lang/String;

    .line 51
    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    goto :goto_0

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 60
    const/4 v3, 0x0

    .line 62
    invoke-static {v2, v1, v3, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 63
    goto :goto_0

    .line 66
    :cond_1
    return-void
    .line 67
.end method

.method public final getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 4
    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public final removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Set;

    .line 22
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    sget-boolean v0, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    .line 28
    if-eqz v0, :cond_1

    .line 30
    iget-object p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    .line 32
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 34
    :cond_1
    return-void
    .line 37
.end method

.method public final setValue(ILjava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p2, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public final showResetRequest(Lcom/android/systemui/tuner/TunerFragment$$ExternalSyntheticLambda0;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    .line 9
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    .line 12
    const v3, 0x7f130a32    # @string/remove_from_settings_prompt 'Remove System UI Tuner from Settings and stop using all of its features?'

    .line 14
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 21
    const v2, 0x7f130250    # @string/cancel 'Cancel'

    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, -0x2

    .line 32
    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 33
    const v2, 0x7f130948    # @string/qs_customize_remove 'Remove'

    .line 36
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 42
    new-instance v2, Lcom/android/systemui/tuner/TunerServiceImpl$$ExternalSyntheticLambda2;

    .line 43
    invoke-direct {v2, p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/tuner/TunerServiceImpl;Lcom/android/systemui/tuner/TunerFragment$$ExternalSyntheticLambda0;)V

    .line 45
    const/4 p0, -0x1

    .line 48
    invoke-virtual {v0, p0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 49
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 52
    return-void
    .line 55
.end method
