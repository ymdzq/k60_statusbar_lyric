.class Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$1;
.super Ljava/lang/Object;
.source "MiuiFaceDetailFragment.java"

# interfaces
.implements Lcom/android/settings/faceunlock/FaceRemoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$1;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$1;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;

    invoke-virtual {v0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->structure_face_data_delete_fail:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 79
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$1;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;

    invoke-virtual {p0}, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->finish()V

    return-void
.end method

.method public onRemoved()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$1;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->-$$Nest$fputmFaceDeleted(Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;Z)V

    .line 85
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$1;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;

    invoke-virtual {p0}, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->finish()V

    return-void
.end method
