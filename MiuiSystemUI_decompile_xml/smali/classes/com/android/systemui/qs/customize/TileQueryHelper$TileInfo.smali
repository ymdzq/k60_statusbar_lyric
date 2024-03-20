.class public final Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final isSystem:Z

.field public final spec:Ljava/lang/String;

.field public final state:Lcom/android/systemui/plugins/qs/QSTile$State;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    .line 9
    return-void
    .line 11
.end method
