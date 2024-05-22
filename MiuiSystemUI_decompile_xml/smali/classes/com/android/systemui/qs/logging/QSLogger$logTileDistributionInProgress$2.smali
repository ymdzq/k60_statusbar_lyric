.class final Lcom/android/systemui/qs/logging/QSLogger$logTileDistributionInProgress$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileDistributionInProgress$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/logging/QSLogger$logTileDistributionInProgress$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/qs/logging/QSLogger$logTileDistributionInProgress$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/qs/logging/QSLogger$logTileDistributionInProgress$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileDistributionInProgress$2;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt1()I

    .line 4
    move-result p0

    .line 7
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt2()I

    .line 8
    move-result p1

    .line 11
    const-string v0, "Distributing tiles: [tilesPerPageCount="

    .line 12
    const-string v1, "] [totalTilesCount="

    .line 14
    const-string v2, "]"

    .line 16
    invoke-static {v0, p0, v1, p1, v2}, Landroidx/room/RoomOpenHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    return-object p0
    .line 22
.end method
