.class Lcom/android/settings/sound/MiuiWorkSoundPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiWorkSoundPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController$1;->this$0:Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.intent.extra.USER"

    .line 342
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 343
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 349
    :cond_0
    iget-object p0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController$1;->this$0:Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->onManagedProfileRemoved(I)V

    return-void

    .line 345
    :cond_1
    iget-object p0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController$1;->this$0:Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->onManagedProfileAdded(I)V

    return-void
.end method
