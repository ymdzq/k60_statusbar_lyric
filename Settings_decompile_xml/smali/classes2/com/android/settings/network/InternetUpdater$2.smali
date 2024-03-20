.class Lcom/android/settings/network/InternetUpdater$2;
.super Landroid/content/BroadcastReceiver;
.source "InternetUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/InternetUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/InternetUpdater;


# direct methods
.method constructor <init>(Lcom/android/settings/network/InternetUpdater;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/android/settings/network/InternetUpdater$2;->this$0:Lcom/android/settings/network/InternetUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 166
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    .line 167
    new-instance p2, Lcom/android/settings/network/InternetUpdater$2$1;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/network/InternetUpdater$2$1;-><init>(Lcom/android/settings/network/InternetUpdater$2;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-static {p2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
