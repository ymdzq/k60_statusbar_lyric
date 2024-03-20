.class public final synthetic Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;->this$0:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v1

    .line 13
    :try_start_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDataChanged:Z

    .line 14
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-eqz v2, :cond_1

    .line 17
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mContext:Landroid/content/Context;

    .line 19
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/DatabaseHelper;->getDbInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;)V

    .line 28
    :cond_1
    :goto_0
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p0
    .line 34
.end method
