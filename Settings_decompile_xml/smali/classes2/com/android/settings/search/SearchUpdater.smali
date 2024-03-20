.class public Lcom/android/settings/search/SearchUpdater;
.super Ljava/lang/Object;
.source "SearchUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/SearchUpdater$TaskManager;,
        Lcom/android/settings/search/SearchUpdater$UpdateHandler;
    }
.end annotation


# static fields
.field public static final ABOUT_DEVICE:I = 0x1

.field public static final ALL:I = -0x1

.field public static final BACKUP:I = 0x80

.field public static final DISPLAY:I = 0x4

.field public static final GOOGLE:I = 0x10000

.field public static final KEY:I = 0x20

.field public static final LOCK_SCREEN:I = 0x10

.field public static final OTHER:I = -0x80000000

.field public static final PHONE:I = 0x40

.field public static final SIM:I = 0x40000000

.field public static final SOUND:I = 0x8

.field private static final TAG:Ljava/lang/String; = "SearchUpdater"

.field public static final WIRELESS:I = 0x2

.field private static volatile sInstance:Lcom/android/settings/search/SearchUpdater;


# instance fields
.field private volatile mHandler:Lcom/android/settings/search/SearchUpdater$UpdateHandler;

.field private mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskManager:Lcom/android/settings/search/SearchUpdater$TaskManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOps(Lcom/android/settings/search/SearchUpdater;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/SearchUpdater;->mOps:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskManager(Lcom/android/settings/search/SearchUpdater;)Lcom/android/settings/search/SearchUpdater$TaskManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/SearchUpdater;->mTaskManager:Lcom/android/settings/search/SearchUpdater$TaskManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/android/settings/search/SearchUpdater;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/search/SearchUpdater;->update(I)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/android/settings/search/SearchUpdater$TaskManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/search/SearchUpdater$TaskManager;-><init>(Lcom/android/settings/search/SearchUpdater;Lcom/android/settings/search/SearchUpdater$TaskManager-IA;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchUpdater;->mTaskManager:Lcom/android/settings/search/SearchUpdater$TaskManager;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SearchUpdater;->mOps:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/android/settings/search/SearchUpdater;
    .locals 2

    .line 101
    sget-object v0, Lcom/android/settings/search/SearchUpdater;->sInstance:Lcom/android/settings/search/SearchUpdater;

    if-nez v0, :cond_1

    .line 102
    const-class v0, Lcom/android/settings/search/SearchUpdater;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Lcom/android/settings/search/SearchUpdater;->sInstance:Lcom/android/settings/search/SearchUpdater;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lcom/android/settings/search/SearchUpdater;

    invoke-direct {v1}, Lcom/android/settings/search/SearchUpdater;-><init>()V

    sput-object v1, Lcom/android/settings/search/SearchUpdater;->sInstance:Lcom/android/settings/search/SearchUpdater;

    .line 106
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 108
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/settings/search/SearchUpdater;->sInstance:Lcom/android/settings/search/SearchUpdater;

    return-object v0
.end method

.method private update(I)V
    .locals 2

    .line 126
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 128
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/search/SearchUpdater;->mOps:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/settings/search/AboutDeviceUpdateHelper;->update(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 129
    iget-object p0, p0, Lcom/android/settings/search/SearchUpdater;->mOps:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/settings/search/WirelessUpdateHelper;->update(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 130
    iget-object p0, p0, Lcom/android/settings/search/SearchUpdater;->mOps:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/settings/search/DisplayUpdateHelper;->update(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 131
    iget-object p0, p0, Lcom/android/settings/search/SearchUpdater;->mOps:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/settings/search/SoundUpdateHelper;->update(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    .line 132
    iget-object p0, p0, Lcom/android/settings/search/SearchUpdater;->mOps:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/settings/search/SecurityUpdateHelper;->update(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_4
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    .line 133
    iget-object p0, p0, Lcom/android/settings/search/SearchUpdater;->mOps:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/settings/search/KeySettingsUpdateHelper;->update(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_5
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_6

    .line 134
    iget-object p0, p0, Lcom/android/settings/search/SearchUpdater;->mOps:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/settings/search/PhoneSettingsUpdateHelper;->update(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_6
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_7

    .line 135
    iget-object p0, p0, Lcom/android/settings/search/SearchUpdater;->mOps:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/settings/search/BackupSettingsUpdateHelper;->update(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_7
    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-eqz v1, :cond_8

    .line 136
    iget-object p0, p0, Lcom/android/settings/search/SearchUpdater;->mOps:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/settings/search/GoogleSettingsUpdateHelper;->update(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_8
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p1

    if-eqz v1, :cond_9

    .line 137
    iget-object p0, p0, Lcom/android/settings/search/SearchUpdater;->mOps:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/settings/search/SimSettingsUpdateHelper;->update(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_9
    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_a

    .line 138
    iget-object p0, p0, Lcom/android/settings/search/SearchUpdater;->mOps:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/settings/search/OtherSettingsUpdateHelper;->update(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error occurs when updating, current: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SearchUpdater"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_0
    return-void
.end method


# virtual methods
.method public handleUpdate(I)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/settings/search/SearchUpdater;->mHandler:Lcom/android/settings/search/SearchUpdater$UpdateHandler;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SearchUpdater"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 119
    new-instance v1, Lcom/android/settings/search/SearchUpdater$UpdateHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/settings/search/SearchUpdater$UpdateHandler;-><init>(Lcom/android/settings/search/SearchUpdater;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/search/SearchUpdater;->mHandler:Lcom/android/settings/search/SearchUpdater$UpdateHandler;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/settings/search/SearchUpdater;->mTaskManager:Lcom/android/settings/search/SearchUpdater$TaskManager;

    invoke-virtual {v0, p1}, Lcom/android/settings/search/SearchUpdater$TaskManager;->add(I)V

    .line 122
    iget-object p0, p0, Lcom/android/settings/search/SearchUpdater;->mHandler:Lcom/android/settings/search/SearchUpdater$UpdateHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
