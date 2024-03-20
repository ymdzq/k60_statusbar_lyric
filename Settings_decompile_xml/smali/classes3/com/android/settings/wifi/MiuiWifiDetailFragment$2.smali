.class Lcom/android/settings/wifi/MiuiWifiDetailFragment$2;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiDetailFragment;->initPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .line 936
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$2;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 939
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$2;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$mshowWifiDialog(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    const/4 p0, 0x1

    return p0
.end method
