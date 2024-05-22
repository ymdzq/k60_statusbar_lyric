.class public final Lcom/android/systemui/qs/QSTileRevealController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mPagedTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field public final mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

.field public final mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

.field public final mRevealQsTiles:Lcom/android/systemui/qs/QSTileRevealController$1;

.field public final mTilesToReveal:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/PagedTileLayout;Lcom/android/systemui/qs/customize/QSCustomizerController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/qs/QSTileRevealController;->mTilesToReveal:Landroid/util/ArraySet;

    .line 10
    new-instance v0, Landroid/os/Handler;

    .line 12
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/qs/QSTileRevealController;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v0, Lcom/android/systemui/qs/QSTileRevealController$1;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSTileRevealController$1;-><init>(Lcom/android/systemui/qs/QSTileRevealController;)V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/qs/QSTileRevealController;->mRevealQsTiles:Lcom/android/systemui/qs/QSTileRevealController$1;

    .line 24
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileRevealController;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/qs/QSTileRevealController;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 28
    iput-object p3, p0, Lcom/android/systemui/qs/QSTileRevealController;->mPagedTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 30
    iput-object p4, p0, Lcom/android/systemui/qs/QSTileRevealController;->mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 32
    return-void
    .line 34
.end method
