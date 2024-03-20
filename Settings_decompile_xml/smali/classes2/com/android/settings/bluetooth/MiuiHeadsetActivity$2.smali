.class Lcom/android/settings/bluetooth/MiuiHeadsetActivity$2;
.super Landroid/database/ContentObserver;
.source "MiuiHeadsetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetActivity;Landroid/os/Handler;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->mDealHandler:Landroid/os/Handler;

    const p1, 0x186a1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
