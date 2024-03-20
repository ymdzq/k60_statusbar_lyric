.class Lcom/android/settings/MiuiTetherSettings$13;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "MiuiTetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiTetherSettings;->setUsbTethering(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiTetherSettings;)V
    .locals 0

    .line 1330
    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings$13;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 1

    .line 1336
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$13;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmUsbTether(Lcom/android/settings/MiuiTetherSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->usb_tethering_errored_subtext:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method public onTetheringStarted()V
    .locals 0

    .line 0
    return-void
.end method
