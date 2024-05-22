.class public final synthetic Lcom/android/wm/shell/desktopmode/DesktopModeController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl;

    .line 7
    invoke-direct {v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V

    .line 9
    return-object v0
    .line 12
.end method
