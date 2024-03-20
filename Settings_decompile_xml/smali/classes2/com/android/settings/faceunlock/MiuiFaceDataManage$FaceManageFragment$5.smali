.class Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$5;
.super Ljava/lang/Object;
.source "MiuiFaceDataManage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->handleSecurityLockToggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$5;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 380
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$5;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-static {p1}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->-$$Nest$fgetmFaceUnlockManager(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$5;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->callback:Lcom/android/settings/faceunlock/FaceRemoveCallback;

    const-string p2, "0"

    invoke-virtual {p1, p2, p0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->deleteFeature(Ljava/lang/String;Lcom/android/settings/faceunlock/FaceRemoveCallback;)V

    :cond_0
    return-void
.end method
