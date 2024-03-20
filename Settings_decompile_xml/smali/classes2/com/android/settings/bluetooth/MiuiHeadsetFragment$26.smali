.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$26;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->setAncOnClick()V
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

    .line 3692
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$26;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 3695
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$26;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mupdateAncMode(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;IZ)V

    return-void
.end method
