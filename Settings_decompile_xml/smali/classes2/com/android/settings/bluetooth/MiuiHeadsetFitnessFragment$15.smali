.class Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$15;
.super Ljava/lang/Object;
.source "MiuiHeadsetFitnessFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->createDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

.field final synthetic val$dialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 728
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$15;->val$dialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$15;->val$dialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 732
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$15;->val$dialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-static {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$fputmDialog(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Lmiuix/appcompat/app/AlertDialog;)V

    return-void
.end method
