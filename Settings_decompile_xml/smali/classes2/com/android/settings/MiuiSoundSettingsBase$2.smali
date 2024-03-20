.class Lcom/android/settings/MiuiSoundSettingsBase$2;
.super Ljava/lang/Object;
.source "MiuiSoundSettingsBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiSoundSettingsBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSoundSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSoundSettingsBase;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettingsBase$2;->this$0:Lcom/android/settings/MiuiSoundSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 304
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettingsBase$2;->this$0:Lcom/android/settings/MiuiSoundSettingsBase;

    iget-boolean v1, v0, Lcom/android/settings/MiuiSoundSettingsBase;->mSupportCoolSound:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 305
    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiSoundSettingsBase;->isRingtoneViewEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettingsBase$2;->this$0:Lcom/android/settings/MiuiSoundSettingsBase;

    iget-object v4, v0, Lcom/android/settings/MiuiSoundSettingsBase;->mRingtoneCardPreference:Lcom/android/settings/sound/RingtoneCardPreference;

    .line 307
    invoke-virtual {v4, v1}, Lcom/android/settings/sound/RingtoneCardPreference;->getUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 306
    invoke-virtual {v0, v1, v3}, Lcom/android/settings/MiuiSoundSettingsBase;->updateRingtoneName(Landroid/net/Uri;I)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettingsBase$2;->this$0:Lcom/android/settings/MiuiSoundSettingsBase;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiSoundSettingsBase;->isRingtoneViewEnable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettingsBase$2;->this$0:Lcom/android/settings/MiuiSoundSettingsBase;

    iget-object v3, v0, Lcom/android/settings/MiuiSoundSettingsBase;->mRingtoneCardPreference:Lcom/android/settings/sound/RingtoneCardPreference;

    .line 312
    invoke-virtual {v3, v1}, Lcom/android/settings/sound/RingtoneCardPreference;->getUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 311
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/MiuiSoundSettingsBase;->updateRingtoneName(Landroid/net/Uri;I)V

    .line 314
    :cond_1
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettingsBase$2;->this$0:Lcom/android/settings/MiuiSoundSettingsBase;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettingsBase;->updateOthers()V

    goto :goto_0

    .line 316
    :cond_2
    invoke-static {v0}, Lcom/android/settings/MiuiSoundSettingsBase;->-$$Nest$fgetmRingtonePreference(Lcom/android/settings/MiuiSoundSettingsBase;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettingsBase$2;->this$0:Lcom/android/settings/MiuiSoundSettingsBase;

    invoke-static {v0}, Lcom/android/settings/MiuiSoundSettingsBase;->-$$Nest$fgetmRingtonePreference(Lcom/android/settings/MiuiSoundSettingsBase;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/DefaultRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/MiuiSoundSettingsBase;->updateRingtoneName(Landroid/net/Uri;I)V

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettingsBase$2;->this$0:Lcom/android/settings/MiuiSoundSettingsBase;

    invoke-static {v0}, Lcom/android/settings/MiuiSoundSettingsBase;->-$$Nest$fgetmNotificationPreference(Lcom/android/settings/MiuiSoundSettingsBase;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 325
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettingsBase$2;->this$0:Lcom/android/settings/MiuiSoundSettingsBase;

    invoke-static {v0}, Lcom/android/settings/MiuiSoundSettingsBase;->-$$Nest$fgetmNotificationPreference(Lcom/android/settings/MiuiSoundSettingsBase;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/DefaultRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/MiuiSoundSettingsBase;->updateRingtoneName(Landroid/net/Uri;I)V

    .line 328
    :cond_4
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettingsBase$2;->this$0:Lcom/android/settings/MiuiSoundSettingsBase;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettingsBase;->ringtoneLookupOthers()V

    :goto_0
    return-void
.end method
