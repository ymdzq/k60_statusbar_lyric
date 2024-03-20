.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$41;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshFunKeyInfo(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

.field final synthetic val$ancControlList:Ljava/lang/String;

.field final synthetic val$keyConfig:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5006
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$41;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$41;->val$ancControlList:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$41;->val$keyConfig:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5009
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$41;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$41;->val$ancControlList:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$41;->val$keyConfig:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mrefreshDeviceFunKeyInfo(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
