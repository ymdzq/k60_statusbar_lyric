.class Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager$1;
.super Landroid/hardware/face/FaceManager$RemovalCallback;
.source "KeyguardSettingsFaceUnlockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;


# direct methods
.method constructor <init>(Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager$1;->this$0:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V
    .locals 1

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mRemovalCallback, onRemovalError code:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " msg:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ";id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "miui_face"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p1, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager$1;->this$0:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    invoke-static {p1}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->-$$Nest$fgetmFaceRemoveCallback(Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;)Lcom/android/settings/faceunlock/FaceRemoveCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager$1;->this$0:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    invoke-static {p0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->-$$Nest$fgetmFaceRemoveCallback(Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;)Lcom/android/settings/faceunlock/FaceRemoveCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/faceunlock/FaceRemoveCallback;->onFailed()V

    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/face/Face;I)V
    .locals 1

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mRemovalCallback, onRemovalSucceeded id=;remaining="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "miui_face"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p1, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager$1;->this$0:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    invoke-static {p1}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->-$$Nest$fgetmFaceRemoveCallback(Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;)Lcom/android/settings/faceunlock/FaceRemoveCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager$1;->this$0:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    invoke-static {p1}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->-$$Nest$fgetmFaceRemoveCallback(Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;)Lcom/android/settings/faceunlock/FaceRemoveCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/faceunlock/FaceRemoveCallback;->onRemoved()V

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager$1;->this$0:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    invoke-static {p1}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->-$$Nest$fgetmDeleteFaceIds(Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager$1;->this$0:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    iget-object p2, p1, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->-$$Nest$fgetmDeleteFaceIds(Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->removeMultiFaceData(Landroid/content/Context;Ljava/util/List;)V

    .line 144
    :cond_1
    iget-object p0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager$1;->this$0:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    iget-object p0, p0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->resetFaceUnlockSettingValues(Landroid/content/Context;)V

    return-void
.end method
