.class Lcom/android/settings/wifi/tether/AccouontApFragment$AutoSoftapStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccouontApFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/AccouontApFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoSoftapStateReceiver"
.end annotation


# instance fields
.field private mF:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/wifi/tether/AccouontApFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/AccouontApFragment;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 143
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/AccouontApFragment$AutoSoftapStateReceiver;->mF:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    :try_start_0
    const-string p1, "AccountApSettingsActivity"

    const-string p2, "AutoSoftapStateReceiver."

    .line 149
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p1, p0, Lcom/android/settings/wifi/tether/AccouontApFragment$AutoSoftapStateReceiver;->mF:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 151
    iget-object p0, p0, Lcom/android/settings/wifi/tether/AccouontApFragment$AutoSoftapStateReceiver;->mF:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/tether/AccouontApFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/AccouontApFragment;->-$$Nest$mupdateView(Lcom/android/settings/wifi/tether/AccouontApFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 153
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
