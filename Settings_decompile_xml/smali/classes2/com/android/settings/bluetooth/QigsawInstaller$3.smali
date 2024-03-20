.class Lcom/android/settings/bluetooth/QigsawInstaller$3;
.super Ljava/lang/Object;
.source "QigsawInstaller.java"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/QigsawInstaller;->startInstall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/OnSuccessListener<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/QigsawInstaller;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/QigsawInstaller;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/settings/bluetooth/QigsawInstaller$3;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Integer;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/settings/bluetooth/QigsawInstaller$3;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$fputmSessionId(Lcom/android/settings/bluetooth/QigsawInstaller;I)V

    .line 169
    iget-object p0, p0, Lcom/android/settings/bluetooth/QigsawInstaller$3;->this$0:Lcom/android/settings/bluetooth/QigsawInstaller;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/QigsawInstaller;->-$$Nest$fputstartInstallFlag(Lcom/android/settings/bluetooth/QigsawInstaller;Z)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 165
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/QigsawInstaller$3;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
