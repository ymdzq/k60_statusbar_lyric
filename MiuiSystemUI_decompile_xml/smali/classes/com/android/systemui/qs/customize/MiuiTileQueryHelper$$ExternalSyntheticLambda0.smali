.class public final synthetic Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$$ExternalSyntheticLambda0;->f$2:Z

    .line 6
    iget-object v2, v0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 8
    if-eqz v2, :cond_0

    .line 10
    iput-object v1, v2, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mAllTiles:Ljava/util/List;

    .line 12
    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->recalcSpecs()V

    .line 14
    :cond_0
    iput-boolean p0, v0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mFinished:Z

    .line 17
    return-void
    .line 19
.end method
