.class Lcom/android/settings/sound/SoundEffectsController$1;
.super Ljava/lang/Object;
.source "SoundEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sound/SoundEffectsController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sound/SoundEffectsController;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/SoundEffectsController;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/android/settings/sound/SoundEffectsController$1;->this$0:Lcom/android/settings/sound/SoundEffectsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/settings/sound/SoundEffectsController$1;->this$0:Lcom/android/settings/sound/SoundEffectsController;

    invoke-static {v0}, Lcom/android/settings/sound/SoundEffectsController;->-$$Nest$fgetmPreference(Lcom/android/settings/sound/SoundEffectsController;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sound/SoundEffectsController$1;->this$0:Lcom/android/settings/sound/SoundEffectsController;

    invoke-static {v0}, Lcom/android/settings/sound/SoundEffectsController;->-$$Nest$fgetmPreference(Lcom/android/settings/sound/SoundEffectsController;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object p0, p0, Lcom/android/settings/sound/SoundEffectsController$1;->this$0:Lcom/android/settings/sound/SoundEffectsController;

    invoke-static {p0}, Lcom/android/settings/sound/SoundEffectsController;->-$$Nest$fgetmAudioManager(Lcom/android/settings/sound/SoundEffectsController;)Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioManager;->loadSoundEffects()V

    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/settings/sound/SoundEffectsController$1;->this$0:Lcom/android/settings/sound/SoundEffectsController;

    invoke-static {p0}, Lcom/android/settings/sound/SoundEffectsController;->-$$Nest$fgetmAudioManager(Lcom/android/settings/sound/SoundEffectsController;)Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    :goto_0
    return-void
.end method
