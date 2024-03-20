.class Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioJustScanCallbackImpl;
.super Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;
.source "MiuiAuracastQcomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BleBroadcastAudioJustScanCallbackImpl"
.end annotation


# instance fields
.field mFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)V
    .locals 1

    .line 1501
    invoke-direct {p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;-><init>()V

    const/4 v0, 0x0

    .line 1500
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioJustScanCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    .line 1502
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioJustScanCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onBleBroadcastSourceFound(Landroid/bluetooth/le/ScanResult;)V
    .locals 1

    .line 1506
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioJustScanCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1507
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioJustScanCallbackImpl;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$monBleBroadcastSourceFoundHandle(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Landroid/bluetooth/le/ScanResult;)V

    goto :goto_0

    :cond_0
    const-string p0, "MiuiAuracastQcomFragment"

    const-string p1, "mFragment is null"

    .line 1509
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
