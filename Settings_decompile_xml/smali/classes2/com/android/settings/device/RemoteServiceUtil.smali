.class public Lcom/android/settings/device/RemoteServiceUtil;
.super Ljava/lang/Object;
.source "RemoteServiceUtil.java"


# direct methods
.method public static bindRemoteService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 2

    .line 15
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.GET_DEVICE_INFO_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.htmlviewer"

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method public static unBindRemoteService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 22
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method
