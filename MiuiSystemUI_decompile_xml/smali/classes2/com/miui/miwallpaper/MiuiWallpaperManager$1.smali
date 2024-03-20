.class public final Lcom/miui/miwallpaper/MiuiWallpaperManager$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;


# direct methods
.method public constructor <init>(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    const-string v0, "MiuiWallpaperManager"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "onServiceConnected::componentName = "

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string p1, ", instance = "

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    sget-object p1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string p1, " size: "

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 29
    iget-object p1, p1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mInitCallbacks:Ljava/util/HashSet;

    .line 31
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    .line 33
    move-result p1

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 43
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 47
    sget v0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->$r8$clinit:I

    .line 49
    if-nez p2, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string v0, "com.miui.miwallpaper.IMiuiWallpaperManagerService"

    .line 55
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 57
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    instance-of v1, v0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    .line 63
    if-eqz v1, :cond_1

    .line 65
    check-cast v0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    .line 67
    goto :goto_0

    .line 69
    :cond_1
    new-instance v0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;

    .line 70
    invoke-direct {v0, p2}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 72
    :goto_0
    iput-object v0, p1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    .line 75
    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 77
    iget-object v0, p1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWallpaperChangeCallbacks:Ljava/util/HashMap;

    .line 79
    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWallpaperChangeCallbacks:Ljava/util/HashMap;

    .line 82
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 84
    move-result v1

    .line 87
    if-eqz v1, :cond_2

    .line 88
    monitor-exit v0

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    iget-object v1, p1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mWallpaperChangeCallbacks:Ljava/util/HashMap;

    .line 92
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 94
    move-result-object v1

    .line 97
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 98
    move-result-object v1

    .line 101
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    move-result v2

    .line 105
    if-eqz v2, :cond_4

    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    move-result-object v2

    .line 111
    check-cast v2, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 114
    move-result-object v3

    .line 117
    check-cast v3, Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;

    .line 118
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 120
    move-result-object v2

    .line 123
    check-cast v2, Ljava/lang/Integer;

    .line 124
    if-eqz v2, :cond_3

    .line 126
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 128
    move-result v2

    .line 131
    invoke-virtual {p1, v3, v2}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->registerWallpaperChangeListener(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;I)V

    .line 132
    goto :goto_1

    .line 135
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    :goto_2
    iget-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 137
    iget-object p1, p1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mInitCallbacks:Ljava/util/HashSet;

    .line 139
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 141
    move-result-object p1

    .line 144
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    move-result v0

    .line 148
    if-eqz v0, :cond_6

    .line 149
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    move-result-object v0

    .line 154
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$2;

    .line 155
    if-eqz v0, :cond_5

    .line 157
    sget-object v1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->sInstance:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 159
    invoke-virtual {v0, v1}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$2;->onMiuiWallpaperInitialized(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    .line 161
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 164
    goto :goto_3

    .line 167
    :cond_6
    :try_start_1
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 168
    new-instance p1, Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerDeathRecipient;

    .line 170
    invoke-direct {p1, p2, p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerDeathRecipient;-><init>(Landroid/os/IBinder;Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    .line 172
    iput-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 175
    const/4 p0, 0x0

    .line 177
    invoke-interface {p2, p1, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    goto :goto_4

    .line 181
    :catchall_0
    move-exception p0

    .line 182
    const-string p1, "MiuiWallpaperManager"

    .line 183
    const-string p2, "linkToDeath fail : "

    .line 185
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    :goto_4
    return-void

    .line 190
    :catchall_1
    move-exception p0

    .line 191
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    throw p0
    .line 193
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
