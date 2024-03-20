.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$42;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshInearInfo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

.field final synthetic val$status:Z


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5018
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$42;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$42;->val$status:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 5021
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$42;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$42;->val$status:Z

    invoke-static {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mrefreshInearUi(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    return-void
.end method
