.class Lcom/android/settings/MiuiSoundSettingsBase$SoundBaseUIHandler;
.super Landroid/os/Handler;
.source "MiuiSoundSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSoundSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundBaseUIHandler"
.end annotation


# instance fields
.field private final mSoundSettingsBaseRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/MiuiSoundSettingsBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSoundSettingsBase;)V
    .locals 1

    .line 733
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 734
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettingsBase$SoundBaseUIHandler;->mSoundSettingsBaseRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 739
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 740
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettingsBase$SoundBaseUIHandler;->mSoundSettingsBaseRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/MiuiSoundSettingsBase;

    if-nez p0, :cond_0

    return-void

    .line 744
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/MiuiSoundSettingsBase;->mSupportCoolSound:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 745
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 753
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSoundSettingsBase;->updateValue(Landroid/os/Message;)V

    goto :goto_0

    .line 750
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/MiuiSoundSettingsBase;->setRingtoneValue(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 747
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/MiuiSoundSettingsBase;->setRingtoneValue(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 756
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_4

    .line 769
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSoundSettingsBase;->handleOthersSummery(Landroid/os/Message;)V

    goto :goto_0

    .line 763
    :cond_4
    invoke-static {p0}, Lcom/android/settings/MiuiSoundSettingsBase;->-$$Nest$fgetmNotificationPreference(Lcom/android/settings/MiuiSoundSettingsBase;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 764
    invoke-static {p0}, Lcom/android/settings/MiuiSoundSettingsBase;->-$$Nest$fgetmNotificationPreference(Lcom/android/settings/MiuiSoundSettingsBase;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 758
    :cond_5
    invoke-static {p0}, Lcom/android/settings/MiuiSoundSettingsBase;->-$$Nest$fgetmRingtonePreference(Lcom/android/settings/MiuiSoundSettingsBase;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 759
    invoke-static {p0}, Lcom/android/settings/MiuiSoundSettingsBase;->-$$Nest$fgetmRingtonePreference(Lcom/android/settings/MiuiSoundSettingsBase;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_0
    return-void
.end method
