.class Lcom/android/settings/HttpInvokeAppSettings$HttpInvokeAppSettingsFragment$1;
.super Ljava/lang/Object;
.source "HttpInvokeAppSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/HttpInvokeAppSettings$HttpInvokeAppSettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HttpInvokeAppSettings$HttpInvokeAppSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/HttpInvokeAppSettings$HttpInvokeAppSettingsFragment;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/HttpInvokeAppSettings$HttpInvokeAppSettingsFragment$1;->this$0:Lcom/android/settings/HttpInvokeAppSettings$HttpInvokeAppSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settings/HttpInvokeAppSettings$HttpInvokeAppSettingsFragment$1;->this$0:Lcom/android/settings/HttpInvokeAppSettings$HttpInvokeAppSettingsFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Landroid/provider/MiuiSettings$Secure;->enableHttpInvokeApp(Landroid/content/ContentResolver;Z)V

    const-string p0, "http_invoke_app"

    .line 54
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method
