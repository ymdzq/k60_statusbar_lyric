.class Lcom/android/settings/vpn2/MiuiVpnSettings$4;
.super Ljava/lang/Object;
.source "MiuiVpnSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn2/MiuiVpnSettings;->initVpnPreferenceList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/MiuiVpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/MiuiVpnSettings;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$4;->this$0:Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$4;->this$0:Lcom/android/settings/vpn2/MiuiVpnSettings;

    check-cast p1, Lcom/android/settings/vpn2/AppPreference;

    invoke-static {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->-$$Nest$mopenThirdPartyVpnApp(Lcom/android/settings/vpn2/MiuiVpnSettings;Lcom/android/settings/vpn2/AppPreference;)V

    const/4 p0, 0x1

    return p0
.end method
