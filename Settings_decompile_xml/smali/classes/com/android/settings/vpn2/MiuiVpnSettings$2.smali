.class Lcom/android/settings/vpn2/MiuiVpnSettings$2;
.super Ljava/lang/Object;
.source "MiuiVpnSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn2/MiuiVpnSettings;->onFragmentResult(ILandroid/os/Bundle;)V
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

    .line 405
    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$2;->this$0:Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 409
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/net/VpnProfile;

    .line 410
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$2;->this$0:Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->editProfile(Lcom/android/internal/net/VpnProfile;)V

    return-void
.end method
