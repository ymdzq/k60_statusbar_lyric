.class Lcom/android/settings/KeySettingsSelectFragment$1;
.super Landroid/database/ContentObserver;
.source "KeySettingsSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KeySettingsSelectFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KeySettingsSelectFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/KeySettingsSelectFragment;Landroid/os/Handler;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment$1;->this$0:Lcom/android/settings/KeySettingsSelectFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 163
    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment$1;->this$0:Lcom/android/settings/KeySettingsSelectFragment;

    invoke-static {p1}, Lcom/android/settings/KeySettingsSelectFragment;->-$$Nest$fgetmContext(Lcom/android/settings/KeySettingsSelectFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string v1, "long_press_power_launch_xiaoai"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v2, v0

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment$1;->this$0:Lcom/android/settings/KeySettingsSelectFragment;

    invoke-static {p1}, Lcom/android/settings/KeySettingsSelectFragment;->-$$Nest$fgetmPreferenceKey(Lcom/android/settings/KeySettingsSelectFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "launch_voice_assistant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    .line 172
    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment$1;->this$0:Lcom/android/settings/KeySettingsSelectFragment;

    invoke-static {p1}, Lcom/android/settings/KeySettingsSelectFragment;->-$$Nest$fgetmKeyGestureFunctionOptional(Lcom/android/settings/KeySettingsSelectFragment;)Lmiuix/preference/RadioButtonPreferenceCategory;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment$1;->this$0:Lcom/android/settings/KeySettingsSelectFragment;

    invoke-static {v0}, Lcom/android/settings/KeySettingsSelectFragment;->-$$Nest$fgetmKeyGestureFunctionOptional(Lcom/android/settings/KeySettingsSelectFragment;)Lmiuix/preference/RadioButtonPreferenceCategory;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/KeySettingsSelectFragment;->-$$Nest$mgetLongPressPowerPreference(Lcom/android/settings/KeySettingsSelectFragment;Lmiuix/preference/RadioButtonPreferenceCategory;)Lmiuix/preference/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    .line 173
    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment$1;->this$0:Lcom/android/settings/KeySettingsSelectFragment;

    invoke-static {p1}, Lcom/android/settings/KeySettingsSelectFragment;->-$$Nest$fgetmKeyGestureFunctionOptional(Lcom/android/settings/KeySettingsSelectFragment;)Lmiuix/preference/RadioButtonPreferenceCategory;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/KeySettingsSelectFragment;->-$$Nest$mgetLongPressPowerPreference(Lcom/android/settings/KeySettingsSelectFragment;Lmiuix/preference/RadioButtonPreferenceCategory;)Lmiuix/preference/RadioButtonPreference;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/KeySettingsSelectFragment;->-$$Nest$fputmRadioButtonPreference(Lcom/android/settings/KeySettingsSelectFragment;Lmiuix/preference/RadioButtonPreference;)V

    .line 174
    iget-object p0, p0, Lcom/android/settings/KeySettingsSelectFragment$1;->this$0:Lcom/android/settings/KeySettingsSelectFragment;

    invoke-static {p0}, Lcom/android/settings/KeySettingsSelectFragment;->-$$Nest$fgetmKeyGestureFunctionPreview(Lcom/android/settings/KeySettingsSelectFragment;)Lcom/android/settings/KeySettingsPreviewPreference;

    move-result-object p0

    const-string p1, "long_press_power_key"

    invoke-virtual {p0, p1}, Lcom/android/settings/KeySettingsPreviewPreference;->setCheckedAction(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
