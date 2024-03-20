.class Lcom/android/settings/security/ScreenPinningPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "ScreenPinningPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/ScreenPinningPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/ScreenPinningPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/security/ScreenPinningPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/settings/security/ScreenPinningPreferenceController$1;->this$0:Lcom/android/settings/security/ScreenPinningPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/security/ScreenPinningPreferenceController$1;->this$0:Lcom/android/settings/security/ScreenPinningPreferenceController;

    invoke-static {p1}, Lcom/android/settings/security/ScreenPinningPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/security/ScreenPinningPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/android/settings/security/ScreenPinningPreferenceController$1;->this$0:Lcom/android/settings/security/ScreenPinningPreferenceController;

    invoke-static {p1}, Lcom/android/settings/security/ScreenPinningPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/security/ScreenPinningPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController$1;->this$0:Lcom/android/settings/security/ScreenPinningPreferenceController;

    invoke-static {p0}, Lcom/android/settings/security/ScreenPinningPreferenceController;->access$000(Lcom/android/settings/security/ScreenPinningPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportScreenPinning(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method
