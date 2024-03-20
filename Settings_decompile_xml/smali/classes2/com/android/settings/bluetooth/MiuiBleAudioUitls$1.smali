.class Lcom/android/settings/bluetooth/MiuiBleAudioUitls$1;
.super Ljava/lang/Object;
.source "MiuiBleAudioUitls.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->createHintDialog(Landroid/app/Activity;BIILcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;)Lmiuix/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;

.field final synthetic val$hintType:I

.field final synthetic val$srcId:B


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 369
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$1;->val$callback:Lcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;

    iput-byte p2, p0, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$1;->val$srcId:B

    iput p3, p0, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$1;->val$hintType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "MiuiBleAudioSourceInfoFragment"

    const-string p2, "The dialog BUTTON_POSITIVE clicked !"

    .line 372
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$1;->val$callback:Lcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;

    if-eqz p1, :cond_0

    .line 374
    iget-byte p2, p0, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$1;->val$srcId:B

    iget p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$1;->val$hintType:I

    invoke-interface {p1, p2, p0}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;->onPositiveButtonClicked(BI)V

    :cond_0
    return-void
.end method
