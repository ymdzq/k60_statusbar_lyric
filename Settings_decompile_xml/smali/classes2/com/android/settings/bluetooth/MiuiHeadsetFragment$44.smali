.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$44;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->deviceReportInfoAnc(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5067
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$44;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$44;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5070
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$44;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$44;->val$value:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncUi(Ljava/lang/String;Z)V

    return-void
.end method
