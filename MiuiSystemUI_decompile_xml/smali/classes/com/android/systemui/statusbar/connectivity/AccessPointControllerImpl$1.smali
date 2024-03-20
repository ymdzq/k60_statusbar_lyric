.class public final Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onConnectResult(I)V
    .locals 1

    .line 1
    const-string p0, "AccessPointController"

    .line 2
    if-nez p1, :cond_0

    .line 4
    sget-boolean p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->DEBUG:Z

    .line 6
    if-eqz p1, :cond_1

    .line 8
    const-string p1, "connect success"

    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->DEBUG:Z

    .line 16
    if-eqz v0, :cond_1

    .line 18
    const-string v0, "connect failure reason="

    .line 20
    invoke-static {v0, p1, p0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    :cond_1
    :goto_0
    return-void
    .line 25
.end method
