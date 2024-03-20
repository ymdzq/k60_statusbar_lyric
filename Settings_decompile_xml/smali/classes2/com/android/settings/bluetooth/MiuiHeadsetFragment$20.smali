.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$20;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 3357
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$20;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3360
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$20;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$msendBroadcastEnableOrDisable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    return-void
.end method
