.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$19;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .line 2799
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$19;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2802
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$19;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$msendBroadcastEnableOrDisable(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    return-void
.end method
