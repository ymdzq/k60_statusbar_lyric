.class public final Lcom/google/android/setupdesign/template/RequireScrollMixin;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field public everScrolledToBottom:Z

.field public final handler:Landroid/os/Handler;

.field public requiringScrollToBottom:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    iput-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->handler:Landroid/os/Handler;

    .line 14
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    .line 17
    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->everScrolledToBottom:Z

    .line 19
    return-void
    .line 21
.end method
