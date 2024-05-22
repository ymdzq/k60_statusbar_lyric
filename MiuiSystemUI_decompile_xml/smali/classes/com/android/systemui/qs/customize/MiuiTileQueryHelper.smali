.class public final Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mContext:Landroid/content/Context;

.field public mFinished:Z

.field public mListener:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mSpecs:Landroid/util/ArraySet;

.field public final mTiles:Ljava/util/ArrayList;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mTiles:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mContext:Landroid/content/Context;

    .line 19
    iput-object p3, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 21
    iput-object p4, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 23
    iput-object p2, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public final addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 4
    move-result v1

    .line 7
    if-nez v1, :cond_3

    .line 8
    const-string v1, "edit"

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p3, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 20
    const-class v1, Landroid/widget/Button;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 27
    iput-object v1, p3, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 28
    if-nez p4, :cond_1

    .line 30
    iget-object v1, p3, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 32
    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 34
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    :cond_1
    const/4 p2, 0x0

    .line 40
    :cond_2
    iput-object p2, p3, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 41
    new-instance p2, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;

    .line 43
    invoke-direct {p2, p1, p3, p4}, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileInfo;-><init>(Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 45
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mTiles:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_3
    :goto_0
    return-void
    .line 56
.end method
