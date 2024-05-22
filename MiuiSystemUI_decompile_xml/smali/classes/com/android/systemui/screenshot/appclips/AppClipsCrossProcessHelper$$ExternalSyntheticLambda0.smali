.class public final synthetic Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
