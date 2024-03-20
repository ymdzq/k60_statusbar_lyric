.class public abstract Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorModule_Companion_HostUserHandleFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static hostUserHandle(Lcom/android/systemui/media/MediaProjectionAppSelectorActivity;)Landroid/os/UserHandle;
    .locals 1

    .line 1
    sget v0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorModule;->$r8$clinit:I

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 8
    move-result-object p0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    const-string v0, "launched_from_user_handle"

    .line 14
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 16
    move-result-object p0

    .line 19
    check-cast p0, Landroid/os/UserHandle;

    .line 20
    if-eqz p0, :cond_0

    .line 22
    return-object p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 25
    const-string v0, "MediaProjectionAppSelectorActivity should be provided with launched_from_user_handle extra"

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0

    .line 36
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 37
    const-string v0, "MediaProjectionAppSelectorActivity should be launched with extras"

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 44
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0
    .line 48
.end method
