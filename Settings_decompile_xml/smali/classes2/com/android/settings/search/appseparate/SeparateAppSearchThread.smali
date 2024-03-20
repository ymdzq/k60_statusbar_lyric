.class public Lcom/android/settings/search/appseparate/SeparateAppSearchThread;
.super Landroid/os/HandlerThread;
.source "SeparateAppSearchThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/appseparate/SeparateAppSearchThread$SeparateAppSearchHandler;
    }
.end annotation


# static fields
.field private static final MSG_INIT:I = 0x0

.field private static final MSG_RELEASE:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/settings/SettingsFragment;)V
    .locals 2

    .line 22
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 24
    new-instance p1, Lcom/android/settings/search/appseparate/SeparateAppSearchThread$SeparateAppSearchHandler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lcom/android/settings/search/appseparate/SeparateAppSearchThread$SeparateAppSearchHandler;-><init>(Landroid/os/Looper;Lcom/android/settings/SettingsFragment;Lcom/android/settings/search/appseparate/SeparateAppSearchThread$SeparateAppSearchHandler-IA;)V

    iput-object p1, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchThread;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchThread;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public sendInitMessage()V
    .locals 1

    .line 32
    iget-object p0, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchThread;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendReleaseMessage()V
    .locals 1

    .line 36
    iget-object p0, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchThread;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
