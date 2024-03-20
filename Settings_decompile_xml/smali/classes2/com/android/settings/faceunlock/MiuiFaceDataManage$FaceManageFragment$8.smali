.class Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$8;
.super Ljava/lang/Object;
.source "MiuiFaceDataManage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->handleFaceUnlockByCloseToPhone(Z)V
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

    .line 499
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$8;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 503
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$8;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-static {p1}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->-$$Nest$fgetmFaceUnlockSuccessStayScreen(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 504
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$8;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-static {p1}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->-$$Nest$fgetmFaceUnlockSuccessShowMessage(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 505
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$8;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->-$$Nest$fgetmFaceUnlockSuccessShowMessage(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
