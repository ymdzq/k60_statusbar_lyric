.class Lcom/android/settings/operator/kddi/KDDIDataConnectionDialog$2;
.super Ljava/lang/Object;
.source "KDDIDataConnectionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/operator/kddi/KDDIDataConnectionDialog;->showDataConnectionDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string/jumbo p0, "provision_wifi_skip"

    .line 79
    invoke-static {p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 80
    invoke-static {p0, p2}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
