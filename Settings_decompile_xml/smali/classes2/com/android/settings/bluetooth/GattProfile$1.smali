.class Lcom/android/settings/bluetooth/GattProfile$1;
.super Landroid/database/ContentObserver;
.source "GattProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/GattProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/GattProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/GattProfile;Landroid/os/Handler;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/bluetooth/GattProfile$1;->this$0:Lcom/android/settings/bluetooth/GattProfile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 63
    iget-object p2, p0, Lcom/android/settings/bluetooth/GattProfile$1;->this$0:Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {p2}, Lcom/android/settings/bluetooth/GattProfile;->getBondDevices()V

    .line 64
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method
