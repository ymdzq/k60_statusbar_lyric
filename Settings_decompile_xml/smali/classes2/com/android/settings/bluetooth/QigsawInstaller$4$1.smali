.class Lcom/android/settings/bluetooth/QigsawInstaller$4$1;
.super Ljava/lang/Object;
.source "QigsawInstaller.java"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/QigsawInstaller$4;->onComplete(Lcom/google/android/play/core/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/bluetooth/QigsawInstaller$4;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/QigsawInstaller$4;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/settings/bluetooth/QigsawInstaller$4$1;->this$1:Lcom/android/settings/bluetooth/QigsawInstaller$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/play/core/tasks/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 212
    iget-object p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller$4$1;->this$1:Lcom/android/settings/bluetooth/QigsawInstaller$4;

    iget-object p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller$4;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$mstartInstall(Lcom/android/settings/bluetooth/QigsawInstaller;)V

    return-void
.end method
