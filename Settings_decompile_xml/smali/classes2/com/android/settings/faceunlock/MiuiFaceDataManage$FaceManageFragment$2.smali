.class Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$2;
.super Ljava/lang/Object;
.source "MiuiFaceDataManage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$2;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    iput-boolean p2, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$2;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 257
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$2;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->-$$Nest$fgetmFaceUnlockSuccessStayScreen(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$2;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    iget-boolean p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$2;->val$isChecked:Z

    invoke-static {p1, p0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->-$$Nest$mhandleFaceUnlockSuccessStayScreen(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;Z)V

    :goto_0
    return-void
.end method
