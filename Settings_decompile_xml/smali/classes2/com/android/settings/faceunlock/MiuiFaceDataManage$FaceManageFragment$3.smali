.class Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$3;
.super Ljava/lang/Object;
.source "MiuiFaceDataManage.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->updateFaceList()V
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

    .line 286
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$3;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$3;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->-$$Nest$fgetfastDoubleClickHelper(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)Lcom/android/settings/utils/FastDoubleClickHelper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$3;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    new-instance v1, Lcom/android/settings/utils/FastDoubleClickHelper;

    invoke-direct {v1}, Lcom/android/settings/utils/FastDoubleClickHelper;-><init>()V

    invoke-static {v0, v1}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->-$$Nest$fputfastDoubleClickHelper(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;Lcom/android/settings/utils/FastDoubleClickHelper;)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$3;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->-$$Nest$fgetfastDoubleClickHelper(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)Lcom/android/settings/utils/FastDoubleClickHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/utils/FastDoubleClickHelper;->isFastDoubleClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 295
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, "add_face_data"

    .line 297
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$3;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->-$$Nest$maddFaceData(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;)V

    goto :goto_0

    .line 300
    :cond_2
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment$3;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;

    invoke-static {p0, v0, p1}, Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;->-$$Nest$mshowFaceDataDetails(Lcom/android/settings/faceunlock/MiuiFaceDataManage$FaceManageFragment;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method
