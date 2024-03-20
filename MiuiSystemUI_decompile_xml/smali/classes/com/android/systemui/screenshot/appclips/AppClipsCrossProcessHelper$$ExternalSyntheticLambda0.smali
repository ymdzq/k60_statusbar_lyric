.class public final synthetic Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/os/IBinder;

    .line 2
    sget p0, Lcom/android/systemui/screenshot/appclips/AppClipsScreenshotHelperService$1;->$r8$clinit:I

    .line 4
    if-nez p1, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string p0, "com.android.systemui.screenshot.appclips.IAppClipsScreenshotHelperService"

    .line 10
    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 12
    move-result-object p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    instance-of v0, p0, Lcom/android/systemui/screenshot/appclips/IAppClipsScreenshotHelperService;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    check-cast p0, Lcom/android/systemui/screenshot/appclips/IAppClipsScreenshotHelperService;

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    new-instance p0, Lcom/android/systemui/screenshot/appclips/IAppClipsScreenshotHelperService$Stub$Proxy;

    .line 25
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/appclips/IAppClipsScreenshotHelperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 27
    :goto_0
    return-object p0
    .line 30
.end method
