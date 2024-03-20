.class Lcom/android/settings/ringtone/MultiSimRingtonePreference$1;
.super Landroid/os/Handler;
.source "MultiSimRingtonePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ringtone/MultiSimRingtonePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/ringtone/MultiSimRingtonePreference;Landroid/os/Looper;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$1;->this$0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 37
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 38
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$1;->this$0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    iget-object p0, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$1;->this$0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 41
    iget-object p0, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$1;->this$0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
