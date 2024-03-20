.class Lcom/android/settings/MiuiStatusBarSettings$4;
.super Ljava/lang/Object;
.source "MiuiStatusBarSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiStatusBarSettings;->setupShowCarrierUnderKeyguard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiStatusBarSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiStatusBarSettings;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/android/settings/MiuiStatusBarSettings$4;->this$0:Lcom/android/settings/MiuiStatusBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/android/settings/MiuiStatusBarSettings$4;->this$0:Lcom/android/settings/MiuiStatusBarSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 235
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string/jumbo p2, "status_bar_show_carrier_under_keyguard"

    .line 234
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method
