.class Lcom/android/settings/MiuiAnimationController$1;
.super Ljava/lang/Object;
.source "MiuiAnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiAnimationController;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiAnimationController;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/android/settings/MiuiAnimationController$1;->this$0:Lcom/android/settings/MiuiAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/settings/MiuiAnimationController$1;->this$0:Lcom/android/settings/MiuiAnimationController;

    invoke-static {p0}, Lcom/android/settings/MiuiAnimationController;->-$$Nest$mplayAnimationImmediately(Lcom/android/settings/MiuiAnimationController;)V

    return-void
.end method
