.class final Lcom/android/settings/search/SearchUpdater$TaskManager;
.super Ljava/lang/Object;
.source "SearchUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TaskManager"
.end annotation


# instance fields
.field private mFlag:I

.field final synthetic this$0:Lcom/android/settings/search/SearchUpdater;


# direct methods
.method private constructor <init>(Lcom/android/settings/search/SearchUpdater;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settings/search/SearchUpdater$TaskManager;->this$0:Lcom/android/settings/search/SearchUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lcom/android/settings/search/SearchUpdater$TaskManager;->mFlag:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search/SearchUpdater;Lcom/android/settings/search/SearchUpdater$TaskManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/search/SearchUpdater$TaskManager;-><init>(Lcom/android/settings/search/SearchUpdater;)V

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 1

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget v0, p0, Lcom/android/settings/search/SearchUpdater$TaskManager;->mFlag:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/settings/search/SearchUpdater$TaskManager;->mFlag:I

    .line 82
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public get()I
    .locals 2

    .line 69
    monitor-enter p0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 71
    :try_start_0
    iget v1, p0, Lcom/android/settings/search/SearchUpdater$TaskManager;->mFlag:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 72
    monitor-exit p0

    return v0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget v0, p0, Lcom/android/settings/search/SearchUpdater$TaskManager;->mFlag:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 65
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(I)V
    .locals 2

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget v0, p0, Lcom/android/settings/search/SearchUpdater$TaskManager;->mFlag:I

    and-int v1, p1, v0

    if-ne v1, p1, :cond_0

    xor-int/2addr p1, v0

    .line 88
    iput p1, p0, Lcom/android/settings/search/SearchUpdater$TaskManager;->mFlag:I

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
