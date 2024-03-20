.class public final Lcom/android/systemui/media/controls/resume/MediaResumeListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final context:Landroid/content/Context;

.field public currentUserId:I

.field public mediaBrowser:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

.field public final mediaBrowserCallback:Lcom/android/systemui/media/controls/resume/MediaResumeListener$mediaBrowserCallback$1;

.field public final mediaBrowserFactory:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowserFactory;

.field public mediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

.field public final mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

.field public final resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final tunerService:Lcom/android/systemui/tuner/TunerService;

.field public useMediaResumption:Z

.field public final userTrackerCallback:Lcom/android/systemui/media/controls/resume/MediaResumeListener$userTrackerCallback$1;

.field public final userUnlockReceiver:Lcom/android/systemui/media/controls/resume/MediaResumeListener$userUnlockReceiver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/media/controls/resume/ResumeMediaBrowserFactory;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/media/controls/util/MediaFlags;)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->context:Landroid/content/Context;

    .line 7
    move-object v2, p5

    .line 9
    iput-object v2, v0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 10
    move-object/from16 v2, p6

    .line 12
    iput-object v2, v0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->tunerService:Lcom/android/systemui/tuner/TunerService;

    .line 14
    move-object/from16 v2, p7

    .line 16
    iput-object v2, v0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->mediaBrowserFactory:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowserFactory;

    .line 18
    move-object/from16 v2, p9

    .line 20
    iput-object v2, v0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 22
    move-object/from16 v2, p10

    .line 24
    iput-object v2, v0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    move-result-object v2

    .line 31
    const-string v3, "qs_media_resumption"

    .line 32
    const/4 v4, 0x1

    .line 34
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 35
    const/4 v2, 0x0

    .line 38
    iput-boolean v2, v0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->useMediaResumption:Z

    .line 39
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 41
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 43
    iput-object v2, v0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 48
    move-result v1

    .line 51
    iput v1, v0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->currentUserId:I

    .line 52
    new-instance v3, Lcom/android/systemui/media/controls/resume/MediaResumeListener$userUnlockReceiver$1;

    .line 54
    invoke-direct {v3, p0}, Lcom/android/systemui/media/controls/resume/MediaResumeListener$userUnlockReceiver$1;-><init>(Lcom/android/systemui/media/controls/resume/MediaResumeListener;)V

    .line 56
    iput-object v3, v0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->userUnlockReceiver:Lcom/android/systemui/media/controls/resume/MediaResumeListener$userUnlockReceiver$1;

    .line 59
    new-instance v1, Lcom/android/systemui/media/controls/resume/MediaResumeListener$userTrackerCallback$1;

    .line 61
    invoke-direct {v1, p0}, Lcom/android/systemui/media/controls/resume/MediaResumeListener$userTrackerCallback$1;-><init>(Lcom/android/systemui/media/controls/resume/MediaResumeListener;)V

    .line 63
    iput-object v1, v0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->userTrackerCallback:Lcom/android/systemui/media/controls/resume/MediaResumeListener$userTrackerCallback$1;

    .line 66
    new-instance v2, Lcom/android/systemui/media/controls/resume/MediaResumeListener$mediaBrowserCallback$1;

    .line 68
    invoke-direct {v2, p0}, Lcom/android/systemui/media/controls/resume/MediaResumeListener$mediaBrowserCallback$1;-><init>(Lcom/android/systemui/media/controls/resume/MediaResumeListener;)V

    .line 70
    iput-object v2, v0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->mediaBrowserCallback:Lcom/android/systemui/media/controls/resume/MediaResumeListener$mediaBrowserCallback$1;

    .line 73
    iget-boolean v2, v0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->useMediaResumption:Z

    .line 75
    if-eqz v2, :cond_0

    .line 77
    sget-object v2, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 79
    const-string v4, "MediaResumeListener"

    .line 81
    move-object/from16 v5, p8

    .line 83
    invoke-virtual {v5, v4, p0, v2}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 85
    new-instance v4, Landroid/content/IntentFilter;

    .line 88
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    const-string v2, "android.intent.action.USER_UNLOCKED"

    .line 93
    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const/4 v5, 0x0

    .line 98
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 99
    const/4 v7, 0x0

    .line 101
    const/4 v8, 0x0

    .line 102
    const/16 v9, 0x30

    .line 103
    move-object v2, p2

    .line 105
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 106
    move-object v2, p3

    .line 109
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 110
    move-object v3, p4

    .line 112
    invoke-virtual {v2, v1, p4}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->loadSavedComponents()V

    .line 116
    :cond_0
    return-void
    .line 119
.end method

.method public static synthetic getUserUnlockReceiver$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    const-string/jumbo v0, "resumeComponents: "

    .line 6
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    return-void
    .line 22
.end method

.method public final loadSavedComponents()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->context:Landroid/content/Context;

    .line 7
    const-string v2, "media_control_prefs"

    .line 9
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 12
    move-result-object v1

    .line 15
    iget v2, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->currentUserId:I

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    const-string v5, "browser_components_"

    .line 20
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 36
    const/4 v2, 0x1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    new-instance v4, Lkotlin/text/Regex;

    .line 40
    const-string v5, ":"

    .line 42
    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v4, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 47
    move-result-object v1

    .line 50
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 51
    move-result v4

    .line 54
    if-nez v4, :cond_2

    .line 55
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 57
    move-result v4

    .line 60
    invoke-interface {v1, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 61
    move-result-object v4

    .line 64
    :cond_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 65
    move-result v5

    .line 68
    if-eqz v5, :cond_2

    .line 69
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 71
    move-result-object v5

    .line 74
    check-cast v5, Ljava/lang/String;

    .line 75
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 77
    move-result v5

    .line 80
    if-nez v5, :cond_1

    .line 81
    move v5, v2

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    move v5, v3

    .line 85
    :goto_0
    if-nez v5, :cond_0

    .line 86
    invoke-interface {v4}, Ljava/util/ListIterator;->nextIndex()I

    .line 88
    move-result v4

    .line 91
    add-int/2addr v4, v2

    .line 92
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 93
    move-result-object v4

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 98
    :cond_3
    :goto_1
    if-eqz v4, :cond_6

    .line 100
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object v1

    .line 105
    move v4, v3

    .line 106
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    move-result v5

    .line 110
    if-eqz v5, :cond_5

    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    move-result-object v5

    .line 116
    check-cast v5, Ljava/lang/String;

    .line 117
    const-string v6, "/"

    .line 119
    filled-new-array {v6}, [Ljava/lang/String;

    .line 121
    move-result-object v6

    .line 124
    invoke-static {v5, v6}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 125
    move-result-object v5

    .line 128
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    move-result-object v6

    .line 132
    check-cast v6, Ljava/lang/String;

    .line 133
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    move-result-object v7

    .line 138
    check-cast v7, Ljava/lang/String;

    .line 139
    new-instance v8, Landroid/content/ComponentName;

    .line 141
    invoke-direct {v8, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 146
    move-result v6

    .line 149
    const/4 v7, 0x3

    .line 150
    iget-object v9, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 151
    if-ne v6, v7, :cond_4

    .line 153
    const/4 v6, 0x2

    .line 155
    :try_start_0
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    move-result-object v5

    .line 159
    check-cast v5, Ljava/lang/String;

    .line 160
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 162
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_4

    .line 166
    :catch_0
    check-cast v9, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 167
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 172
    move-result-wide v4

    .line 175
    goto :goto_3

    .line 176
    :cond_4
    check-cast v9, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 177
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 182
    move-result-wide v4

    .line 185
    :goto_3
    move-wide v5, v4

    .line 186
    move v4, v2

    .line 187
    :goto_4
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 188
    move-result-object v5

    .line 191
    new-instance v6, Lkotlin/Pair;

    .line 192
    invoke-direct {v6, v8, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 197
    goto :goto_2

    .line 200
    :cond_5
    move v3, v4

    .line 201
    :cond_6
    iget v1, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->currentUserId:I

    .line 202
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray()[Ljava/lang/Object;

    .line 204
    move-result-object v0

    .line 207
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 208
    move-result-object v0

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    .line 212
    const-string v4, "loaded resume components for "

    .line 214
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, ": "

    .line 222
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object v0

    .line 233
    const-string v1, "MediaResumeListener"

    .line 234
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-eqz v3, :cond_7

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->writeSharedPrefs()V

    .line 241
    :cond_7
    return-void
    .line 244
.end method

.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZ)V
    .locals 1

    .line 1
    iget-boolean p4, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->useMediaResumption:Z

    .line 2
    if-eqz p4, :cond_7

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p2

    .line 9
    const/4 p4, 0x0

    .line 10
    if-nez p2, :cond_0

    .line 11
    invoke-virtual {p0, p4}, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->setMediaBrowser(Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;)V

    .line 13
    :cond_0
    iget p2, p3, Lcom/android/systemui/media/controls/models/player/MediaData;->playbackLocation:I

    .line 16
    const/4 p5, 0x0

    .line 18
    const/4 p6, 0x1

    .line 19
    if-nez p2, :cond_1

    .line 20
    move p2, p6

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move p2, p5

    .line 24
    :goto_0
    if-nez p2, :cond_2

    .line 25
    iget-object p2, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    sget-object v0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 32
    iget-object p2, p2, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    move p2, p5

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move p2, p6

    .line 41
    :goto_1
    iget-object v0, p3, Lcom/android/systemui/media/controls/models/player/MediaData;->resumeAction:Ljava/lang/Runnable;

    .line 42
    if-nez v0, :cond_7

    .line 44
    iget-boolean v0, p3, Lcom/android/systemui/media/controls/models/player/MediaData;->hasCheckedForResume:Z

    .line 46
    if-nez v0, :cond_7

    .line 48
    if-eqz p2, :cond_7

    .line 50
    iget-object p2, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->mediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 52
    if-nez p2, :cond_3

    .line 54
    move-object p2, p4

    .line 56
    :cond_3
    iget-object p2, p2, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 57
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object p2

    .line 62
    check-cast p2, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 63
    if-eqz p2, :cond_4

    .line 65
    iput-object p4, p2, Lcom/android/systemui/media/controls/models/player/MediaData;->resumeAction:Ljava/lang/Runnable;

    .line 67
    iput-boolean p6, p2, Lcom/android/systemui/media/controls/models/player/MediaData;->hasCheckedForResume:Z

    .line 69
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    const-string p6, "Checking for service component for "

    .line 73
    invoke-direct {p2, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    iget-object p3, p3, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 78
    const-string p6, "MediaResumeListener"

    .line 80
    invoke-static {p2, p3, p6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object p2, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->context:Landroid/content/Context;

    .line 85
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 87
    move-result-object p2

    .line 90
    new-instance p6, Landroid/content/Intent;

    .line 91
    const-string v0, "android.media.browse.MediaBrowserService"

    .line 93
    invoke-direct {p6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    iget v0, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->currentUserId:I

    .line 98
    invoke-virtual {p2, p6, p5, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 100
    move-result-object p2

    .line 103
    if-eqz p2, :cond_6

    .line 104
    new-instance p4, Ljava/util/ArrayList;

    .line 106
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 111
    move-result-object p2

    .line 114
    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    move-result p5

    .line 118
    if-eqz p5, :cond_6

    .line 119
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    move-result-object p5

    .line 124
    move-object p6, p5

    .line 125
    check-cast p6, Landroid/content/pm/ResolveInfo;

    .line 126
    iget-object p6, p6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 128
    iget-object p6, p6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 130
    invoke-static {p6, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    move-result p6

    .line 135
    if-eqz p6, :cond_5

    .line 136
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    goto :goto_2

    .line 141
    :cond_6
    if-eqz p4, :cond_7

    .line 142
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 144
    move-result p2

    .line 147
    if-lez p2, :cond_7

    .line 148
    new-instance p2, Lcom/android/systemui/media/controls/resume/MediaResumeListener$onMediaDataLoaded$1;

    .line 150
    invoke-direct {p2, p0, p1, p4}, Lcom/android/systemui/media/controls/resume/MediaResumeListener$onMediaDataLoaded$1;-><init>(Lcom/android/systemui/media/controls/resume/MediaResumeListener;Ljava/lang/String;Ljava/util/List;)V

    .line 152
    iget-object p0, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 155
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 157
    :cond_7
    return-void
    .line 160
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setMediaBrowser(Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->mediaBrowser:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->disconnect()V

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->mediaBrowser:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 9
    return-void
    .line 11
.end method

.method public final writeSharedPrefs()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 22
    check-cast v2, Lkotlin/Pair;

    .line 23
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 28
    check-cast v3, Landroid/content/ComponentName;

    .line 29
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v3, "/"

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/Number;

    .line 47
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 49
    move-result-wide v2

    .line 52
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    const-string v2, ":"

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    goto :goto_0

    .line 61
    :cond_0
    const-string v1, "media_control_prefs"

    .line 62
    const/4 v2, 0x0

    .line 64
    iget-object v3, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->context:Landroid/content/Context;

    .line 65
    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 67
    move-result-object v1

    .line 70
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 71
    move-result-object v1

    .line 74
    iget p0, p0, Lcom/android/systemui/media/controls/resume/MediaResumeListener;->currentUserId:I

    .line 75
    const-string v2, "browser_components_"

    .line 77
    invoke-static {v2, p0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 86
    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    move-result-object p0

    .line 90
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    return-void
    .line 94
.end method
