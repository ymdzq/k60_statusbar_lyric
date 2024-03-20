.class public Lcom/android/settings/bluetooth/MiHeadsetService$MBinder;
.super Landroid/os/Binder;
.source "MiHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiHeadsetService;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/MiHeadsetService;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiHeadsetService$MBinder;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
