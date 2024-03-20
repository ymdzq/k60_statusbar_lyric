.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$4;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleHdAudio(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

.field final synthetic val$info:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1702
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$4;->val$info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "MiuiHeadsetFragment"

    .line 1706
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mk73HDAudioEable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1707
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "hd_audio"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    .line 1708
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$4;->val$info:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p0, v2, :cond_0

    const-string/jumbo p0, "not support"

    .line 1711
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    .line 1714
    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    .line 1716
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deal HD audio error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
