.class Lcom/android/settings/notification/zen/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$1;
.super Ljava/lang/Object;
.source "ZenModeSettingsFooterPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$1;->this$0:Lcom/android/settings/notification/zen/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 225
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;

    .line 227
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 226
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x8e

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method
