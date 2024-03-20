.class Lcom/android/settings/MiuiDisplaySettings$3;
.super Lcom/android/settings/BaseSettingsController$UpdateCallback;
.source "MiuiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiDisplaySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiDisplaySettings;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$3;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-direct {p0}, Lcom/android/settings/BaseSettingsController$UpdateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public updateText(Ljava/lang/String;)V
    .locals 1

    .line 359
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v0, :cond_0

    .line 360
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings$3;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmFontSettingsPref(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
