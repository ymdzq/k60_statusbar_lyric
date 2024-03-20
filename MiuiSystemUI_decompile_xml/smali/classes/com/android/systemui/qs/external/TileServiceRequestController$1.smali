.class final Lcom/android/systemui/qs/external/TileServiceRequestController$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $qsHost:Lcom/android/systemui/qs/QSHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHostAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$1;->$qsHost:Lcom/android/systemui/qs/QSHost;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/external/TileRequestDialog;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$1;->$qsHost:Lcom/android/systemui/qs/QSHost;

    .line 4
    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileRequestDialog;-><init>(Landroid/content/Context;)V

    .line 10
    return-object v0
    .line 13
.end method
