.class Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$4;
.super Ljava/lang/Object;
.source "MiuiWifiDppUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->showWifiShareDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$4;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 230
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 231
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$4;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$mshowSharingDialog(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)V

    return-void
.end method
