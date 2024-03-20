.class Lcom/android/settings/MiuiDisplaySettings$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/settings/MiuiDisplaySettings;Landroid/os/Handler;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$2;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 343
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$2;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportPaperEyeCare()Z

    move-result v0

    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings$2;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmAdvancedPaperModePref(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmPaperModePref(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    move-result-object p0

    :goto_0
    invoke-static {p1, p0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$mupdatePaperMode(Lcom/android/settings/MiuiDisplaySettings;Lcom/android/settingslib/miuisettings/preference/ValuePreference;)V

    return-void
.end method
