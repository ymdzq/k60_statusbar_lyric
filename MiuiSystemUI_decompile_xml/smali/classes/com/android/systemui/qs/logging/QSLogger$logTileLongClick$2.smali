.class final Lcom/android/systemui/qs/logging/QSLogger$logTileLongClick$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileLongClick$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/logging/QSLogger$logTileLongClick$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/qs/logging/QSLogger$logTileLongClick$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/qs/logging/QSLogger$logTileLongClick$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileLongClick$2;

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
    .locals 5

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr1()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt1()I

    .line 8
    move-result v0

    .line 11
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr2()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 15
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr3()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 19
    const-string v2, "["

    .line 20
    const-string v3, "]["

    .line 22
    const-string v4, "] Tile long clicked. StatusBarState="

    .line 24
    invoke-static {v2, p0, v3, v0, v4}, Lcom/android/keyguard/wallpaper/entity/ClockInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object p0

    .line 29
    const-string v0, ". TileState="

    .line 30
    invoke-static {p0, v1, v0, p1}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    return-object p0
    .line 36
.end method
