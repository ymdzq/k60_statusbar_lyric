.class public final Lcom/android/systemui/qs/MiuiQSTileRevealController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mPagedTileLayout:Lcom/android/systemui/qs/MiuiPagedTileLayout;

.field public final mQSPanel:Lcom/android/systemui/qs/MiuiQSPanel;

.field public final mRevealQsTiles:Lcom/android/systemui/qs/MiuiQSTileRevealController$1;

.field public final mTilesToReveal:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/MiuiQSPanel;Lcom/android/systemui/qs/MiuiPagedTileLayout;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSTileRevealController;->mTilesToReveal:Landroid/util/ArraySet;

    .line 10
    new-instance v0, Landroid/os/Handler;

    .line 12
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSTileRevealController;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v0, Lcom/android/systemui/qs/MiuiQSTileRevealController$1;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/MiuiQSTileRevealController$1;-><init>(Lcom/android/systemui/qs/MiuiQSTileRevealController;)V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSTileRevealController;->mRevealQsTiles:Lcom/android/systemui/qs/MiuiQSTileRevealController$1;

    .line 24
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSTileRevealController;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSTileRevealController;->mQSPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 28
    iput-object p3, p0, Lcom/android/systemui/qs/MiuiQSTileRevealController;->mPagedTileLayout:Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 30
    return-void
    .line 32
.end method
