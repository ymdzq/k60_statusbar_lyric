.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;

.field public final collectionStatuses:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    invoke-virtual {p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Lcom/android/systemui/Dumpable;)V

    .line 7
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 10
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->collectionStatuses:Ljava/util/Map;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "Collection statuses per view:---"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;->collectionStatuses:Ljava/util/Map;

    .line 7
    new-instance p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$dump$1;

    .line 9
    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger$dump$1;-><init>(Ljava/io/PrintWriter;)V

    .line 11
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 14
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 16
    return-void
    .line 19
.end method
