.class Lcom/android/settings/projection/ScreenProjectionSwitchController$3;
.super Ljava/lang/Object;
.source "ScreenProjectionSwitchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/projection/ScreenProjectionSwitchController;->dealScreenProjectionStateChange(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/projection/ScreenProjectionSwitchController;


# direct methods
.method constructor <init>(Lcom/android/settings/projection/ScreenProjectionSwitchController;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController$3;->this$0:Lcom/android/settings/projection/ScreenProjectionSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController$3;->this$0:Lcom/android/settings/projection/ScreenProjectionSwitchController;

    invoke-static {p0}, Lcom/android/settings/projection/ScreenProjectionSwitchController;->-$$Nest$mupdateSwitchState(Lcom/android/settings/projection/ScreenProjectionSwitchController;)V

    return-void
.end method
