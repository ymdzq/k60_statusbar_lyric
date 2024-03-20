.class public abstract Lmiui/stub/MiuiProxy;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sCommandQueueCallbacksMap:Ljava/util/Map;

.field public static final sKeyguardMonitorCallbackMap:Ljava/util/Map;

.field public static final sWakefullObserMap:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    sput-object v0, Lmiui/stub/MiuiProxy;->sKeyguardMonitorCallbackMap:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    sput-object v0, Lmiui/stub/MiuiProxy;->sCommandQueueCallbacksMap:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    sput-object v0, Lmiui/stub/MiuiProxy;->sWakefullObserMap:Ljava/util/Map;

    .line 21
    return-void
    .line 23
.end method
