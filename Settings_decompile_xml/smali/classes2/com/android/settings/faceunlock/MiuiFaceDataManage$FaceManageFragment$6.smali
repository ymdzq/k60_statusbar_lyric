.class Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$6;
.super Ljava/lang/Object;
.source "MiuiFaceDataManage.java"

# interfaces
.implements Lcom/android/settings/faceunlock/FaceRemoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;
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

    .line 394
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$6;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    .line 397
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$6;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->structure_face_data_delete_fail:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 398
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$6;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public onRemoved()V
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$6;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
