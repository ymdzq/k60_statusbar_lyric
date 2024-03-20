.class Lcom/android/settings/haptic/HapticDemoVideoPreference$BgHandler;
.super Landroid/os/Handler;
.source "HapticDemoVideoPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/haptic/HapticDemoVideoPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BgHandler"
.end annotation


# instance fields
.field private mRefFrag:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/haptic/HapticDemoVideoPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/haptic/HapticDemoVideoPreference;Landroid/os/Looper;)V
    .locals 0

    .line 102
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference$BgHandler;->mRefFrag:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 108
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference$BgHandler;->mRefFrag:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/haptic/HapticDemoVideoPreference;

    .line 110
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    .line 132
    invoke-static {v0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->-$$Nest$mstopPlayingVideo(Lcom/android/settings/haptic/HapticDemoVideoPreference;)Z

    .line 133
    invoke-static {v0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->-$$Nest$mreleaseMedia(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    .line 126
    invoke-static {v0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->-$$Nest$mstopPlayingVideo(Lcom/android/settings/haptic/HapticDemoVideoPreference;)Z

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_4

    .line 120
    invoke-static {v0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->-$$Nest$mplayMedia(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_4

    .line 114
    invoke-static {v0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->-$$Nest$minitMedia(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V

    :cond_4
    :goto_0
    return-void
.end method
