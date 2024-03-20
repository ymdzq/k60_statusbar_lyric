.class Lcom/android/settings/MiuiAutoRotateController$1;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "MiuiAutoRotateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiAutoRotateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiAutoRotateController;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiAutoRotateController;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/android/settings/MiuiAutoRotateController$1;->this$0:Lcom/android/settings/MiuiAutoRotateController;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/settings/MiuiAutoRotateController$1;->this$0:Lcom/android/settings/MiuiAutoRotateController;

    invoke-static {p0}, Lcom/android/settings/MiuiAutoRotateController;->-$$Nest$mupdateRotationCheckbox(Lcom/android/settings/MiuiAutoRotateController;)V

    return-void
.end method
