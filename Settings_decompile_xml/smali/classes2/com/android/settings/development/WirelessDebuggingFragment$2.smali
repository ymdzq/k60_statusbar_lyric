.class Lcom/android/settings/development/WirelessDebuggingFragment$2;
.super Ljava/lang/Object;
.source "WirelessDebuggingFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/WirelessDebuggingFragment;->addPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/WirelessDebuggingFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/development/WirelessDebuggingFragment;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment$2;->this$0:Lcom/android/settings/development/WirelessDebuggingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 229
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 230
    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingFragment$2;->this$0:Lcom/android/settings/development/WirelessDebuggingFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 231
    invoke-static {p0}, Lcom/android/settings/development/WirelessDebuggingFragment;->-$$Nest$smisWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    sget p1, Lcom/android/settings/R$string;->adb_wireless_no_network_msg:I

    invoke-static {p0, p1, p2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    const/4 p0, 0x0

    return p0

    .line 237
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adb_wifi_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return p2
.end method
