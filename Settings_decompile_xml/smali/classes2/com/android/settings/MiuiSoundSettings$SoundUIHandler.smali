.class Lcom/android/settings/MiuiSoundSettings$SoundUIHandler;
.super Landroid/os/Handler;
.source "MiuiSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundUIHandler"
.end annotation


# instance fields
.field private final mSoundSettingsRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/MiuiSoundSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSoundSettings;)V
    .locals 1

    .line 1229
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1230
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings$SoundUIHandler;->mSoundSettingsRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1235
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings$SoundUIHandler;->mSoundSettingsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/MiuiSoundSettings;

    if-nez p0, :cond_0

    return-void

    .line 1239
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1248
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1249
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSoundSettings;->updateSoundDesc(Ljava/lang/String;)V

    goto :goto_0

    .line 1245
    :cond_2
    invoke-static {p0}, Lcom/android/settings/MiuiSoundSettings;->-$$Nest$mrefreshZenModeSetting(Lcom/android/settings/MiuiSoundSettings;)V

    goto :goto_0

    .line 1242
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->refreshVolumeAndVibrate()V

    :goto_0
    return-void
.end method
