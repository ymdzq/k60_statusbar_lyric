.class public Lcom/iqiyi/android/qigsaw/core/extension/fakecomponents/FakeService;
.super Landroid/app/Service;
.source "FakeService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 46
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 47
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method
