.class Lcom/android/settings/operator/kddi/KDDIDataConnectionDialog$1;
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


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/android/settings/operator/kddi/KDDIDataConnectionDialog$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 63
    iget-object p1, p0, Lcom/android/settings/operator/kddi/KDDIDataConnectionDialog$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settings/operator/kddi/KDDIDataConnectionDialog;->setDataEnabled(Landroid/app/Activity;)V

    .line 64
    iget-object p1, p0, Lcom/android/settings/operator/kddi/KDDIDataConnectionDialog$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "pref_set_mobile_data_show"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 65
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const-string/jumbo p1, "provision_wifi_skip"

    .line 66
    invoke-static {p1}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 67
    invoke-static {p1, p2}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    iget-object p1, p0, Lcom/android/settings/operator/kddi/KDDIDataConnectionDialog$1;->val$activity:Landroid/app/Activity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 69
    iget-object p0, p0, Lcom/android/settings/operator/kddi/KDDIDataConnectionDialog$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 71
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/settings/operator/kddi/KDDIDataConnectionDialog$1;->val$activity:Landroid/app/Activity;

    const-class v0, Lcom/android/settings/operator/kddi/MiuiMobileDataUsedActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    iget-object p0, p0, Lcom/android/settings/operator/kddi/KDDIDataConnectionDialog$1;->val$activity:Landroid/app/Activity;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
