.class Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$13$2;
.super Ljava/lang/Object;
.source "MiuiNormalCameraFaceInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$13;->onEnrollmentHelp(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$13;

.field final synthetic val$helpMsgId:I


# direct methods
.method constructor <init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$13;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 589
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$13$2;->this$1:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$13;

    iput p2, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$13$2;->val$helpMsgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$13$2;->this$1:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$13;

    iget-object v0, v0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$13;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;

    iget p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$13$2;->val$helpMsgId:I

    invoke-static {v0, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->-$$Nest$mupdateFaceHelpInfo(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;I)V

    return-void
.end method
