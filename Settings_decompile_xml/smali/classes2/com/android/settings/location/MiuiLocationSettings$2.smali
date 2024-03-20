.class Lcom/android/settings/location/MiuiLocationSettings$2;
.super Ljava/lang/Object;
.source "MiuiLocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/MiuiLocationSettings;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/MiuiLocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/MiuiLocationSettings;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings$2;->this$0:Lcom/android/settings/location/MiuiLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 327
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/location/MiuiLocationSettings$2;->this$0:Lcom/android/settings/location/MiuiLocationSettings;

    invoke-static {p2}, Lcom/android/settings/location/MiuiLocationSettings;->-$$Nest$fgetmLocationManager(Lcom/android/settings/location/MiuiLocationSettings;)Landroid/location/LocationManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/settings/MiuiUtils;->setAgpsRoaming(Landroid/location/LocationManager;I)V

    .line 328
    iget-object p0, p0, Lcom/android/settings/location/MiuiLocationSettings$2;->this$0:Lcom/android/settings/location/MiuiLocationSettings;

    invoke-static {p0}, Lcom/android/settings/location/MiuiLocationSettings;->-$$Nest$fgetmAgpsRoaming(Lcom/android/settings/location/MiuiLocationSettings;)Landroidx/preference/CheckBoxPreference;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
