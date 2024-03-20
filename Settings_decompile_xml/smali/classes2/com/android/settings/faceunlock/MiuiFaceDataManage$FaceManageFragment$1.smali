.class Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$1;
.super Landroid/database/ContentObserver;
.source "MiuiFaceDataManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->registerSltChangeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;Landroid/os/Handler;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$1;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 213
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$1;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isSltOpen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$1;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->face_unlock_when_slt_on_toast:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    .line 215
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$1;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method
