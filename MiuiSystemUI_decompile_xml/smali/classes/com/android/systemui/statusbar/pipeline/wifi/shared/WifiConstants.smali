.class public final Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final alwaysShowIconIfEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "WifiConstants"

    .line 5
    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p1

    .line 13
    const p2, 0x7f05005c    # @bool/config_showWifiIndicatorWhenEnabled 'false'

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 17
    move-result p1

    .line 20
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;->alwaysShowIconIfEnabled:Z

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    const-string v0, "alwaysShowIconIfEnabled="

    .line 4
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;->alwaysShowIconIfEnabled:Z

    .line 9
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 11
    return-void
    .line 14
.end method
