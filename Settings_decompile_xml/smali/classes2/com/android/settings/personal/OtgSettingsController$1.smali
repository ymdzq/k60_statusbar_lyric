.class Lcom/android/settings/personal/OtgSettingsController$1;
.super Landroid/os/Handler;
.source "OtgSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personal/OtgSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personal/OtgSettingsController;


# direct methods
.method constructor <init>(Lcom/android/settings/personal/OtgSettingsController;Landroid/os/Looper;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/android/settings/personal/OtgSettingsController$1;->this$0:Lcom/android/settings/personal/OtgSettingsController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 29
    iget-object p1, p0, Lcom/android/settings/personal/OtgSettingsController$1;->this$0:Lcom/android/settings/personal/OtgSettingsController;

    invoke-static {p1}, Lcom/android/settings/personal/OtgSettingsController;->-$$Nest$fgetmPreference(Lcom/android/settings/personal/OtgSettingsController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "OtgSettingsController"

    const-string v0, "auto update OtgSettingsController"

    .line 30
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p0, p0, Lcom/android/settings/personal/OtgSettingsController$1;->this$0:Lcom/android/settings/personal/OtgSettingsController;

    invoke-static {p0}, Lcom/android/settings/personal/OtgSettingsController;->-$$Nest$fgetmPreference(Lcom/android/settings/personal/OtgSettingsController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/personal/OtgSettingsController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
