.class public final Lcom/miui/analytics/MiuiAppPairsTrackImpl$Provider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideNewInstance()Lcom/miui/analytics/MiuiAppPairsTrackImpl;
    .locals 0

    .line 2
    new-instance p0, Lcom/miui/analytics/MiuiAppPairsTrackImpl;

    invoke-direct {p0}, Lcom/miui/analytics/MiuiAppPairsTrackImpl;-><init>()V

    return-object p0
.end method

.method public bridge synthetic provideNewInstance()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/analytics/MiuiAppPairsTrackImpl$Provider;->provideNewInstance()Lcom/miui/analytics/MiuiAppPairsTrackImpl;

    move-result-object p0

    return-object p0
.end method

.method public provideSingleton()Lcom/miui/analytics/MiuiAppPairsTrackImpl;
    .locals 0

    .line 2
    sget-object p0, Lcom/miui/analytics/MiuiAppPairsTrackImpl$Provider$SINGLETON;->INSTANCE:Lcom/miui/analytics/MiuiAppPairsTrackImpl;

    return-object p0
.end method

.method public bridge synthetic provideSingleton()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/analytics/MiuiAppPairsTrackImpl$Provider;->provideSingleton()Lcom/miui/analytics/MiuiAppPairsTrackImpl;

    move-result-object p0

    return-object p0
.end method
